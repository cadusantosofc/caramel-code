-- Migration: 001_create_tables
-- Run automatically via migrate.php
-- Each migration is tracked in the 'migrations' table

CREATE TABLE IF NOT EXISTS migrations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE NOT NULL,
    executed_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
