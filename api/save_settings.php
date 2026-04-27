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
$usuario_id = $userAuth['id'];
$settings = $data['settings'] ?? [];

try {
    $settings_json = json_encode($settings);
    $stmt = $pdo->prepare("UPDATE usuarios SET settings_json = ? WHERE id = ?");
    $stmt->execute([$settings_json, $usuario_id]);

    echo json_encode(['success' => true]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro ao salvar configurações']);
}
