-- Migration: 017_remap_questions_to_new_ids
-- Move as questões dos IDs antigos (1, 2, 3) para os novos IDs oficiais (10, 11, 12...)

-- HTML (De 1 para 10)
UPDATE questoes SET curso_id = 10 WHERE curso_id = 1;

-- JavaScript (De 2 para 12)
UPDATE questoes SET curso_id = 12 WHERE curso_id = 2;

-- CSS (Caso existissem questões no 3, movemos para 11)
UPDATE questoes SET curso_id = 11 WHERE curso_id = 3;

-- Também precisamos garantir que os módulos das questões batam com os módulos dos novos cursos
-- Por segurança, vamos atualizar o modulo_id para 1 em questões que ficaram órfãs
UPDATE questoes q 
SET q.modulo_id = (SELECT id FROM modulos WHERE curso_id = q.curso_id ORDER BY ordem ASC LIMIT 1)
WHERE q.modulo_id NOT IN (SELECT id FROM modulos);
