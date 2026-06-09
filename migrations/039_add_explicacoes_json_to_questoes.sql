SET @col_exists = (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'questoes' AND COLUMN_NAME = 'explicacoes_json');
SET @sql = IF(@col_exists > 0, 'SELECT 1', 'ALTER TABLE questoes ADD COLUMN explicacoes_json TEXT AFTER explicacao');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;