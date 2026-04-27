<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$user = Auth::check();
if (!$user) { exit; }

$curso_id = $_GET['curso_id'] ?? null;
$modulo_ordem = $_GET['modulo_id'] ?? null;
$offset = isset($_GET['offset']) ? (int)$_GET['offset'] : null;

if (!$curso_id || !$modulo_ordem) {
    echo json_encode(['success' => false, 'message' => 'Parâmetros ausentes']);
    exit;
}

try {
    // 1. Contar total de questões para o progresso
    $stmtCount = $pdo->prepare("
        SELECT COUNT(*) as total 
        FROM questoes q
        JOIN modulos m ON q.modulo_id = m.id
        WHERE q.curso_id = ? AND m.ordem = ?
    ");
    $stmtCount->execute([$curso_id, $modulo_ordem]);
    $total = $stmtCount->fetch(PDO::FETCH_ASSOC)['total'];

    // 2. Se o offset não for enviado, descobrir onde o usuário parou (Checkpoint)
    if ($offset === null) {
        $stmtCheckpoint = $pdo->prepare("
            SELECT COUNT(*) as respondidas
            FROM progresso_questoes pq
            JOIN questoes q ON pq.questao_id = q.id
            JOIN modulos m ON q.modulo_id = m.id
            WHERE pq.usuario_id = ? AND q.curso_id = ? AND m.ordem = ?
        ");
        $stmtCheckpoint->execute([$user['id'], $curso_id, $modulo_ordem]);
        $offset = (int)$stmtCheckpoint->fetch(PDO::FETCH_ASSOC)['respondidas'];
        
        // Se o usuário já respondeu TUDO dessa fase, vamos deixá-lo jogar de novo do zero!
        if ($total > 0 && $offset >= $total) {
            $offset = 0;
            // Opcional: apagar o progresso antigo das questões para ele ganhar XP de novo?
            // (Deixaremos o progresso intacto no banco, apenas reiniciamos a visualização)
        }
    }

    // 3. Buscar APENAS a questão atual (Segurança máxima)
    $stmt = $pdo->prepare("
        SELECT q.id, q.texto as text, q.sub_categoria as sub, q.dica, q.opcoes_json 
        FROM questoes q
        JOIN modulos m ON q.modulo_id = m.id
        WHERE q.curso_id = ? AND m.ordem = ?
        ORDER BY q.id ASC
        LIMIT 1 OFFSET ?
    ");
    $stmt->execute([$curso_id, $modulo_ordem, $offset]);
    $questao = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($questao) {
        $questao['options'] = json_decode($questao['opcoes_json'], true);
        unset($questao['opcoes_json']);
        
        echo json_encode([
            'success' => true,
            'total' => (int)$total,
            'question' => $questao,
            'current_offset' => $offset
        ]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Fim das questões']);
    }

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro interno']);
}
