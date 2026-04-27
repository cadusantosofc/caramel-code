-- Migration: 043_seed_js_v6_completo
-- 100 questões de JavaScript — 10 módulos × 10 perguntas
-- curso_id = 12

DELETE FROM questoes WHERE curso_id = 12;

-- ==========================================
-- MÓDULO 1 (ordem = 1) — Fundamentos do JS
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual palavra-chave declara uma variável que pode ser alterada?', '["const", "let", "static", "fix"]', 1, 'Moderno e reatribuível.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual palavra-chave declara uma constante em JS?', '["let", "var", "const", "immutable"]', 2, 'Não pode ser reatribuída.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como exibir um alerta na tela?', '["console.log()", "alert()", "prompt()", "pop()"]', 1, 'Função nativa do navegador.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como imprimir algo no console do navegador?', '["print()", "log()", "console.log()", "debug()"]', 2, 'console ponto log.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual é o tipo de dado de "42" em JavaScript?', '["string", "boolean", "number", "integer"]', 2, 'Números sem aspas são do tipo number.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual é o tipo de dado de "true" em JavaScript?', '["string", "boolean", "number", "null"]', 1, 'Verdadeiro ou falso.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como verificar o tipo de uma variável?', '["typeOf(x)", "typeof x", "getType(x)", "x.type"]', 1, 'typeof é um operador, não uma função.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é NaN em JavaScript?', '["Um número nulo", "Ausência de valor", "Not a Number — resultado de operação inválida", "Um erro fatal"]', 2, 'typeof NaN retorna "number", curiosamente.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual a diferença entre null e undefined?', CONCAT('["São iguais", "null é ausência intencional', CHAR(59), ' undefined é variável não inicializada", "undefined é um erro', CHAR(59), ' null não", "Não existe diferença prática"]'), 1, CONCAT('null = vazio de propósito', CHAR(59), ' undefined = sem valor ainda.')
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como concatenar strings em JS?', '["Usando &", "Usando +", "Usando concat apenas", "Strings não se concatenam"]', 1, 'O operador + une strings.'
FROM modulos WHERE curso_id = 12 AND ordem = 1 LIMIT 1;

-- ==========================================
-- MÓDULO 2 (ordem = 2) — Operadores e Condicionais
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual operador compara valor E tipo?', '["==", "!=", "===", "="]', 2, 'Três sinais de igual.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que retorna "5" == 5 em JavaScript?', '["false", "true", "undefined", "error"]', 1, 'O == faz coerção de tipo.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que retorna "5" === 5 em JavaScript?', '["true", "false", "undefined", "NaN"]', 1, 'Tipos diferentes: string vs number.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual operador representa "E lógico"?', '["||", "&&", "!", "&"]', 1, 'Dois E comerciais.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual operador representa "OU lógico"?', '["&&", "||", "!", "|"]', 1, 'Duas barras verticais.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como se escreve um if/else em JS?', '["if (x) then {} else {}", "if (x) {} else {}", "if x {} else {}", "when (x) {} other {}"]', 1, 'A condição fica entre parênteses.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é o operador ternário?', '["Um if com três condições", "Uma forma curta de if/else: condição ? valorTrue : valorFalse", "Um loop de 3 iterações", "Uma função com 3 parâmetros"]', 1, 'Sintaxe: condição ? a : b.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o operador "!" (exclamação)?', '["Concatena strings", "Inverte um valor booleano", "Declara uma constante", "Lança um erro"]', 1, '!true retorna false.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual estrutura é usada para múltiplas condições fixas?', '["if/else if", "for", "switch", "while"]', 2, 'switch/case para valores específicos.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é o operador nullish coalescing (??) ?', '["Um if ternário", "Retorna o lado direito se o esquerdo for null ou undefined", "Um operador de comparação", "Um operador de tipo"]', 1, 'a ?? b: usa b se a for null/undefined.'
FROM modulos WHERE curso_id = 12 AND ordem = 2 LIMIT 1;

-- ==========================================
-- MÓDULO 3 (ordem = 3) — Funções
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como declarar uma função em JS?', '["func minhaFuncao() {}", "function minhaFuncao() {}", "def minhaFuncao() {}", "fn minhaFuncao() {}"]', 1, 'Palavra-chave function.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma arrow function?', '["Uma função com seta no nome", "Uma função curta escrita com =>", "Uma função de array", "Uma função anônima proibida"]', 1, 'Sintaxe moderna: (param) => expressão.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma função anônima?', '["Uma função sem parâmetros", "Uma função sem nome, geralmente atribuída a uma variável", "Uma função privada", "Uma função que retorna undefined"]', 1, CONCAT('const soma = function(a, b) { return a + b', CHAR(59), ' }')
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o "return" dentro de uma função?', '["Reinicia a função", "Devolve um valor e encerra a execução da função", "Exibe o valor no console", "Declara uma variável"]', 1, 'Sem return, a função retorna undefined.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é hoisting em funções?', '["Um erro de escopo", "Funções declaradas são movidas para o topo do escopo antes da execução", "Uma técnica de otimização manual", "Um método de array"]', 1, 'Funções declaradas podem ser chamadas antes de serem definidas.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é um parâmetro default em JS?', '["Um parâmetro obrigatório", "Um valor usado quando o argumento não é passado", "O primeiro parâmetro da função", "Um parâmetro do tipo number"]', 1, 'function saudacao(nome = "visitante") {}'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma função callback?', '["Uma função que chama a si mesma", "Uma função passada como argumento para outra função", "Uma função de retorno de API", "Uma função assíncrona"]', 1, 'Muito usado em eventos e métodos de array.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma função recursiva?', '["Uma função que chama outra função", "Uma função que chama a si mesma", "Uma função com muitos parâmetros", "Uma função sem return"]', 1, 'Precisa de uma condição de parada.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é escopo em JavaScript?', '["O tamanho de uma função", "A região do código onde uma variável é acessível", "O número de parâmetros", "O tipo de retorno"]', 1, 'Variáveis têm escopo local ou global.'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma IIFE?', '["Uma função de iteração", "Uma função imediatamente invocada após sua declaração", "Um tipo de loop", "Uma função importada"]', 1, 'Immediately Invoked Function Expression: (() => {})()'
FROM modulos WHERE curso_id = 12 AND ordem = 3 LIMIT 1;

-- ==========================================
-- MÓDULO 4 (ordem = 4) — Arrays
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como criar um array em JavaScript?', '["let a = {1, 2, 3}", "let a = [1, 2, 3]", "let a = (1, 2, 3)", "let a = <1, 2, 3>"]', 1, 'Colchetes para arrays.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como acessar o primeiro elemento de um array?', '["array[1]", "array.first()", "array[0]", "array.get(0)"]', 2, 'Índices começam do zero.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual método adiciona um elemento ao final do array?', '["array.add()", "array.append()", "array.push()", "array.insert()"]', 2, 'push empurra para o final.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual método remove o último elemento de um array?', '["array.delete()", "array.pop()", "array.remove()", "array.shift()"]', 1, 'pop retira do final.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o método "map()" em um array?', '["Filtra elementos", "Cria um novo array transformando cada elemento", "Ordena o array", "Conta os elementos"]', 1, 'Retorna um novo array com os resultados.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o método "filter()"?', '["Transforma cada elemento", "Retorna novo array apenas com elementos que passam na condição", "Remove duplicatas", "Ordena crescente"]', 1, 'Filtra com base em uma condição booleana.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o método "reduce()"?', '["Remove elementos", "Acumula os elementos em um único valor", "Reduz o tamanho do array", "Filtra por tipo"]', 1, 'Muito usado para somas e acumulações.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como verificar se um elemento existe no array?', '["array.has()", "array.includes()", "array.contains()", "array.exists()"]', 1, 'includes() retorna true ou false.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "array.length"?', '["Remove o último elemento", "Retorna o número de elementos do array", "Redimensiona o array", "Ordena o array"]', 1, 'Propriedade, não método — sem parênteses.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual método une dois arrays?', '["array.join()", "array.merge()", "array.concat()", "array.combine()"]', 2, 'concat retorna um novo array unido.'
FROM modulos WHERE curso_id = 12 AND ordem = 4 LIMIT 1;

-- ==========================================
-- MÓDULO 5 (ordem = 5) — Objetos
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como criar um objeto literal em JS?', '["let obj = []", "let obj = ()", "let obj = {}", "let obj = <>"]', 2, 'Chaves para objetos.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como acessar a propriedade "nome" de um objeto?', '["obj->nome", "obj[nome]", "obj.nome", "obj::nome"]', 2, 'Notação de ponto é a mais comum.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como adicionar uma nova propriedade a um objeto existente?', '["obj.add(novaProp, valor)", "obj.novaProp = valor", "obj.push(novaProp)", "obj[add] = novaProp"]', 1, 'Basta atribuir com o ponto.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é "this" dentro de um método de objeto?', '["A janela do navegador", "Referência ao próprio objeto", "O objeto pai", "undefined sempre"]', 1, 'this aponta para o contexto de execução.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que retorna "Object.keys(obj)"?', '["Os valores do objeto", "Um array com os nomes das propriedades", "O número de propriedades", "O tipo de cada valor"]', 1, 'Retorna as chaves (nomes) do objeto.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é destructuring de objetos?', '["Deletar propriedades", "Extrair propriedades em variáveis de forma concisa", "Converter objeto em array", "Clonar um objeto"]', 1, CONCAT('const { nome, idade } = pessoa', CHAR(59), '')
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o spread operator (...) em objetos?', '["Remove propriedades", "Copia as propriedades de um objeto para outro", "Transforma em array", "Conta propriedades"]', 1, 'const novo = { ...obj, outraProps: valor }'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como verificar se um objeto tem uma propriedade?', '["obj.contains(prop)", "prop in obj", "obj.has(prop)", "obj.exists(prop)"]', 1, 'O operador in verifica a presença da chave.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como remover uma propriedade de um objeto?', '["obj.remove(prop)", "obj.prop = null", "delete obj.prop", "obj.pop(prop)"]', 2, 'O operador delete remove a chave.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é JSON?', '["JavaScript Object Notation — formato de troca de dados baseado em objetos JS", "Um banco de dados JavaScript", "Uma biblioteca JS", "Um tipo de variável"]', 0, 'Muito usado em APIs e configurações.'
FROM modulos WHERE curso_id = 12 AND ordem = 5 LIMIT 1;

-- ==========================================
-- MÓDULO 6 (ordem = 6) — Loops
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como funciona o loop "for" clássico?', CONCAT('["for (condição) {}", "for (init', CHAR(59), ' condição', CHAR(59), ' incremento) {}", "for init to fim {}", "for each item {}"]'), 1, 'Três partes separadas por ponto e vírgula.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O loop "while" executa enquanto?', '["A condição for false", "A condição for true", "O array tiver elementos", "O contador for zero"]', 1, 'while (condição) — executa enquanto verdadeiro.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual a diferença entre "for...of" e "for...in"?', CONCAT('["São idênticos", "for...of itera valores', CHAR(59), ' for...in itera chaves/índices", "for...in itera valores', CHAR(59), ' for...of itera chaves", "for...of é depreciado"]'), 1, CONCAT('of = valores', CHAR(59), ' in = chaves.')
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "break" dentro de um loop?', '["Pula para a próxima iteração", "Encerra o loop imediatamente", "Reinicia o loop", "Lança um erro"]', 1, 'break sai do loop.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "continue" dentro de um loop?', '["Encerra o loop", "Pula a iteração atual e vai para a próxima", "Reinicia do zero", "Retorna um valor"]', 1, 'Pula a iteração sem sair do loop.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O loop "do...while" garante que o bloco execute?', '["Nunca se a condição for false", "Pelo menos uma vez, mesmo se a condição for false", "Apenas duas vezes", "Infinitamente"]', 1, 'A condição é verificada após a primeira execução.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como iterar sobre cada elemento de um array com método moderno?', '["array.loop()", "array.each()", "array.forEach()", "array.iterate()"]', 2, 'forEach recebe um callback para cada item.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual é o risco de um loop "while" sem atualização da condição?', '["Erro de sintaxe", "Loop infinito", "Retorno undefined", "Execução única"]', 1, 'O programa trava se a condição nunca mudar.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como percorrer as propriedades de um objeto com loop?', '["for...of", "forEach", "for...in", "while com Object.keys"]', 2, 'for...in itera as chaves do objeto.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O método "find()" em um array retorna?', '["Todos os elementos que passam na condição", "O índice do elemento", "O primeiro elemento que satisfaz a condição", "true ou false"]', 2, 'Retorna o elemento, não o índice.'
FROM modulos WHERE curso_id = 12 AND ordem = 6 LIMIT 1;

-- ==========================================
-- MÓDULO 7 (ordem = 7) — DOM
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é o DOM?', '["Uma linguagem de programação", "Document Object Model — representação em árvore do HTML", "Um banco de dados do navegador", "Um framework JS"]', 1, 'Permite manipular o HTML com JS.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como selecionar um elemento pelo ID?', '["document.getElement(id)", "document.getElementById(id)", "document.query(#id)", "document.find(id)"]', 1, 'getElementById retorna o elemento.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como selecionar elementos com querySelector?', '["document.querySelector(id)", "document.querySelector(seletor CSS)", "document.query(elemento)", "document.select(seletor)"]', 1, 'Usa a mesma sintaxe de seletores CSS.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como alterar o texto de um elemento via JS?', '["elemento.text = valor", "elemento.innerText = valor", "elemento.content = valor", "elemento.setText(valor)"]', 1, 'innerText altera o texto visível.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como adicionar uma classe CSS a um elemento via JS?', '["elemento.class.add(nome)", "elemento.classList.add(nome)", "elemento.addCss(nome)", "elemento.style.class = nome"]', 1, 'classList.add() é o método correto.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como criar um novo elemento HTML via JS?', '["document.newElement(tag)", "document.make(tag)", "document.createElement(tag)", "document.build(tag)"]', 2, 'createElement cria o nó, mas não o insere ainda.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como inserir um elemento filho no DOM?', '["pai.insert(filho)", "pai.addChild(filho)", "pai.appendChild(filho)", "pai.push(filho)"]', 2, 'appendChild adiciona ao final do pai.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como escutar um evento de clique em um elemento?', '["elemento.onClick = fn", "elemento.addEvent(click, fn)", "elemento.addEventListener(click, fn)", "elemento.addEventListener(''click'', fn)"]', 3, 'addEventListener com o nome do evento entre aspas.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "elemento.remove()"?', '["Esconde o elemento", "Remove o elemento do DOM completamente", "Limpa o texto do elemento", "Remove a classe do elemento"]', 1, 'Remove o nó da árvore DOM.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como alterar um estilo CSS de um elemento via JS?', '["elemento.css.color = red", "elemento.style.color = ''red''", "elemento.setStyle(color, red)", "elemento.applyStyle(''color:red'')"]', 1, 'elemento.style.propriedade = valor em string.'
FROM modulos WHERE curso_id = 12 AND ordem = 7 LIMIT 1;

-- ==========================================
-- MÓDULO 8 (ordem = 8) — Eventos
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é um evento no JavaScript?', '["Um erro no código", "Uma ação do usuário ou do navegador que pode ser detectada", "Um tipo de variável", "Um método de array"]', 1, 'Cliques, teclas, scroll são exemplos de eventos.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O objeto "event" passado ao handler contém?', '["Apenas o tipo do evento", "Informações sobre o evento, como o elemento alvo", "O elemento pai", "O código de erro"]', 1, 'event.target aponta para o elemento clicado.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "event.preventDefault()"?', '["Remove o evento", "Impede o comportamento padrão do evento", "Para a propagação do evento", "Lança um erro"]', 1, 'Impede o form de recarregar a página, por exemplo.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é "event bubbling"?', '["Um evento que ocorre múltiplas vezes", "O evento sobe pelos elementos pais após ocorrer no filho", "Um loop de eventos", "Um evento de teclado"]', 1, 'O evento propaga para cima na árvore DOM.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "event.stopPropagation()"?', '["Para o evento de acontecer", "Impede o evento de propagar para os elementos pais", "Remove o listener", "Reinicia o evento"]', 1, 'Evita o bubbling do evento.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual evento é disparado quando a página termina de carregar?', '["onload", "DOMContentLoaded", "onready", "pageload"]', 1, 'DOMContentLoaded — quando o HTML está pronto.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como detectar qual tecla foi pressionada em um evento keydown?', '["event.key", "event.char", "event.keyCode only", "event.press"]', 0, 'event.key retorna o nome da tecla.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é event delegation?', '["Passar eventos entre funções", "Adicionar um listener no pai para capturar eventos dos filhos", "Delegar o evento ao servidor", "Um padrão de erro handling"]', 1, 'Eficiente para elementos dinâmicos.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual evento detecta mudança em um campo de input?', '["ontype", "onpress", "oninput", "onchange"]', 2, 'oninput dispara a cada caractere digitado.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como remover um event listener?', '["elemento.removeEvent(tipo, fn)", "elemento.removeEventListener(tipo, fn)", "elemento.deleteListener(tipo)", "elemento.off(tipo, fn)"]', 1, 'removeEventListener com o mesmo tipo e referência da função.'
FROM modulos WHERE curso_id = 12 AND ordem = 8 LIMIT 1;

-- ==========================================
-- MÓDULO 9 (ordem = 9) — Assincronicidade
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é código assíncrono em JavaScript?', '["Código com erro", "Código que não bloqueia a execução enquanto espera uma tarefa", "Código executado fora do navegador", "Código sem funções"]', 1, 'Permite que outras operações continuem enquanto espera.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma Promise?', '["Uma variável especial", "Um objeto que representa o resultado futuro de uma operação assíncrona", "Uma função que sempre retorna true", "Um tipo de loop"]', 1, 'Pode ser resolvida (resolved) ou rejeitada (rejected).'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como tratar o resultado de uma Promise?', '["promise.result(fn)", "promise.then(fn)", "promise.get(fn)", "promise.done(fn)"]', 1, '.then() recebe o valor resolvido.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como tratar erros de uma Promise?', '["promise.error(fn)", "promise.fail(fn)", "promise.catch(fn)", "promise.reject(fn)"]', 2, '.catch() captura a rejeição.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "async" antes de uma função?', '["Torna a função mais rápida", "Faz a função retornar uma Promise automaticamente", "Executa a função em paralelo", "Bloqueia a execução"]', 1, 'async transforma a função em assíncrona.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "await" dentro de uma função async?', '["Cria uma pausa de 1 segundo", "Aguarda a Promise ser resolvida antes de continuar", "Cancela a Promise", "Retorna o erro da Promise"]', 1, 'await pausa a execução até a Promise resolver.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é fetch() em JavaScript?', '["Uma função de array", "Uma API nativa para fazer requisições HTTP", "Um método de string", "Um loop assíncrono"]', 1, 'fetch() retorna uma Promise com a resposta.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como converter a resposta de fetch() para JSON?', '["response.toJSON()", "response.json()", "JSON.parse(response)", "response.data()"]', 1, 'response.json() também retorna uma Promise.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz "Promise.all([])"?', '["Cancela todas as Promises", "Aguarda todas as Promises resolverem e retorna um array com os resultados", "Retorna a primeira Promise", "Executa em sequência"]', 1, 'Se uma falhar, todas falham.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como tratar erros em async/await?', '["promise.catch()", "try { await ... } catch (err) {}", "async.error(fn)", "await.fail(fn)"]', 1, 'O try/catch captura erros de await.'
FROM modulos WHERE curso_id = 12 AND ordem = 9 LIMIT 1;

-- ==========================================
-- MÓDULO 10 (ordem = 10) — ES6+ e Boas Práticas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é template literal?', '["Um modelo de arquivo JS", "Strings com crase que permitem interpolação com ${}", "Um framework de templates", "Um tipo especial de array"]', 1, 'Use crase e ${variavel} para interpolar.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é destructuring de arrays?', '["Deletar elementos do array", "Extrair valores em variáveis de forma concisa", "Converter array em objeto", "Ordenar o array"]', 1, CONCAT('const [a, b] = [1, 2]', CHAR(59), '')
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que faz o "rest parameter" (...args)?', '["Pausa a função", "Coleta o restante dos argumentos em um array", "Copia um array", "Espalha um array"]', 1, 'function fn(a, ...resto) — resto é um array.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Qual a diferença entre spread e rest?', CONCAT('["São iguais", "Spread expande elementos', CHAR(59), ' rest os coleta", "Rest expande', CHAR(59), ' spread coleta", "Só existe spread no JS moderno"]'), 1, 'Mesmo símbolo (...) mas usos opostos.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que são módulos ES6?', '["Arquivos minificados", "Sistema de import/export para dividir o código em arquivos", "Plugins de terceiros", "Variáveis globais"]', 1, 'import e export organizam o código.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Como exportar uma função como padrão em ES6?', '["module.exports = fn", "export fn", "export default fn", "exports.default = fn"]', 2, 'export default para exportação principal do arquivo.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é uma classe em JavaScript?', '["Um tipo de array", "Sintaxe para criar objetos com propriedades e métodos de forma estruturada", "Uma função especial do DOM", "Um módulo externo"]', 1, 'class Pessoa { constructor() {} }'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é herança em JS com classes?', '["Copiar um arquivo", "Uma classe filha herdar propriedades e métodos de uma classe pai com extends", "Importar uma classe", "Clonar um objeto"]', 1, 'class Estudante extends Pessoa {}'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'O que é o optional chaining (?.) ?', '["Um operador ternário", "Acessa propriedades aninhadas sem erro se o valor for null/undefined", "Um operador de comparação", "Uma forma de chamar funções opcionais"]', 1, 'obj?.prop?.subprop — seguro para nulos.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 12, id, 'Por que evitar "var" no JS moderno?', CONCAT('["var é mais lento", "var tem escopo de função e sofre hoisting problemático', CHAR(59), ' let e const são mais previsíveis", "var não funciona em navegadores modernos", "var não permite reatribuição"]'), 1, 'Prefira let e const para evitar bugs de escopo.'
FROM modulos WHERE curso_id = 12 AND ordem = 10 LIMIT 1;