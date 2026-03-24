if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['logica'] = {
    '1': [
        { id: 1, text: 'O que é um algoritmo?', sub: 'Conceitos', options: ['Um tipo de dado', 'Uma sequência de passos', 'Uma linguagem', 'Um hardware'], correct: 1, explanation: 'Algoritmos são sequências lógicas de passos.' },
        { id: 2, text: 'Operador para o "OU" lógico?', sub: 'Operadores', options: ['&&', '||', '!', '=='], correct: 1, explanation: '|| representa a disjunção lógica.' },
        { id: 3, text: 'Símbolo usado para atribuir valor?', sub: 'Variáveis', options: ['=', '==', '===', ':='], correct: 0, explanation: '= é a atribuição em quase todas linguagens.' },
        { id: 4, text: 'Tipo de dado para números sem decimais?', sub: 'Tipos', options: ['Float', 'Double', 'Integer', 'String'], correct: 2, explanation: 'Integer (Int) para números inteiros.' },
        { id: 5, text: 'Estrutura de decisão?', sub: 'Controle', options: ['for', 'while', 'if', 'switch'], correct: 2, explanation: 'if executa blocos condicionalmente.' },
        { id: 6, text: 'O que é um loop infinito?', sub: 'Controle', options: ['Um erro de sintaxe', 'Loop que nunca para', 'Loop que roda 100 vezes', 'Nenhuma das anteriores'], correct: 1, explanation: 'Loop infinito ocorre se a condição de parada nunca for atingida.' },
        { id: 7, text: 'Operador de resto da divisão?', sub: 'Matemática', options: ['/', '*', '%', '^'], correct: 2, explanation: '% (módulo) retorna o resto.' },
        { id: 8, text: 'O que é uma constante?', sub: 'Armazenamento', options: ['Valor que muda sempre', 'Valor que nunca muda', 'Uma função', 'Um comentário'], correct: 1, explanation: 'Constantes mantêm seu valor fixo.' },
        { id: 9, text: 'Indica o fim de um programa?', sub: 'Estrutura', options: ['start', 'end', 'stop', 'quit'], correct: 1, explanation: 'End simboliza a conclusão.' },
        { id: 10, text: 'O que é endentação?', sub: 'Boas Práticas', options: ['Digitar rápido', 'Espaçamento do código', 'Uso de cores', 'Limpar o cache'], correct: 1, explanation: 'Endentação organiza a hierarquia do código.' }
    ],
    '2': [
        { id: 11, text: 'O que é um fluxograma?', sub: 'Representação', options: ['Um código fonte', 'Um diagrama de processos', 'Um erro de lógica', 'Uma variável'], correct: 1, explanation: 'Fluxograma é a representação visual de um algoritmo.' },
        { id: 12, text: 'Qual o valor de 5 + 2 * 3?', sub: 'Precedência', options: ['21', '11', '15', '10'], correct: 1, explanation: 'A multiplicação vem antes da adição.' },
        { id: 13, text: 'O que faz o loop "while"?', sub: 'Repetição', options: ['Executa uma vez', 'Repete enquanto verdade', 'Sempre para após 10 vezes', 'Não existe'], correct: 1, explanation: 'While repete o bloco baseando-se em uma condição.' },
        { id: 14, text: 'O que é uma variável booleana?', sub: 'Tipos', options: ['Número real', 'Texto longo', 'Verdadeiro ou Falso', 'Vetor'], correct: 2, explanation: 'Booleano lida com lógica binária.' },
        { id: 15, text: 'Operador de negação?', sub: 'Operadores', options: ['NOT', '!', '!=', '~'], correct: 1, explanation: '! (bang) inverte o valor lógico.' },
        { id: 16, text: 'O que é o "corpo" de uma função?', sub: 'Estrutura', options: ['A assinatura', 'O código entre as chaves', 'O nome dela', 'O retorno'], correct: 1, explanation: 'O corpo contém a implementação da função.' },
        { id: 17, text: 'Qual a saída de: 10 > 5 AND 3 < 1?', sub: 'Lógica', options: ['True', 'False', 'Erro', 'Null'], correct: 1, explanation: 'Ambas precisam ser verdadeiras para o AND retornar True.' },
        { id: 18, text: 'O que é um comentário no código?', sub: 'Sintaxe', options: ['Código executável', 'Texto ignorado pelo compilador', 'Uma variável', 'Um erro'], correct: 1, explanation: 'Comentários servem para documentação humana.' },
        { id: 19, text: 'O que é recursividade?', sub: 'Conceitos', options: ['Loop infinito', 'Função que chama a si mesma', 'Um tipo de dado', 'Um erro de memória'], correct: 1, explanation: 'Recursão ocorre quando uma função se auto-invoca.' },
        { id: 20, text: 'O que significa DRY em programação?', sub: 'Boas Práticas', options: ['Do Repeat Yourself', 'Don\'t Repeat Yourself', 'Data Resource Yield', 'Digital Real Yield'], correct: 1, explanation: 'Princípio de evitar código redundante.' }
    ]
};
