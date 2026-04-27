<?php
/**
 * CARAMEL CODE - IMPORTADOR DE QUESTÕES MOCK -> MYSQL
 * Acesse: http://localhost/caramel/sync_questions.php
 */

require_once __DIR__ . '/backend/config.php';

echo "<h1>🚀 Iniciando Sincronização de Questões...</h1>";

$files = glob(__DIR__ . '/js/questions/*.js');
$totalCursos = 0;
$totalQuestoes = 0;

foreach ($files as $file) {
    $content = file_get_contents($file);
    $filename = basename($file, '.js');
    
    // Identificar o ID do curso (baseado na migration 009)
    $cursoIds = [
        'html' => 10, 'css' => 11, 'javascript' => 12, 'logica' => 13,
        'php' => 14, 'mysql' => 15, 'python' => 16, 'c' => 17, 'java' => 18
    ];
    
    $cursoId = $cursoIds[$filename] ?? null;
    if (!$cursoId) continue;

    echo "<h3>📦 Processando Trilha: " . strtoupper($filename) . " (ID: $cursoId)</h3>";

    // Regex simples para capturar os módulos e questões (formato aproximado)
    // Nota: Como o arquivo é JS, vamos capturar os blocos de array
    preg_match_all("/'(\d+)':\s*\[(.*?)\]\s*[,}]/s", $content, $modulosMatches);

    foreach ($modulosMatches[1] as $idx => $moduloNum) {
        $moduloTitulo = "Módulo $moduloNum";
        $moduloOrdem = (int)$moduloNum;
        
        // Garantir que o módulo existe
        $stmt = $pdo->prepare("INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (?, ?, ?)");
        $stmt->execute([$cursoId, $moduloTitulo, $moduloOrdem]);
        $moduloId = $pdo->lastInsertId() ?: $pdo->query("SELECT id FROM modulos WHERE curso_id=$cursoId AND ordem=$moduloOrdem")->fetchColumn();

        // Capturar as questões do módulo
        $questoesStr = $modulosMatches[2][$idx];
        preg_match_all("/\{.*?id:.*?\}/s", $questoesStr, $questoesMatches);

        foreach ($questoesMatches[0] as $qRaw) {
            // Extrair campos via regex (simulando parse de objeto JS simples)
            preg_match("/text:\s*'(.*?)'/", $qRaw, $mText);
            preg_match("/sub:\s*'(.*?)'/", $qRaw, $mSub);
            preg_match("/options:\s*\[(.*?)\]/", $qRaw, $mOpts);
            preg_match("/correct:\s*(\d+)/", $qRaw, $mCorr);
            preg_match("/explanation:\s*'(.*?)'/", $qRaw, $mExpl);

            if ($mText) {
                $texto = $mText[1];
                $sub = $mSub[1] ?? 'Geral';
                $opcoes = "[" . $mOpts[1] . "]"; // Mantém como string JSON-like
                $opcoes = str_replace("'", '"', $opcoes); // Converte para JSON válido
                $correta = (int)$mCorr[1];
                $expl = $mExpl[1] ?? '';

                $stmt = $pdo->prepare("INSERT INTO questoes (curso_id, modulo_id, texto, sub_categoria, opcoes_json, resposta_correta, explicacao) VALUES (?, ?, ?, ?, ?, ?, ?)");
                $stmt->execute([$cursoId, $moduloId, $texto, $sub, $opcoes, $correta, $expl]);
                $totalQuestoes++;
            }
        }
    }
    $totalCursos++;
}

echo "<h2>✅ Sincronização Concluída!</h2>";
echo "<p>Cursos processados: $totalCursos</p>";
echo "<p>Total de questões importadas: $totalQuestoes</p>";
echo "<br><a href='dashboard.html'>Voltar ao Dashboard</a>";
