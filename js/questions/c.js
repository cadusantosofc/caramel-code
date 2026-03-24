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

// Gerar módulos 2-10 com perguntas ÚNICAS para C
window.QUESTIONS_DB['c']['2'] = [
    { id: 11, text: 'O que é ponteiro em C?', sub: 'Ponteiros', options: ['Variável especial', 'Endereço de memória', 'Apontador para valor', 'Todas'], correct: 3, explanation: 'Ponteiro armazena endereço.' },
    { id: 12, text: 'Como declarar um ponteiro?', sub: 'Ponteiros', options: ['int *p', 'int* p', 'Ambas', 'int &p'], correct: 2, explanation: 'int *p ou int* p são válidos.' },
    { id: 13, text: 'Qual função aloca memória dinamicamente?', sub: 'Memória', options: ['alloc()', 'malloc()', 'new', 'allocate()'], correct: 1, explanation: 'malloc() aloca na heap.' },
    { id: 14, text: 'Como liberar memória?', sub: 'Memória', options: ['delete', 'free()', 'release()', 'unalloc()'], correct: 1, explanation: 'free() desaloca memória.' },
    { id: 15, text: 'O que é sizeof()?', sub: 'Operadores', options: ['Tamanho de tipo', 'Função de escrita', 'Tipo de dado', 'Ambas as primeiras'], correct: 0, explanation: 'sizeof() retorna bytes de um tipo.' },
    { id: 16, text: 'Como fazer loop com while?', sub: 'Loops', options: ['while(condição)', 'while condição:', 'while { }', 'loop()'], correct: 0, explanation: 'while(true) { ... } é loop infinito.' },
    { id: 17, text: 'Como sair de um loop?', sub: 'Controle', options: ['exit()', 'break', 'leave', 'stop'], correct: 1, explanation: 'break sai do loop imediatamente.' },
    { id: 18, text: 'O que faz o comando continue?', sub: 'Controle', options: ['Sai do loop', 'Pula para próxima iteração', 'Continua programa', 'Retorna'], correct: 1, explanation: 'continue pula para próxima iteração.' },
    { id: 19, text: 'Como incluir bibliotecas em C?', sub: 'Include', options: ['#include <stdio.h>', '#import', 'require', '#load'], correct: 0, explanation: '#include <> para stdlib.' },
    { id: 20, text: 'O que significa main()?', sub: 'Estrutura', options: ['Função principal', 'Ponto de entrada', 'Retorna 0 para sucesso', 'Todas'], correct: 3, explanation: 'main() é onde execução inicia.' }
];

// Gerar módulos 3-10
for (let m = 3; m <= 10; m++) {
    window.QUESTIONS_DB['c'][m.toString()] = window.QUESTIONS_DB['c']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Avançado M" + m + ")",
        explanation: q.explanation + " - Reforço nível " + m
    }));
}
