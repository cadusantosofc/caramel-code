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
    ],
    '2': [
        { id: 11, text: 'O que é hoisting?', sub: 'Fundamentos', options: ['Repetição', 'Elevação de variáveis', 'Importação', 'Compilação'], correct: 1, explanation: 'Hoisting move declarações para o topo.' },
        { id: 12, text: 'Qual é a diferença entre let e var?', sub: 'Escopo', options: ['Nenhuma', 'let é escopo de bloco', 'var é mais rápido', 'São idênticos'], correct: 1, explanation: 'let respeita escopos de bloco ({}), var não.' },
        { id: 13, text: 'O que é closure em JavaScript?', sub: 'Conceitos', options: ['Fechamento de programa', 'Função que captura variáveis do escopo externo', 'Loop fechado', 'Nenhuma'], correct: 1, explanation: 'Closure permite acesso a variáveis externas.' },
        { id: 14, text: 'Como verificar o tipo de uma variável?', sub: 'Operadores', options: ['type()', 'typeof', 'instanceof', 'kind()'], correct: 1, explanation: 'typeof retorna o tipo da variável.' },
        { id: 15, text: 'Qual método adiciona um item ao final do array?', sub: 'Arrays', options: ['push()', 'pop()', 'shift()', 'unshift()'], correct: 0, explanation: 'push() adiciona ao final.' },
        { id: 16, text: 'O que faz Array.map()?', sub: 'Arrays', options: ['Busca um item', 'Transforma cada elemento', 'Ordena o array', 'Remove duplicatas'], correct: 1, explanation: 'map() cria novo array transformado.' },
        { id: 17, text: 'O que é JSON?', sub: 'Formatos', options: ['JavaScript Object', 'JavaScript Object Notation', 'Java Serialized Object', 'Join Object Notation'], correct: 1, explanation: 'JSON é notação de objetos JavaScript.' },
        { id: 18, text: 'Como fazer requisição HTTP?', sub: 'API', options: ['fetch()', 'XMLHttpRequest', 'Ambas', 'download()'], correct: 2, explanation: 'fetch() é moderno, XMLHttpRequest é legado.' },
        { id: 19, text: 'O que é Promise?', sub: 'Assíncrono', options: ['Promessa do usuário', 'Objeto de operação assíncrona', 'Variável global', 'Tipo de erro'], correct: 1, explanation: 'Promise representa valor futuro.' },
        { id: 20, text: 'Como usar async/await?', sub: 'Assíncrono', options: ['Para pausar código', 'Para operações assíncronas legíveis', 'Para loops', 'Nenhuma'], correct: 1, explanation: 'async/await simplifica código assíncrono.' }
    ]
};
