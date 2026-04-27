-- Migration: 013_create_progresso_questoes
-- Registra cada resposta individual para permitir retomar de onde parou

CREATE TABLE IF NOT EXISTS progresso_questoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    questao_id INT NOT NULL,
    modulo_id INT NOT NULL,
    is_correct TINYINT(1) NOT NULL,
    data_resposta DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY unique_user_question (usuario_id, questao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (questao_id) REFERENCES questoes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
