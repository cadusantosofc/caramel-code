-- Migration: 045_add_explicacoes_json_to_questoes
-- Adiciona campo para armazenar explicações específicas para cada opção

ALTER TABLE questoes ADD COLUMN explicacoes_json TEXT AFTER explicacao;

-- Comentário sobre o novo campo
-- explicacoes_json: Array JSON com 4 explicações, uma para cada opção
-- Formato: ["explicação_opção_0", "explicação_opção_1", "explicação_opção_2", "explicação_opção_3"]
-- Exemplo: ["❌ Incorreto. Body não é uma tag HTML...", "✅ Correto! A tag <body> representa...", ...]
