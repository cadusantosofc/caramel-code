-- 0.8 Criar banco de dados caso não exista
CREATE DATABASE IF NOT EXISTS caramelcode;

-- 0.9 Usar banco de dados
USE caramelcode;

-- 1. Tabela de Usuários
CREATE TABLE IF NOT EXISTS usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('admin', 'aluno') DEFAULT 'aluno',
    status ENUM('ativo', 'inativo') DEFAULT 'ativo',
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    ultimo_login DATETIME NULL
);

-- 2. Tabela de Cursos
CREATE TABLE IF NOT EXISTS cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    nivel ENUM('basico', 'intermediario', 'avancado'),
    duracao_horas INT,
    status ENUM('ativo', 'inativo') DEFAULT 'ativo',
    admin_id INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (admin_id) REFERENCES usuarios(id)
);

-- 3. Tabela de Aulas
CREATE TABLE IF NOT EXISTS aulas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    curso_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    conteudo TEXT,
    ordem INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
);

-- 4. Tabela de Matrículas
CREATE TABLE IF NOT EXISTS matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT NOT NULL,
    curso_id INT NOT NULL,
    status ENUM('ativa', 'concluida', 'cancelada') DEFAULT 'ativa',
    progresso_percentual INT DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (aluno_id) REFERENCES usuarios(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- 5. Tabela de Progresso (Gamificação)
CREATE TABLE IF NOT EXISTS progresso_usuario (
    usuario_id INT PRIMARY KEY,
    moedas INT DEFAULT 50,
    xp INT DEFAULT 0,
    nivel INT DEFAULT 1,
    dias_seguidos INT DEFAULT 1,
    medalhas INT DEFAULT 0,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

---
-- INSERTS COM VERIFICAÇÃO (IF NOT EXISTS simulação)
---

-- Inserir Admin padrão
INSERT INTO usuarios (id, nome, email, senha, tipo, status)
SELECT 1, 'Administrador', 'admin@caramel.com', '123456', 'admin', 'ativo'
WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = 'admin@caramel.com');

-- Inserir Cursos
INSERT INTO cursos (id, titulo, descricao, categoria, nivel, duracao_horas, admin_id)
SELECT 1, 'HTML e CSS para Iniciantes', 'Aprenda os fundamentos...', 'Programação', 'basico', 20, 1
WHERE NOT EXISTS (SELECT 1 FROM cursos WHERE id = 1);

INSERT INTO cursos (id, titulo, descricao, categoria, nivel, duracao_horas, admin_id)
SELECT 2, 'JavaScript Moderno', 'Domine JavaScript ES6+...', 'Programação', 'intermediario', 40, 1
WHERE NOT EXISTS (SELECT 1 FROM cursos WHERE id = 2);

-- Inserir Aulas (Exemplos)
INSERT INTO aulas (id, curso_id, titulo, conteudo, ordem)
SELECT 1, 1, 'Aula 1: Introdução ao HTML', '<h2>O que é HTML?</h2>...', 1
WHERE NOT EXISTS (SELECT 1 FROM aulas WHERE id = 1);

INSERT INTO aulas (id, curso_id, titulo, conteudo, ordem)
SELECT 5, 2, 'Aula 1: Primeiros Passos', '<h2>O que é JavaScript?</h2>...', 1
WHERE NOT EXISTS (SELECT 1 FROM aulas WHERE id = 5);