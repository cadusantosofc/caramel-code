<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

require_once __DIR__ . '/../backend/auth.php';
$userAuth = Auth::check();
$usuario_id = $userAuth['id'];

try {
    $stmt = $pdo->prepare("SELECT settings_json FROM usuarios WHERE id = ?");
    $stmt->execute([$usuario_id]);
    $result = $stmt->fetch();

    if ($result && $result['settings_json']) {
        echo $result['settings_json'];
    } else {
        echo json_encode([
            'darkMode' => false,
            'notifications' => true,
            'language' => 'pt-BR'
        ]);
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro ao buscar configurações']);
}
