-- Migration: 041_seed_html_v6
DELETE FROM questoes WHERE curso_id = 10;

-- ==========================================
-- FASE 1 - Introdução ao HTML
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O que significa HTML?', '["HyperText Markup Language", "HighText Machine Language", "Hyperlink Text Model", "Home Tool Markup"]', 0, 'Linguagem de marcação de hipertexto.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define o título principal da página?', '["<p>", "<h1>", "<title>", "<header>"]', 1, 'H1 é o maior e mais importante título.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria um link clicável?', '["<link>", "<a>", "<href>", "<url>"]', 1, 'Anchor tag — a âncora que cria hiperlinks.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag insere uma imagem?', '["<image>", "<img>", "<pic>", "<src>"]', 1, 'A tag img é auto-fechável e usa o atributo src.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual é a tag raiz de todo documento HTML?', '["<body>", "<html>", "<head>", "<doctype>"]', 1, 'Tudo começa dentro da tag <html>.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Para que serve a tag <head>?', '["Exibir conteúdo visível", "Conter metadados e links de recursos da página", "Criar o cabeçalho visual", "Definir o rodapé"]', 1, 'Head contém title, meta, link (CSS) — invisível para o usuário.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Para que serve a tag <body>?', '["Metadados da página", "Todo o conteúdo visível da página", "Importar CSS", "Definir o idioma"]', 1, 'Body = tudo que o usuário vê na tela.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo href da tag <a> define:', '["A cor do link", "O destino do link", "O tamanho do link", "O texto do link"]', 1, 'href = hypertext reference — o endereço para onde o link leva.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria um parágrafo?', '["<br>", "<span>", "<p>", "<div>"]', 2, 'P de Paragraph — cria um bloco de texto com espaçamento automático.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A declaração <!DOCTYPE html> serve para:', '["Criar um comentário", "Informar ao navegador que é HTML5", "Importar scripts", "Definir o charset"]', 1, 'Sempre a primeira linha — avisa o browser qual versão do HTML usar.'
FROM modulos WHERE curso_id = 10 AND ordem = 1 LIMIT 1;

-- ==========================================
-- FASE 2 - Textos e Formatação
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag deixa o texto em NEGRITO (semântico)?', '["<b>", "<strong>", "<bold>", "<em>"]', 1, CONCAT('Strong tem importância semântica', CHAR(59), ' b é apenas visual.')
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag deixa o texto em ITÁLICO (semântico)?', '["<i>", "<italic>", "<em>", "<slant>"]', 2, 'Em de Emphasis — ênfase semântica, renderiza em itálico.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma quebra de linha?', '["<lb>", "<nl>", "<br>", "<line>"]', 2, 'BR de Break — quebra a linha sem criar novo parágrafo.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Quantos níveis de título existem no HTML?', '["3 (h1 a h3)", "4 (h1 a h4)", "6 (h1 a h6)", "9 (h1 a h9)"]', 2, 'H1 é o maior/mais importante, H6 o menor.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <small> serve para:', '["Imagem pequena", "Texto com fonte menor", "Container compacto", "Link interno"]', 1, 'Exibe o texto em tamanho menor que o padrão.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <mark> serve para:', '["Criar marcadores de lista", "Destacar/marcar texto com fundo amarelo", "Inserir comentário", "Definir metadado"]', 1, 'Mark = destacar como marcador de texto.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <blockquote> é usada para:', '["Bloco de código", "Citações longas recuadas", "Comentário HTML", "Texto pré-formatado"]', 1, 'Blockquote recua visualmente para indicar uma citação.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <code> exibe:', '["Imagens técnicas", "Texto em fonte monoespaçada para código", "Blocos coloridos", "Formulários"]', 1, 'Usada inline para mostrar trechos de código no texto.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <pre> preserva:', '["Imagens em tamanho original", "Espaços e quebras de linha como digitado", "Estilos CSS", "Scripts JS"]', 1, 'PRE = preformatted — mantém a formatação exata do texto.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <hr> cria:', '["Um hiperlink", "Uma linha horizontal divisória", "Um cabeçalho", "Uma âncora"]', 1, 'HR = horizontal rule — linha divisória visual.'
FROM modulos WHERE curso_id = 10 AND ordem = 2 LIMIT 1;

-- ==========================================
-- FASE 3 - Listas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma lista NÃO ordenada (com marcadores)?', '["<ol>", "<ul>", "<li>", "<list>"]', 1, 'UL = Unordered List — bolinhas ou quadradinhos.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma lista ORDENADA (numerada)?', '["<ul>", "<nl>", "<ol>", "<dl>"]', 2, 'OL = Ordered List — numerada automaticamente.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define cada item de uma lista?', '["<list>", "<item>", "<li>", "<it>"]', 2, 'LI = List Item — vai dentro de ul ou ol.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <dl> cria:', '["Lista desordenada dupla", "Lista de definição (termo + descrição)", "Lista dinâmica", "Lista de download"]', 1, 'DL = Definition List — termos com suas definições.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Dentro de <dl>, qual tag define o TERMO?', '["<li>", "<dt>", "<dd>", "<term>"]', 1, 'DT = Definition Term — o nome/conceito a ser definido.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Dentro de <dl>, qual tag define a DESCRIÇÃO?', '["<li>", "<dt>", "<dd>", "<desc>"]', 2, 'DD = Definition Description — a explicação do termo.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'É possível criar listas aninhadas (lista dentro de lista)?', '["Não, é proibido", "Sim, colocando uma ul ou ol dentro de um li", "Só com JavaScript", "Só com CSS"]', 1, 'Listas aninhadas criam submenus e subitens.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo type="a" em <ol> faz a lista usar:', '["Números arábicos", "Letras minúsculas (a, b, c...)", "Números romanos", "Símbolos"]', 1, CONCAT('type="a" → a, b, c', CHAR(59), ' type="I" → I, II, III...')
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Para que serve o atributo start em <ol>?', '["Definir a cor", "Definir o número inicial da contagem", "Definir o tipo do marcador", "Ocultar a lista"]', 1, 'start="5" começa a numeração a partir do 5.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual estrutura está correta para uma lista?', '["<ul><p>Item</p></ul>", "<ul><li>Item</li></ul>", "<list><item>Item</item></list>", "<ol><div>Item</div></ol>"]', 1, 'Sempre: ul ou ol > li. Nunca pule a tag li.'
FROM modulos WHERE curso_id = 10 AND ordem = 3 LIMIT 1;

-- ==========================================
-- FASE 4 - Links e Imagens
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Para abrir um link em nova aba, usa-se:', '["href="_blank"", "target="_blank"", "open="new"", "rel="new""]', 1, 'target="_blank" abre em nova aba/janela.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo alt em <img> serve para:', '["Definir o tamanho", "Texto alternativo se a imagem não carregar", "Posicionar a imagem", "Animar a imagem"]', 1, 'Alt é obrigatório para acessibilidade e SEO.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Como criar um link que envia email?', '["href="mail:email"", "href="mailto:email"", "href="email:email"", "href="send:email""]', 1, 'mailto: abre o cliente de email do usuário.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo src em <img> define:', '["O tamanho da imagem", "O caminho/URL da imagem", "A legenda da imagem", "A borda da imagem"]', 1, 'src = source — onde a imagem está localizada.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Como definir largura de 200px numa imagem?', '["size="200"", "width="200"", "largura="200"", "px="200""]', 1, 'O atributo width define a largura em pixels ou porcentagem.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Um link âncora (#) dentro da página usa:', '["href="pg#id"", "href="#id-do-elemento"", "href="anchor:id"", "href="local:id""]', 1, 'O # seguido do id leva o usuário a um elemento específico na mesma página.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <figure> é usada para:', '["Criar formas geométricas", "Agrupar imagem com sua legenda <figcaption>", "Inserir vídeo", "Criar galeria"]', 1, 'Figure + figcaption formam um bloco semântico de imagem com legenda.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo loading="lazy" em img serve para:', '["Carregar a imagem desfocada", "Adiar o carregamento até a imagem entrar na tela", "Deixar a imagem mais leve", "Animar o carregamento"]', 1, 'Lazy loading melhora a performance carregando só o que o usuário vê.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O rel="noopener" num link target="_blank" serve para:', '["Melhorar o SEO", "Segurança: impede a página aberta de acessar a original", "Abrir em popup", "Criar link de download"]', 1, 'Segurança! Sempre use rel="noopener noreferrer" com target="_blank".'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Para criar um link de download, usa-se:', '["href com target=download", "O atributo download na tag <a>", "type=download na tag <a>", "rel=download na tag <a>"]', 1, 'O atributo download força o navegador a baixar o arquivo ao clicar.'
FROM modulos WHERE curso_id = 10 AND ordem = 4 LIMIT 1;

-- ==========================================
-- FASE 5 - Tabelas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag inicia uma tabela HTML?', '["<grid>", "<table>", "<tab>", "<matrix>"]', 1, 'Table é a tag container de toda a estrutura da tabela.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma LINHA na tabela?', '["<td>", "<th>", "<tr>", "<row>"]', 2, 'TR = Table Row — cada linha da tabela.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma CÉLULA de dados?', '["<tr>", "<th>", "<tc>", "<td>"]', 3, 'TD = Table Data — célula comum de conteúdo.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma célula de CABEÇALHO?', '["<td>", "<th>", "<thead>", "<caption>"]', 1, 'TH = Table Header — negrito e centralizado por padrão.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <thead> serve para:', '["Criar cabeçalho da tabela agrupando as linhas de título", "Definir o estilo da tabela", "Criar rodapé", "Inserir título externo"]', 0, 'Thead agrupa semanticamente as linhas do cabeçalho.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <tbody> serve para:', '["Cabeçalho da tabela", "Agrupar o corpo principal de dados", "Rodapé da tabela", "Título da tabela"]', 1, 'Tbody contém as linhas de dados principais.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo colspan serve para:', '["Definir a cor da coluna", "Mesclar células horizontalmente", "Adicionar colunas", "Remover bordas"]', 1, 'colspan=2 faz a célula ocupar 2 colunas.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo rowspan serve para:', '["Definir altura da linha", "Mesclar células verticalmente", "Adicionar linhas", "Ocultar linha"]', 1, 'rowspan=3 faz a célula ocupar 3 linhas.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <caption> numa tabela cria:', '["Uma célula especial", "Um título/legenda para a tabela inteira", "Um rodapé de linha", "Um cabeçalho oculto"]', 1, 'Caption aparece acima da tabela como título descritivo.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual a ordem correta de aninhamento numa tabela?', '["table > td > tr", "table > tr > td", "table > thead > td", "table > th > tr"]', 1, 'Sempre: table → tr → td (ou th). Linha sempre antes da célula.'
FROM modulos WHERE curso_id = 10 AND ordem = 5 LIMIT 1;

-- ==========================================
-- FASE 6 - Formulários
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria um formulário?', '["<input>", "<form>", "<field>", "<submit>"]', 1, 'Form é o container de todos os campos do formulário.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria um campo de texto simples?', '["<textbox>", "<field>", "<input type="text">", "<text>"]', 2, 'Input é o campo mais versátil do HTML — o type define o comportamento.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual input type cria campo de SENHA?', '["type="secret"", "type="pass"", "type="hidden"", "type="password""]', 3, 'type="password" oculta os caracteres digitados.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <label> serve para:', '["Estilizar o campo", "Associar texto descritivo ao campo de formulário", "Criar botão", "Validar o campo"]', 1, 'Label melhora usabilidade: clicar no label foca no campo.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma área de texto multi-linhas?', '["<input type="multiline">", "<textfield>", "<textarea>", "<multitext>"]', 2, 'Textarea permite digitar textos longos com quebras de linha.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag cria uma lista suspensa (dropdown)?', '["<list>", "<dropdown>", "<select>", "<combo>"]', 2, 'Select + option criam o menu suspenso clássico.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo required num input serve para:', '["Formatar o campo", "Tornar o preenchimento obrigatório", "Ocultar o campo", "Desabilitar o campo"]', 1, 'Required impede o envio se o campo estiver vazio.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo placeholder serve para:', '["Validar o campo", "Exibir texto de exemplo dentro do campo vazio", "Definir valor padrão permanente", "Ocultar o label"]', 1, 'Placeholder some quando o usuário começa a digitar.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo action no <form> define:', '["O estilo do formulário", "Para onde os dados são enviados", "O método de envio", "A validação"]', 1, 'action="/url" indica o destino dos dados ao submeter.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual input type cria um botão de envio?', '["type="button"", "type="send"", "type="submit"", "type="go""]', 2, 'type="submit" envia os dados do formulário ao servidor.'
FROM modulos WHERE curso_id = 10 AND ordem = 6 LIMIT 1;

-- ==========================================
-- FASE 7 - Semântica HTML5
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O que são tags semânticas?', '["Tags com efeito visual", "Tags que descrevem o significado do conteúdo", "Tags exclusivas do CSS", "Tags de formulário"]', 1, 'Semântica = significado. Ajudam SEO e acessibilidade.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define o cabeçalho da página ou seção?', '["<head>", "<top>", "<header>", "<h1>"]', 2, 'Header contém logo, navegação e título da seção.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define o rodapé?', '["<bottom>", "<end>", "<foot>", "<footer>"]', 3, 'Footer contém informações de copyright, contato, links secundários.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define o menu de navegação?', '["<menu>", "<nav>", "<links>", "<navigation>"]', 1, 'Nav agrupa os links principais de navegação do site.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define o conteúdo principal único da página?', '["<body>", "<section>", "<main>", "<article>"]', 2, 'Main deve aparecer uma única vez e contém o conteúdo central.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define um conteúdo independente (post, notícia)?', '["<section>", "<article>", "<aside>", "<div>"]', 1, 'Article é auto-suficiente: pode ser lido fora do contexto da página.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag define um conteúdo lateral/complementar?', '["<side>", "<extra>", "<aside>", "<secondary>"]', 2, 'Aside = barra lateral, conteúdo relacionado mas não essencial.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <section> é usada para:', '["Container genérico", "Agrupar conteúdo tematicamente relacionado com título", "Substituir div", "Criar formulários"]', 1, 'Section agrupa conteúdo com tema comum, geralmente com um h2/h3.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual a diferença entre <div> e <section>?', CONCAT('["Não há diferença", "Div é genérica sem semântica', CHAR(59), ' section tem significado temático", "Section é mais rápida", "Div só funciona com CSS"]'), 1, CONCAT('Use section quando o conteúdo tem significado próprio', CHAR(59), ' div para layout.')
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Por que usar HTML semântico?', '["Deixa o site mais bonito", "Melhora SEO, acessibilidade e legibilidade do código", "Obrigatório pelo W3C", "Aumenta a velocidade do servidor"]', 1, 'Semântica ajuda leitores de tela, mecanismos de busca e outros devs.'
FROM modulos WHERE curso_id = 10 AND ordem = 7 LIMIT 1;

-- ==========================================
-- FASE 8 - Mídia (Vídeo e Áudio)
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag incorpora vídeo no HTML5?', '["<movie>", "<media>", "<video>", "<player>"]', 2, 'A tag video suporta mp4, webm e ogg nativamente.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual tag incorpora áudio no HTML5?', '["<sound>", "<mp3>", "<music>", "<audio>"]', 3, 'A tag audio suporta mp3, wav e ogg.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo controls em video/audio serve para:', '["Definir o tamanho", "Exibir os controles de play/pause/volume", "Autoplay do media", "Loop do media"]', 1, 'Sem controls o usuário não consegue interagir com o player.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo autoplay faz o media:', '["Repetir automaticamente", "Iniciar automaticamente ao carregar a página", "Baixar automaticamente", "Ocultar o player"]', 1, 'Atenção: navegadores bloqueiam autoplay com som por padrão.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo loop no video/audio faz:', '["Pausar no final", "Repetir automaticamente após terminar", "Aumentar o volume", "Mostrar legenda"]', 1, 'Loop = repete do início quando chega ao fim.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <source> dentro de video/audio serve para:', '["Adicionar legenda", "Especificar múltiplas fontes/formatos do media", "Definir o tamanho", "Criar fallback de texto"]', 1, 'Source permite oferecer vários formatos para compatibilidade entre browsers.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <track> em video serve para:', '["Controlar a velocidade", "Adicionar legendas e closed captions", "Definir o caminho do arquivo", "Criar trilha sonora"]', 1, 'Track com kind="subtitles" adiciona legendas ao vídeo.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <iframe> é usada para:', '["Inserir imagens vetoriais", "Incorporar outra página ou conteúdo externo (ex: YouTube)", "Criar animações", "Definir frames de layout"]', 1, 'Iframe = inline frame. Embute conteúdo externo dentro da página.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo poster em <video> define:', '["A legenda do vídeo", "A imagem exibida antes do vídeo ser reproduzido", "O formato do arquivo", "O tamanho do player"]', 1, 'Poster = thumbnail/capa do vídeo antes de dar play.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo muted em video/audio serve para:', '["Remover o áudio permanentemente", "Iniciar o media sem som", "Diminuir o volume pela metade", "Desativar os controles"]', 1, 'Muted + autoplay é a combinação aceita pelos navegadores modernos.'
FROM modulos WHERE curso_id = 10 AND ordem = 8 LIMIT 1;

-- ==========================================
-- FASE 9 - Metadados e SEO
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <title> define:', '["O H1 da página", "O título exibido na aba do navegador e nos resultados do Google", "O cabeçalho visual", "O nome do arquivo"]', 1, 'Title é crucial para SEO — seja descritivo e único por página.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A meta description serve para:', '["Definir o estilo", "Descrever o conteúdo da página para mecanismos de busca", "Redirecionar páginas", "Definir o charset"]', 1, 'Aparece como texto abaixo do título nos resultados do Google.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O charset UTF-8 define:', '["A velocidade de carregamento", "A codificação de caracteres (suporta acentos e emojis)", "O idioma da página", "O tamanho do arquivo"]', 1, 'UTF-8 é o padrão universal que suporta praticamente todos os caracteres.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A meta viewport é essencial para:', '["SEO", "Responsividade em dispositivos móveis", "Velocidade", "Segurança"]', 1, 'Sem viewport, o site não se adapta à tela do celular.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <link rel="stylesheet"> serve para:', '["Criar links clicáveis", "Importar arquivo CSS externo", "Definir favicon", "Conectar ao banco"]', 1, 'Link no head importa o CSS — não confundir com a tag a de hiperlink.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O favicon é:', '["Logo grande no header", "O pequeno ícone exibido na aba do navegador", "Imagem de fundo", "Imagem do autor"]', 1, 'Definido com <link rel="icon" href="favicon.ico">.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo lang na tag <html> define:', '["O estilo de fonte", "O idioma principal do conteúdo", "A versão do HTML", "O charset"]', 1, 'lang="pt-BR" informa ao browser e leitores de tela o idioma.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Open Graph (og:) meta tags servem para:', '["SEO no Google", "Controlar como a página aparece ao ser compartilhada em redes sociais", "Definir animações", "Velocidade de carregamento"]', 1, 'og:title, og:image, og:description controlam o preview no Facebook/WhatsApp.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <script> no final do body (antes de </body>) é recomendada porque:', '["É obrigatório", "Garante que o HTML carregue antes do JavaScript", "É mais rápido", "Melhora SEO"]', 1, 'JS no final evita que o script bloqueie a renderização da página.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A meta robots="noindex" instrui:', '["Velocidade do robô", "Que mecanismos de busca não indexem a página", "Layout responsivo", "Redirecionamento"]', 1, 'Útil para páginas privadas ou de admin que não devem aparecer no Google.'
FROM modulos WHERE curso_id = 10 AND ordem = 9 LIMIT 1;

-- ==========================================
-- FASE 10 - HTML Avançado e Boas Práticas
-- ==========================================
INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo data-* serve para:', '["Estilizar elementos", "Armazenar dados personalizados no elemento HTML", "Criar animações", "Definir eventos"]', 1, 'Ex: data-id="123" — acesse via JavaScript com dataset.id.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo id deve ser:', '["Repetido em vários elementos", "Único em toda a página", "Igual ao class", "Opcional sempre"]', 1, 'ID é identificador único — use class para estilos repetidos.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo class permite:', '["Identificar um único elemento", "Aplicar o mesmo estilo a múltiplos elementos", "Criar IDs automáticos", "Definir eventos"]', 1, 'Vários elementos podem ter a mesma class.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <details> e <summary> criam:', '["Tabela detalhada", "Accordion/bloco colapsável nativo sem JavaScript", "Formulário avançado", "Modal popup"]', 1, 'Details + summary = acordeão HTML nativo, sem JS.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <canvas> é usada para:', '["Inserir imagens", "Desenhar gráficos via JavaScript", "Criar formulários", "Incorporar PDFs"]', 1, 'Canvas é uma área de desenho programável com JavaScript.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'A tag <svg> serve para:', '["Vídeo vetorial", "Gráficos vetoriais escaláveis diretamente no HTML", "Áudio", "Animação CSS"]', 1, 'SVG = Scalable Vector Graphics — não perde qualidade em qualquer tamanho.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo tabindex serve para:', '["Criar tabelas", "Controlar a ordem de navegação pelo teclado (Tab)", "Definir índices de array", "Criar abas visuais"]', 1, 'Importante para acessibilidade — usuários de teclado dependem do tabindex.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'O atributo aria-label serve para:', '["Estilizar com CSS", "Descrever um elemento para leitores de tela", "Criar animações", "Definir idioma"]', 1, 'ARIA = Accessible Rich Internet Applications — essencial para acessibilidade.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Qual ferramenta valida se o HTML está correto?', '["Google Analytics", "W3C Validator", "GitHub", "Lighthouse só"]', 1, 'validator.w3.org verifica erros de marcação HTML.'
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;

INSERT INTO questoes (curso_id, modulo_id, texto, opcoes_json, resposta_correta, dica)
SELECT 10, id, 'Comentários em HTML são escritos com:', CONCAT('["// comentário", "/* comentário */", "<!', CHAR(45), CHAR(45), ' comentário ', CHAR(45), CHAR(45), '>", "# comentário"]'), 2, CONCAT('Tudo entre <!', CHAR(45), CHAR(45), ' e ', CHAR(45), CHAR(45), '> é ignorado pelo navegador.')
FROM modulos WHERE curso_id = 10 AND ordem = 10 LIMIT 1;