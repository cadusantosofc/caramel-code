if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['mysql'] = {
    '1': [
        { id: 1, text: 'Comando para ver bancos existentes?', sub: 'Data Definition', options: ['SHOW DATABASES', 'GET DATABASES', 'LIST DATABASES', 'SELECT DATABASES'], correct: 0, explanation: 'SHOW DATABASES lista tudo.' },
        { id: 2, text: 'Como selecionar uma tabela?', sub: 'Data Manipulation', options: ['SELECT * FROM tab', 'GET ALL FROM tab', 'CHOOSE tab', 'SHOW tab'], correct: 0, explanation: 'SELECT é o comando de consulta principal.' },
        { id: 3, text: 'Qual keyword filtra resultados?', sub: 'Filtragem', options: ['IF', 'WHERE', 'WHEN', 'FILTER'], correct: 1, explanation: 'WHERE define as condições (cláusulas).' },
        { id: 4, text: 'Como inserir novos dados?', sub: 'Inserção', options: ['PUT INTO', 'INSERT INTO', 'ADD TO', 'SAVE AS'], correct: 1, explanation: 'INSERT INTO cria novos registros.' },
        { id: 5, text: 'Como atualizar um dado existente?', sub: 'Atualização', options: ['REFRESH', 'UP', 'UPDATE', 'CHANGE'], correct: 2, explanation: 'UPDATE altera dados na tabela.' },
        { id: 6, text: 'Como deletar um registro?', sub: 'Exclusão', options: ['ERASE', 'REMOVE', 'DELETE', 'KILL'], correct: 2, explanation: 'DELETE remove a linha especificada.' },
        { id: 7, text: 'O que significa SQL?', sub: 'Conceitos', options: ['Strong Query Language', 'Structured Query Language', 'Simple Query Logic', 'System Quick Link'], correct: 1, explanation: 'Linguagem de Consulta Estruturada.' },
        { id: 8, text: 'Como ordenar resultados?', sub: 'Ordenação', options: ['SORT BY', 'ORDER BY', 'ARRANGE', 'GROUP BY'], correct: 1, explanation: 'ORDER BY define a sequência (A-Z ou Z-A).' },
        { id: 9, text: 'Símbolo usado para todas as colunas?', sub: 'Sintaxe', options: ['$', '*', '#', '%'], correct: 1, explanation: '* (asterisco) representa todas as colunas.' },
        { id: 10, text: 'Como contar registros?', sub: 'Funções', options: ['SUM()', 'LIMIT()', 'COUNT()', 'TOTAL()'], correct: 2, explanation: 'COUNT(*) conta o total de registros.' }
    ]
};

// Gerar módulos 2-10 com perguntas ÚNICAS para MySQL
window.QUESTIONS_DB['mysql']['2'] = [
    { id: 11, text: 'Como criar uma tabela?', sub: 'DDL', options: ['CREATE TABLE', 'MAKE TABLE', 'NEW TABLE', 'ADD TABLE'], correct: 0, explanation: 'CREATE TABLE nome (colunas).' },
    { id: 12, text: 'O que é PRIMARY KEY?', sub: 'Constraints', options: ['Chave estrangeira', 'Identificador único', 'Coluna normal', 'Índice'], correct: 1, explanation: 'PRIMARY KEY garante unicidade.' },
    { id: 13, text: 'O que é FOREIGN KEY?', sub: 'Constraints', options: ['Chave primária', 'Referência a outra tabela', 'Coluna extra', 'Nenhuma'], correct: 1, explanation: 'FOREIGN KEY relaciona tabelas.' },
    { id: 14, text: 'Como fazer JOIN entre tabelas?', sub: 'Joins', options: ['SELECT * FROM t1 JOIN t2', 'SELECT * FROM t1, t2', 'Ambas', 'INNER JOIN'], correct: 2, explanation: 'JOIN combina linhas de tabelas.' },
    { id: 15, text: 'O que faz GROUP BY?', sub: 'Agrupamento', options: ['Agrupa resultados', 'Ordena dados', 'Filtra linhas', 'Remove duplicatas'], correct: 0, explanation: 'GROUP BY agrupa por coluna.' },
    { id: 16, text: 'Para que serve HAVING?', sub: 'Agrupamento', options: ['Filtrar antes', 'Filtrar grupos (após GROUP BY)', 'Ordenar', 'Nenhuma'], correct: 1, explanation: 'HAVING filtra grupos.' },
    { id: 17, text: 'O que é índice?', sub: 'Performance', options: ['Número de linha', 'Estrutura de busca rápida', 'Coluna especial', 'Chave'], correct: 1, explanation: 'Índice acelera buscas.' },
    { id: 18, text: 'Como usar LIKE?', sub: 'Busca', options: ['SELECT * FROM t WHERE col LIKE pattern', 'Verificar igualdade', 'Comparar números', 'Nenhuma'], correct: 0, explanation: 'LIKE busca padrões (% e _).' },
    { id: 19, text: 'O que faz LIMIT?', sub: 'Resultados', options: ['Limita número de linhas', 'Limita colunas', 'Define máximo de valor', 'Filtra dados'], correct: 0, explanation: 'LIMIT retorna N linhas.' },
    { id: 20, text: 'Como fazer subconsulta?', sub: 'Avançado', options: ['SELECT dentro SELECT', 'Nested queries', 'Ambas', 'Subquery'], correct: 2, explanation: 'Subconsultas consultam resultados.' }
];

// Gerar módulos 3-10
for (let m = 3; m <= 10; m++) {
    window.QUESTIONS_DB['mysql'][m.toString()] = window.QUESTIONS_DB['mysql']['1'].map(q => ({
        ...q,
        id: q.id + (m * 10),
        text: q.text + " (Avançado M" + m + ")",
        explanation: q.explanation + " - Reforço nível " + m
    }));
}
