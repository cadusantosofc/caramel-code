-- Migration: 040_seed_logica_v6
DELETE FROM questoes WHERE curso_id = 13;

-- ==========================================
-- FASE 1 - Introdução à Lógica de Programação
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um algoritmo?', '["Tipo de computador", "Sequência lógica de instruções", "Hardware", "Linguagem específica"]', 1, 'Pense numa receita de bolo: passo a passo para chegar ao resultado.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual símbolo representa o INÍCIO/FIM num fluxograma?', '["Retângulo", "Losango", "Elipse (Oval)", "Paralelogramo"]', 2, 'A forma arredondada nos dois extremos do fluxo.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Para que serve uma variável?', '["Excluir arquivos", "Acelerar o CPU", "Armazenar um valor que pode mudar", "Desenhar na tela"]', 2, 'Imagine uma caixinha com etiqueta onde você guarda algo.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual operador compara se dois valores são iguais?', '["=", "==", "!=", "><"]', 1, CONCAT('Um sinal de igual atribui', CHAR(59), ' dois sinais comparam.')
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um Loop?', '["Desliga o computador", "Executa uma vez", "Repete um bloco de código", "Para o programa"]', 2, 'Ciclo: repete enquanto a condição for verdadeira.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é pseudocódigo?', '["Código com erros", "Linguagem de máquina", "Descrição informal de um algoritmo", "Tipo de banco de dados"]', 2, 'É uma escrita simplificada para planejar o algoritmo antes de codificar.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma constante?', '["Valor que muda sempre", "Valor fixo que não muda", "Tipo de loop", "Função matemática"]', 1, 'Ao contrário da variável, a constante não pode ser reatribuída.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual símbolo representa um PROCESSO no fluxograma?', '["Elipse", "Losango", "Retângulo", "Seta"]', 2, 'O retângulo indica uma ação ou cálculo a ser executado.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é depuração (debug)?', '["Escrever código novo", "Encontrar e corrigir erros no código", "Apagar o programa", "Compilar o código"]', 1, 'Bug = erro. Debug = caçar e matar o erro.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Lógica de programação é:', '["Exclusiva de linguagem C", "Forma de pensar para resolver problemas com código", "Hardware do computador", "Sistema operacional"]', 1, 'É a base para qualquer linguagem de programação.'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

-- ==========================================
-- FASE 2 - Estruturas Condicionais
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz a estrutura SE (if)?', '["Repete um bloco", "Decide com base numa condição", "Declara uma variável", "Imprime texto"]', 1, 'SE a condição for verdadeira, execute o bloco.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual símbolo representa uma DECISÃO no fluxograma?', '["Retângulo", "Elipse", "Losango", "Seta"]', 2, 'A forma de diamante indica uma pergunta de sim ou não.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que significa SENÃO (else)?', '["Executa sempre", "Executa quando a condição do SE é falsa", "Para o programa", "Declara variável"]', 1, 'O caminho alternativo quando a condição não é satisfeita.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Operador lógico AND retorna verdadeiro quando:', '["Apenas uma é verdadeira", "Ambas as condições são verdadeiras", "Nenhuma é verdadeira", "Sempre"]', 1, 'AND = as DUAS precisam ser verdadeiras.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Operador lógico OR retorna verdadeiro quando:', '["Ambas falsas", "Ambas verdadeiras obrigatoriamente", "Pelo menos uma é verdadeira", "Nenhuma das anteriores"]', 2, 'OR = basta UMA ser verdadeira.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O operador NOT (!) serve para:', '["Multiplicar valores", "Inverter um valor booleano", "Comparar strings", "Somar números"]', 1, 'NOT true = false. NOT false = true.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um valor booleano?', '["Número decimal", "Texto longo", "Verdadeiro ou Falso", "Lista de itens"]', 2, 'Boolean só tem dois estados: true ou false.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O operador >= significa:', '["Menor que", "Diferente de", "Maior ou igual a", "Igual a"]', 2, 'O sinal de maior seguido de igual.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'SE (x > 10) o bloco executa quando:', '["x for igual a 10", "x for menor que 10", "x for maior que 10", "x for zero"]', 2, 'O símbolo > significa estritamente maior.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é SE-SENÃO-SE (else if)?', '["Um loop", "Múltiplas condições encadeadas", "Uma função", "Um array"]', 1, 'Permite testar várias condições em sequência.'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

-- ==========================================
-- FASE 3 - Loops e Repetição
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual loop é ideal quando sabemos QUANTAS vezes repetir?', '["while", "do-while", "for", "if"]', 2, 'O FOR tem contador definido: início, condição e incremento.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O loop WHILE executa enquanto:', '["A condição for falsa", "A condição for verdadeira", "O código tiver erros", "O usuário clicar"]', 1, 'ENQUANTO a condição for verdadeira, continue.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um loop infinito?', '["Loop que executa zero vezes", "Loop sem condição de parada", "Loop com erro de sintaxe", "Loop que roda uma vez"]', 1, 'Sem condição de saída, o loop nunca termina.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Diferença entre FOR e WHILE:', '["Não há diferença", "FOR é para número definido, WHILE para condição indefinida", "WHILE é mais rápido", "FOR não existe"]', 1, CONCAT('Use FOR quando sabe o total', CHAR(59), ' WHILE quando depende de condição.')
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O DO-WHILE garante que o bloco execute:', '["Zero vezes", "Infinitas vezes", "Pelo menos uma vez", "Apenas se a condição for verdadeira"]', 2, 'DO executa primeiro, WHILE verifica depois.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz o comando BREAK num loop?', '["Pausa o loop temporariamente", "Interrompe o loop imediatamente", "Reinicia o loop", "Ignora o erro"]', 1, 'BREAK = sair do loop na hora.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz o CONTINUE num loop?', '["Para o loop", "Pula a iteração atual e vai para a próxima", "Reinicia do zero", "Duplica o loop"]', 1, 'CONTINUE = pula essa volta e vai para a próxima.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, CONCAT('Quantas vezes o FOR abaixo executa? for(i=0', CHAR(59), ' i<5', CHAR(59), ' i++)'), '["4 vezes", "5 vezes", "6 vezes", "Infinito"]', 1, 'De 0 a 4 (enquanto menor que 5) = 5 execuções.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O i++ dentro do FOR serve para:', '["Diminuir o contador", "Incrementar o contador em 1", "Zerar o contador", "Comparar valores"]', 1, 'i++ é a abreviação de i = i + 1.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é iteração?', '["Um tipo de variável", "Cada execução de um loop", "Um operador lógico", "Uma função recursiva"]', 1, 'Cada volta completa do loop é chamada de iteração.'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

-- ==========================================
-- FASE 4 - Funções
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma função em programação?', '["Um tipo de variável", "Bloco de código reutilizável com nome", "Um loop especial", "Um tipo de dado"]', 1, 'Funções encapsulam código para reutilizar sempre que precisar.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que são parâmetros de uma função?', '["Erros da função", "Valores de entrada que a função recebe", "O resultado da função", "O nome da função"]', 1, 'Parâmetros são as entradas que a função precisa para trabalhar.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz o RETURN numa função?', '["Repete a função", "Retorna um valor como resultado", "Deleta a função", "Chama outra função"]', 1, 'RETURN encerra a função e devolve o valor indicado.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Chamar uma função significa:', '["Criar a função", "Executar o código da função", "Apagar a função", "Renomear a função"]', 1, 'Invocar = mandar a função executar.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual a vantagem principal de usar funções?', '["Deixa o código mais lento", "Evita repetição de código (reutilização)", "Usa mais memória", "Dificulta a leitura"]', 1, 'Escreva uma vez, use quantas vezes quiser.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é escopo de variável?', '["Velocidade da variável", "Onde a variável pode ser acessada", "Tipo da variável", "Tamanho da variável"]', 1, 'Escopo define se a variável é local (dentro da função) ou global.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Variável LOCAL é:', '["Acessível em todo o programa", "Acessível apenas dentro da função onde foi criada", "Permanente", "Compartilhada entre funções"]', 1, 'Nasce e morre dentro da função.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Variável GLOBAL é:', '["Acessível apenas num loop", "Acessível em qualquer parte do programa", "Mais rápida que local", "Apagada após uso"]', 1, 'Declarada fora das funções, visível em todo o código.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma função recursiva?', '["Função que nunca termina", "Função que chama a si mesma", "Função sem parâmetros", "Função com muitos returns"]', 1, 'Recursão = a função se auto-invoca até atingir a condição base.'
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Argumento de uma função é:', '["O nome dado à função", "O valor real passado ao chamar a função", "O tipo de retorno", "O corpo da função"]', 1, CONCAT('Parâmetro é o nome', CHAR(59), ' argumento é o valor passado na chamada.')
FROM modulos WHERE curso_id = 13 AND ordem = 4 LIMIT 1;

-- ==========================================
-- FASE 5 - Tipos de Dados
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual tipo de dado armazena texto?', '["int", "float", "string", "boolean"]', 2, 'String = cadeia de caracteres (letras, números, símbolos).'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual tipo armazena números INTEIROS?', '["string", "float", "boolean", "int"]', 3, 'INT = inteiro, sem casas decimais.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual tipo armazena números com vírgula (decimais)?', '["int", "string", "float", "boolean"]', 2, 'FLOAT = ponto flutuante, tem casas decimais.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual tipo armazena VERDADEIRO ou FALSO?', '["string", "int", "float", "boolean"]', 3, 'Boolean tem apenas dois valores: true ou false.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é tipagem de dados?', '["Velocidade de digitação", "Definir qual tipo de valor uma variável armazena", "Tamanho do programa", "Tipo de loop"]', 1, 'Cada variável tem um tipo que define o que ela pode guardar.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, '"10" (entre aspas) é do tipo:', '["int", "float", "string", "boolean"]', 2, 'Aspas transformam qualquer coisa em string, mesmo que seja um número.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é conversão de tipo (cast)?', '["Apagar uma variável", "Transformar um tipo de dado em outro", "Criar uma constante", "Comparar dois valores"]', 1, 'Ex: converter string "5" para o inteiro 5.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Concatenar strings significa:', '["Dividir uma string", "Unir duas ou mais strings", "Converter para número", "Apagar caracteres"]', 1, '"Olá" + " Mundo" = "Olá Mundo".'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual destes é um exemplo de valor BOOLEANO?', '["42", "true", "Ola", "3.14"]', 1, 'Boolean só aceita true ou false.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'NULL em programação representa:', '["Zero", "Falso", "Ausência de valor", "String vazia"]', 2, 'NULL = nada, vazio, sem valor atribuído.'
FROM modulos WHERE curso_id = 13 AND ordem = 5 LIMIT 1;

-- ==========================================
-- FASE 6 - Arrays e Listas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um array?', '["Uma variável simples", "Coleção de valores armazenados numa única variável", "Um tipo de loop", "Uma função especial"]', 1, 'Array = lista de valores acessados por índice.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual é o índice do PRIMEIRO elemento de um array?', '["1", "0", "-1", "Depende"]', 1, 'Arrays começam no índice 0 na maioria das linguagens.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Como acessar o terceiro elemento do array frutas[]?', '["frutas[3]", "frutas[2]", "frutas(3)", "frutas.3"]', 1, 'Terceiro elemento = índice 2 (lembra: começa no 0).'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é o comprimento (length) de um array?', '["O primeiro elemento", "A quantidade total de elementos", "O último índice", "O tipo dos elementos"]', 1, 'Length retorna quantos itens existem no array.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Como percorrer todos os elementos de um array?', '["Usando uma variável", "Usando um loop com índice", "Usando uma constante", "Usando boolean"]', 1, 'Loop + índice é o jeito clássico de percorrer arrays.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz o método push() num array?', '["Remove o primeiro elemento", "Adiciona um elemento no final", "Ordena o array", "Inverte o array"]', 1, 'Push empurra um novo item para o final da lista.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz o método pop() num array?', '["Adiciona no final", "Remove e retorna o último elemento", "Limpa o array", "Adiciona no início"]', 1, 'Pop remove o último item da lista.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Array multidimensional é:', '["Array com um elemento", "Array que contém outros arrays", "Array com apenas strings", "Array vazio"]', 1, 'Uma tabela pode ser representada como array dentro de array.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O índice do último elemento de um array de 5 itens é:', '["5", "4", "6", "0"]', 1, 'Último índice = length - 1 = 5 - 1 = 4.'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O método sort() num array serve para:', '["Remover duplicatas", "Ordenar os elementos", "Contar elementos", "Inverter a ordem"]', 1, 'Sort organiza os elementos em ordem (padrão: alfabética).'
FROM modulos WHERE curso_id = 13 AND ordem = 6 LIMIT 1;

-- ==========================================
-- FASE 7 - Estruturas de Dados
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma pilha (stack)?', '["Lista ordenada por índice", "Estrutura LIFO: último a entrar, primeiro a sair", "Fila de impressão", "Tabela de dados"]', 1, 'LIFO = Last In, First Out. Como uma pilha de pratos.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma fila (queue)?', '["Estrutura LIFO", "Estrutura FIFO: primeiro a entrar, primeiro a sair", "Array desordenado", "Tabela hash"]', 1, 'FIFO = First In, First Out. Como fila de banco.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um objeto em programação?', '["Um tipo de loop", "Estrutura que agrupa dados e comportamentos relacionados", "Um array numérico", "Uma função sem retorno"]', 1, 'Objeto = conjunto de propriedades (atributos) e métodos.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma chave-valor (key-value)?', '["Tipo de loop", "Estrutura onde cada valor tem um nome identificador", "Método de ordenação", "Tipo de variável"]', 1, 'Ex: { nome: "João", idade: 25 }. Nome é a chave, João é o valor.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual estrutura é melhor para busca rápida por chave?', '["Array simples", "Pilha", "Dicionário / Mapa (hash)", "Fila"]', 2, 'Dicionário/Hash permite acesso direto pelo nome da chave.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Uma lista encadeada (linked list) é:', '["Array com índice fixo", "Sequência de nós onde cada um aponta para o próximo", "Tabela de banco de dados", "Loop infinito"]', 1, 'Cada nó guarda o dado e o endereço do próximo nó.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma árvore (tree) em estrutura de dados?', '["Array bidimensional", "Estrutura hierárquica com nó raiz e filhos", "Fila circular", "Pilha dupla"]', 1, 'Árvore tem um nó raiz, galhos (nós internos) e folhas (nós finais).'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual a operação de inserção numa pilha chama-se:', '["enqueue", "push", "insert", "add"]', 1, CONCAT('Push empilha', CHAR(59), ' pop desempilha.')
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Complexidade de tempo O(1) significa:', '["Depende do tamanho", "Tempo constante independente do tamanho", "Muito lento", "Exponencial"]', 1, 'O(1) = sempre o mesmo tempo, não importa quantos dados.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um grafo em computação?', '["Gráfico de barras", "Conjunto de vértices conectados por arestas", "Tabela de dados", "Array tridimensional"]', 1, 'Grafos representam relações entre elementos, como redes sociais.'
FROM modulos WHERE curso_id = 13 AND ordem = 7 LIMIT 1;

-- ==========================================
-- FASE 8 - Algoritmos de Busca e Ordenação
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que faz a busca linear?', '["Divide o array ao meio", "Verifica cada elemento um por um", "Usa índice direto", "Ordena antes de buscar"]', 1, 'Vai do primeiro ao último até achar — simples mas pode ser lento.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'A busca binária exige que o array esteja:', '["Desordenado", "Ordenado", "Com índice par", "Vazio"]', 1, 'Busca binária só funciona em dados já ordenados.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O Bubble Sort funciona:', '["Dividindo o array ao meio", "Comparando e trocando elementos adjacentes repetidamente", "Inserindo em posição correta", "Escolhendo um pivô"]', 1, 'Bolhas maiores vão subindo até o topo a cada passagem.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O algoritmo Merge Sort usa a técnica de:', '["Força bruta", "Dividir para conquistar", "Busca sequencial", "Pilha recursiva simples"]', 1, 'Divide o array em partes menores, ordena e une (merge).'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Qual ordenação é geralmente mais eficiente para grandes volumes?', '["Bubble Sort", "Insertion Sort", "Quick Sort", "Selection Sort"]', 2, 'Quick Sort tem média O(n log n), muito mais rápido que O(n²).'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Notação Big O serve para:', '["Nomear variáveis", "Medir a eficiência de algoritmos", "Declarar funções", "Definir tipos de dados"]', 1, 'Big O descreve como o tempo/espaço cresce com o tamanho da entrada.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O(n²) significa que o tempo de execução:', '["É constante", "Dobra com mais dados", "Cresce com o quadrado do tamanho da entrada", "É logarítmico"]', 2, 'Se n dobra, o tempo quadruplica — típico de loops aninhados.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Busca binária tem complexidade:', '["O(n)", "O(n²)", "O(log n)", "O(1)"]', 2, 'A cada passo elimina metade dos dados — muito eficiente.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um algoritmo guloso (greedy)?', '["Usa muita memória", "Faz a melhor escolha local a cada passo", "Testa todas as possibilidades", "Usa recursão obrigatoriamente"]', 1, 'Greedy escolhe o melhor agora, sem olhar para o futuro.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Dividir para conquistar (divide and conquer) é:', '["Usar dois loops", "Dividir o problema em partes menores e resolver cada uma", "Força bruta otimizada", "Busca sequencial dupla"]', 1, 'Quebra o grande problema em problemas menores e mais fáceis.'
FROM modulos WHERE curso_id = 13 AND ordem = 8 LIMIT 1;

-- ==========================================
-- FASE 9 - Orientação a Objetos (POO)
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é uma Classe em POO?', '["Um objeto criado", "Molde/modelo para criar objetos", "Um tipo de loop", "Uma variável global"]', 1, CONCAT('Classe é a planta da casa', CHAR(59), ' objeto é a casa construída.')
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um Objeto em POO?', '["O código-fonte", "Instância criada a partir de uma Classe", "Um array especial", "Um tipo de função"]', 1, 'Objeto = instância real criada com base no molde (classe).'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é Herança em POO?', '["Cópia de código", "Uma classe filha herda atributos e métodos da classe pai", "Tipo de loop especial", "Variável compartilhada"]', 1, 'Herança evita repetição: filha reutiliza o que a pai já tem.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é Encapsulamento?', '["Herdar métodos", "Esconder detalhes internos e expor apenas o necessário", "Criar múltiplos objetos", "Misturar tipos de dados"]', 1, 'Encapsular = proteger os dados internos do objeto.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é Polimorfismo?', '["Criar muitas classes", "Mesmo método com comportamentos diferentes em classes distintas", "Herança múltipla", "Variável com vários tipos"]', 1, 'Poly = muitas formas. Mesmo nome de método, comportamentos diferentes.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O construtor de uma classe serve para:', '["Destruir o objeto", "Inicializar o objeto com valores ao ser criado", "Herdar de outra classe", "Retornar um booleano"]', 1, 'O construtor roda automaticamente quando o objeto é instanciado.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Atributos em POO são:', '["As ações do objeto", "As características/propriedades do objeto", "Os construtores", "Os métodos estáticos"]', 1, 'Ex: Carro tem atributos: cor, marca, velocidade.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Métodos em POO são:', '["As propriedades do objeto", "As ações/comportamentos que o objeto pode executar", "Os construtores da classe", "Os tipos de dados"]', 1, 'Ex: Carro tem métodos: acelerar(), frear(), ligar().'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O modificador "private" em POO significa:', '["Acessível em qualquer lugar", "Acessível apenas dentro da própria classe", "Herdável por filhas", "Estático"]', 1, 'Private protege o atributo: só a própria classe pode mexer.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Abstração em POO significa:', '["Copiar outra classe", "Mostrar apenas o essencial, ocultando complexidade", "Criar muitos objetos", "Usar só variáveis globais"]', 1, 'Abstração simplifica: o usuário usa sem precisar saber como funciona por dentro.'
FROM modulos WHERE curso_id = 13 AND ordem = 9 LIMIT 1;

-- ==========================================
-- FASE 10 - Boas Práticas e Resolução de Problemas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é código limpo (clean code)?', '["Código sem comentários", "Código legível, organizado e fácil de manter", "Código comprimido", "Código sem variáveis"]', 1, 'Clean code é escrito para humanos lerem, não só para máquinas.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Por que dar nomes claros a variáveis é importante?', '["Deixa o código mais rápido", "Facilita a leitura e manutenção", "É exigido pelo compilador", "Reduz o tamanho do arquivo"]', 1, '"idade" é melhor que "x". O código se explica sozinho.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é refatoração de código?', '["Reescrever do zero", "Melhorar a estrutura sem mudar o comportamento", "Adicionar novas funcionalidades", "Corrigir bugs críticos"]', 1, 'Refatorar = melhorar a qualidade interna sem alterar o que o código faz.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'DRY em programação significa:', '["Do Repeat Yourself", "Delete Redundant Yields", "Don''t Repeat Yourself", "Define Reusable Yields"]', 2, 'DRY = não se repita. Se copiou e colou, algo pode virar função.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é versionamento de código?', '["Apagar versões antigas", "Registrar e controlar as mudanças ao longo do tempo", "Compilar versões diferentes", "Testar o código"]', 1, 'Git é a ferramenta mais usada para versionar código.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'Comentários no código servem para:', '["Aumentar a velocidade", "Explicar trechos complexos para outros leitores", "Corrigir erros automaticamente", "Definir variáveis"]', 1, 'Bons comentários explicam o PORQUÊ, não o quê o código faz.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é um teste unitário?', '["Testar o sistema inteiro", "Testar uma função/unidade isolada", "Testar a interface visual", "Testar o banco de dados"]', 1, 'Testa a menor peça do código de forma independente.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'KISS em programação significa:', '["Keep It Super Secure", "Keep It Simple, Stupid", "Keep Implementing Simple Scripts", "Keep It Structured and Stable"]', 1, 'KISS = mantenha simples. Não complique o que pode ser direto.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O que é documentação de software?', '["O código-fonte", "Descrição de como o sistema funciona e como usá-lo", "Os arquivos de configuração", "Os testes automatizados"]', 1, 'Boa documentação permite que outros entendam e usem seu código.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 13, id, 'O princípio SOLID foi criado para:', '["Acelerar compilação", "Guiar o design de software orientado a objetos de qualidade", "Definir tipos de dados", "Organizar banco de dados"]', 1, 'SOLID = 5 princípios para código mais flexível e fácil de manter.'
FROM modulos WHERE curso_id = 13 AND ordem = 10 LIMIT 1;