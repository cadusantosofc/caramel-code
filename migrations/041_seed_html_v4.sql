-- Migration: 041_seed_html_v4
SET @c_id = 10;
SET @m1 = (SELECT id FROM modulos WHERE curso_id = @c_id AND ordem = 1 LIMIT 1);
DELETE FROM questoes WHERE curso_id = @c_id;
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'O que significa HTML?', '["HyperText Markup Language", "HighText Machine", "Hyperlink", "Home Tool"]', 0, 'Marcacao.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Tag de titulo principal?', '["p", "h1", "title", "header"]', 1, 'H1.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Tag de link?', '["link", "a", "href", "url"]', 1, 'Anchor.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Tag de imagem?', '["img", "image", "pic", "src"]', 0, 'Image.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Tag raiz do documento?', '["body", "html", "head", "doctype"]', 1, 'Root.');
