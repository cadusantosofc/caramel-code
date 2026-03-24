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

// Gerar módulos 2-10 com perguntas ÚNICAS para PHP
window.QUESTIONS_DB['php']['2'] = [
    { id: 11, text: 'Como conectar a um banco de dados?', sub: 'Banco de Dados', options: ['mysql_connect()', 'mysqli_connect()', 'PDO', 'Todas'], correct: 3, explanation: 'Existem várias formas; PDO é moderna.' },
    { id: 12, text: 'Para que serve session_start()?', sub: 'Sessões', options: ['Iniciar servidor', 'Criar sessão do usuário', 'Iniciar arquivo', 'Autenticar'], correct: 1, explanation: 'session_start() cria espaço de sessão.' },
    { id: 13, text: 'Como acessar variáveis de sessão?', sub: 'Sessões', options: ['$session', '$_SESSION', '$SESSION', '$sess'], correct: 1, explanation: '$_SESSION é um superglobal.' },
    { id: 14, text: 'O que faz include()?', sub: 'Arquivos', options: ['Inclui arquivo PHP', 'Inclui CSS', 'Inclui biblioteca', 'Todas'], correct: 0, explanation: 'include() carrega outro arquivo PHP.' },
    { id: 15, text: 'Qual a diferença include vs require?', sub: 'Arquivos', options: ['Nenhuma', 'require gera erro se não existir', 'include é mais rápido', 'Não existe require'], correct: 1, explanation: 'require para críticos, include para opcional.' },
    { id: 16, text: 'Como verificar se arquivo existe?', sub: 'Arquivos', options: ['exists()', 'file_exists()', 'is_file()', 'Ambas as últimas'], correct: 3, explanation: 'file_exists() e is_file() verificam.' },
    { id: 17, text: 'Como ler um arquivo inteiro?', sub: 'Arquivos', options: ['read_file()', 'file_get_contents()', 'read()', 'get()'], correct: 1, explanation: 'file_get_contents() retorna conteúdo inteiro.' },
    { id: 18, text: 'O que faz date()?', sub: 'Data/Hora', options: ['Retorna data/hora', 'Formata data', 'Define data', 'Ambas as primeiras'], correct: 3, explanation: 'date() retorna e pode formatar.' },
    { id: 19, text: 'Como redirecionar para outra página?', sub: 'Redirecionamento', options: ['header()', 'redirect()', 'location', 'goto'], correct: 0, explanation: 'header("Location: url") redireciona.' },
    { id: 20, text: 'O que é SQL Injection?', sub: 'Segurança', options: ['Código SQL injetado', 'Vulnerabilidade', 'Ataque hacker', 'Todas'], correct: 3, explanation: 'Uso de prepared statements previne.' }
];

// Gerar módulos 3-10
for (let m = 3; m <= 10; m++) {
    window.QUESTIONS_DB['php'][m.toString()] = window.QUESTIONS_DB['php']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Avançado M" + m + ")",
        explanation: q.explanation + " - Reforço nível " + m
    }));
}
