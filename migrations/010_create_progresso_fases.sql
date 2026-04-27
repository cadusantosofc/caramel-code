-- Migration: 010_create_progresso_fases.sql

CREATE TABLE IF NOT EXISTS progresso_fases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    curso_id INT NOT NULL,
    modulo_ordem INT NOT NULL,
    concluido_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY unique_progresso (usuario_id, curso_id, modulo_ordem),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
);
