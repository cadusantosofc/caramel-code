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
    ]
};

// Gerar mock para módulos 2 a 10
for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['logica'][m.toString()] = window.QUESTIONS_DB['logica']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Módulo " + m + ")",
        explanation: q.explanation + " - Lição " + m
    }));
}
