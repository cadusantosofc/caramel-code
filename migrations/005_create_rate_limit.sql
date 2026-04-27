-- Migration: 005_create_rate_limit

CREATE TABLE IF NOT EXISTS rate_limit_log (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    action VARCHAR(50) NOT NULL,
    ip_hash VARCHAR(64) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_action_ip_time (action, ip_hash, created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
