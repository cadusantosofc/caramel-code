<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';

require_once __DIR__ . '/../backend/auth.php';
$userAuth = Auth::check();
$usuario_id = $userAuth['id'];

try {
    $stmt = $pdo->prepare("SELECT * FROM progresso_usuario WHERE usuario_id = ?");
    $stmt->execute([$usuario_id]);
    $progresso = $stmt->fetch();

    if ($progresso) {
        // Formatar para o padrão do frontend
        $result = [
            'userId' => (int)$progresso['usuario_id'],
            'moedas' => (int)$progresso['moedas'],
            'xp' => (int)$progresso['xp'],
            'nivel' => (int)$progresso['nivel'],
            'dias_seguidos' => (int)$progresso['dias_seguidos'],
            'medalhas' => (int)$progresso['medalhas'],
            'trilhas' => json_decode($progresso['trilhas_json'] ?? '{}', true)
        ];
        echo json_encode($result);
    } else {
        // Retornar padrão se não existir
        echo json_encode([
            'userId' => (int)$usuario_id,
            'moedas' => 50,
            'xp' => 0,
            'nivel' => 1,
            'dias_seguidos' => 1,
            'medalhas' => 0,
            'trilhas' => new stdClass()
        ]);
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro ao buscar progresso']);
}
