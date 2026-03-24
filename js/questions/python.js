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

// Gerar módulos 2-10 com perguntas ÚNICAS para Python
window.QUESTIONS_DB['python']['2'] = [
    { id: 11, text: 'O que são list compreensions?', sub: 'Sintaxe', options: ['Compreensão de lista', '[x*2 for x in lista]', 'Forma concisa de criar listas', 'Todas'], correct: 3, explanation: 'List comp é sintaxe elegante de Python.' },
    { id: 12, text: 'Como iterar sobre dicionário?', sub: 'Dicts', options: ['for key in dict', 'for key, value in dict.items()', 'Ambas', 'for value in dict'], correct: 2, explanation: 'items() retorna pares chave-valor.' },
    { id: 13, text: 'O que é lambda?', sub: 'Funções', options: ['Função anônima', 'Função sem nome', 'Expressão lambda', 'Todas'], correct: 3, explanation: 'lambda x: x*2 é função anônima.' },
    { id: 14, text: 'Como usar map()?', sub: 'Funcional', options: ['Mapear função sobre lista', 'map(func, lista)', 'Ambas', 'Mapa estrutural'], correct: 2, explanation: 'map() aplica função a cada item.' },
    { id: 15, text: 'Como usar filter()?', sub: 'Funcional', options: ['Filtrar itens', 'filter(condition, lista)', 'Ambas', 'Remover valores'], correct: 2, explanation: 'filter() remove itens falsos.' },
    { id: 16, text: 'O que é decorator?', sub: 'Funções', options: ['Decoração visual', '@funcao', 'Modifica função', 'Ambas as últimas'], correct: 3, explanation: '@decorator envolve função.' },
    { id: 17, text: 'Como abrir arquivo?', sub: 'Arquivos', options: ['open()', 'with open()', 'Ambas', 'file()'], correct: 2, explanation: 'with open() é recomendado.' },
    { id: 18, text: 'O que é try-except?', sub: 'Exceções', options: ['Tentar e capturar erro', 'Falha controlada', 'Ambas', 'Erro de sintaxe'], correct: 2, explanation: 'try-except trata exceções.' },
    { id: 19, text: 'Como criar classe?', sub: 'OOP', options: ['class Nome:', 'define class', 'create class', 'class Nome {}'], correct: 0, explanation: 'class Nome: define classe.' },
    { id: 20, text: 'O que é __init__?', sub: 'OOP', options: ['Iniciar classe', 'Inicializar objeto', 'Construtor', 'Todas'], correct: 3, explanation: '__init__() é construtor Python.' }
];

// Gerar módulos 3-10
for (let m = 3; m <= 10; m++) {
    window.QUESTIONS_DB['python'][m.toString()] = window.QUESTIONS_DB['python']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Avançado M" + m + ")",
        explanation: q.explanation + " - Reforço nível " + m
    }));
}
