<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    exit;
}

require_once __DIR__ . '/../backend/auth.php';
$userAuth = Auth::check(); // Valida JWT e para execução se falhar

$data = json_decode(file_get_contents('php://input'), true);
$usuario_id = $userAuth['id']; // Usar ID do token, NUNCA confiar no front!

try {
    $trilhas_json = json_encode($data['trilhas'] ?? []);
    
    $stmt = $pdo->prepare("
        INSERT INTO progresso_usuario (usuario_id, moedas, xp, nivel, dias_seguidos, medalhas, trilhas_json)
        VALUES (?, ?, ?, ?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE 
            moedas = VALUES(moedas),
            xp = VALUES(xp),
            nivel = VALUES(nivel),
            dias_seguidos = VALUES(dias_seguidos),
            medalhas = VALUES(medalhas),
            trilhas_json = VALUES(trilhas_json)
    ");
    
    $stmt->execute([
        $usuario_id,
        $data['moedas'] ?? 0,
        $data['xp'] ?? 0,
        $data['nivel'] ?? 1,
        $data['dias_seguidos'] ?? 1,
        $data['medalhas'] ?? 0,
        $trilhas_json
    ]);

    echo json_encode(['success' => true]);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro ao salvar progresso']);
}
