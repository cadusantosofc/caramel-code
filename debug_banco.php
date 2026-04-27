<?php
require_once 'backend/config.php';

try {
    echo "<h2>Relatório Geral de Conteúdo (Lógica - ID 13):</h2>";
    
    // 1. Verificando se o curso existe
    $stmtC = $pdo->prepare("SELECT * FROM cursos WHERE id = 13");
    $stmtC->execute();
    $curso = $stmtC->fetch(PDO::FETCH_ASSOC);
    echo "Curso: " . ($curso ? $curso['titulo'] : "NÃO ENCONTRADO") . "<br>";

    // 2. Verificando Módulos
    $stmtM = $pdo->prepare("SELECT id, ordem, titulo FROM modulos WHERE curso_id = 13 ORDER BY ordem");
    $stmtM->execute();
    $modulos = $stmtM->fetchAll(PDO::FETCH_ASSOC);
    echo "<h3>Módulos (Fases):</h3>";
    echo "<table border='1'><tr><th>ID</th><th>Ordem</th><th>Título</th></tr>";
    foreach ($modulos as $m) {
        echo "<tr><td>{$m['id']}</td><td>{$m['ordem']}</td><td>{$m['titulo']}</td></tr>";
    }
    echo "</table>";

    // 3. Verificando Questões
    $stmtQ = $pdo->prepare("SELECT id, modulo_id, texto FROM questoes WHERE curso_id = 13");
    $stmtQ->execute();
    $questoes = $stmtQ->fetchAll(PDO::FETCH_ASSOC);
    echo "<h3>Questões de Lógica no Banco: " . count($questoes) . "</h3>";
    echo "<table border='1'><tr><th>ID</th><th>Modulo_ID</th><th>Texto</th></tr>";
    foreach ($questoes as $q) {
        echo "<tr><td>{$q['id']}</td><td>{$q['modulo_id']}</td><td>" . substr($q['texto'], 0, 50) . "...</td></tr>";
    }
    echo "</table>";

} catch (Exception $e) {
    echo "Erro: " . $e->getMessage();
}
