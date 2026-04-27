-- Migration: 015_deactivate_old_courses
-- Desativa cursos antigos (1, 2, 3) para limpar a lista de Trilhas

UPDATE cursos SET status = 'inativo' WHERE id IN (1, 2, 3);
