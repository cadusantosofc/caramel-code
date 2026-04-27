-- Migration: 042_seed_css_v5
DELETE FROM questoes WHERE curso_id = 11;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que significa CSS?', '["Creative Style", "Computer Style", "Color Style", "Cascading Style Sheets"]', 3, 'Folhas em cascata.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade muda a cor do texto?', '["text-color", "color", "font-style", "bg-color"]', 1, 'Cor.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Seletor de ID?', '["Usando .", "Usando #", "Usando *", "Usando @"]', 1, 'Cerquilha.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;
