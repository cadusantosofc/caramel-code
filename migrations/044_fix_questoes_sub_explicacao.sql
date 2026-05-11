-- Migration: 044_fix_questoes_sub_explicacao
-- Preenche sub_categoria e explicacao nas questoes v6 para exibicao no front

-- Atualiza sub_categoria baseado no modulo (fase) para Logica
UPDATE questoes q
JOIN modulos m ON q.modulo_id = m.id
SET q.sub_categoria = CASE m.ordem
    WHEN 1 THEN 'Introdução à Lógica'
    WHEN 2 THEN 'Estruturas Condicionais'
    WHEN 3 THEN 'Loops e Repetição'
    WHEN 4 THEN 'Variáveis e Tipos'
    WHEN 5 THEN 'Funções e Modularização'
    WHEN 6 THEN 'Arrays e Listas'
    WHEN 7 THEN 'Algoritmos de Busca'
    WHEN 8 THEN 'Depuração e Testes'
    WHEN 9 THEN 'Lógica Avançada'
    WHEN 10 THEN 'Projeto Final'
    ELSE 'Fundamentos'
END,
q.explicacao = CONCAT('Esta questão avalia seus conhecimentos em ',
    CASE m.ordem
        WHEN 1 THEN 'conceitos básicos de lógica de programação.'
        WHEN 2 THEN 'estruturas condicionais e tomada de decisões.'
        WHEN 3 THEN 'laços de repetição e iteracões.'
        WHEN 4 THEN 'tipos de dados e manipulação de variáveis.'
        WHEN 5 THEN 'funções e divisão de responsabilidades.'
        WHEN 6 THEN 'estruturas de dados lineares.'
        WHEN 7 THEN 'técnicas de busca e ordenação.'
        WHEN 8 THEN 'técnicas de debugging e testes.'
        WHEN 9 THEN 'conceitos avançados de algoritmos.'
        WHEN 10 THEN 'aplicação prática em projetos.'
        ELSE 'fundamentos da programação.'
    END)
WHERE q.curso_id = 13;

-- Atualiza sub_categoria baseado no modulo para HTML
UPDATE questoes q
JOIN modulos m ON q.modulo_id = m.id
SET q.sub_categoria = CASE m.ordem
    WHEN 1 THEN 'Introdução ao HTML'
    WHEN 2 THEN 'Textos e Formatação'
    WHEN 3 THEN 'Listas'
    WHEN 4 THEN 'Links e Navegação'
    WHEN 5 THEN 'Imagens e Mídia'
    WHEN 6 THEN 'Tabelas'
    WHEN 7 THEN 'Formulários'
    WHEN 8 THEN 'Estrutura Semântica'
    WHEN 9 THEN 'Meta Tags e SEO'
    WHEN 10 THEN 'Projeto HTML'
    ELSE 'Fundamentos HTML'
END,
q.explicacao = CONCAT('Esta questão avalia seus conhecimentos em ',
    CASE m.ordem
        WHEN 1 THEN 'estrutura básica de documentos HTML.'
        WHEN 2 THEN 'formatação e estilização de texto.'
        WHEN 3 THEN 'criação e organização de listas.'
        WHEN 4 THEN 'navegação entre páginas com links.'
        WHEN 5 THEN 'inserção de imagens e elementos multimídia.'
        WHEN 6 THEN 'criação e formatação de tabelas.'
        WHEN 7 THEN 'construção de formulários interativos.'
        WHEN 8 THEN 'uso correto de tags semânticas.'
        WHEN 9 THEN 'otimização para motores de busca.'
        WHEN 10 THEN 'desenvolvimento de páginas completas.'
        ELSE 'fundamentos do HTML.'
    END)
WHERE q.curso_id = 10;

-- Atualiza sub_categoria baseado no modulo para CSS
UPDATE questoes q
JOIN modulos m ON q.modulo_id = m.id
SET q.sub_categoria = CASE m.ordem
    WHEN 1 THEN 'Introdução ao CSS'
    WHEN 2 THEN 'Seletores'
    WHEN 3 THEN 'Box Model'
    WHEN 4 THEN 'Cores e Tipografia'
    WHEN 5 THEN 'Layout e Display'
    WHEN 6 THEN 'Flexbox'
    WHEN 7 THEN 'Grid Layout'
    WHEN 8 THEN 'Responsividade'
    WHEN 9 THEN 'Animações'
    WHEN 10 THEN 'Projeto CSS'
    ELSE 'Fundamentos CSS'
END,
q.explicacao = CONCAT('Esta questão avalia seus conhecimentos em ',
    CASE m.ordem
        WHEN 1 THEN 'conceitos básicos de estilização.'
        WHEN 2 THEN 'seleção de elementos HTML.'
        WHEN 3 THEN 'modelo de caixa e dimensões.'
        WHEN 4 THEN 'aplicação de cores e fontes.'
        WHEN 5 THEN 'técnicas de layout e posicionamento.'
        WHEN 6 THEN 'layout flexível com Flexbox.'
        WHEN 7 THEN 'sistema de grid para layouts complexos.'
        WHEN 8 THEN 'design adaptável a diferentes telas.'
        WHEN 9 THEN 'transições e animações visuais.'
        WHEN 10 THEN 'estilização completa de interfaces.'
        ELSE 'fundamentos do CSS.'
    END)
WHERE q.curso_id = 11;

-- Atualiza sub_categoria baseado no modulo para JavaScript
UPDATE questoes q
JOIN modulos m ON q.modulo_id = m.id
SET q.sub_categoria = CASE m.ordem
    WHEN 1 THEN 'Fundamentos do JS'
    WHEN 2 THEN 'Operadores e Condicionais'
    WHEN 3 THEN 'Funções'
    WHEN 4 THEN 'Arrays e Objetos'
    WHEN 5 THEN 'DOM e Eventos'
    WHEN 6 THEN 'Manipulação de Strings'
    WHEN 7 THEN 'ES6+ Moderno'
    WHEN 8 THEN 'Async e Promises'
    WHEN 9 THEN 'APIs e Fetch'
    WHEN 10 THEN 'Projeto JS'
    ELSE 'Fundamentos JS'
END,
q.explicacao = CONCAT('Esta questão avalia seus conhecimentos em ',
    CASE m.ordem
        WHEN 1 THEN 'conceitos fundamentais de JavaScript.'
        WHEN 2 THEN 'operadores lógicos e estruturas condicionais.'
        WHEN 3 THEN 'criação e uso de funções.'
        WHEN 4 THEN 'manipulação de arrays e objetos.'
        WHEN 5 THEN 'interação com o DOM e eventos.'
        WHEN 6 THEN 'manipulação e processamento de textos.'
        WHEN 7 THEN 'recursos modernos do ECMAScript 6+.'
        WHEN 8 THEN 'programação assíncrona e promises.'
        WHEN 9 THEN 'consumo de APIs e requisições HTTP.'
        WHEN 10 THEN 'desenvolvimento de aplicações interativas.'
        ELSE 'fundamentos do JavaScript.'
    END)
WHERE q.curso_id = 12;
