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
$questao_id = $data['questao_id'] ?? null;
$opcao_index = $data['opcao_index'] ?? null;
$speed_bonus = $data['speed_bonus'] ?? 0;

if ($questao_id === null || $opcao_index === null) {
    echo json_encode(['success' => false, 'message' => 'Dados incompletos']);
    exit;
}

try {
    // Buscar a resposta real no banco
    $stmt = $pdo->prepare("SELECT resposta_correta, explicacao FROM questoes WHERE id = ?");
    $stmt->execute([$questao_id]);
    $questao = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$questao) {
        echo json_encode(['success' => false, 'message' => 'Questão não encontrada']);
        exit;
    }

    // 1. Verificar se esta questão específica já foi respondida por este usuário
    $stmtCheck = $pdo->prepare("SELECT is_correct FROM progresso_questoes WHERE usuario_id = ? AND questao_id = ?");
    $stmtCheck->execute([$user['id'], $questao_id]);
    $already_answered = $stmtCheck->fetch();

    $is_correct = ((int)$questao['resposta_correta'] === (int)$opcao_index);
    $moedas_ganhas = 0;
    $xp_ganho = 0;
    $is_new_answer = !$already_answered;

    if ($is_new_answer) {
        if ($is_correct) {
            $moedas_ganhas = 10 + (int)$speed_bonus;
            $xp_ganho = 15;
        } else {
            $moedas_ganhas = -5; // Penalidade
        }

        // Registrar a resposta para o checkpoint (Segurança Ativa)
        $stmtReg = $pdo->prepare("
            INSERT INTO progresso_questoes (usuario_id, questao_id, modulo_id, is_correct) 
            VALUES (?, ?, (SELECT modulo_id FROM questoes WHERE id = ?), ?)
        ");
        $stmtReg->execute([$user['id'], $questao_id, $questao_id, $is_correct ? 1 : 0]);

        // Atualizar moedas e estatísticas no banco
        $stmt = $pdo->prepare("
            INSERT INTO progresso_usuario (usuario_id, moedas, xp, questoes_respondidas, questoes_corretas) 
            VALUES (?, GREATEST(0, 50 + ?), ?, 1, ?) 
            ON DUPLICATE KEY UPDATE 
                moedas = GREATEST(0, moedas + ?), 
                xp = xp + ?,
                questoes_respondidas = questoes_respondidas + 1,
                questoes_corretas = questoes_corretas + ?
        ");
        $stmt->execute([
            $user['id'], 
            $moedas_ganhas, 
            max(0, $xp_ganho), 
            $is_correct ? 1 : 0,
            $moedas_ganhas, 
            $xp_ganho,
            $is_correct ? 1 : 0
        ]);
    }

    // Buscar novo saldo atualizado
    $stmt = $pdo->prepare("SELECT moedas, xp FROM progresso_usuario WHERE usuario_id = ?");
    $stmt->execute([$user['id']]);
    $new_stats = $stmt->fetch(PDO::FETCH_ASSOC);

    echo json_encode([
        'success' => true,
        'correct' => $is_correct,
        'correct_index' => (int)$questao['resposta_correta'],
        'explanation' => $questao['explicacao'],
        'new_moedas' => $new_stats['moedas'] ?? 0,
        'new_xp' => $new_stats['xp'] ?? 0,
        'is_new_reward' => $is_new_answer
    ]);

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro SQL: ' . $e->getMessage()]);
}
