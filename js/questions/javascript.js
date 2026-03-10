if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['javascript'] = {
    '1': [
        { id: 1, text: 'Como declarar uma variável que pode mudar?', sub: 'Fundamentos', options: ['const', 'var', 'let', 'As duas últimas'], correct: 3, explanation: 'let e var permitem reatribuição.' },
        { id: 2, text: 'Qual símbolo para comentários de linha?', sub: 'Sintaxe', options: ['#', '//', '/*', '<!--'], correct: 1, explanation: '// é usado para comentários de uma linha.' },
        { id: 3, text: 'Como exibir um alerta no navegador?', sub: 'Browser API', options: ['msg()', 'alert()', 'print()', 'log()'], correct: 1, explanation: 'alert() exibe uma caixa de diálogo.' },
        { id: 4, text: 'Qual operador de igualdade estrita?', sub: 'Operadores', options: ['=', '==', '===', '!=='], correct: 2, explanation: '=== compara valor e tipo.' },
        { id: 5, text: 'Como escrever no console?', sub: 'Debug', options: ['print()', 'write()', 'console.log()', 'debug()'], correct: 2, explanation: 'console.log() é o padrão para depuração.' },
        { id: 6, text: 'Tipo de dado para verdadeiro/falso?', sub: 'Tipos', options: ['String', 'Number', 'Boolean', 'Object'], correct: 2, explanation: 'Boolean representa true ou false.' },
        { id: 7, text: 'Como iniciar um loop for?', sub: 'Estruturas', options: ['for(i=0; i<5)', 'for(i<=5; i++)', 'for(let i=0; i<5; i++)', 'for let i=0 to 5'], correct: 2, explanation: 'A sintaxe correta inclui inicialização, condição e incremento.' },
        { id: 8, text: 'Qual método remove o último item de um array?', sub: 'Arrays', options: ['push()', 'pop()', 'shift()', 'remove()'], correct: 1, explanation: 'pop() remove o último elemento.' },
        { id: 9, text: 'Como arredondar 4.7 para 5?', sub: 'Math', options: ['Math.floor()', 'Math.ceil()', 'Math.round()', 'Math.rnd()'], correct: 2, explanation: 'Math.round() arredonda para o inteiro mais próximo.' },
        { id: 10, text: 'O que significa DOM?', sub: 'Conceitos', options: ['Data Object Model', 'Document Object Model', 'Digital Ordinance Model', 'Document Oriented Mobile'], correct: 1, explanation: 'DOM é a representação da página no JS.' }
    ]
};

// Gerar mock para módulos 2 a 10
for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['javascript'][m.toString()] = window.QUESTIONS_DB['javascript']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Módulo " + m + ")",
        explanation: q.explanation + " - Lição " + m
    }));
}
