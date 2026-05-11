-- Migration: 040_seed_logica_v6
DELETE FROM questoes WHERE curso_id = 13;

-- ==========================================
-- FASE 1 - Introdução à Lógica de Programação
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é um algoritmo?', '["Tipo de computador", "Sequência lógica de instruções", "Hardware", "Linguagem específica"]', 1, 'Pense numa receita de bolo: passo a passo para chegar ao resultado.', '["❌ Incorreto. Tipo de computador se refere ao hardware, não à lógica de programação.", "✅ Correto! Algoritmo é uma sequência finita de passos lógicos para resolver um problema.", "❌ Incorreto. Hardware são os componentes físicos, não a sequência lógica.", "❌ Incorreto. Linguagem é a ferramenta, algoritmo é o conceito abstrato."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Qual símbolo representa o INÍCIO/FIM num fluxograma?', '["Retângulo", "Losango", "Elipse (Oval)", "Paralelogramo"]', 2, 'A forma arredondada nos dois extremos do fluxo.', '["❌ Incorreto. Retângulo representa processamento/ações.", "❌ Incorreto. Losango representa decisão/teste.", "✅ Correto! Elipse (Oval) representa início e fim do fluxograma.", "❌ Incorreto. Paralelogramo representa entrada/saída de dados."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Para que serve uma variável?', '["Excluir arquivos", "Acelerar o CPU", "Armazenar um valor que pode mudar", "Desenhar na tela"]', 2, 'Imagine uma caixinha com etiqueta onde você guarda algo.', '["❌ Incorreto. Excluir arquivos é uma função de sistema, não de variável.", "❌ Incorreto. Acelerar CPU depende do hardware, não de variáveis.", "✅ Correto! Variável armazena dados que podem ser modificados durante o programa.", "❌ Incorreto. Desenhar na tela é uma função de saída, não armazenamento."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Qual operador compara se dois valores são iguais?', '["=", "==", "!=", "><"]', 1, CONCAT('Um sinal de igual atribui', CHAR(59), ' dois sinais comparam.'), '["❌ Incorreto. = atribui valor à variável (ex: x = 5).", "✅ Correto! == compara se dois valores são iguais (ex: if (x == 5)).", "❌ Incorreto. != significa diferente (desigualdade).", "❌ Incorreto. >< não é um operador de comparação válido."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é um Loop?', '["Desliga o computador", "Executa uma vez", "Repete um bloco de código", "Para o programa"]', 2, 'Ciclo: repete enquanto a condição for verdadeira.', '["❌ Incorreto. Desligar computador é uma função do sistema, não loop.", "❌ Incorreto. Executa uma vez seria sem repetição, não loop.", "✅ Correto! Loop repete um bloco de código enquanto condição for verdadeira.", "❌ Incorreto. Parar o programa encerra a execução, não repete código."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é pseudocódigo?', '["Código com erros", "Linguagem de máquina", "Descrição informal de um algoritmo", "Tipo de banco de dados"]', 2, 'É uma escrita simplificada para planejar o algoritmo antes de codificar.', '["❌ Incorreto. Pseudocódigo não tem erros, é uma ferramenta de planejamento.", "❌ Incorreto. Linguagem de máquina é código binário, não descrição informal.", "✅ Correto! Pseudocódigo é uma descrição informal em português estruturado.", "❌ Incorreto. Banco de dados armazena dados, não descreve algoritmos."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é uma constante?', '["Valor que muda sempre", "Valor fixo que não muda", "Tipo de loop", "Função matemática"]', 1, 'Ao contrário da variável, a constante não pode ser reatribuída.', '["❌ Incorreto. Valor que muda é variável, não constante.", "✅ Correto! Constante mantém valor fixo durante toda execução.", "❌ Incorreto. Loop é estrutura de repetição, não tipo de dado.", "❌ Incorreto. Função matemática executa cálculos, constante armazena valor."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Qual símbolo representa um PROCESSO no fluxograma?', '["Elipse", "Losango", "Retângulo", "Seta"]', 2, 'O retângulo indica uma ação ou cálculo a ser executado.', '["❌ Incorreto. Elipse representa início/fim, não processamento.", "❌ Incorreto. Losango representa decisão/teste condicional.", "✅ Correto! Retângulo representa processamento/ações no fluxograma.", "❌ Incorreto. Seta indica fluxo/direção, não processo."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é depuração (debug)?', '["Escrever código novo", "Encontrar e corrigir erros no código", "Apagar o programa", "Compilar o código"]', 1, 'Bug = erro. Debug = caçar e matar o erro.', '["❌ Incorreto. Escrever código novo é desenvolvimento, não depuração.", "✅ Correto! Debug é o processo de encontrar e corrigir erros no código.", "❌ Incorreto. Apagar programa é destruição, não correção de erros.", "❌ Incorreto. Compilar transforma código em executável, não corrige erros."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Lógica de programação é:', '["Exclusiva de linguagem C", "Forma de pensar para resolver problemas com código", "Hardware do computador", "Sistema operacional"]', 1, 'É a base para qualquer linguagem de programação.', '["❌ Incorreto. Lógica se aplica a qualquer linguagem, não só C.", "✅ Correto! É uma forma de pensar estruturada para resolver problemas.", "❌ Incorreto. Hardware é componente físico, não raciocínio lógico.", "❌ Incorreto. Sistema operacional gerencia recursos, não lógica de programação."]'
FROM modulos WHERE curso_id = 13 AND ordem = 1 LIMIT 1;

-- ==========================================
-- FASE 2 - Estruturas Condicionais
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que faz a estrutura SE (if)?', '["Repete um bloco", "Decide com base numa condição", "Declara uma variável", "Imprime texto"]', 1, 'SE a condição for verdadeira, execute o bloco.', '["❌ Incorreto. Repetir bloco é função de loops, não de condicionais.", "✅ Correto! IF decide qual bloco executar baseado numa condição verdadeira/falsa.", "❌ Incorreto. Declarar variável usa let/const/var, não estrutura condicional.", "❌ Incorreto. Imprimir texto é função de saída, não decisão condicional."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Qual símbolo representa uma DECISÃO no fluxograma?', '["Retângulo", "Elipse", "Losango", "Seta"]', 2, 'A forma de diamante indica uma pergunta de sim ou não.', '["❌ Incorreto. Retângulo representa processamento, não decisão.", "❌ Incorreto. Elipse representa início/fim, não decisão.", "✅ Correto! Losango (diamante) representa decisão/teste condicional.", "❌ Incorreto. Seta indica fluxo/direção, não decisão."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que significa SENÃO (else)?', '["Executa sempre", "Executa quando a condição do SE é falsa", "Para o programa", "Declara variável"]', 1, 'O caminho alternativo quando a condição não é satisfeita.', '["❌ Incorreto. Else só executa quando if for falso, não sempre.", "✅ Correto! Else executa quando a condição do if não é satisfeita.", "❌ Incorreto. Parar programa encerra execução, não é caminho alternativo.", "❌ Incorreto. Declarar variável usa let/const, não estrutura else."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Operador lógico AND retorna verdadeiro quando:', '["Apenas uma é verdadeira", "Ambas as condições são verdadeiras", "Nenhuma é verdadeira", "Sempre"]', 1, 'AND = as DUAS precisam ser verdadeiras.', '["❌ Incorreto. Apenas uma verdadeira é OR, não AND.", "✅ Correto! AND só retorna verdadeiro quando TODAS as condições forem verdadeiras.", "❌ Incorreto. Nenhuma verdadeira retorna falso em AND.", "❌ Incorreto. AND não retorna sempre verdadeiro, depende das condições."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Operador lógico OR retorna verdadeiro quando:', '["Ambas falsas", "Ambas verdadeiras obrigatoriamente", "Pelo menos uma é verdadeira", "Nenhuma das anteriores"]', 2, 'OR = basta UMA ser verdadeira.', '["❌ Incorreto. Ambas falsas retorna falso em OR.", "❌ Incorreto. OR não exige ambas verdadeiras, basta uma.", "✅ Correto! OR retorna verdadeiro quando PELO MENOS UMA condição for verdadeira.", "❌ Incorreto. OR sempre retorna algo baseado nas condições."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O operador NOT (!) serve para:', '["Multiplicar valores", "Inverter um valor booleano", "Comparar strings", "Somar números"]', 1, 'NOT true = false. NOT false = true.', '["❌ Incorreto. Multiplicar usa operador *, não NOT.", "✅ Correto! NOT inverte valor booleano: true vira false, false vira true.", "❌ Incorreto. Comparar strings usa == ou ===, não NOT.", "❌ Incorreto. Somar números usa operador +, não NOT."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é um valor booleano?', '["Número decimal", "Texto longo", "Verdadeiro ou Falso", "Lista de itens"]', 2, 'Boolean só tem dois estados: true ou false.', '["❌ Incorreto. Número decimal é tipo number/float, não boolean.", "❌ Incorreto. Texto longo é tipo string, não boolean.", "✅ Correto! Boolean representa apenas dois valores: true ou false.", "❌ Incorreto. Lista de itens é tipo array, não boolean."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O operador >= significa:', '["Menor que", "Diferente de", "Maior ou igual a", "Igual a"]', 2, 'O sinal de maior seguido de igual.', '["❌ Incorreto. Menor que usa <, não >=.", "❌ Incorreto. Diferente usa != ou !==, não >=.", "✅ Correto! >= significa maior ou igual a (x >= y: x maior ou igual a y).", "❌ Incorreto. Igual a usa == ou ===, não >=."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'SE (x > 10) o bloco executa quando:', '["x for igual a 10", "x for menor que 10", "x for maior que 10", "x for zero"]', 2, 'O símbolo > significa estritamente maior.', '["❌ Incorreto. Igual a 10 usaria == ou ===, não >.", "❌ Incorreto. Menor que 10 usaria <, não >.", "✅ Correto! x > 10 executa quando x for estritamente maior que 10.", "❌ Incorreto. Zero usaria == 0 ou < 0, não > 10."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é SE-SENÃO-SE (else if)?', '["Um loop", "Múltiplas condições encadeadas", "Uma função", "Um array"]', 1, 'Permite testar várias condições em sequência.', '["❌ Incorreto. Loop é estrutura de repetição, não condicional encadeada.", "✅ Correto! Else if permite testar múltiplas condições em sequência.", "❌ Incorreto. Função é bloco de código reutilizável, não condicional.", "❌ Incorreto. Array é lista de dados, não estrutura condicional."]'
FROM modulos WHERE curso_id = 13 AND ordem = 2 LIMIT 1;

-- ==========================================
-- FASE 3 - Loops e Repetição
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Qual loop é ideal quando sabemos QUANTAS vezes repetir?', '["while", "do-while", "for", "if"]', 2, 'O FOR tem contador definido: início, condição e incremento.', '["❌ Incorreto. WHILE não tem contador definido, usa condição indefinida.", "❌ Incorreto. DO-WHILE executa pelo menos uma vez, não para repetições definidas.", "✅ Correto! FOR é ideal quando sabemos exatamente quantas vezes repetir.", "❌ Incorreto. IF é estrutura condicional, não loop de repetição."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O loop WHILE executa enquanto:', '["A condição for falsa", "A condição for verdadeira", "O código tiver erros", "O usuário clicar"]', 1, 'ENQUANTO a condição for verdadeira, continue.', '["❌ Incorreto. WHILE para quando condição for falsa, não verdadeira.", "✅ Correto! WHILE executa enquanto a condição for verdadeira.", "❌ Incorreto. Erros no código podem parar execução, mas não é a regra do WHILE.", "❌ Incorreto. WHILE não depende de cliques do usuário, mas de condição lógica."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é um loop infinito?', '["Loop que executa zero vezes", "Loop sem condição de parada", "Loop com erro de sintaxe", "Loop que roda uma vez"]', 1, 'Sem condição de saída, o loop nunca termina.', '["❌ Incorreto. Loop que executa zero vezes nem começa, não é infinito.", "✅ Correto! Loop infinito não tem condição de parada, executa forever.", "❌ Incorreto. Erro de sintaxe impede execução, não torna infinito.", "❌ Incorreto. Loop que roda uma vez termina normalmente, não é infinito."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'Diferença entre FOR e WHILE:', '["Não há diferença", "FOR é para número definido, WHILE para condição indefinida", "WHILE é mais rápido", "FOR não existe"]', 1, CONCAT('Use FOR quando sabe o total', CHAR(59), ' WHILE quando depende de condição.'), '["❌ Incorreto. Há diferença clara entre FOR e WHILE.", "✅ Correto! FOR para repetições definidas, WHILE para condições indefinidas.", "❌ Incorreto. Velocidade não é a diferença principal entre os loops.", "❌ Incorreto. FOR existe em todas as linguagens importantes."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O DO-WHILE garante que o bloco execute:', '["Zero vezes", "Infinitas vezes", "Pelo menos uma vez", "Apenas se a condição for verdadeira"]', 2, 'DO executa primeiro, WHILE verifica depois.', '["❌ Incorreto. DO-WHILE nunca executa zero vezes, executa pelo menos uma.", "❌ Incorreto. DO-WHILE pode terminar, não é infinito por padrão.", "✅ Correto! DO-WHILE sempre executa pelo menos uma vez, mesmo se condição for falsa.", "❌ Incorreto. DO-WHILE executa independentemente da condição inicial."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que faz o comando BREAK num loop?', '["Pausa o loop temporariamente", "Interrompe o loop imediatamente", "Reinicia o loop", "Ignora o erro"]', 1, 'BREAK = sair do loop na hora.', '["❌ Incorreto. BREAK não pausa temporariamente, sai definitivamente.", "✅ Correto! BREAK interrompe o loop imediatamente e sai dele.", "❌ Incorreto. BREAK não reinicia o loop, o encerra.", "❌ Incorreto. BREAK não ignora erros, apenas controla fluxo do loop."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que faz o CONTINUE num loop?', '["Para o loop", "Pula a iteração atual e vai para a próxima", "Reinicia do zero", "Duplica o loop"]', 1, 'CONTINUE = pula essa volta e vai para a próxima.', '["❌ Incorreto. CONTINUE não para o loop, apenas pula a iteração atual.", "✅ Correto! CONTINUE pula a iteração atual e vai para a próxima.", "❌ Incorreto. CONTINUE não reinicia do zero, apenas pula a volta atual.", "❌ Incorreto. CONTINUE não duplica o loop, apenas controla o fluxo interno."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, CONCAT('Quantas vezes o FOR abaixo executa? for(i=0', CHAR(59), ' i<5', CHAR(59), ' i++)'), '["4 vezes", "5 vezes", "6 vezes", "Infinito"]', 1, 'De 0 a 4 (enquanto menor que 5) = 5 execuções.', '["❌ Incorreto. 0,1,2,3 seriam 4 vezes, mas vai até 4.", "✅ Correto! Executa 5 vezes: 0,1,2,3,4.", "❌ Incorreto. Não chega a 6, para antes de 5.", "❌ Incorreto. Loop tem condição de parada i<5, não é infinito."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O i++ dentro do FOR serve para:', '["Diminuir o contador", "Incrementar o contador em 1", "Zerar o contador", "Comparar valores"]', 1, 'i++ é a abreviação de i = i + 1.', '["❌ Incorreto. Diminuir usa i-- ou i -= 1, não i++.", "✅ Correto! i++ incrementa o contador em 1 a cada iteração.", "❌ Incorreto. Zerar usa i = 0, não i++.", "❌ Incorreto. Comparar usa == ou ===, não i++."]'
FROM modulos WHERE curso_id = 13 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica, explicacoes_json)
SELECT 13, id, 'O que é iteração?', '["Um tipo de variável", "Cada execução de um loop", "Um operador lógico", "Uma função recursiva"]', 1, 'Cada volta completa do loop é chamada de iteração.', '["❌ Incorreto. Iteração não é tipo de variável, é conceito de repetição.", "✅ Correto! Iteração é cada execução/volta completa de um loop.", "❌ Incorreto. Operador lógico é AND/OR/NOT, não iteração.", "❌ Incorreto. Função recursiva chama a si mesma, não é iteração de loop."]'
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