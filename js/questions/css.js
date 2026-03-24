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

// Módulos 3-10 com perguntas ÚNICAS
window.QUESTIONS_DB['css']['3'] = [
    { id: 21, text: 'Qual unidade é relativa ao tamanho da fonte do elemento pai?', sub: 'Unidades', options: ['px', 'em', 'rem', '%'], correct: 1, explanation: 'em é relativa ao font-size do elemento.' },
    { id: 22, text: 'Propriedade para sombra em texto?', sub: 'Efeitos', options: ['box-shadow', 'text-shadow', 'shadow', 'effect'], correct: 1, explanation: 'text-shadow adiciona sombra ao texto.' },
    { id: 23, text: 'Como criar um gradiente linear?', sub: 'Cores', options: ['background: linear-gradient()', 'background: gradient()', 'gradient-linear', 'color-gradient'], correct: 0, explanation: 'linear-gradient() cria gradiente linear.' },
    { id: 24, text: 'Propriedade para opacidade?', sub: 'Transparência', options: ['transparency', 'alpha', 'opacity', 'blur'], correct: 2, explanation: 'opacity controla a transparência (0-1).' },
    { id: 25, text: 'Como alinhar texto à direita?', sub: 'Textos', options: ['align: right', 'text-align: right', 'float: right', 'direction: right'], correct: 1, explanation: 'text-align: right alinha para direita.' },
    { id: 26, text: 'Propriedade para transformação 2D?', sub: 'Transformações', options: ['modify', 'transform', 'translate', 'change'], correct: 1, explanation: 'transform aplica rotação, escala e translação.' },
    { id: 27, text: 'Como criar uma transição suave?', sub: 'Animações', options: ['transition', 'animate', 'motion', 'smooth'], correct: 0, explanation: 'transition cria animações suaves.' },
    { id: 28, text: 'Qual propriedade define o tamanho da borda?', sub: 'Bordas', options: ['border-width', 'border-size', 'border-thick', 'border-px'], correct: 0, explanation: 'border-width define a espessura da borda.' },
    { id: 29, text: 'Como criar layout em grid?', sub: 'Layout', options: ['display: grid', 'grid: display', 'layout: grid', 'grid-layout'], correct: 0, explanation: 'display: grid ativa o CSS Grid.' },
    { id: 30, text: 'Propriedade para distância entre itens do flexbox?', sub: 'Layout', options: ['space', 'gap', 'distance', 'flex-gap'], correct: 1, explanation: 'gap define espaçamento entre itens.' }
];

window.QUESTIONS_DB['css']['4'] = [
    { id: 31, text: 'Qual pseudo-classe representa o primeiro filho?', sub: 'Seletores', options: [':first', ':first-child', ':nth(1)', ':start'], correct: 1, explanation: ':first-child seleciona o primeiro elemento.' },
    { id: 32, text: 'Qual pseudo-classe ativa ao passar o mouse?', sub: 'Estados', options: [':active', ':hover', ':focus', ':visited'], correct: 1, explanation: ':hover ativa quando mouse passa.' },
    { id: 33, text: 'Qual pseudo-classe para links visitados?', sub: 'Estados', options: [':active', ':hover', ':visited', ':link'], correct: 2, explanation: ':visited estiliza links já clicados.' },
    { id: 34, text: 'Como deixar texto em maiúsculas com CSS?', sub: 'Textos', options: ['text-transform: uppercase', 'text-case: upper', 'font-case: upper', 'uppercase: true'], correct: 0, explanation: 'text-transform: uppercase converte para maiúsculas.' },
    { id: 35, text: 'Propriedade para espaçamento entre letras?', sub: 'Textos', options: ['word-spacing', 'letter-spacing', 'text-spacing', 'char-spacing'], correct: 1, explanation: 'letter-spacing aumenta o espaço entre letras.' },
    { id: 36, text: 'Como esconder overflow de conteúdo?', sub: 'Overflow', options: ['hidden', 'overflow: hidden', 'display: hidden', 'visibility: hidden'], correct: 1, explanation: 'overflow: hidden recorta conteúdo excedente.' },
    { id: 37, text: 'Qual propriedade permite scroll em caixa pequena?', sub: 'Overflow', options: ['overflow: auto', 'overflow: scroll', 'overflow: visible', 'As duas primeiras'], correct: 3, explanation: 'Auto e scroll permitem rolagem.' },
    { id: 38, text: 'Como aplicar múltiplas sombras?', sub: 'Efeitos', options: ['Separadas por ponto', 'Separadas por vírgula', 'Separadas por semicolon', 'Não é possível'], correct: 1, explanation: 'Múltiplas sombras são separadas por vírgula.' },
    { id: 39, text: 'Propriedade para importar fontes externas?', sub: 'Fontes', options: ['@import', '@font', '@include', '@link'], correct: 0, explanation: '@import carrega arquivos CSS.' },
    { id: 40, text: 'Como usar Web Fonts do Google?', sub: 'Fontes', options: ['@font-face', '@import from google', '@google-fonts', 'Importar link no HTML'], correct: 3, explanation: 'Google Fonts pode ser importado via link HTML.' }
];

window.QUESTIONS_DB['css']['5'] = [
    { id: 41, text: 'O que é especificidade no CSS?', sub: 'Cascata', options: ['Especificar cores', 'Ordem de precedência de seletores', 'Tipos de seletores', 'Nenhuma das anteriores'], correct: 1, explanation: 'Especificidade define qual regra é aplicada.' },
    { id: 42, text: 'Qual seletor tem maior especificidade?', sub: 'Seletores', options: ['ID', 'Class', 'Elemento', 'Seletor universal'], correct: 0, explanation: 'ID tem maior especificidade (100).' },
    { id: 43, text: 'Como forçar uma regra com !important?', sub: 'Cascata', options: ['color: red !important', 'color: !important red', '!important: color red', 'priority: important'], correct: 0, explanation: '!important ignora outras regras.' },
    { id: 44, text: 'Qual unidade é melhor para design responsivo?', sub: 'Responsiva', options: ['px', '%', 'em', 'As duas últimas'], correct: 3, explanation: 'Percentual e em são flexíveis.' },
    { id: 45, text: 'Como usar media queries?', sub: 'Responsiva', options: ['@media', '@screen', '@responsive', '@query'], correct: 0, explanation: '@media aplica estilos condicionais.' },
    { id: 46, text: 'Qual breakpoint é para mobile?', sub: 'Responsiva', options: ['Até 768px', 'Até 480px', 'Acima de 1024px', 'Até 600px'], correct: 1, explanation: 'Mobile é geralmente até ~480-600px.' },
    { id: 47, text: 'Como animar mudanças de propriedade?', sub: 'Animações', options: ['@keyframes', '@animation', '@motion', '@effect'], correct: 0, explanation: '@keyframes define mudanças gradativas.' },
    { id: 48, text: 'Qual propriedade define a velocidade da animação?', sub: 'Animações', options: ['animation-time', 'animation-duration', 'animation-speed', 'speed'], correct: 1, explanation: 'animation-duration define duração em segundos.' },
    { id: 49, text: 'Como repetir uma animação?', sub: 'Animações', options: ['animation-repeat', 'animation-iteration-count', 'animation-loop', 'repeat'], correct: 1, explanation: 'animation-iteration-count define repetições.' },
    { id: 50, text: 'O que é CSS Preprocessor?', sub: 'Avançado', options: ['CSS melhorado', 'SASS/LESS para gerar CSS', 'Compressor de CSS', 'Validador de CSS'], correct: 1, explanation: 'SASS/LESS usam variáveis e funções.' }
];

window.QUESTIONS_DB['css']['6'] = [
    { id: 51, text: 'Qual propriedade alinha itens no eixo cruzado do flexbox?', sub: 'Flexbox', options: ['justify-content', 'align-items', 'align-content', 'flex-direction'], correct: 1, explanation: 'align-items alinha no eixo Y.' },
    { id: 52, text: 'Qual propriedade define a direção do flexbox?', sub: 'Flexbox', options: ['flex-direction', 'flex-order', 'flex-align', 'flex-axis'], correct: 0, explanation: 'flex-direction pode ser row, column, etc.' },
    { id: 53, text: 'O que faz flex-wrap?', sub: 'Flexbox', options: ['Enrola itens', 'Agrupa itens', 'Estende itens', 'Nenhuma'], correct: 0, explanation: 'flex-wrap permite quebra de linha.' },
    { id: 54, text: 'Qual propriedade dá peso aos itens?', sub: 'Flexbox', options: ['flex-weight', 'flex', 'flex-grow', 'flex-basis'], correct: 2, explanation: 'flex-grow distribui espaço disponível.' },
    { id: 55, text: 'Como definir colunas no Grid?', sub: 'Grid', options: ['grid-columns', 'grid-template-columns', 'column-template', 'grid-col'], correct: 1, explanation: 'grid-template-columns define as colunas.' },
    { id: 56, text: 'Como definir linhas no Grid?', sub: 'Grid', options: ['grid-rows', 'grid-template-rows', 'row-template', 'grid-row'], correct: 1, explanation: 'grid-template-rows define as linhas.' },
    { id: 57, text: 'O que é grid-gap?', sub: 'Grid', options: ['Espaço entre itens', 'Tamanho da borda', 'Largura das colunas', 'Altura das linhas'], correct: 0, explanation: 'grid-gap define espaço entre células.' },
    { id: 58, text: 'Como colocar sombra em uma caixa?', sub: 'Efeitos', options: ['text-shadow', 'box-shadow', 'shadow-effect', 'drop-shadow'], correct: 1, explanation: 'box-shadow cria sombra em elementos.' },
    { id: 59, text: 'Como aplicar blur em uma imagem?', sub: 'Filtros', options: ['filter: blur()', 'image-blur', 'blur-effect', 'image-filter'], correct: 0, explanation: 'filter: blur(px) desfoca elementos.' },
    { id: 60, text: 'Qual propriedade remove riscado?', sub: 'Textos', options: ['text-decoration: none', 'text-underline: none', 'underline: false', 'text-style: normal'], correct: 0, explanation: 'text-decoration: none remove tudo.' }
];

window.QUESTIONS_DB['css']['7'] = [
    { id: 61, text: 'Como criar um efeito de hover suave?', sub: 'UX', options: ['transition', 'animation', 'transform', 'hover-effect'], correct: 0, explanation: 'transition torna o hover suave.' },
    { id: 62, text: 'Como detectar tamanho de tela?', sub: 'Responsiva', options: ['@media screen', '@media (max-width)', '@screen size', '@responsive'], correct: 1, explanation: '@media (max-width: 768px) detecta mobile.' },
    { id: 63, text: 'Qual valor faz elemento desaparecer sem espaço?', sub: 'Display', options: ['hidden', 'none', 'invisible', 'off'], correct: 1, explanation: 'display: none remove do fluxo.' },
    { id: 64, text: 'Como centralizar uma div?', sub: 'Layout', options: ['margin: auto', 'margin: 0 auto', 'text-align: center', 'align: center'], correct: 1, explanation: 'margin: 0 auto centraliza horizontalmente.' },
    { id: 65, text: 'O que é clearfix?', sub: 'Float', options: ['Limpar flutuação', 'Claro e fixo', 'Teste de CSS', 'Nenhuma'], correct: 0, explanation: 'clearfix resolve problemas com float.' },
    { id: 66, text: 'Qual propriedade é substituta de float?', sub: 'Layout', options: ['position', 'display: inline-block', 'flexbox', 'Todas'], correct: 3, explanation: 'Flexbox substituiu float em layouts modernos.' },
    { id: 67, text: 'Como fazer um elemento fixo na página?', sub: 'Position', options: ['position: fixed', 'position: sticky', 'position: absolute', 'float: fixed'], correct: 0, explanation: 'position: fixed prende à viewport.' },
    { id: 68, text: 'O que faz position: sticky?', sub: 'Position', options: ['Fixa na tela', 'Fica fixo no scroll até sair', 'Relativo ao pai', 'Absoluto'], correct: 1, explanation: 'sticky fica fixo até uma condição.' },
    { id: 69, text: 'Como usar variáveis em CSS?', sub: 'Variáveis', options: ['var(--nome)', '$nome', '@nome', ':nome'], correct: 0, explanation: 'var(--nome) acessa variáveis CSS.' },
    { id: 70, text: 'Como definir variável CSS global?', sub: 'Variáveis', options: [':root { --cor: red; }', 'global { --cor: red; }', '@root { --cor: red; }', 'root { --cor: red; }'], correct: 0, explanation: ':root define variáveis globais.' }
];

window.QUESTIONS_DB['css']['8'] = [
    { id: 71, text: 'Qual propriedade controla o tamanho de fundo?', sub: 'Background', options: ['background-size', 'bg-size', 'size-background', 'image-size'], correct: 0, explanation: 'background-size redimensiona fundo.' },
    { id: 72, text: 'Qual valor faz imagem cobrir tudo?', sub: 'Background', options: ['contain', 'cover', 'full', '100%'], correct: 1, explanation: 'cover preenche todo o espaço.' },
    { id: 73, text: 'Como adicionar múltiplos fundos?', sub: 'Background', options: ['Separados por vírgula', 'Separados por ponto', 'Não é possível', 'Separados por semicolon'], correct: 0, explanation: 'Múltiplos fundos separados por vírgula.' },
    { id: 74, text: 'Qual propriedade define posição de fundo?', sub: 'Background', options: ['background-position', 'bg-position', 'position-bg', 'image-position'], correct: 0, explanation: 'background-position posiciona imagem.' },
    { id: 75, text: 'Como fazer um gradiente radial?', sub: 'Cores', options: ['linear-gradient', 'radial-gradient', 'circular-gradient', 'sphere-gradient'], correct: 1, explanation: 'radial-gradient() cria gradiente circular.' },
    { id: 76, text: 'Qual propriedade faz repetição de fundo?', sub: 'Background', options: ['background-repeat', 'repeat-background', 'bg-repeat', 'image-repeat'], correct: 0, explanation: 'background-repeat controla repetição.' },
    { id: 77, text: 'Como fazer imagem não repetir?', sub: 'Background', options: ['no-repeat', 'repeat: false', 'repeat: none', 'background: none'], correct: 0, explanation: 'background-repeat: no-repeat para uma.' },
    { id: 78, text: 'Qual propriedade fixa imagem de fundo?', sub: 'Background', options: ['background-attachment', 'bg-attachment', 'image-attachment', 'attach-background'], correct: 0, explanation: 'background-attachment: fixed congela fundo.' },
    { id: 79, text: 'Como criar efeito parallax?', sub: 'Efeitos', options: ['background-attachment: fixed', 'transform', 'position: fixed', 'animation'], correct: 0, explanation: 'Parallax usa background-attachment e scroll.' },
    { id: 80, text: 'Qual propriedade cria contorno?', sub: 'Bordas', options: ['outline', 'border', 'stroke', 'frame'], correct: 0, explanation: 'outline cria contorno fora da borda.' }
];

window.QUESTIONS_DB['css']['9'] = [
    { id: 81, text: 'Como esconder elemento apenas visualmente?', sub: 'Acessibilidade', options: ['display: none', 'clip: rect(0,0,0,0)', 'visibility: hidden', 'opacity: 0'], correct: 1, explanation: 'clip esconde sem remover do fluxo.' },
    { id: 82, text: 'Qual propriedade cria rolagem suave?', sub: 'Rolagem', options: ['scroll-behavior: smooth', 'scrolling: smooth', 'smooth-scroll', 'scroll-smooth'], correct: 0, explanation: 'scroll-behavior: smooth anima rolagem.' },
    { id: 83, text: 'Como criar página em coluna múltipla?', sub: 'Layout', options: ['column-count', 'columns', 'multi-column', 'Ambas as primeiras'], correct: 3, explanation: 'column-count define número de colunas.' },
    { id: 84, text: 'Qual propriedade define espaço entre colunas?', sub: 'Layout', options: ['column-gap', 'column-space', 'col-gap', 'space-between'], correct: 0, explanation: 'column-gap define espaço entre colunas.' },
    { id: 85, text: 'Como criar quebra de coluna?', sub: 'Layout', options: ['break-inside', 'column-break', 'page-break', 'break-column'], correct: 0, explanation: 'break-inside evita quebra de elementos.' },
    { id: 86, text: 'Qual propriedade define contagem de itens?', sub: 'Contadores', options: ['counter-increment', 'counter-reset', 'counter', 'count'], correct: 0, explanation: 'counter-increment incrementa um contador.' },
    { id: 87, text: 'Como usar pseudo-elemento ::before?', sub: 'Pseudo-elementos', options: ['Adiciona conteúdo antes', 'Adiciona conteúdo depois', 'Modifica primeiro filho', 'Nenhuma'], correct: 0, explanation: '::before insere conteúdo antes do elemento.' },
    { id: 88, text: 'Qual pseudo-elemento vem após?', sub: 'Pseudo-elementos', options: ['::after', '::before', '::next', '::following'], correct: 0, explanation: '::after insere conteúdo após o elemento.' },
    { id: 89, text: 'Como criar tooltip com CSS?', sub: 'UX', options: ['Pseudo-elemento + hover', 'tooltip tag', 'title attribute', 'Ambas as primeiras'], correct: 2, explanation: 'Título HTML ou CSS ::after combinado.' },
    { id: 90, text: 'Qual propriedade define ordem de impressão?', sub: 'Print', options: ['page-break-after', 'print-order', 'order', 'sequence'], correct: 0, explanation: 'page-break-after força quebra na impressão.' }
];

window.QUESTIONS_DB['css']['10'] = [
    { id: 91, text: 'Como garantir compatibilidade em navegadores?', sub: 'Fallback', options: ['-webkit-, -moz-', 'Vendor prefixes', 'Fallback values', 'Todas'], correct: 3, explanation: 'Prefixos e fallbacks garantem compatibilidade.' },
    { id: 92, text: 'O que é CSS Reset?', sub: 'Normalização', options: ['Reseta estilos padrão', 'Remove CSS do site', 'Reinicia o navegador', 'Nenhuma'], correct: 0, explanation: 'Reset remove estilos padrão do navegador.' },
    { id: 93, text: 'Para que serve Normalize.css?', sub: 'Normalização', options: ['Remove estilos', 'Padroniza comportamento entre navegadores', 'Normaliza código', 'Fornece estilos base'], correct: 3, explanation: 'Normalize faz navegadores se comportarem igual.' },
    { id: 94, text: 'O que é BEM em CSS?', sub: 'Metodologia', options: ['Block Element Modifier', 'Best Element Model', 'Base Element Method', 'Naming convention'], correct: 0, explanation: 'BEM é uma metodologia de nomeação CSS.' },
    { id: 95, text: 'O que é OOCSS?', sub: 'Metodologia', options: ['Object-Oriented CSS', 'Oriented Object CSS', 'Organization CSS', 'Open Object CSS'], correct: 0, explanation: 'OOCSS reutiliza código CSS com objetos.' },
    { id: 96, text: 'Como otimizar CSS para performance?', sub: 'Performance', options: ['Minificar', 'Remover especificidade', 'Usar crítico acima da dobra', 'Todas'], correct: 3, explanation: 'Minificar, lazy load e CSS crítico melhoram.' },
    { id: 97, text: 'Qual ferramenta minifica CSS?', sub: 'Ferramentas', options: ['Webpack', 'PostCSS', 'Sass', 'Todas'], correct: 3, explanation: 'Várias ferramentas minificam CSS.' },
    { id: 98, text: 'Como usar CSS-in-JS?', sub: 'Avançado', options: ['Styled-components', 'Emotion', 'Jss', 'Todas'], correct: 3, explanation: 'CSS em JavaScript com bibliotecas.' },
    { id: 99, text: 'O que é CSSOM?', sub: 'API', options: ['CSS Object Model', 'Objeto do CSS', 'Modelo de CSS', 'Interface de estilo'], correct: 0, explanation: 'CSSOM permite manipular CSS via JavaScript.' },
    { id: 100, text: 'Como acessar estilos computados?', sub: 'JavaScript', options: ['getComputedStyle()', 'element.style', 'element.CSS', 'computedStyle()'], correct: 0, explanation: 'getComputedStyle() retorna estilos aplicados.' }
];
