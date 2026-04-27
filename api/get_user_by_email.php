<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

$email = $_GET['email'] ?? null;

if (!$email || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo json_encode(['exists' => false]);
    exit;
}

try {
    $stmt = $pdo->prepare("SELECT COUNT(*) FROM usuarios WHERE email = ?");
    $stmt->execute([$email]);
    $exists = $stmt->fetchColumn() > 0;

    echo json_encode(['exists' => $exists]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['exists' => false]);
}
