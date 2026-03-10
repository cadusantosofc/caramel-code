if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['css'] = {
    '1': [
        { id: 1, text: 'O que significa CSS?', sub: 'Fundamentos', options: ['Computer Style Sheets', 'Cascading Style Sheets', 'Creative Style Sheets', 'Color Style Sheets'], correct: 1, explanation: 'CSS significa Cascading Style Sheets.' },
        { id: 2, text: 'Propriedade para cor do texto?', sub: 'Cores', options: ['text-color', 'font-color', 'color', 'foreground-color'], correct: 2, explanation: 'A propriedade color define a cor do texto.' },
        { id: 3, text: 'Símbolo usado para ID no CSS?', sub: 'Seletores', options: ['. (ponto)', '# (hashtag)', '@ (at)', '* (estrela)'], correct: 1, explanation: '# é usado para selecionar IDs.' },
        { id: 4, text: 'Símbolo para class no CSS?', sub: 'Seletores', options: ['. (ponto)', '# (hashtag)', '@ (at)', '* (estrela)'], correct: 0, explanation: '. (ponto) é usado para selecionar classes.' },
        { id: 5, text: 'Propriedade para cor de fundo?', sub: 'Cores', options: ['background-color', 'bg-color', 'color-bg', 'fill-color'], correct: 0, explanation: 'background-color define o fundo.' },
        { id: 6, text: 'Unidade de medida relativa?', sub: 'Unidades', options: ['px', 'cm', 'rem', 'pt'], correct: 2, explanation: 'rem é baseada na fonte da raiz.' },
        { id: 7, text: 'Propriedade para tamanho da fonte?', sub: 'Textos', options: ['text-size', 'font-size', 'size', 'font-weight'], correct: 1, explanation: 'font-size define o tamanho.' },
        { id: 8, text: 'Propriedade para negrito?', sub: 'Textos', options: ['font-bold', 'text-bold', 'font-weight', 'style-bold'], correct: 2, explanation: 'font-weight define a espessura.' },
        { id: 9, text: 'Espaçamento interno?', sub: 'Box Model', options: ['margin', 'padding', 'border', 'gap'], correct: 1, explanation: 'padding é o espaço interno.' },
        { id: 10, text: 'Espaçamento externo?', sub: 'Box Model', options: ['margin', 'padding', 'border', 'gap'], correct: 0, explanation: 'margin é o espaço externo.' }
    ],
    '2': [
        { id: 11, text: 'Como centralizar um elemento com flexbox?', sub: 'Layout', options: ['align-items: center', 'justify-content: center', 'As duas anteriores', 'text-align: center'], correct: 2, explanation: 'Flexbox usa justify e align para os dois eixos.' },
        { id: 12, text: 'Propriedade para arredondar cantos?', sub: 'Design', options: ['border-round', 'border-radius', 'corner-radius', 'edge-round'], correct: 1, explanation: 'border-radius cria bordas arredondadas.' },
        { id: 13, text: 'O que faz a propriedade z-index?', sub: 'Layout', options: ['Aumenta o zoom', 'Altera a ordem de empilhamento', 'Define o brilho', 'Configura a transparência'], correct: 1, explanation: 'z-index controla qual elemento fica por cima.' },
        { id: 14, text: 'Como remover o sublinhado de um link?', sub: 'Textos', options: ['text-style: none', 'text-decoration: none', 'link-style: none', 'font-decoration: none'], correct: 1, explanation: 'text-decoration: none remove o sublinhado padrão.' },
        { id: 15, text: 'Qual o valor padrão de position?', sub: 'Layout', options: ['relative', 'static', 'absolute', 'fixed'], correct: 1, explanation: 'O valor padrão é static.' },
        { id: 16, text: 'Tipo de seletor que escolhe todos os elementos?', sub: 'Seletores', options: ['*', '#', '.', '&'], correct: 0, explanation: '* é o seletor universal.' },
        { id: 17, text: 'Propriedade para mudar o tipo de fonte?', sub: 'Fontes', options: ['font-style', 'font-family', 'text-type', 'typeface'], correct: 1, explanation: 'font-family define as fontes.' },
        { id: 18, text: 'Como esconder um elemento mas manter o espaço?', sub: 'Visibilidade', options: ['display: none', 'visibility: hidden', 'opacity: 0', 'As duas últimas'], correct: 3, explanation: 'Visibility e Opacity mantêm o espaço ocupado.' },
        { id: 19, text: 'O que faz box-sizing: border-box?', sub: 'Box Model', options: ['Aumenta a borda', 'Inclui padding/border no tamanho total', 'Coloca bordas coloridas', 'Deixa a caixa redonda'], correct: 1, explanation: 'Border-box facilita o cálculo de larguras.' },
        { id: 20, text: 'Como mudar o cursor do mouse no hover?', sub: 'UX', options: ['mouse-style', 'on-hover', 'cursor', 'pointer-style'], correct: 2, explanation: 'A propriedade cursor altera o ponteiro.' }
    ]
};

// Gerar módulos 3 a 10
for (let i = 3; i <= 10; i++) {
    window.QUESTIONS_DB['css'][i.toString()] = window.QUESTIONS_DB['css']['1'].map(q => ({
        ...q,
        id: q.id + (i * 10),
        text: q.text + " (Módulo " + i + ")",
        explanation: q.explanation + " - Lição " + i
    }));
}
