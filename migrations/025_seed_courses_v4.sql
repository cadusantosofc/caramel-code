-- Migration: 025_seed_courses_v4
-- Garante que os cursos existam e já nasçam completos (com slugs, ordem e requisitos)

INSERT INTO cursos (id, titulo, slug, descricao, categoria, nivel, duracao_horas, ordem, requisito_id, admin_id) VALUES
(13, 'Logica de Programacao', 'logica', 'Algoritmos e pensamento logico para iniciantes', 'Programacao', 'basico', 30, 1, NULL, 1),
(10, 'HTML do Zero', 'html', 'Estruture paginas web modernas do absoluto zero', 'Programacao', 'basico', 20, 2, 13, 1),
(11, 'CSS e Estilo', 'css', 'Design e layouts responsivos com CSS moderno', 'Programacao', 'basico', 25, 3, 10, 1),
(12, 'JavaScript Moderno', 'javascript', 'Interatividade e logica de programacao real', 'Programacao', 'intermediario', 40, 4, 11, 1),
(15, 'MySQL', 'mysql', 'Bancos de dados e queries SQL eficientes', 'Programacao', 'intermediario', 30, 5, 12, 1),
(14, 'PHP Backend', 'php', 'Crie sistemas dinamicos e servidores robustos', 'Programacao', 'intermediario', 35, 6, 12, 1),
(16, 'Python', 'python', 'Automacao, dados e Inteligencia Artificial', 'Programacao', 'intermediario', 45, 7, 13, 1),
(17, 'Linguagem C', 'c', 'A base da computacao e programacao moderna', 'Programacao', 'avancado', 50, 8, 13, 1),
(18, 'Java e POO', 'java', 'Orientacao a Objetos e desenvolvimento corporativo', 'Programacao', 'avancado', 60, 9, 13, 1)
ON DUPLICATE KEY UPDATE titulo = VALUES(titulo), slug = VALUES(slug), ordem = VALUES(ordem), requisito_id = VALUES(requisito_id);
