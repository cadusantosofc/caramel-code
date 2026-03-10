if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['python'] = {
    '1': [
        { id: 1, text: 'Como imprimir no console em Python?', sub: 'Fundamentos', options: ['echo', 'print()', 'printf', 'console.log'], correct: 1, explanation: 'print() é a função de saída em Python 3.' },
        { id: 2, text: 'Como definir uma função?', sub: 'Funções', options: ['function', 'def', 'void', 'func'], correct: 1, explanation: 'Usamos def nome():.' },
        { id: 3, text: 'Python usa chaves {} para blocos?', sub: 'Sintaxe', options: ['Sim', 'Não (Indentação)', 'Opcional', 'Depende do SO'], correct: 1, explanation: 'Blocos são definidos por espaços/tabs.' },
        { id: 4, text: 'Qual o tipo para uma lista?', sub: 'Coleções', options: ['array', 'list', 'vector', 'set'], correct: 1, explanation: 'list() armazena sequências mutáveis.' },
        { id: 5, text: 'Como obter o tamanho de uma lista?', sub: 'Funções', options: ['size()', 'length()', 'count()', 'len()'], correct: 3, explanation: 'len([val]) retorna o tamanho.' },
        { id: 6, text: 'Tipo de dado para Texto?', sub: 'Tipos', options: ['char', 'text', 'str', 'string'], correct: 2, explanation: 'str() é a classe de strings.' },
        { id: 7, text: 'Como converter texto em número?', sub: 'Conversão', options: ['toInt()', 'Number()', 'int()', 'val()'], correct: 2, explanation: 'int("10") retorna 10.' },
        { id: 8, text: 'Qual a extensão do arquivo Python?', sub: 'Ambiente', options: ['.py', '.python', '.pt', '.exe'], correct: 0, explanation: '.py identifica scripts Python.' },
        { id: 9, text: 'Como importar bibliotecas?', sub: 'Ambiente', options: ['include', 'require', 'import', 'using'], correct: 2, explanation: 'import math por exemplo.' },
        { id: 10, text: 'Operador de potência (EXPOENTE)?', sub: 'Operadores', options: ['^', '**', 'exp', 'pow'], correct: 1, explanation: '2 ** 3 = 8 em Python.' }
    ]
};

for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['python'][m.toString()] = window.QUESTIONS_DB['python']['1'].map(q => ({
        ...q,
        id: (m * 100) + q.id,
        text: q.text + " (Módulo " + m + ")",
        explanation: q.explanation + " - Reforço módulo Python " + m
    }));
}
