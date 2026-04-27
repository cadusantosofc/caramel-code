-- Migration: 040_seed_logica_v5
-- Inserção robusta vinculando diretamente pelo SELECT

DELETE FROM questoes WHERE curso_id = 13;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um algoritmo?', '["Tipo de computador", "Sequência lógica de instruções", "Hardware", "Linguagem específica"]', 1, 'Receita de bolo.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Símbolo de início no fluxograma?', '["Quadrado", "Elipse Oval", "Triângulo", "Losango"]', 1, 'Forma oval.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que uma variável faz?', '["Exclui arquivos", "Acelera o CPU", "Armazena valor mutável", "Desenha na tela"]', 2, 'Caixa com etiqueta.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Operador de igualdade?', '["=", "==", "!=", "><"]', 1, 'Compara valores.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que acontece em um Loop?', '["Desliga o PC", "Executa uma vez", "Execução repetida", "Para o programa"]', 2, 'Ciclo de repetição.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;
