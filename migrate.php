<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Caramel Code — Migrator</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: 'Courier New', monospace; background: #0d0d0d; color: #e0e0e0; min-height: 100vh; display: flex; align-items: center; justify-content: center; padding: 20px; }
        .wrap { max-width: 800px; width: 100%; }
        h1 { color: #f0a500; font-size: 22px; margin-bottom: 6px; }
        .sub { color: #666; font-size: 13px; margin-bottom: 24px; }
        .card { background: #1a1a1a; border: 1px solid #2a2a2a; border-radius: 10px; padding: 20px; margin-bottom: 16px; }
        .card h2 { font-size: 15px; color: #aaa; margin-bottom: 14px; }
        .log-line { padding: 6px 10px; border-radius: 5px; margin-bottom: 4px; font-size: 13px; }
        .log-ok   { background: #0a2a0a; color: #4caf50; }
        .log-skip { background: #1a1a1a; color: #666; }
        .log-err  { background: #2a0a0a; color: #f44336; }
        .log-info { background: #0a1a2a; color: #64b5f6; }
        .badge { display: inline-block; padding: 2px 8px; border-radius: 4px; font-size: 11px; margin-right: 8px; font-weight: bold; }
        .badge-ok   { background: #4caf50; color: #000; }
        .badge-skip { background: #555; color: #ccc; }
        .badge-err  { background: #f44336; color: #fff; }
        .badge-info { background: #2196f3; color: #fff; }
        .summary { border: 1px solid #f0a500; border-radius: 8px; padding: 14px; margin-top: 6px; }
        .summary-num { font-size: 28px; font-weight: bold; color: #f0a500; }
        .summary-label { font-size: 12px; color: #888; }
        .stats { display: flex; gap: 20px; flex-wrap: wrap; }
        .stat { flex: 1; min-width: 100px; text-align: center; }
        .warn { background: #1a1500; border: 1px solid #f0a500; border-radius: 8px; padding: 12px; color: #f0a500; font-size: 13px; margin-bottom: 16px; }
        .form-group { margin-bottom: 12px; }
        label { display: block; color: #888; font-size: 12px; margin-bottom: 4px; }
        input { width: 100%; background: #111; border: 1px solid #333; color: #e0e0e0; padding: 10px; border-radius: 6px; font-family: monospace; font-size: 13px; outline: none; }
        input:focus { border-color: #f0a500; }
        button { background: #f0a500; color: #000; border: none; padding: 12px 28px; border-radius: 8px; font-weight: bold; font-size: 14px; cursor: pointer; width: 100%; margin-top: 4px; }
        button:hover { background: #d4920a; }
    </style>
</head>
<body>
<?php

function loadEnv($path) {
    if (!file_exists($path)) return;
    foreach (file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) as $line) {
        $line = trim($line);
        if ($line === '' || $line[0] === '#' || strpos($line, '=') === false) continue;
        list($k, $v) = explode('=', $line, 2);
        $k = trim($k); $v = trim($v);
        if ($k && !array_key_exists($k, $_ENV)) { $_ENV[$k] = $v; putenv("$k=$v"); }
    }
}

loadEnv(__DIR__ . '/.env');

$migrateKey = getenv('MIGRATE_KEY') ?: '';
$inputKey   = trim($_POST['key'] ?? '');
$authorized = ($migrateKey !== '' && hash_equals($migrateKey, $inputKey));

echo '<div class="wrap">';
echo '<h1>🥕 Caramel Code — Migrator</h1>';
echo '<p class="sub">Sistema de migrações incrementais. Cada migration roda apenas uma vez.</p>';

if (!$authorized) {
    echo '<div class="warn">⚠️ Protegido por chave. Informe a MIGRATE_KEY do seu <code>.env</code></div>';
    echo '<div class="card"><h2>🔑 Autenticação</h2>';
    echo '<form method="POST"><div class="form-group"><label>Chave de Migração</label>';
    echo '<input type="password" name="key" placeholder="MIGRATE_KEY do .env" autofocus></div>';
    echo '<button type="submit">Executar Migrations →</button></form></div>';
    echo '</div></body></html>';
    exit;
}

$host   = getenv('DB_HOST') ?: 'localhost';
$dbName = getenv('DB_NAME') ?: 'caramelcode';
$user   = getenv('DB_USER') ?: 'root';
$pass   = getenv('DB_PASS') ?: '';

$logs  = [];
$ran   = 0;
$skip  = 0;
$errs  = 0;

try {
    $dsn = "mysql:host=$host;charset=utf8mb4";
    $pdo = new PDO($dsn, $user, $pass, [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ]);

    $pdo->exec("CREATE DATABASE IF NOT EXISTS `$dbName` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
    $pdo->exec("USE `$dbName`");
    $logs[] = ['info', "Banco '$dbName' pronto."];

    $pdo->exec("
        CREATE TABLE IF NOT EXISTS migrations (
            id INT PRIMARY KEY AUTO_INCREMENT,
            name VARCHAR(255) UNIQUE NOT NULL,
            executed_at DATETIME DEFAULT CURRENT_TIMESTAMP
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
    ");

    $done = [];
    foreach ($pdo->query("SELECT name FROM migrations")->fetchAll() as $row) {
        $done[$row['name']] = true;
    }

    $files = glob(__DIR__ . '/migrations/*.sql');
    if ($files) sort($files);

    foreach ((array) $files as $file) {
        $name = basename($file);

        if (isset($done[$name])) {
            $logs[] = ['skip', "$name — já executada, ignorando."];
            $skip++;
            continue;
        }

        $sql = file_get_contents($file);
        $sql = preg_replace('/--[^\n]*/', '', $sql);
        $statements = array_filter(array_map('trim', explode(';', $sql)));

        try {
            foreach ($statements as $stmt) {
                if ($stmt !== '') $pdo->exec($stmt);
            }
            $pdo->prepare("INSERT INTO migrations (name) VALUES (?)")->execute([$name]);
            $logs[] = ['ok', "$name — executada com sucesso."];
            $ran++;
        } catch (PDOException $e) {
            $logs[] = ['err', "$name — ERRO: " . $e->getMessage()];
            $errs++;
        }
    }

    if (empty($files)) {
        $logs[] = ['info', 'Nenhum arquivo .sql encontrado em /migrations/'];
    }

    echo "<h2>✅ Todas as migrações SQL concluídas!</h2>";

    // Chamada automática para o Seed de Questões
    $seedFile = __DIR__ . '/seed_questions.php';
    if (file_exists($seedFile)) {
        echo "<h3>🌱 Iniciando Seed de Questões...</h3>";
        // Definimos uma variável para o seed saber que foi chamado via migrate
        $isMigrationCall = true;
        require_once $seedFile;
    }

} catch (PDOException $e) {
    $logs[] = ['err', 'Falha na conexão: ' . $e->getMessage()];
    $errs++;
}

echo '<div class="card"><h2>📋 Log de Execução</h2>';
foreach ($logs as [$type, $msg]) {
    $badge = match($type) {
        'ok'   => '<span class="badge badge-ok">OK</span>',
        'skip' => '<span class="badge badge-skip">SKIP</span>',
        'err'  => '<span class="badge badge-err">ERRO</span>',
        default=> '<span class="badge badge-info">INFO</span>',
    };
    echo "<div class='log-line log-$type'>$badge" . htmlspecialchars($msg) . "</div>";
}
echo '</div>';

echo '<div class="summary"><div class="stats">';
echo "<div class='stat'><div class='summary-num' style='color:#4caf50'>$ran</div><div class='summary-label'>Executadas</div></div>";
echo "<div class='stat'><div class='summary-num' style='color:#888'>$skip</div><div class='summary-label'>Ignoradas</div></div>";
echo "<div class='stat'><div class='summary-num' style='color:#f44336'>$errs</div><div class='summary-label'>Erros</div></div>";
echo '</div></div>';

if ($errs === 0 && $ran > 0) {
    echo '<button onclick="window.location.href=\'login.html\'" style="margin-top: 20px; background: #4caf50; color: white;">Finalizar e Ir para Login ✓</button>';
}

echo '</div></body></html>';
