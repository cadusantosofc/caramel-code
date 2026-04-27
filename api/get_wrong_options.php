<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$user = Auth::check();
if (!$user) { exit; }

$data = json_decode(file_get_contents('php://input'), true);
$questao_id = $data['questao_id'] ?? null;

if (!$questao_id) { exit; }

try {
    $stmt = $pdo->prepare("SELECT resposta_correta FROM questoes WHERE id = ?");
    $stmt->execute([$questao_id]);
    $questao = $stmt->fetch(PDO::FETCH_ASSOC);

    $correct = (int)$questao['resposta_correta'];
    $wrong_indices = [];
    
    // Pegar todos os índices possíveis (0, 1, 2, 3) exceto o correto
    for ($i = 0; $i < 4; $i++) {
        if ($i !== $correct) $wrong_indices[] = $i;
    }

    // Embaralhar e pegar 2
    shuffle($wrong_indices);
    $to_eliminate = array_slice($wrong_indices, 0, 2);

    echo json_encode([
        'success' => true,
        'eliminate' => $to_eliminate
    ]);

} catch (Exception $e) {
    echo json_encode(['success' => false]);
}
