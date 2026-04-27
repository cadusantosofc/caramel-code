<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/rate_limit.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Método não permitido']);
    exit;
}

$ip = $_SERVER['HTTP_CF_CONNECTING_IP']
  ?? $_SERVER['HTTP_X_FORWARDED_FOR']
  ?? $_SERVER['REMOTE_ADDR']
  ?? '0.0.0.0';

// 1 cadastro a cada 10 minutos (configurado no backend/rate_limit.php)
RateLimit::check($pdo, 'register', $ip);

$raw  = file_get_contents('php://input');
$data = json_decode($raw, true);

if (!is_array($data)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Payload inválido']);
    exit;
}

$nome  = trim($data['nome'] ?? '');
$email = trim($data['email'] ?? '');
$senha = $data['senha'] ?? '';

if (empty($nome) || empty($email) || empty($senha)) {
    echo json_encode(['success' => false, 'message' => 'Todos os campos são obrigatórios']);
    exit;
}

if (strlen($nome) < 2 || strlen($nome) > 100) {
    echo json_encode(['success' => false, 'message' => 'Nome inválido']);
    exit;
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 255) {
    echo json_encode(['success' => false, 'message' => 'E-mail inválido']);
    exit;
}

if (strlen($senha) < 6 || strlen($senha) > 128) {
    echo json_encode(['success' => false, 'message' => 'A senha deve ter entre 6 e 128 caracteres']);
    exit;
}

try {
    $stmt = $pdo->prepare("SELECT id FROM usuarios WHERE email = ? LIMIT 1");
    $stmt->execute([$email]);
    if ($stmt->fetch()) {
        echo json_encode(['success' => false, 'message' => 'Este e-mail já está cadastrado']);
        exit;
    }

    $senhaHash = password_hash($senha, PASSWORD_BCRYPT, ['cost' => 12]);

    $stmt = $pdo->prepare(
        "INSERT INTO usuarios (nome, email, senha, tipo, onboarding_completo) VALUES (?, ?, ?, 'aluno', 0)"
    );
    $stmt->execute([$nome, $email, $senhaHash]);
    $userId = (int) $pdo->lastInsertId();

    $pdo->prepare("INSERT INTO progresso_usuario (usuario_id) VALUES (?)")
        ->execute([$userId]);

    echo json_encode([
        'success' => true,
        'message' => 'Usuário cadastrado com sucesso',
        'user'    => [
            'id'                  => $userId,
            'nome'                => $nome,
            'email'               => $email,
            'tipo'                => 'aluno',
            'onboarding_completo' => 0,
        ]
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Erro interno ao processar cadastro']);
}
