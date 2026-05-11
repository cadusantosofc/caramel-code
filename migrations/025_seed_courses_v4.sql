-- Migration: 025_seed_courses_v4
-- Apenas 4 cursos principais para esboço: Lógica, HTML, CSS, JavaScript

-- Remove cursos extras (MySQL, PHP, Python, C, Java)
DELETE FROM cursos WHERE id IN (14, 15, 16, 17, 18);
DELETE FROM modulos WHERE curso_id IN (14, 15, 16, 17, 18);
DELETE FROM questoes WHERE curso_id IN (14, 15, 16, 17, 18);
DELETE FROM matriculas WHERE curso_id IN (14, 15, 16, 17, 18);
DELETE FROM progresso_fases WHERE curso_id IN (14, 15, 16, 17, 18);

-- Garante que os 4 cursos principais existam
INSERT INTO cursos (id, titulo, slug, descricao, categoria, nivel, duracao_horas, ordem, requisito_id, admin_id) VALUES
(13, 'Logica de Programacao', 'logica', 'Algoritmos e pensamento logico para iniciantes', 'Programacao', 'basico', 30, 1, NULL, 1),
(10, 'HTML do Zero', 'html', 'Estruture paginas web modernas do absoluto zero', 'Programacao', 'basico', 20, 2, 13, 1),
(11, 'CSS e Estilo', 'css', 'Design e layouts responsivos com CSS moderno', 'Programacao', 'basico', 25, 3, 10, 1),
(12, 'JavaScript Moderno', 'javascript', 'Interatividade e logica de programacao real', 'Programacao', 'intermediario', 40, 4, 11, 1)
ON DUPLICATE KEY UPDATE titulo = VALUES(titulo), slug = VALUES(slug), ordem = VALUES(ordem), requisito_id = VALUES(requisito_id);
