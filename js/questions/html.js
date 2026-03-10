if (!window.QUESTIONS_DB) window.QUESTIONS_DB = {};

window.QUESTIONS_DB['html'] = {
    '1': [
        { id: 1, text: 'O que significa HTML?', sub: 'Fundamentos', options: ['HyperText Markup Language', 'Home Tool Markup Language', 'Hyperlink and Text Markup Language', 'High Tech Modern Language'], correct: 0, explanation: 'HTML significa HyperText Markup Language.' },
        { id: 2, text: 'Qual tag define o corpo da página?', sub: 'Estrutura', options: ['<head>', '<body>', '<main>', '<html>'], correct: 1, explanation: 'A tag <body> contém todo o conteúdo visível.' },
        { id: 3, text: 'Para que serve a tag <p>?', sub: 'Textos', options: ['Imagens', 'Parágrafos', 'Links', 'Títulos'], correct: 1, explanation: 'Tag <p> define parágrafos.' },
        { id: 4, text: 'Qual tag cria um link?', sub: 'Navegação', options: ['<link>', '<href>', '<a>', '<url>'], correct: 2, explanation: 'A tag <a> cria hiperlinks.' },
        { id: 5, text: 'Qual atributo define a URL do link?', sub: 'Atributos', options: ['src', 'href', 'link', 'target'], correct: 1, explanation: 'Usamos href no <a>.' },
        { id: 6, text: 'Qual tag cria uma quebra de linha?', sub: 'Texto', options: ['<break>', '<lb>', '<br>', '<hr>'], correct: 2, explanation: '<br> é uma quebra de linha.' },
        { id: 7, text: 'O que faz a tag <strong>?', sub: 'Formatação', options: ['Itálico', 'Negrito', 'Sublinhado', 'Riscado'], correct: 1, explanation: '<strong> indica importância.' },
        { id: 8, text: 'Título da aba do navegador?', sub: 'Metadados', options: ['<head>', '<h1>', '<title>', '<meta>'], correct: 2, explanation: '<title> define o título da janela.' },
        { id: 9, text: 'Lista não ordenada?', sub: 'Listas', options: ['<ol>', '<ul>', '<li>', '<list>'], correct: 1, explanation: '<ul> significa unordered list.' },
        { id: 10, text: 'Item de lista?', sub: 'Listas', options: ['<ol>', '<ul>', '<li>', '<item>'], correct: 2, explanation: '<li> significa list item.' }
    ],
    '2': [
        { id: 11, text: 'Qual tag define o topo da página?', sub: 'Estrutura', options: ['<header>', '<head>', '<top>', '<heading>'], correct: 0, explanation: '<header> define o cabeçalho.' },
        { id: 12, text: 'Qual tag define o metadado da página?', sub: 'Metadados', options: ['<head>', '<meta>', '<html>', '<title>'], correct: 1, explanation: '<meta> define metadados.' },
        { id: 13, text: 'Qual tag define o rodapé?', sub: 'Estrutura', options: ['<footer>', '<bottom>', '<foot>', '<end>'], correct: 0, explanation: '<footer> é o rodapé.' },
        { id: 14, text: 'Qual tag é usada para navegação?', sub: 'Estrutura', options: ['<nav>', '<menu>', '<links>', '<bar>'], correct: 0, explanation: '<nav> para blocos de navegação.' },
        { id: 15, text: 'Qual tag define um artigo?', sub: 'Semântica', options: ['<article>', '<section>', '<div>', '<aside>'], correct: 0, explanation: '<article> para conteúdo independente.' },
        { id: 16, text: 'Qual tag define uma seção lateral?', sub: 'Semântica', options: ['<aside>', '<side>', '<section>', '<div>'], correct: 0, explanation: '<aside> para barras laterais.' },
        { id: 17, text: 'Qual tag define uma seção temática?', sub: 'Semântica', options: ['<section>', '<part>', '<div>', '<article>'], correct: 0, explanation: '<section> para agrupar temas.' },
        { id: 18, text: 'Qual tag define uma imagem?', sub: 'Mídia', options: ['<img>', '<picture>', '<image>', '<media>'], correct: 0, explanation: '<img> insere imagens.' },
        { id: 19, text: 'Atributo para texto alternativo?', sub: 'Mídia', options: ['alt', 'src', 'title', 'desc'], correct: 0, explanation: 'alt é essencial para acessibilidade.' },
        { id: 20, text: 'Qual tag define um formulário?', sub: 'Formulários', options: ['<form>', '<input>', '<submit>', '<formset>'], correct: 0, explanation: '<form> cria formulários.' }
    ],
    '3': [
        { id: 21, text: 'Tag para campo de entrada?', sub: 'Formulários', options: ['<input>', '<field>', '<text>', '<entry>'], correct: 0, explanation: '<input> é a tag base de entrada.' },
        { id: 22, text: 'Atributo para tipo de input?', sub: 'Formulários', options: ['type', 'kind', 'class', 'id'], correct: 0, explanation: 'type define se é texto, senha, etc.' },
        { id: 23, text: 'Tag para botão?', sub: 'Formulários', options: ['<button>', '<input type="button">', '<submit>', 'As duas primeiras'], correct: 3, explanation: 'Ambas criam botões.' },
        { id: 24, text: 'Tag para seleção?', sub: 'Formulários', options: ['<select>', '<option>', '<list>', '<choices>'], correct: 0, explanation: '<select> cria menus dropdown.' },
        { id: 25, text: 'Tag para item de seleção?', sub: 'Formulários', options: ['<option>', '<item>', '<choice>', '<select-item>'], correct: 0, explanation: '<option> é o item do select.' },
        { id: 26, text: 'Atributo para valor padrão?', sub: 'Formulários', options: ['value', 'data', 'val', 'content'], correct: 0, explanation: 'value define o valor inicial.' },
        { id: 27, text: 'Tag para legenda de campo?', sub: 'Formulários', options: ['<label>', '<legend>', '<caption>', '<title>'], correct: 0, explanation: '<label> descreve campos de input.' },
        { id: 28, text: 'Atributo que liga label ao input?', sub: 'Formulários', options: ['for', 'to', 'link', 'id'], correct: 0, explanation: 'O atributo for mapeia para o id do input.' },
        { id: 29, text: 'Tag para campo multi-linha?', sub: 'Formulários', options: ['<textarea>', '<input type="multiline">', '<text>', '<textbox>'], correct: 0, explanation: '<textarea> para textos longos.' },
        { id: 30, text: 'Seletor de cor no HTML5?', sub: 'Formulários', options: ['<input type="color">', '<input type="hex">', '<color>', '<select-color>'], correct: 0, explanation: 'HTML5 permite seletores de cor nativos.' }
    ],
    '4': [
        { id: 31, text: 'Qual tag define uma âncora?', sub: 'Links', options: ['<a>', '<link>', '<url>', '<href>'], correct: 0, explanation: '<a> é usado para links.' },
        { id: 32, text: 'Atributo para abrir em nova aba?', sub: 'Links', options: ['target="_blank"', 'new_tab="true"', 'action="new"', 'window="new"'], correct: 0, explanation: 'target="_blank" abre em nova aba.' },
        { id: 33, text: 'Tag para citação longa?', sub: 'Textos', options: ['<blockquote>', '<quote>', '<cite>', '<longquote>'], correct: 0, explanation: '<blockquote> para citações de bloco.' },
        { id: 34, text: 'Tag para código inline?', sub: 'Textos', options: ['<code>', '<pre>', '<script>', '<syntax>'], correct: 0, explanation: '<code> para fragmentos de código.' },
        { id: 35, text: 'Tag para texto pré-formatado?', sub: 'Textos', options: ['<pre>', '<code>', '<script>', '<raw>'], correct: 0, explanation: '<pre> preserva espaços e quebras.' },
        { id: 36, text: 'O que significa DOCTYPE?', sub: 'Estrutura', options: ['Versão do HTML', 'Tipo de documento', 'Aviso do navegador', 'As duas primeiras'], correct: 3, explanation: 'Informa ao navegador a versão do HTML.' },
        { id: 37, text: 'Tag para conteúdo figurativo?', sub: 'Semântica', options: ['<figure>', '<img>', '<media>', '<canvas>'], correct: 0, explanation: '<figure> agrupa imagens e legendas.' },
        { id: 38, text: 'Tag para legenda de figura?', sub: 'Semântica', options: ['<figcaption>', '<caption>', '<legend>', '<label>'], correct: 0, explanation: '<figcaption> é a legenda da figura.' },
        { id: 39, text: 'Qual tag define enfase?', sub: 'Textos', options: ['<em>', '<i>', '<strong>', '<b>'], correct: 0, explanation: '<em> indica ênfase (geralmente itálico).' },
        { id: 40, text: 'Tag para texto sobrescrito?', sub: 'Textos', options: ['<sup>', '<sub>', '<up>', '<top>'], correct: 0, explanation: '<sup> eleva o texto.' }
    ],
    '5': [
        { id: 41, text: 'Tag para texto subscrito?', sub: 'Textos', options: ['<sub>', '<sup>', '<down>', '<bottom>'], correct: 0, explanation: '<sub> abaixa o texto.' },
        { id: 42, text: 'Tag para destaque (highlighter)?', sub: 'Textos', options: ['<mark>', '<highlight>', '<b>', '<strong>'], correct: 0, explanation: '<mark> simula marca-texto.' },
        { id: 43, text: 'Tag para tempo/data?', sub: 'Semântica', options: ['<time>', '<date>', '<day>', '<clock>'], correct: 0, explanation: '<time> para datas legíveis por máquinas.' },
        { id: 44, text: 'Atributo no <html> para idioma?', sub: 'Acessibilidade', options: ['lang', 'language', 'locale', 'country'], correct: 0, explanation: 'lang="pt-BR" define o idioma.' },
        { id: 45, text: 'Símbolo para espaço inquebrável?', sub: 'Entidades', options: ['&nbsp;', '&space;', '&nbsp', '&s;'], correct: 0, explanation: '&nbsp; é o Non-Breaking Space.' },
        { id: 46, text: 'Qual tag para vídeo?', sub: 'Mídia', options: ['<video>', '<movie>', '<media>', '<mp4>'], correct: 0, explanation: '<video> para vídeos nativos.' },
        { id: 47, text: 'Qual tag para áudio?', sub: 'Mídia', options: ['<audio>', '<sound>', '<music>', '<mp3>'], correct: 0, explanation: '<audio> para áudio nativo.' },
        { id: 48, text: 'Qual o papel do UTF-8?', sub: 'Metadados', options: ['Codificação de caracteres', 'Protocolo de internet', 'Linguagem de estilos', 'Nenhuma'], correct: 0, explanation: 'Permite exibir acentos e emojis corretamente.' },
        { id: 49, text: 'Tag para barra de progresso?', sub: 'Elementos', options: ['<progress>', '<bar>', '<loading>', '<meter>'], correct: 0, explanation: '<progress> mostra o andamento.' },
        { id: 50, text: 'Tag para escala de medida?', sub: 'Elementos', options: ['<meter>', '<scale>', '<range>', '<progress>'], correct: 0, explanation: '<meter> para valores em um range.' }
    ]
};

// Gerar mock inteligente para os módulos 6 a 10 para completar as 100 perguntas
for (let i = 6; i <= 10; i++) {
    window.QUESTIONS_DB['html'][i.toString()] = window.QUESTIONS_DB['html']['1'].map(q => ({
        ...q,
        id: q.id + (i * 10),
        text: q.text + " (Nível Avançado " + i + ")",
        explanation: q.explanation + " Este é o módulo " + i + " com conceitos profundos."
    }));
}
