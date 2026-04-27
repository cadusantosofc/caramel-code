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
$nome = trim($data['nome'] ?? '');
$email = trim($data['email'] ?? '');
$senha = $data['senha'] ?? null;

if (!$nome || !$email) {
    echo json_encode(['success' => false, 'message' => 'Dados obrigatórios ausentes']);
    exit;
}

try {
    // Verificar se o e-mail já existe para outro usuário
    $stmt = $pdo->prepare("SELECT id FROM usuarios WHERE email = ? AND id != ?");
    $stmt->execute([$email, $usuario_id]);
    if ($stmt->fetch()) {
        echo json_encode(['success' => false, 'message' => 'Este e-mail já está em uso por outro usuário']);
        exit;
    }

    if ($senha && strlen($senha) >= 6) {
        $senhaHash = password_hash($senha, PASSWORD_BCRYPT, ['cost' => 12]);
        $stmt = $pdo->prepare("UPDATE usuarios SET nome = ?, email = ?, senha = ? WHERE id = ?");
        $stmt->execute([$nome, $email, $senhaHash, $usuario_id]);
    } else {
        $stmt = $pdo->prepare("UPDATE usuarios SET nome = ?, email = ? WHERE id = ?");
        $stmt->execute([$nome, $email, $usuario_id]);
    }

    echo json_encode([
        'success' => true, 
        'user' => [
            'id' => $usuario_id,
            'nome' => $nome,
            'email' => $email
        ]
    ]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro ao atualizar perfil']);
}
