<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$userAuth = Auth::check();
if (!$userAuth) {
    echo json_encode(['success' => false, 'message' => 'Não autenticado']);
    exit;
}
$usuario_id = $userAuth['id'];

try {
    // 1. Buscar progresso básico
    $stmt = $pdo->prepare("SELECT * FROM progresso_usuario WHERE usuario_id = ?");
    $stmt->execute([$usuario_id]);
    $progresso = $stmt->fetch();

    // 2. Buscar todos os cursos ativos para montar o mapa dinâmico
    // Se a coluna 'slug' ainda não existir (antes da migração), usamos o título como slug temporário
    try {
        $stmtCursos = $pdo->query("SELECT id, COALESCE(slug, id) as slug FROM cursos WHERE status = 'ativo'");
    } catch (Exception $e) {
        $stmtCursos = $pdo->query("SELECT id, id as slug FROM cursos");
    }
    $cursos = $stmtCursos->fetchAll(PDO::FETCH_ASSOC);

    // 3. Buscar fases concluídas
    $stmtFases = $pdo->prepare("SELECT curso_id, modulo_ordem FROM progresso_fases WHERE usuario_id = ?");
    $stmtFases->execute([$usuario_id]);
    $fasesConcluidas = $stmtFases->fetchAll(PDO::FETCH_ASSOC);

    $trilhasMap = [];
    foreach ($cursos as $c) {
        $trilhasMap[$c['slug']] = ['concluidas' => []];
    }

    foreach ($fasesConcluidas as $fase) {
        foreach ($cursos as $c) {
            if ($c['id'] == $fase['curso_id']) {
                $trilhasMap[$c['slug']]['concluidas'][] = (int)$fase['modulo_ordem'];
                break;
            }
        }
    }

    if ($progresso) {
        $result = [
            'userId' => (int)$progresso['usuario_id'],
            'moedas' => (int)$progresso['moedas'],
            'xp' => (int)$progresso['xp'],
            'nivel' => (int)$progresso['nivel'],
            'dias_seguidos' => (int)$progresso['dias_seguidos'],
            'medalhas' => (int)$progresso['medalhas'],
            'questoes_respondidas' => (int)($progresso['questoes_respondidas'] ?? 0),
            'questoes_corretas' => (int)($progresso['questoes_corretas'] ?? 0),
            'total_questoes' => (int)($progresso['total_questoes'] ?? 50),
            'trilhas' => $trilhasMap
        ];
    } else {
        $result = [
            'userId' => (int)$usuario_id,
            'moedas' => 50,
            'xp' => 0,
            'nivel' => 1,
            'dias_seguidos' => 1,
            'medalhas' => 0,
            'questoes_respondidas' => 0,
            'questoes_corretas' => 0,
            'total_questoes' => 50,
            'trilhas' => $trilhasMap
        ];
    }
    echo json_encode($result);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Erro interno ao buscar progresso: ' . $e->getMessage()]);
}
