<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    exit;
}

$userAuth = Auth::check();
$usuario_id = $userAuth['id'];
$data = json_decode(file_get_contents('php://input'), true);

$curso_id = $data['curso_id'] ?? null;
$modulo_ordem = $data['modulo_ordem'] ?? null;
$moedas_ganhas = intval($data['moedas_ganhas'] ?? 0);
$xp_ganho = intval($data['xp_ganho'] ?? 0);

try {
    $pdo->beginTransaction();

    // 1. Verificar se esta fase já foi concluída antes para evitar farm
    $stmtCheck = $pdo->prepare("SELECT id FROM progresso_fases WHERE usuario_id = ? AND curso_id = ? AND modulo_ordem = ?");
    $stmtCheck->execute([$usuario_id, $curso_id, $modulo_ordem]);
    $ja_concluiu = $stmtCheck->fetch();

    if ($ja_concluiu) {
        // Se já concluiu, não ganha moedas nem XP de novo
        $moedas_ganhas = 0;
        $xp_ganho = 0;
    } else if ($curso_id && $modulo_ordem) {
        // Marca como concluído no histórico
        $stmtMark = $pdo->prepare("INSERT INTO progresso_fases (usuario_id, curso_id, modulo_ordem) VALUES (?, ?, ?)");
        $stmtMark->execute([$usuario_id, $curso_id, $modulo_ordem]);
    }

    // 2. Atualizar o progresso global (Somar em vez de sobrescrever)
    $stmtUpdate = $pdo->prepare("
        INSERT INTO progresso_usuario (usuario_id, moedas, xp, nivel, dias_seguidos)
        VALUES (?, ?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE 
            moedas = moedas + VALUES(moedas),
            xp = xp + VALUES(xp),
            nivel = VALUES(nivel),
            dias_seguidos = VALUES(dias_seguidos)
    ");
    
    $stmtUpdate->execute([
        $usuario_id,
        $moedas_ganhas,
        $xp_ganho,
        $data['nivel'] ?? 1,
        $data['dias_seguidos'] ?? 1
    ]);

    $pdo->commit();
    echo json_encode(['success' => true, 'ja_concluido' => (bool)$ja_concluiu]);
} catch (Exception $e) {
    $pdo->rollBack();
    echo json_encode(['success' => false, 'message' => 'Erro ao processar recompensa']);
}
