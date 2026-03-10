if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['c'] = {
    '1': [
        { id: 1, text: 'Como imprimir no console em C?', sub: 'Fundamentos', options: ['printf()', 'echo', 'cout', 'print'], correct: 0, explanation: 'printf() é a saída padrão.' },
        { id: 2, text: 'Como ler dados do teclado?', sub: 'Entrada', options: ['read()', 'input()', 'scanf()', 'get()'], correct: 2, explanation: 'scanf() lê dados formatados.' },
        { id: 3, text: 'O que indica %d?', sub: 'Formatação', options: ['Caracter', 'Inteiro', 'Decimal', 'Cadeia'], correct: 1, explanation: '%d é para números decimais (inteiros).' },
        { id: 4, text: 'Como declarar constantes?', sub: 'Variáveis', options: ['const', '#define', 'As duas anteriores', 'static'], correct: 2, explanation: 'const e #define são comuns em C.' },
        { id: 5, text: 'Qual o tipo para ponto flutuante?', sub: 'Tipos', options: ['int', 'char', 'float', 'void'], correct: 2, explanation: 'float armazena números com casas decimais.' },
        { id: 6, text: 'Símbolo de ponteiro em C?', sub: 'Memória', options: ['&', '*', '@', '#'], correct: 1, explanation: '* é o operador de desreferência.' },
        { id: 7, text: 'Ponto final de execução?', sub: 'Funções', options: ['exit', 'stop', 'return 0;', 'break'], correct: 2, explanation: 'A função main() retorna 0 ao S.O.' },
        { id: 8, text: 'Qual biblioteca para E/S básica?', sub: 'Bibliotecas', options: ['stdio.h', 'math.h', 'conio.h', 'stdlib.h'], correct: 0, explanation: 'stdio.h (Standard Input Output).' },
        { id: 9, text: 'Sinal de comentário de bloco?', sub: 'Sintaxe', options: ['//', '/*', '<!--', '#'], correct: 1, explanation: '/* ... */ para múltiplas linhas.' },
        { id: 10, text: 'Qual o tamanho de um char em bytes?', sub: 'Memória', options: ['1', '2', '4', '8'], correct: 0, explanation: 'char ocupa 1 byte (8 bits).' }
    ]
};

for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['c'][m.toString()] = window.QUESTIONS_DB['c']['1'].map(q => ({
        ...q,
        id: (m * 100) + q.id,
        text: q.text + " (Aula " + m + ")",
        explanation: q.explanation + " - Reforço módulo " + m
    }));
}
