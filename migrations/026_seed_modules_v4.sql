-- Migration: 026_seed_modules_v4
-- Apenas 4 cursos principais: Lógica, HTML, CSS, JavaScript

-- Limpa módulos dos cursos extras
DELETE FROM modulos WHERE curso_id IN (14, 15, 16, 17, 18);

-- Mantém apenas módulos dos 4 cursos principais
-- Lógica (13)
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (13,'Módulo 1',1),(13,'Módulo 2',2),(13,'Módulo 3',3),(13,'Módulo 4',4),(13,'Módulo 5',5),(13,'Módulo 6',6),(13,'Módulo 7',7),(13,'Módulo 8',8),(13,'Módulo 9',9),(13,'Módulo 10',10);
-- HTML (10)
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (10,'Módulo 1',1),(10,'Módulo 2',2),(10,'Módulo 3',3),(10,'Módulo 4',4),(10,'Módulo 5',5),(10,'Módulo 6',6),(10,'Módulo 7',7),(10,'Módulo 8',8),(10,'Módulo 9',9),(10,'Módulo 10',10);
-- CSS (11)
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (11,'Módulo 1',1),(11,'Módulo 2',2),(11,'Módulo 3',3),(11,'Módulo 4',4),(11,'Módulo 5',5),(11,'Módulo 6',6),(11,'Módulo 7',7),(11,'Módulo 8',8),(11,'Módulo 9',9),(11,'Módulo 10',10);
-- JavaScript (12)
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (12,'Módulo 1',1),(12,'Módulo 2',2),(12,'Módulo 3',3),(12,'Módulo 4',4),(12,'Módulo 5',5),(12,'Módulo 6',6),(12,'Módulo 7',7),(12,'Módulo 8',8),(12,'Módulo 9',9),(12,'Módulo 10',10);
