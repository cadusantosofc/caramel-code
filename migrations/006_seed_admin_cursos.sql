-- Migration: 006_seed_admin
-- Cria apenas o usuário admin - cursos são gerenciados na migration 025
-- Email: cadusantos.paiva@gmail.com
-- Senha: @SrCaduher901 (Hash Bcrypt cost 12 gerado via PHP)

INSERT INTO usuarios (nome, email, senha, tipo, status, onboarding_completo)
SELECT 
    'Carlos Eduardo', 
    'cadusantos.paiva@gmail.com', 
    '$2y$12$Yp319zsGWMM5YLJJiPsnx.cEwd3floz.QtGQRYgzk2xvYAJKfZ6cu', 
    'admin', 
    'ativo', 
    1
WHERE NOT EXISTS (
    SELECT 1 FROM usuarios WHERE email = 'cadusantos.paiva@gmail.com'
);
