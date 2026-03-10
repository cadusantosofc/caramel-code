if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['java'] = {
    '1': [
        { id: 1, text: 'Como imprimir algo em Java?', sub: 'Fundamentos', options: ['echo', 'print', 'printf', 'System.out.println'], correct: 3, explanation: 'System.out.println é o comando padrão.' },
        { id: 2, text: 'Qual o nome do método de entrada?', sub: 'Funções', options: ['start()', 'main()', 'init()', 'java()'], correct: 1, explanation: 'main() é o ponto de entrada.' },
        { id: 3, text: 'O que Java produz após compilar?', sub: 'Arquitetura', options: ['.exe', '.jar', '.class (Bytecode)', '.bin'], correct: 2, explanation: 'Java compila em bytecode.' },
        { id: 4, text: 'Como gerenciar memória em Java?', sub: 'Memória', options: ['manual', 'Garbage Collector', 'malloc', 'delete'], correct: 1, explanation: 'O Garbage Collector cuida de tudo.' },
        { id: 5, text: 'Palavra-chave para herança?', sub: 'POO', options: ['implements', 'extends', 'inheritance', 'parent'], correct: 1, explanation: 'extends é a keyword de herança.' },
        { id: 6, text: 'O que é uma Classe em POO?', sub: 'Conceitos', options: ['Uma variável', 'Um molde/planta', 'Um erro', 'Uma rede'], correct: 1, explanation: 'A classe é o molde para Objetos.' },
        { id: 7, text: 'Como criar um novo objeto?', sub: 'Instanciação', options: ['new', 'create', 'make', 'instance'], correct: 0, explanation: 'Keyword new aloca memória.' },
        { id: 8, text: 'O que significa o modificador private?', sub: 'Acesso', options: ['Livre', 'Apenas na classe', 'Apenas no sistema', 'Apenas estático'], correct: 1, explanation: 'Encapsulamento básico.' },
        { id: 9, text: 'Java é case-sensitive?', sub: 'Sintaxe', options: ['Sim', 'Não', 'Depende', 'Talvez'], correct: 0, explanation: 'Java diferencia maiúsculas/minúsculas.' },
        { id: 10, text: 'Qual tipo de dado para um texto?', sub: 'Tipos', options: ['char', 'String', 'text', 'Varchar'], correct: 1, explanation: 'String é uma classe para textos.' }
    ]
};

for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['java'][m.toString()] = window.QUESTIONS_DB['java']['1'].map(q => ({
        ...q,
        id: (m * 100) + q.id,
        text: q.text + " (Nível " + m + ")",
        explanation: q.explanation + " - Reforço módulo Java " + m
    }));
}
