-- Migration: 043_seed_js_v5
DELETE FROM questoes WHERE curso_id = 12;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual variável pode ser alterada?', '["const", "let", "static", "fix"]', 1, 'Moderno.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual declara uma constante?', '["let", "var", "const", "immutable"]', 2, 'Fixed.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Exibir alerta?', '["log()", "alert()", "prompt()", "pop()"]', 1, 'Window.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;
