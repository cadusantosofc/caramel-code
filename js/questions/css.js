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
    ]
};

// Gerar módulos 2 a 10
for (let i = 2; i <= 10; i++) {
    window.QUESTIONS_DB['css'][i.toString()] = window.QUESTIONS_DB['css']['1'].map(q => ({
        ...q,
        id: q.id + (i * 10),
        text: q.text + " (Módulo " + i + ")",
        explanation: q.explanation + " - Lição " + i
    }));
}
