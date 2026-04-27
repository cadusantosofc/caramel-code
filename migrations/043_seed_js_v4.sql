-- Migration: 043_seed_js_v4
SET @c_id = 12;
SET @m1 = (SELECT id FROM modulos WHERE curso_id = @c_id AND ordem = 1 LIMIT 1);
DELETE FROM questoes WHERE curso_id = @c_id;
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Qual variável pode ser alterada?', '["const", "let", "static", "fix"]', 1, 'Moderno.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Qual declara uma constante?', '["let", "var", "const", "immutable"]', 2, 'Fixed.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Exibir alerta?', '["log()", "alert()", "prompt()", "pop()"]', 1, 'Window.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Símbolo de atribuição?', '["=", "==", "===", ":"]', 0, 'Assign.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Console.log serve para?', '["Limpar", "Fecha", "Exibe no console", "Alerta"]', 2, 'Debug.');
