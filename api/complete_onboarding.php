<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Método não permitido']);
    exit;
}

$userAuth = Auth::check();

$raw  = file_get_contents('php://input');
$data = json_decode($raw, true);

if (!is_array($data)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Payload inválido']);
    exit;
}

$niveisPermitidos = ['iniciante', 'intermediario', 'avancado'];
$estilosPermitidos = ['progressivo', 'pratico', 'gamificado'];

$nivel  = $data['nivel_aprendizado'] ?? 'iniciante';
$estilo = $data['estilo_aprendizado'] ?? 'progressivo';

if (!in_array($nivel, $niveisPermitidos, true)) {
    echo json_encode(['success' => false, 'message' => 'Nível inválido']);
    exit;
}

if (!in_array($estilo, $estilosPermitidos, true)) {
    echo json_encode(['success' => false, 'message' => 'Estilo inválido']);
    exit;
}

try {
    $stmt = $pdo->prepare(
        "UPDATE usuarios
         SET nivel_aprendizado = ?, estilo_aprendizado = ?, onboarding_completo = 1
         WHERE id = ? AND onboarding_completo = 0"
    );
    $stmt->execute([$nivel, $estilo, $userAuth['id']]);

    $affected = $stmt->rowCount();

    $stmt2 = $pdo->prepare(
        "SELECT id, nome, email, tipo, onboarding_completo, nivel_aprendizado, estilo_aprendizado
         FROM usuarios WHERE id = ?"
    );
    $stmt2->execute([$userAuth['id']]);
    $user = $stmt2->fetch();

    echo json_encode([
        'success'  => true,
        'updated'  => $affected > 0,
        'user'     => $user
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Erro interno']);
}
