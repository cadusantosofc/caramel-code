<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$user = Auth::check();
if (!$user) { exit; }

$trail_slug = $_GET['trail'] ?? 'html';

// Mapeamento reverso para o banco (Já que não temos a coluna slug ainda)
$slugToId = [
    'html' => 10,
    'css' => 11,
    'javascript' => 12,
    'logica' => 13,
    'php' => 14,
    'mysql' => 15,
    'python' => 16,
    'c' => 17,
    'java' => 18
];

$curso_id = $slugToId[$trail_slug] ?? 1;

try {
    // 1. Buscar detalhes do curso
    $stmtCurso = $pdo->prepare("SELECT titulo, descricao FROM cursos WHERE id = ?");
    $stmtCurso->execute([$curso_id]);
    $curso = $stmtCurso->fetch(PDO::FETCH_ASSOC);

    if (!$curso) {
        echo json_encode(['success' => false, 'message' => 'Curso não encontrado']);
        exit;
    }

    // 2. Buscar todos os módulos deste curso
    $stmtModulos = $pdo->prepare("SELECT id, titulo, ordem FROM modulos WHERE curso_id = ? ORDER BY ordem ASC");
    $stmtModulos->execute([$curso_id]);
    $modulos = $stmtModulos->fetchAll(PDO::FETCH_ASSOC);

    // 3. Buscar progresso do usuário neste curso
    $stmtProgresso = $pdo->prepare("SELECT modulo_ordem FROM progresso_fases WHERE usuario_id = ? AND curso_id = ?");
    $stmtProgresso->execute([$user['id'], $curso_id]);
    $concluidas = $stmtProgresso->fetchAll(PDO::FETCH_COLUMN);

    // 4. Buscar moedas e nível para o header
    $stmtStats = $pdo->prepare("SELECT moedas, nivel FROM progresso_usuario WHERE usuario_id = ?");
    $stmtStats->execute([$user['id']]);
    $stats = $stmtStats->fetch(PDO::FETCH_ASSOC) ?: ['moedas' => 50, 'nivel' => 1];

    echo json_encode([
        'success' => true,
        'curso' => $curso,
        'modulos' => $modulos,
        'concluidas' => array_map('intval', $concluidas),
        'stats' => $stats
    ]);

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro interno']);
}
