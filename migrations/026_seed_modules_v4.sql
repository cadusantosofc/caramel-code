-- Migration: 026_seed_modules_v4
-- Fonte Única de Verdade com Limpeza Preventiva

-- Limpa tudo antes para evitar duplicidade ID 31, 121, etc
DELETE FROM modulos;

-- HTML
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (10,'Módulo 1',1),(10,'Módulo 2',2),(10,'Módulo 3',3),(10,'Módulo 4',4),(10,'Módulo 5',5),(10,'Módulo 6',6),(10,'Módulo 7',7),(10,'Módulo 8',8),(10,'Módulo 9',9),(10,'Módulo 10',10);
-- CSS
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (11,'Módulo 1',1),(11,'Módulo 2',2),(11,'Módulo 3',3),(11,'Módulo 4',4),(11,'Módulo 5',5),(11,'Módulo 6',6),(11,'Módulo 7',7),(11,'Módulo 8',8),(11,'Módulo 9',9),(11,'Módulo 10',10);
-- JS
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (12,'Módulo 1',1),(12,'Módulo 2',2),(12,'Módulo 3',3),(12,'Módulo 4',4),(12,'Módulo 5',5),(12,'Módulo 6',6),(12,'Módulo 7',7),(12,'Módulo 8',8),(12,'Módulo 9',9),(12,'Módulo 10',10);
-- Lógica
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (13,'Módulo 1',1),(13,'Módulo 2',2),(13,'Módulo 3',3),(13,'Módulo 4',4),(13,'Módulo 5',5),(13,'Módulo 6',6),(13,'Módulo 7',7),(13,'Módulo 8',8),(13,'Módulo 9',9),(13,'Módulo 10',10);
-- PHP
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (14,'Módulo 1',1),(14,'Módulo 2',2),(14,'Módulo 3',3),(14,'Módulo 4',4),(14,'Módulo 5',5),(14,'Módulo 6',6),(14,'Módulo 7',7),(14,'Módulo 8',8),(14,'Módulo 9',9),(14,'Módulo 10',10);
-- MySQL
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (15,'Módulo 1',1),(15,'Módulo 2',2),(15,'Módulo 3',3),(15,'Módulo 4',4),(15,'Módulo 5',5),(15,'Módulo 6',6),(15,'Módulo 7',7),(15,'Módulo 8',8),(15,'Módulo 9',9),(15,'Módulo 10',10);
-- Python
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (16,'Módulo 1',1),(16,'Módulo 2',2),(16,'Módulo 3',3),(16,'Módulo 4',4),(16,'Módulo 5',5),(16,'Módulo 6',6),(16,'Módulo 7',7),(16,'Módulo 8',8),(16,'Módulo 9',9),(16,'Módulo 10',10);
-- C
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (17,'Módulo 1',1),(17,'Módulo 2',2),(17,'Módulo 3',3),(17,'Módulo 4',4),(17,'Módulo 5',5),(17,'Módulo 6',6),(17,'Módulo 7',7),(17,'Módulo 8',8),(17,'Módulo 9',9),(17,'Módulo 10',10);
-- Java
INSERT IGNORE INTO modulos (curso_id, titulo, ordem) VALUES (18,'Módulo 1',1),(18,'Módulo 2',2),(18,'Módulo 3',3),(18,'Módulo 4',4),(18,'Módulo 5',5),(18,'Módulo 6',6),(18,'Módulo 7',7),(18,'Módulo 8',8),(18,'Módulo 9',9),(18,'Módulo 10',10);
