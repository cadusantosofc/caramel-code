<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../backend/config.php';
require_once __DIR__ . '/../backend/auth.php';

$user = Auth::check();
if (!$user) { exit; }

try {
    // 1. Verificar se a coluna slug existe (para saber se a migração 014 rodou)
    $check = $pdo->query("SHOW COLUMNS FROM cursos LIKE 'slug'");
    if ($check->rowCount() == 0) {
        echo json_encode([
            'success' => false, 
            'message' => 'Banco de dados desatualizado. Por favor, execute o arquivo migrate.php no seu navegador.'
        ]);
        exit;
    }

    // 2. Buscar todos os cursos e contar seus módulos reais
    $stmt = $pdo->prepare("
        SELECT 
            c.id, c.titulo, c.descricao, c.slug, c.requisito_id,
            (SELECT COUNT(*) FROM modulos WHERE curso_id = c.id) as total_fases,
            r.titulo as requisito_nome
        FROM cursos c
        LEFT JOIN cursos r ON c.requisito_id = r.id
        WHERE c.status = 'ativo'
        ORDER BY c.ordem ASC
    ");
    $stmt->execute();
    $cursos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // 3. Buscar o progresso do usuário
    $stmtProg = $pdo->prepare("
        SELECT curso_id, COUNT(*) as concluidas 
        FROM progresso_fases 
        WHERE usuario_id = ? 
        GROUP BY curso_id
    ");
    $stmtProg->execute([$user['id']]);
    $progresso = $stmtProg->fetchAll(PDO::FETCH_KEY_PAIR);

    // 4. Montar a resposta
    $resposta = [];
    foreach ($cursos as $curso) {
        $concluidas = (int)($progresso[$curso['id']] ?? 0);
        $total = (int)$curso['total_fases'];
        
        $is_locked = false;
        $req_id = $curso['requisito_id'];
        if ($req_id) {
            $stmtReq = $pdo->prepare("SELECT COUNT(*) FROM modulos WHERE curso_id = ?");
            $stmtReq->execute([$req_id]);
            $total_req = (int)$stmtReq->fetchColumn();
            
            $concluidas_req = (int)($progresso[$req_id] ?? 0);
            
            // Se o requisito não tem módulos cadastrados OU se o usuário não terminou todos os módulos dele
            if ($total_req === 0 || $concluidas_req < $total_req) {
                $is_locked = true;
            }
        }

        $resposta[] = [
            'id' => $curso['id'],
            'slug' => $curso['slug'],
            'title' => $curso['titulo'],
            'desc' => $curso['descricao'],
            'icon' => getIconBySlug($curso['slug']),
            'modules' => $total,
            'completed' => $concluidas,
            'percent' => $total > 0 ? round(($concluidas / $total) * 100) : 0,
            'is_locked' => $is_locked,
            'required_name' => $curso['requisito_nome']
        ];
    }

    echo json_encode(['success' => true, 'trails' => $resposta]);

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erro SQL: ' . $e->getMessage()]);
}

function getIconBySlug($slug) {
    $icons = [
        'html' => '🌐', 'css' => '🎨', 'javascript' => '⚡', 
        'logica' => '🧠', 'mysql' => '🗄️', 'php' => '🐘', 
        'python' => '🐍', 'c' => '🏗️', 'java' => '☕'
    ];
    return $icons[$slug] ?? '📚';
}
