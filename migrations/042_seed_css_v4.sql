-- Migration: 042_seed_css_v4
SET @c_id = 11;
SET @m1 = (SELECT id FROM modulos WHERE curso_id = @c_id AND ordem = 1 LIMIT 1);
DELETE FROM questoes WHERE curso_id = @c_id;
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'O que significa CSS?', '["Creative Style", "Computer Style", "Color Style", "Cascading Style Sheets"]', 3, 'Folhas em cascata.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Qual propriedade muda a cor do texto?', '["text-color", "color", "font-style", "bg-color"]', 1, 'Cor.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Seletor de ID?', '["Usando .", "Usando #", "Usando *", "Usando @"]', 1, 'Cerquilha.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Cor de fundo?', '["background-color", "bg-color", "fill", "color"]', 0, 'Background.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Tamanho da fonte?', '["text-size", "font-style", "font-size", "weight"]', 2, 'Size.');
