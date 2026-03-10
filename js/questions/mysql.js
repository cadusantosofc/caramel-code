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

for (let m = 2; m <= 10; m++) {
    window.QUESTIONS_DB['mysql'][m.toString()] = window.QUESTIONS_DB['mysql']['1'].map(q => ({
        ...q,
        id: (m * 100) + q.id,
        text: q.text + " (Módulo " + m + ")",
        explanation: q.explanation + " - Reforço módulo MySQL " + m
    }));
}
