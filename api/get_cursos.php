<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

try {
    $stmt = $pdo->query("SELECT * FROM cursos WHERE status = 'ativo'");
    $cursos = $stmt->fetchAll();

    echo json_encode($cursos);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro ao buscar cursos']);
}
