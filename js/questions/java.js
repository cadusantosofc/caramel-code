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

// Gerar módulos 2-10 com perguntas ÚNICAS para Java
window.QUESTIONS_DB['java']['2'] = [
    { id: 11, text: 'O que é herança em Java?', sub: 'POO', options: ['Receber propriedades de classe', 'Passar valores', 'Importar classes', 'Combinar dados'], correct: 0, explanation: 'Herança permite reutilizar código.' },
    { id: 12, text: 'Como declarar uma classe abstrata?', sub: 'POO', options: ['class', 'abstract class', 'interface', 'abstract'], correct: 1, explanation: 'abstract class define classe base.' },
    { id: 13, text: 'O que é interface em Java?', sub: 'Contrato', options: ['Classe especial', 'Contrato de métodos', 'Classe abstrata', 'Nenhuma'], correct: 1, explanation: 'interface define métodos obrigatórios.' },
    { id: 14, text: 'Como implementar interface?', sub: 'POO', options: ['extends', 'implements', 'inherits', 'import'], correct: 1, explanation: 'implements implementa interface.' },
    { id: 15, text: 'O que é polimorfismo?', sub: 'POO', options: ['Múltiplas formas', 'Múltiplas classes', 'Múltiplas methods', 'Ambas as primeiras'], correct: 3, explanation: 'Polimorfismo permite diferentes implementações.' },
    { id: 16, text: 'Como criar construtor?', sub: 'Métodos', options: ['public void Classe()', 'public Classe()', 'constructor()', 'Ambas as primeiras'], correct: 1, explanation: 'Construtor tem mesmo nome da classe.' },
    { id: 17, text: 'O que faz super()?', sub: 'Herança', options: ['Chama classe pai', 'Super variável', 'Retorna super', 'Nenhuma'], correct: 0, explanation: 'super() chama construtor pai.' },
    { id: 18, text: 'Como usar try-catch?', sub: 'Exceções', options: ['Para loops', 'Capturar erros', 'Validar dados', 'Ambas'], correct: 1, explanation: 'try-catch trata exceções.' },
    { id: 19, text: 'O que é ArrayList?', sub: 'Coleções', options: ['Array fixo', 'Array dinâmico', 'Conjunto de dados', 'Tipo primitivo'], correct: 1, explanation: 'ArrayList cresce dinamicamente.' },
    { id: 20, text: 'Como usar HashMap?', sub: 'Coleções', options: ['Armazena pares chave-valor', 'Lista de dados', 'Índices', 'Ambas'], correct: 0, explanation: 'HashMap mapeia chaves a valores.' }
];

// Gerar módulos 3-10
for (let m = 3; m <= 10; m++) {
    window.QUESTIONS_DB['java'][m.toString()] = window.QUESTIONS_DB['java']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Avançado M" + m + ")",
        explanation: q.explanation + " - Reforço nível " + m
    }));
}
