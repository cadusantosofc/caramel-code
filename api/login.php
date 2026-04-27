<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';
require_once __DIR__ . '/../backend/rate_limit.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Método não permitido']);
    exit;
}

$ip = $_SERVER['HTTP_CF_CONNECTING_IP']
   ?? $_SERVER['HTTP_X_FORWARDED_FOR']
   ?? $_SERVER['REMOTE_ADDR']
   ?? '0.0.0.0';

RateLimit::check($pdo, 'login', $ip);

$raw  = file_get_contents('php://input');
$data = json_decode($raw, true);

if (!is_array($data)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Payload inválido']);
    exit;
}

$email = trim($data['email'] ?? '');
$senha = $data['senha'] ?? '';

if (empty($email) || empty($senha)) {
    echo json_encode(['success' => false, 'message' => 'E-mail e senha são obrigatórios']);
    exit;
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL) || strlen($email) > 255) {
    echo json_encode(['success' => false, 'message' => 'E-mail ou senha incorretos']);
    exit;
}

if (strlen($senha) < 6 || strlen($senha) > 128) {
    echo json_encode(['success' => false, 'message' => 'E-mail ou senha incorretos']);
    exit;
}

try {
    $stmt = $pdo->prepare(
        "SELECT id, nome, email, senha, tipo, status, nivel_aprendizado, data_cadastro 
         FROM usuarios WHERE email = ? LIMIT 1"
    );
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if (!$user || !password_verify($senha, $user['senha'])) {
        echo json_encode(['success' => false, 'message' => 'E-mail ou senha incorretos']);
        exit;
    }

    if ($user['status'] !== 'ativo') {
        echo json_encode(['success' => false, 'message' => 'Conta inativa. Entre em contato com o suporte.']);
        exit;
    }

    $pdo->prepare("UPDATE usuarios SET ultimo_login = NOW() WHERE id = ?")
        ->execute([$user['id']]);

    $token = Auth::generateToken($user['id'], $user['email'], $user['tipo']);
    Auth::setSecureCookie($token);

    unset($user['senha']);

    echo json_encode([
        'success' => true,
        'user'    => $user
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Erro interno. Tente novamente.']);
}
