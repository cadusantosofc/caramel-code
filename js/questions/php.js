if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['php'] = {
    '1': [
        { id: 1, text: 'Como começa uma tag PHP?', sub: 'Fundamentos', options: ['<?php', '<php>', '<script>', '($php)'], correct: 0, explanation: 'A tag padrão é <?php.' },
        { id: 2, text: 'Símbolo usado para variáveis no PHP?', sub: 'Variáveis', options: ['&', '@', '$', '#'], correct: 2, explanation: 'Variáveis PHP começam com $.' },
        { id: 3, text: 'Comando para imprimir na tela?', sub: 'Impressão', options: ['print()', 'echo', 'printf', 'Todas as anteriores'], correct: 3, explanation: 'No PHP podemos usar echo e as funções de print.' },
        { id: 4, text: 'Como terminar cada linha de comando?', sub: 'Sintaxe', options: [':', '.', ';', ','], correct: 2, explanation: 'Usamos ponto e vírgula (;).' },
        { id: 5, text: 'Operador de concatenação de strings?', sub: 'Operadores', options: ['+', '.', '&', ','], correct: 1, explanation: 'O ponto (.) é o operador de concatenação.' },
        { id: 6, text: 'Tag para fechar um bloco PHP?', sub: 'Fundamentos', options: ['?>', '</php>', '}', 'stop'], correct: 0, explanation: '?> encerra o bloco.' },
        { id: 7, text: 'Global de dados via link (querystring)?', sub: 'Variáveis', options: ['$_POST', '$_GET', '$_REQUEST', '$_SESSION'], correct: 1, explanation: '$_GET pega dados via URL.' },
        { id: 8, text: 'Global para formulários (corpo)?', sub: 'Variáveis', options: ['$_POST', '$_GET', '$_LINK', '$_BODY'], correct: 0, explanation: '$_POST envia dados no corpo da requisição.' },
        { id: 9, text: 'Símbolo de comentário de linha?', sub: 'Sintaxe', options: ['#', '//', '/*', 'As duas primeiras'], correct: 3, explanation: '// e # podem ser usados no PHP.' },
        { id: 10, text: 'Como checar se uma variável existe?', sub: 'Funções', options: ['isset()', 'exists()', 'empty()', 'has()'], correct: 0, explanation: 'isset() verifica se a variável foi definida.' }
    ]
};

// Gerar 10 módulos com 10 questões cada
for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['php'][m.toString()] = window.QUESTIONS_DB['php']['1'].map(q => ({
        ...q,
        id: (m * 100) + q.id,
        text: q.text + " (Nível " + m + ")",
        explanation: q.explanation + " - Lição " + m
    }));
}
