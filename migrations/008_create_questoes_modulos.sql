-- Migration: 008_create_questoes_modulos

CREATE TABLE IF NOT EXISTS modulos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    curso_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    ordem INT DEFAULT 0,
    UNIQUE KEY unique_curso_ordem (curso_id, ordem),
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS questoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    curso_id INT NOT NULL,
    modulo_id INT NOT NULL,
    texto TEXT NOT NULL,
    sub_categoria VARCHAR(100),
    opcoes_json TEXT NOT NULL, -- Armazena as opções como JSON [op1, op2, op3, op4]
    resposta_correta INT NOT NULL, -- Índice (0-3)
    explicacao TEXT,
    dica TEXT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE,
    FOREIGN KEY (modulo_id) REFERENCES modulos(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
