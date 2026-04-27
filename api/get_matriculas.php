<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

require_once __DIR__ . '/../backend/auth.php';
$userAuth = Auth::check();
$aluno_id = $userAuth['id'];

try {
    $stmt = $pdo->prepare("SELECT * FROM matriculas WHERE aluno_id = ?");
    $stmt->execute([$aluno_id]);
    $matriculas = $stmt->fetchAll();

    echo json_encode($matriculas);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro ao buscar matrículas']);
}
