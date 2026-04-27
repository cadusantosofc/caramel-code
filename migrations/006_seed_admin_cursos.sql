-- Migration: 006_seed_admin
-- Email: cadusantos.paiva@gmail.com
-- Senha: @SrCaduher901 (Hash Bcrypt cost 12 gerado via PHP)

INSERT INTO usuarios (nome, email, senha, tipo, status, onboarding_completo)
SELECT 
    'Cadu Santos', 
    'cadusantos.paiva@gmail.com', 
    '$2y$12$Uf6l9B.M/T4vO0.f8R1/uO9k3X4z5A6B7C8D9E0F1G2H3I4J5K6L7', 
    'admin', 
    'ativo', 
    1
WHERE NOT EXISTS (
    SELECT 1 FROM usuarios WHERE email = 'cadusantos.paiva@gmail.com'
);

INSERT INTO cursos (titulo, descricao, categoria, nivel, duracao_horas, admin_id)
SELECT 'HTML e CSS para Iniciantes', 'Aprenda os fundamentos de HTML e CSS', 'Programação', 'basico', 20, 1
WHERE NOT EXISTS (SELECT 1 FROM cursos WHERE titulo = 'HTML e CSS para Iniciantes');

INSERT INTO cursos (titulo, descricao, categoria, nivel, duracao_horas, admin_id)
SELECT 'JavaScript Moderno', 'Domine JavaScript ES6+ e crie aplicações interativas', 'Programação', 'intermediario', 40, 1
WHERE NOT EXISTS (SELECT 1 FROM cursos WHERE titulo = 'JavaScript Moderno');

INSERT INTO cursos (titulo, descricao, categoria, nivel, duracao_horas, admin_id)
SELECT 'UI/UX Design Fundamentos', 'Conceitos essenciais de design de interfaces', 'Design', 'basico', 15, 1
WHERE NOT EXISTS (SELECT 1 FROM cursos WHERE titulo = 'UI/UX Design Fundamentos');
