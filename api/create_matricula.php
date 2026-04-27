<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    exit;
}

require_once __DIR__ . '/../backend/auth.php';
$userAuth = Auth::check();

$data = json_decode(file_get_contents('php://input'), true);
$aluno_id = $userAuth['id'];
$curso_id = $data['curso_id'] ?? null;

if (!$curso_id) {
    echo json_encode(['success' => false, 'message' => 'Dados incompletos']);
    exit;
}

try {
    // Verificar se já existe
    $stmt = $pdo->prepare("SELECT id FROM matriculas WHERE aluno_id = ? AND curso_id = ?");
    $stmt->execute([$aluno_id, $curso_id]);
    if ($stmt->fetch()) {
        echo json_encode(['success' => false, 'message' => 'Matrícula já existe']);
        exit;
    }

    $stmt = $pdo->prepare("INSERT INTO matriculas (aluno_id, curso_id) VALUES (?, ?)");
    $stmt->execute([$aluno_id, $curso_id]);

    echo json_encode(['success' => true, 'id' => $pdo->lastInsertId()]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro ao criar matrícula']);
}
