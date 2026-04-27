-- Migration: 002_create_usuarios

CREATE TABLE IF NOT EXISTS usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('admin', 'aluno') DEFAULT 'aluno',
    status ENUM('ativo', 'inativo') DEFAULT 'ativo',
    nivel_aprendizado ENUM('iniciante', 'intermediario', 'avancado') DEFAULT 'iniciante',
    estilo_aprendizado VARCHAR(50) DEFAULT 'progressivo',
    onboarding_completo TINYINT(1) DEFAULT 0,
    settings_json TEXT DEFAULT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    ultimo_login DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
