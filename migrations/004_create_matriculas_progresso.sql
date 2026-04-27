-- Migration: 004_create_matriculas_progresso
-- Criação de matrículas e progresso do usuário

CREATE TABLE IF NOT EXISTS matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT NOT NULL,
    curso_id INT NOT NULL,
    status ENUM('ativa', 'concluida', 'cancelada') DEFAULT 'ativa',
    progresso_percentual INT DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY unique_matricula (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS progresso_usuario (
    usuario_id INT PRIMARY KEY,
    moedas INT DEFAULT 50,
    xp INT DEFAULT 0,
    nivel INT DEFAULT 1,
    dias_seguidos INT DEFAULT 1,
    medalhas INT DEFAULT 0,
    questoes_respondidas INT DEFAULT 0,
    questoes_corretas INT DEFAULT 0,
    trilhas_json TEXT DEFAULT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
