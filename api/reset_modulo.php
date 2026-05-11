<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$user = Auth::check();
if (!$user) {
    echo json_encode(['success' => false, 'message' => 'Não autenticado']);
    exit;
}

$data = json_decode(file_get_contents('php://input'), true);
$curso_id = $data['curso_id'] ?? null;
$modulo_ordem = $data['modulo_ordem'] ?? null;

if (!$curso_id || !$modulo_ordem) {
    echo json_encode(['success' => false, 'message' => 'Parâmetros ausentes']);
    exit;
}

try {
    $pdo->beginTransaction();

    // Buscar módulo
    $stmtMod = $pdo->prepare("SELECT id FROM modulos WHERE curso_id = ? AND ordem = ?");
    $stmtMod->execute([$curso_id, $modulo_ordem]);
    $modulo = $stmtMod->fetch(PDO::FETCH_ASSOC);
    
    if (!$modulo) {
        throw new Exception('Módulo não encontrado');
    }

    $modulo_id = $modulo['id'];

    // Resetar respostas das questões
    $stmt = $pdo->prepare("
        DELETE pq FROM progresso_questoes pq
        JOIN questoes q ON pq.questao_id = q.id
        WHERE pq.usuario_id = ? AND q.modulo_id = ?
    ");
    $stmt->execute([$user['id'], $modulo_id]);

    // Resetar progresso da fase
    $stmt = $pdo->prepare("
        DELETE FROM progresso_fases 
        WHERE usuario_id = ? AND curso_id = ? AND modulo_ordem = ?
    ");
    $stmt->execute([$user['id'], $curso_id, $modulo_ordem]);

    $pdo->commit();
    
    echo json_encode(['success' => true, 'message' => 'Módulo resetado com sucesso']);
    
} catch (Exception $e) {
    $pdo->rollBack();
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
