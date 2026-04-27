-- Migration: 042_seed_css_v6_completo
-- 100 questões de CSS — 10 módulos × 10 perguntas
-- curso_id = 11

DELETE FROM questoes WHERE curso_id = 11;

-- ==========================================
-- MÓDULO 1 (ordem = 1) — Introdução ao CSS
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que significa CSS?', '["Creative Style Sheets", "Computer Style Sheets", "Color Style Sheets", "Cascading Style Sheets"]', 3, 'Pense em folhas que "caem em cascata".'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual a extensão padrão de um arquivo CSS?', '[".style", ".cs", ".css", ".sheet"]', 2, 'Três letras: c, s, s.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como se vincula um arquivo CSS externo ao HTML?', '["<style src=''style.css''>", "<css href=''style.css''>", "<link rel=''stylesheet'' href=''style.css''>", "<script src=''style.css''>"]', 2, 'Use a tag link com rel stylesheet.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Onde fica o CSS inline?', '["No arquivo .css separado", "Dentro da tag <style>", "No atributo style do elemento HTML", "No arquivo JavaScript"]', 2, 'Direto no atributo do elemento.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual tag HTML é usada para CSS interno?', '["<css>", "<script>", "<style>", "<link>"]', 2, 'A tag tem o mesmo nome da linguagem.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'CSS é uma linguagem de?', '["Programação", "Estilização", "Banco de dados", "Marcação"]', 1, 'Serve para dar aparência ao HTML.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual organização mantém o padrão CSS?', '["Google", "W3C", "Mozilla", "Microsoft"]', 1, 'World Wide Web Consortium.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'A "cascata" do CSS significa que?', '["O CSS é baixado em cascata", "Estilos são aplicados de cima para baixo com herança e especificidade", "O CSS flui como água", "Os arquivos são concatenados"]', 1, 'Pense em prioridade e herança de regras.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual das alternativas é um comentário CSS válido?', CONCAT('["// comentário", "&lt', CHAR(59), CONCAT('!', CHAR(45), CHAR(45), ' comentário ', CHAR(45), CHAR(45), '>", "/* comentário */", "# comentário"]')), 2, 'Usa barra e asterisco.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual é a sintaxe básica de uma regra CSS?', CONCAT('["seletor { propriedade = valor }", "seletor { propriedade: valor', CHAR(59), ' }", "seletor -> propriedade: valor", "seletor | propriedade: valor"]'), 1, 'Dois pontos e ponto e vírgula.'
FROM modulos WHERE curso_id = 11 AND ordem = 1 LIMIT 1;

-- ==========================================
-- MÓDULO 2 (ordem = 2) — Seletores
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como se seleciona um elemento pelo ID no CSS?', '["Usando .", "Usando *", "Usando #", "Usando @"]', 2, 'Cerquilha (hashtag).'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como se seleciona um elemento pela classe no CSS?', '["Usando #", "Usando .", "Usando >", "Usando ~"]', 1, 'Um ponto antes do nome da classe.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O seletor universal "*" seleciona?', '["Apenas divs", "Apenas elementos com classe", "Todos os elementos da página", "Apenas o body"]', 2, 'Aplica a regra a tudo.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz o seletor "div p"?', '["Seleciona div e p separadamente", "Seleciona p filhos diretos de div", "Seleciona p descendentes de div", "Seleciona div dentro de p"]', 2, 'Espaço = qualquer descendente.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz o seletor "div > p"?', '["Seleciona todos os p dentro de div", "Seleciona apenas p filhos diretos de div", "Seleciona div maior que p", "Seleciona o primeiro p"]', 1, 'Sinal de maior = filho direto.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como selecionar múltiplos elementos ao mesmo tempo?', '["h1 + h2", "h1 & h2", "h1, h2", "h1 | h2"]', 2, 'Vírgula separa os seletores.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é um pseudo-seletor?', '["Um seletor falso", "Um seletor que aponta para estado ou parte do elemento", "Um seletor de JavaScript", "Um seletor depreciado"]', 1, 'Exemplos: :hover, :first-child.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual seletor aplica estilo quando o mouse está sobre o elemento?', '["element:focus", "element:active", "element:hover", "element:visited"]', 2, 'Passe o mouse por cima.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O seletor [type="text"] é chamado de?', '["Seletor de ID", "Seletor de atributo", "Seletor de classe", "Pseudo-seletor"]', 1, 'Seleciona pelo atributo HTML.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual pseudo-classe seleciona o primeiro filho de um elemento pai?', '[":last-child", ":nth-child(2)", ":first-child", ":only-child"]', 2, 'Pense no primeiro da lista.'
FROM modulos WHERE curso_id = 11 AND ordem = 2 LIMIT 1;

-- ==========================================
-- MÓDULO 3 (ordem = 3) — Box Model
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O Box Model do CSS é composto por quais camadas?', '["content, border, shadow, margin", "content, padding, border, margin", "width, height, padding, shadow", "content, spacing, border, outline"]', 1, 'São 4 camadas concêntricas.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é o "padding"?', '["Espaço fora da borda", "Espaço entre o conteúdo e a borda", "A largura do elemento", "A cor do fundo"]', 1, 'Espaço interno do elemento.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é o "margin"?', '["Espaço interno do elemento", "Espaço entre o elemento e outros elementos", "A borda do elemento", "O tamanho do texto"]', 1, 'Espaço externo do elemento.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Por padrão, width e height incluem padding e border?', '["Sim, sempre", "Não, apenas o conteúdo", "Depende do navegador", "Sim, mas apenas border"]', 1, 'No box-sizing content-box padrão, não incluem.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "box-sizing: border-box"?', '["Remove a borda do elemento", "Faz width incluir padding e border", "Desativa o Box Model", "Oculta o conteúdo"]', 1, 'O tamanho total passa a incluir tudo.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como definir margens iguais nos 4 lados de uma vez?', '["margin: 10px 10px 10px 10px", "margin: 10px", "margin-all: 10px", "padding: 10px"]', 1, 'Um único valor aplica a todos os lados.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Na shorthand "margin: 10px 20px", o que representa cada valor?', '["top/bottom e left/right", "left/right e top/bottom", "top e bottom separados", "left e right separados"]', 0, 'Primeiro vertical, depois horizontal.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade controla a espessura da borda?', '["border-color", "border-radius", "border-width", "border-style"]', 2, 'Width = largura/espessura.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, '"margin: auto" em um elemento block com width definido faz o quê?', '["Remove a margem", "Centraliza o elemento horizontalmente", "Expande o elemento", "Adiciona margem apenas no topo"]', 1, 'Truque clássico de centralização.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual valor de border-style cria uma borda pontilhada?', '["solid", "dashed", "dotted", "double"]', 2, 'São pontos, não traços.'
FROM modulos WHERE curso_id = 11 AND ordem = 3 LIMIT 1;

-- ==========================================
-- MÓDULO 4 (ordem = 4) — Cores e Tipografia
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade muda a cor do texto?', '["text-color", "font-color", "color", "bg-color"]', 2, 'Simples: color.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como representar a cor branca em hexadecimal?', '["#000000", "#ffffff", "#ff0000", "#00ff00"]', 1, 'Todos os canais no máximo.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que significa "rgba(0,0,0,0.5)"?', '["Preto transparente a 50%", "Branco semitransparente", "Vermelho puro", "Verde com opacidade total"]', 0, 'O 4º valor é o canal alpha (opacidade).'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade define o tamanho da fonte?', '["text-size", "font-weight", "font-size", "letter-size"]', 2, 'font- seguido de size.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "font-weight: bold"?', '["Deixa o texto em itálico", "Aumenta o tamanho da fonte", "Deixa o texto em negrito", "Muda a família da fonte"]', 2, 'Bold = negrito.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade define a família da fonte?', '["font-style", "font-family", "font-type", "text-font"]', 1, 'family = família.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é uma "web-safe font"?', '["Fonte protegida por senha", "Fonte disponível na maioria dos sistemas sem instalação", "Fonte usada apenas em HTTPS", "Fonte para acessibilidade"]', 1, 'Arial, Times New Roman são exemplos.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade alinha o texto horizontalmente?', '["vertical-align", "text-align", "align-text", "text-position"]', 1, 'text-align: center, left, right...'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "text-decoration: none"?', '["Apaga o texto", "Remove sublinhado e decorações do texto", "Deixa o texto invisível", "Centraliza o texto"]', 1, 'Muito usado para remover sublinhado de links.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual unidade de fonte é relativa ao tamanho do elemento pai?', '["px", "pt", "em", "vw"]', 2, 'em se baseia no contexto pai.'
FROM modulos WHERE curso_id = 11 AND ordem = 4 LIMIT 1;

-- ==========================================
-- MÓDULO 5 (ordem = 5) — Display e Posicionamento
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual valor de display faz o elemento ocupar toda a largura da linha?', '["inline", "inline-block", "block", "flex"]', 2, 'Elementos como div são block por padrão.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual valor de display faz o elemento fluir junto ao texto?', '["block", "inline", "flex", "grid"]', 1, 'Elementos como span são inline por padrão.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "display: none"?', '["Deixa o elemento invisível mas ocupa espaço", "Remove o elemento do fluxo e o oculta", "Muda a cor para transparente", "Bloqueia cliques no elemento"]', 1, 'Diferente de visibility: hidden.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual valor de position faz o elemento se posicionar em relação ao scroll da página?', '["static", "relative", "absolute", "fixed"]', 3, 'Fica fixo na tela mesmo com scroll.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Um elemento com "position: absolute" se posiciona em relação a quê?', '["Sempre à janela do navegador", "Ao ancestral mais próximo com position não-static", "Ao body sempre", "Ao elemento irmão anterior"]', 1, 'Procura o pai posicionado mais próximo.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "position: relative"?', '["Remove o elemento do fluxo", "Posiciona o elemento em relação à sua posição original no fluxo", "Fixa o elemento na tela", "Posiciona em relação ao body"]', 1, 'O elemento ainda ocupa seu espaço original.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'A propriedade "z-index" controla o quê?', '["O tamanho do zoom", "A ordem de empilhamento dos elementos", "A posição no eixo Z real", "O índice de acessibilidade"]', 1, 'Quem fica na frente ou atrás.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade CSS esconde um elemento mas mantém seu espaço?', '["display: none", "opacity: 0", "visibility: hidden", "overflow: hidden"]', 2, 'O espaço permanece, mas o elemento fica invisível.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "overflow: hidden"?', '["Esconde o elemento", "Corta o conteúdo que ultrapassa o elemento", "Remove o scroll", "Aumenta o tamanho do elemento"]', 1, 'Conteúdo extra é cortado.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como centralizar um elemento block verticalmente com position absolute?', CONCAT('["margin: auto", "top: 50%', CHAR(59), ' transform: translateY(-50%)", "vertical-align: middle", "align: center"]'), 1, 'top 50% + translateY para ajuste perfeito.'
FROM modulos WHERE curso_id = 11 AND ordem = 5 LIMIT 1;

-- ==========================================
-- MÓDULO 6 (ordem = 6) — Flexbox
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como se ativa o Flexbox em um container?', '["flex: true", "display: flex", "layout: flex", "position: flex"]', 1, 'display: flex no elemento pai.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade Flexbox alinha itens no eixo principal?', '["align-items", "justify-items", "justify-content", "align-content"]', 2, 'justify-content controla o eixo principal.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade Flexbox alinha itens no eixo cruzado?', '["justify-content", "align-self", "align-items", "flex-align"]', 2, 'align-items para o eixo perpendicular.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "flex-direction: column"?', '["Itens ficam em linha horizontal", "Itens ficam em coluna vertical", "Inverte a ordem dos itens", "Itens ficam centralizados"]', 1, 'Muda o eixo principal para vertical.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "flex-wrap: wrap"?', '["Itens não mudam de linha nunca", "Itens quebram para a próxima linha quando necessário", "O container fica com scroll", "Itens ficam comprimidos"]', 1, 'Permite quebra de linha nos itens flex.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "justify-content: space-between"?', '["Centraliza todos os itens", "Distribui itens com espaço igual entre eles, sem espaço nas bordas", "Adiciona espaço em todos os lados", "Joga todos os itens para a direita"]', 1, 'Espaço só entre os itens, não nas bordas.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'A propriedade "flex: 1" em um item flex significa?', '["O item tem 1px de tamanho", "O item cresce para ocupar o espaço disponível igualmente", "O item é o primeiro da ordem", "O item não cresce"]', 1, 'Shorthand de flex-grow: 1.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como centralizar um item tanto horizontal quanto verticalmente com Flexbox?', '["justify-content: center e align-content: center", "justify-content: center e align-items: center", "text-align: center e vertical-align: middle", "margin: auto em todos os lados"]', 1, 'justify para eixo principal, align para cruzado.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "order: -1" em um item flex?', '["Remove o item", "Move o item para o início visualmente", "Define a prioridade de tamanho", "Inverte a direção do flex"]', 1, 'Valores menores aparecem primeiro.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade flex permite que um item cresça para ocupar espaço extra?', '["flex-shrink", "flex-basis", "flex-grow", "flex-wrap"]', 2, 'grow = crescer.'
FROM modulos WHERE curso_id = 11 AND ordem = 6 LIMIT 1;

-- ==========================================
-- MÓDULO 7 (ordem = 7) — Grid
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como se ativa o CSS Grid em um container?', '["display: grid", "layout: grid", "grid: true", "position: grid"]', 0, 'display: grid no elemento pai.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade define as colunas de um Grid?', '["grid-columns", "grid-template-columns", "column-count", "grid-col"]', 1, 'grid-template-columns.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é a unidade "fr" no CSS Grid?', '["Frame", "Uma fração do espaço disponível", "Free space fixo", "Um pixel fracionado"]', 1, 'fr = fraction (fração).'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, '"grid-template-columns: repeat(3, 1fr)" cria?', '["1 coluna de 3fr", "3 colunas de tamanho igual", "3 linhas iguais", "Um grid de 3x3"]', 1, 'repeat(3, 1fr) = 3 colunas iguais.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade controla o espaço entre as células do Grid?', '["padding", "margin", "gap", "spacing"]', 2, 'gap (antes chamado grid-gap).'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "grid-column: 1 / 3" em um item?', '["Move para a coluna 3", "O item ocupa da linha de coluna 1 até a 3", "Cria 3 colunas", "Define o gap como 3"]', 1, 'O item se expande pelas colunas indicadas.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Grid é melhor para layouts?', '["Unidimensionais (linha ou coluna)", "Bidimensionais (linhas e colunas)", "Apenas para listas", "Apenas para texto"]', 1, 'Flexbox = 1D, Grid = 2D.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "grid-template-areas"?', '["Define o número de áreas", "Permite nomear regiões do grid para posicionar itens", "Cria áreas com animação", "Define a cor de cada célula"]', 1, 'Você nomeia áreas e posiciona pelo nome.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como posicionar um item em uma área nomeada do Grid?', '["grid-position: nome", "area: nome", "grid-area: nome", "place-self: nome"]', 2, 'grid-area aponta para a área definida.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "place-items: center" em um Grid container?', '["Centraliza o grid na página", "Centraliza os itens horizontalmente e verticalmente nas células", "Remove o gap", "Cria uma coluna central"]', 1, 'Shorthand de align-items e justify-items.'
FROM modulos WHERE curso_id = 11 AND ordem = 7 LIMIT 1;

-- ==========================================
-- MÓDULO 8 (ordem = 8) — Responsividade e Media Queries
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é uma Media Query?', '["Uma consulta ao banco de dados", "Uma regra CSS aplicada conforme características do dispositivo", "Um tipo de seletor", "Uma propriedade de mídia"]', 1, 'Adapta o estilo ao contexto (tamanho de tela, etc).'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual é a sintaxe correta de uma media query?', '["@media (max-width: 768px) { }", "media-query: (max-width: 768px) { }", "@screen max-width: 768px { }", "query (max-width: 768px) { }"]', 0, 'Começa com @media.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que significa "mobile-first" no CSS?', '["Criar o site apenas para mobile", "Escrever estilos base para mobile e adicionar breakpoints para telas maiores", "Bloquear acesso de desktops", "Usar apenas unidades em px"]', 1, 'Começa do menor para o maior.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual unidade é relativa à largura da viewport?', '["em", "rem", "vw", "px"]', 2, 'vw = viewport width.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é um "breakpoint"?', '["Um ponto onde o CSS para de funcionar", "Um ponto de largura onde o layout muda de estilo", "Um erro no CSS", "O ponto máximo de zoom"]', 1, 'Define quando o layout se adapta.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como fazer uma imagem ser responsiva (não ultrapassar o container)?', '["width: 100vw", "max-width: 100%", "width: auto", "display: responsive"]', 1, 'max-width: 100% é o padrão.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'A meta tag viewport no HTML serve para?', '["Definir o tamanho do vídeo", "Controlar como a página é dimensionada em dispositivos móveis", "Esconder a barra de rolagem", "Definir o idioma da página"]', 1, 'Essencial para responsividade funcionar.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "rem" como unidade CSS?', '["Relativo ao elemento pai", "Relativo ao font-size do elemento raiz (html)", "Um pixel remoto", "Relativo à viewport"]', 1, 'rem = root em.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual media query aplica estilo apenas em telas com largura máxima de 600px?', '["@media (min-width: 600px)", "@media (max-width: 600px)", "@media screen > 600px", "@media width: 600px"]', 1, 'max-width = até 600px.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'A função clamp() no CSS serve para?', '["Travar a posição de um elemento", "Definir um valor que varia entre um mínimo e máximo", "Clipes de overflow", "Animar propriedades"]', 1, 'clamp(min, ideal, max) para valores fluidos.'
FROM modulos WHERE curso_id = 11 AND ordem = 8 LIMIT 1;

-- ==========================================
-- MÓDULO 9 (ordem = 9) — Animações e Transições
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade cria uma transição suave entre dois estados CSS?', '["animation", "transition", "transform", "keyframe"]', 1, 'transition: propriedade duração.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como definir uma animação CSS do início ao fim?', '["@animation { from {} to {} }", "@keyframes nome { from {} to {} }", "@transition nome { 0% {} 100% {} }", "@frames nome { start {} end {} }"]', 1, '@keyframes define os quadros da animação.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade aplica uma animação @keyframes a um elemento?', '["transition-name", "keyframe-name", "animation-name", "play-animation"]', 2, 'animation-name aponta para o @keyframes.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "animation-iteration-count: infinite"?', '["A animação dura infinitamente em tempo", "A animação se repete indefinidamente", "A animação não começa", "A animação fica pausada"]', 1, 'A animação fica em loop.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual propriedade CSS aplica transformações como rotação e escala?', '["animation", "transition", "transform", "filter"]', 2, 'transform: rotate(), scale(), translate()...'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "transform: rotate(45deg)"?', '["Move 45px à direita", "Gira o elemento 45 graus", "Escala o elemento em 45%", "Inclina o texto 45 graus"]', 1, 'rotate gira o elemento.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual é a função de "transition-timing-function: ease-in-out"?', '["A transição tem velocidade constante", "A transição começa e termina devagar, acelerando no meio", "A transição começa rápido e termina devagar", "A transição é aleatória"]', 1, 'ease-in-out = suave nas pontas.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é "animation-fill-mode: forwards"?', '["A animação vai para frente na tela", "O elemento mantém o estilo do último keyframe ao terminar", "A animação começa do início", "O elemento some ao final"]', 1, 'Mantém o estado final da animação.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual valor de "animation-direction" faz a animação alternar entre ida e volta?', '["normal", "reverse", "alternate", "loop"]', 2, 'alternate = vai e volta.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "transform: scale(1.5)"?', '["Move 1.5px", "Aumenta o elemento em 50%", "Reduz o elemento pela metade", "Gira 1.5 graus"]', 1, 'scale(1.5) = 150% do tamanho original.'
FROM modulos WHERE curso_id = 11 AND ordem = 9 LIMIT 1;

-- ==========================================
-- MÓDULO 10 (ordem = 10) — CSS Avançado e Boas Práticas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que são variáveis CSS (Custom Properties)?', CONCAT('["Variáveis do JavaScript", "Valores reutilizáveis definidos com ', CHAR(45), CHAR(45), ' e acessados com var()", "Classes dinâmicas", "Propriedades de terceiros"]'), 1, CONCAT('Definidas com ', CHAR(45), CHAR(45), 'nome: valor no :root.')
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como declarar uma variável CSS global?', CONCAT('[":root { color: red }", ":root { ', CHAR(45), CHAR(45), 'cor-primaria: red }", "var(', CHAR(45), CHAR(45), 'cor-primaria): red", "CSS não tem variáveis"]'), 1, CONCAT('Use :root e o prefixo ', CHAR(45), CHAR(45), '.')
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Como usar uma variável CSS?', CONCAT('["$cor-primaria", "var(', CHAR(45), CHAR(45), 'cor-primaria)", "@cor-primaria", "use(', CHAR(45), CHAR(45), 'cor-primaria)"]'), 1, 'A função var() lê a variável.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é especificidade no CSS?', '["A velocidade de renderização", "O peso de um seletor para determinar qual regra prevalece", "O número de propriedades", "A ordem dos arquivos CSS"]', 1, 'ID > classe > tag em peso de especificidade.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual seletor tem a maior especificidade?', '["p", ".classe", "#id", "*"]', 2, 'IDs têm peso maior que classes e tags.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "!important" em uma declaração CSS?', '["Adiciona um comentário importante", "Força a regra a sobrescrever qualquer outra, ignorando especificidade", "Deixa a propriedade obrigatória", "Aplica apenas em mobile"]', 1, 'Deve ser evitado, mas prevalece sobre tudo.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é um CSS Reset?', '["Apagar todo o CSS do projeto", "Um conjunto de regras que padroniza estilos padrão dos navegadores", "Reiniciar a página", "Remover variáveis CSS"]', 1, 'Elimina inconsistências entre navegadores.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que é a metodologia BEM no CSS?', '["Block Element Modifier — convenção de nomenclatura de classes", "Best Editing Mode", "Browser Engine Method", "Block Element Margin"]', 0, 'BEM organiza classes de forma previsível.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'O que faz "will-change: transform" no CSS?', '["Muda o transform automaticamente", "Avisa o browser para otimizar a propriedade antes da animação", "Remove a propriedade transform", "Cria uma transição automática"]', 1, 'Melhora performance de animações.'
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 11, id, 'Qual a diferença entre "min-width" e "max-width"?', CONCAT('["São iguais", "min-width define o mínimo', CHAR(59), ' max-width define o máximo de largura do elemento", "max-width é para mobile', CHAR(59), ' min-width para desktop", "min-width é depreciado"]'), 1, CONCAT('min = pelo menos X', CHAR(59), ' max = no máximo X.')
FROM modulos WHERE curso_id = 11 AND ordem = 10 LIMIT 1;