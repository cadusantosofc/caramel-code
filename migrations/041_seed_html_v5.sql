-- Migration: 041_seed_html_v5
DELETE FROM questoes WHERE curso_id = 10;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O que significa HTML?', '["HyperText Markup Language", "HighText Machine", "Hyperlink", "Home Tool"]', 0, 'Marcacao.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Tag de titulo principal?', '["p", "h1", "title", "header"]', 1, 'H1.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Tag de link?', '["link", "a", "href", "url"]', 1, 'Anchor.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Tag de imagem?', '["img", "image", "pic", "src"]', 0, 'Image.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;
