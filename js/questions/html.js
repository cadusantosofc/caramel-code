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

// Módulos 6-10 com perguntas ÚNICAS (não repetidas)
window.QUESTIONS_DB['html']['6'] = [
    { id: 51, text: 'Qual tag agrupa elementos de entrada com legenda?', sub: 'Formulários', options: ['<fieldset>', '<group>', '<form-group>', '<section>'], correct: 0, explanation: '<fieldset> agrupa campos relacionados.' },
    { id: 52, text: 'Qual atributo desabilita um campo de input?', sub: 'Formulários', options: ['disabled', 'readonly', 'inactive', 'blocked'], correct: 0, explanation: 'disabled desativa um campo.' },
    { id: 53, text: 'Qual atributo torna um input obrigatório?', sub: 'Validação', options: ['required', 'mandatory', 'must', 'needed'], correct: 0, explanation: 'required força preenchimento do campo.' },
    { id: 54, text: 'Qual atributo define valor já preenchido?', sub: 'Formulários', options: ['placeholder', 'value', 'default', 'initial'], correct: 1, explanation: 'value define texto inicial do input.' },
    { id: 55, text: 'Qual tag define uma legenda no fieldset?', sub: 'Formulários', options: ['<legend>', '<title>', '<caption>', '<label>'], correct: 0, explanation: '<legend> é a legenda do fieldset.' },
    { id: 56, text: 'Qual tipo de input cria caixa de marcar?', sub: 'Formulários', options: ['checkbox', 'check', 'mark', 'toggle'], correct: 0, explanation: 'type="checkbox" cria caixa de seleção.' },
    { id: 57, text: 'Qual tipo de input cria botão de opção?', sub: 'Formulários', options: ['radio', 'button', 'option', 'choice'], correct: 0, explanation: 'type="radio" cria botões de opção exclusiva.' },
    { id: 58, text: 'Qual atributo agrupa rádios relacionados?', sub: 'Formulários', options: ['name', 'group', 'class', 'id'], correct: 0, explanation: 'name iguais fazem rádios exclusivos.' },
    { id: 59, text: 'Como enviar dados de formulário?', sub: 'Formulários', options: ['<submit>', 'method', '<button type="submit">', 'onclick'], correct: 2, explanation: '<button type="submit"> envia formulário.' },
    { id: 60, text: 'Qual atributo define destino do formulário?', sub: 'Formulários', options: ['target', 'action', 'href', 'path'], correct: 1, explanation: 'action aponta aonde enviar os dados.' }
];

window.QUESTIONS_DB['html']['7'] = [
    { id: 61, text: 'Qual meta tag define charset?', sub: 'Metadados', options: ['<meta charset>', '<meta encoding>', '<meta lang>', '<meta style>'], correct: 0, explanation: '<meta charset="UTF-8"> define codificação.' },
    { id: 62, text: 'Qual tag importa um arquivo CSS?', sub: 'Estilos', options: ['<link>', '<style>', '<import>', '<css>'], correct: 0, explanation: '<link rel="stylesheet"> importa CSS.' },
    { id: 63, text: 'Qual tag permite CSS inline?', sub: 'Estilos', options: ['<style>', '<css>', '<link>', '<script>'], correct: 0, explanation: '<style> permite CSS dentro do HTML.' },
    { id: 64, text: 'Qual atributo HTML define CSS inline?', sub: 'Estilos', options: ['style', 'css', 'class', 'id'], correct: 0, explanation: 'style="" aplica CSS direto ao elemento.' },
    { id: 65, text: 'Qual tag carrega um script JavaScript?', sub: 'Scripts', options: ['<script>', '<js>', '<code>', '<function>'], correct: 0, explanation: '<script src="..."></script> carrega JS.' },
    { id: 66, text: 'Onde colocar <script> para melhor performance?', sub: 'Scripts', options: ['No <head>', 'Antes de </body>', 'No final do <html>', 'Não importa'], correct: 1, explanation: 'Scripts no final do <body> carregam mais rápido.' },
    { id: 67, text: 'Qual tag define favicon?', sub: 'Metadados', options: ['<link rel="icon">', '<favicon>', '<icon>', '<logo>'], correct: 0, explanation: '<link rel="icon"> define o ícone da aba.' },
    { id: 68, text: 'Qual tag define viewport para mobile?', sub: 'Responsiva', options: ['<meta viewport>', '<viewport>', '<mobile>', '<screen>'], correct: 0, explanation: '<meta viewport> define dimensões no mobile.' },
    { id: 69, text: 'Qual meta tag define descrição da página?', sub: 'SEO', options: ['<meta description>', '<meta name="description">', '<meta content>', '<description>'], correct: 1, explanation: '<meta name="description"> é usada em buscas.' },
    { id: 70, text: 'Qual meta tag define palavras-chave?', sub: 'SEO', options: ['<meta keywords>', '<meta name="keywords">', '<keywords>', '<tags>'], correct: 1, explanation: '<meta name="keywords"> lista palavras-chave.' }
];

window.QUESTIONS_DB['html']['8'] = [
    { id: 71, text: 'Qual tag cria uma tabela?', sub: 'Tabelas', options: ['<table>', '<tab>', '<grid>', '<matrix>'], correct: 0, explanation: '<table> cria tabelas.' },
    { id: 72, text: 'Qual tag cria linha na tabela?', sub: 'Tabelas', options: ['<tr>', '<row>', '<line>', '<th>'], correct: 0, explanation: '<tr> = table row.' },
    { id: 73, text: 'Qual tag cria célula de cabeçalho?', sub: 'Tabelas', options: ['<th>', '<td>', '<header>', '<cell>'], correct: 0, explanation: '<th> = table header.' },
    { id: 74, text: 'Qual tag cria célula de dado?', sub: 'Tabelas', options: ['<td>', '<th>', '<data>', '<cell>'], correct: 0, explanation: '<td> = table data.' },
    { id: 75, text: 'Qual tag agrupa cabeçalho da tabela?', sub: 'Tabelas', options: ['<thead>', '<header>', '<head>', '<top>'], correct: 0, explanation: '<thead> é o cabeçalho da tabela.' },
    { id: 76, text: 'Qual tag agrupa corpo da tabela?', sub: 'Tabelas', options: ['<tbody>', '<body>', '<content>', '<main>'], correct: 0, explanation: '<tbody> é o corpo da tabela.' },
    { id: 77, text: 'Qual tag agrupa rodapé da tabela?', sub: 'Tabelas', options: ['<tfoot>', '<footer>', '<bottom>', '<end>'], correct: 0, explanation: '<tfoot> é o rodapé da tabela.' },
    { id: 78, text: 'Qual atributo expande célula horizontalmente?', sub: 'Tabelas', options: ['colspan', 'rowspan', 'span', 'width'], correct: 0, explanation: 'colspan mescla colunas.' },
    { id: 79, text: 'Qual atributo expande célula verticalmente?', sub: 'Tabelas', options: ['rowspan', 'colspan', 'span', 'height'], correct: 0, explanation: 'rowspan mescla linhas.' },
    { id: 80, text: 'Qual tag agrupa colunas com mesmos atributos?', sub: 'Tabelas', options: ['<colgroup>', '<col>', '<column>', '<group>'], correct: 0, explanation: '<colgroup> agrupa colunas.' }
];

window.QUESTIONS_DB['html']['9'] = [
    { id: 81, text: 'Qual tag cria um elemento dropdown customizado?', sub: 'Avançado', options: ['<details>', '<summary>', '<datalist>', '<combo>'], correct: 0, explanation: '<details> cria accordion/dropdown.' },
    { id: 82, text: 'Qual tag define o rótulo de <details>?', sub: 'Avançado', options: ['<summary>', '<label>', '<title>', '<caption>'], correct: 0, explanation: '<summary> é o título do <details>.' },
    { id: 83, text: 'Qual tag cria uma lista de sugestões?', sub: 'Avançado', options: ['<datalist>', '<suggestions>', '<options>', '<select>'], correct: 0, explanation: '<datalist> sugere valores para input.' },
    { id: 84, text: 'Qual tag renderiza HTML dentro de um documento?', sub: 'Avançado', options: ['<embed>', '<object>', '<iframe>', '<frame>'], correct: 2, explanation: '<iframe> emcapsula documentos HTML.' },
    { id: 85, text: 'Qual tag emcapsula conteúdo externo?', sub: 'Avançado', options: ['<embed>', '<object>', '<iframe>', '<external>'], correct: 0, explanation: '<embed> carrega plug-ins.' },
    { id: 86, text: 'Qual tag representa um intervalo de números?', sub: 'Avançado', options: ['<slider>', '<input type="range">', '<range>', '<number>'], correct: 1, explanation: '<input type="range"> cria slider.' },
    { id: 87, text: 'Qual tag exibe horas/datas formatadas?', sub: 'Avançado', options: ['<time>', '<date>', '<clock>', '<datetime>'], correct: 0, explanation: '<time> mostra datas semanticamente.' },
    { id: 88, text: 'Qual atributo indica conteúdo em progresso?', sub: 'Avançado', options: ['aria-busy', 'busy', 'loading', 'pending'], correct: 0, explanation: 'aria-busy informa acessibilidade.' },
    { id: 89, text: 'Qual atributo descreve elemento?', sub: 'Acessibilidade', options: ['aria-label', 'title', 'alt', 'description'], correct: 0, explanation: 'aria-label descreve para leitores de tela.' },
    { id: 90, text: 'Qual tag define uma dica flutuante?', sub: 'Interativo', options: ['<tooltip>', 'title=""', '<hint>', '<popup>'], correct: 1, explanation: 'title="" cria tooltips nativos.' }
];

window.QUESTIONS_DB['html']['10'] = [
    { id: 91, text: 'Qual API HTML5 armazena dados no cliente?', sub: 'APIs', options: ['localStorage', 'sessionStorage', 'Ambas', 'Cookie'], correct: 2, explanation: 'localStorage e sessionStorage armazenam dados.' },
    { id: 92, text: 'Qual API captura localização do usuário?', sub: 'APIs', options: ['Geolocation', 'Location', 'GPS', 'Navigator'], correct: 0, explanation: 'Geolocation API fornece coordenadas.' },
    { id: 93, text: 'Qual tag reproduz mídia com controles?', sub: 'Mídia', options: ['<audio controls>', '<video controls>', 'Ambas', '<media>'], correct: 2, explanation: 'Ambas aceitam atributo controls.' },
    { id: 94, text: 'Como incluir arquivo de legenda em vídeo?', sub: 'Mídia', options: ['<track>', '<caption>', '<subtitle>', '<text>'], correct: 0, explanation: '<track kind="captions"> adiciona legendas.' },
    { id: 95, text: 'Qual elemento permite desenho 2D?', sub: 'Gráficos', options: ['<canvas>', '<svg>', '<draw>', '<graphics>'], correct: 0, explanation: '<canvas> permite desenho com JavaScript.' },
    { id: 96, text: 'Qual elemento é melhor para gráficos vetoriais?', sub: 'Gráficos', options: ['<svg>', '<canvas>', '<picture>', '<graphic>'], correct: 0, explanation: '<svg> é vetorial e escalável.' },
    { id: 97, text: 'Qual tag fornece imagem alternativa?', sub: 'Mídia', options: ['<picture>', '<img>', '<source>', '<alternative>'], correct: 0, explanation: '<picture> permite imagens responsivas.' },
    { id: 98, text: 'Qual tag define fonte de fonte?', sub: 'Tipografia', options: ['<source>', '<font>', '<link>', '<style>'], correct: 0, explanation: '@font-face em CSS carrega fontes.' },
    { id: 99, text: 'Qual tag estrutura conteúdo página?', sub: 'Semântica', options: ['<main>', '<container>', '<section>', '<div>'], correct: 0, explanation: '<main> define conteúdo principal.' },
    { id: 100, text: 'Qual tag representa cita da web?', sub: 'Semântica', options: ['<blockquote cite="">', '<quote>', '<citation>', '<web-cite>'], correct: 0, explanation: '<blockquote> com cite referencia fonte.' }
];
