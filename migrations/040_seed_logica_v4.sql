-- Migration: 040_seed_logica_v4
SET @c_id = 13;
SET @m1 = (SELECT id FROM modulos WHERE curso_id = @c_id AND ordem = 1 LIMIT 1);
DELETE FROM questoes WHERE curso_id = @c_id;
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'O que é um algoritmo?', '["Tipo de computador", "Sequência lógica de instruções", "Hardware", "Linguagem específica"]', 1, 'Receita de bolo.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Símbolo de início no fluxograma?', '["Quadrado", "Elipse Oval", "Triângulo", "Losango"]', 1, 'Forma oval.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'O que uma variável faz?', '["Exclui arquivos", "Acelera o CPU", "Armazena valor mutável", "Desenha na tela"]', 2, 'Caixa com etiqueta.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'Operador de igualdade?', '["=", "==", "!=", "><"]', 1, 'Compara valores.');
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica) VALUES (@c_id, @m1, 'O que acontece em um Loop?', '["Desliga o PC", "Executa uma vez", "Execução repetida", "Para o programa"]', 2, 'Ciclo de repetição.');
