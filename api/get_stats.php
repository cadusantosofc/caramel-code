<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

try {
    $stats = [];
    
    $stats['usuarios'] = $pdo->query("SELECT COUNT(*) FROM usuarios")->fetchColumn();
    $stats['cursos'] = $pdo->query("SELECT COUNT(*) FROM cursos")->fetchColumn();
    $stats['aulas'] = $pdo->query("SELECT COUNT(*) FROM aulas")->fetchColumn();
    $stats['matriculas'] = $pdo->query("SELECT COUNT(*) FROM matriculas")->fetchColumn();

    echo json_encode($stats);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro ao buscar estatísticas']);
}
