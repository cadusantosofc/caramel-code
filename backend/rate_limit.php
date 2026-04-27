<?php
require_once __DIR__ . '/config.php';

class RateLimit {
    private static $limits = [
        'login'    => ['attempts' => 5,   'window' => 300],  // 5 tentativas em 5 min
        'register' => ['attempts' => 1,   'window' => 600],  // 1 cadastro a cada 10 min
        'api'      => ['attempts' => 60,  'window' => 60],   // 60 req/min
    ];

    public static function check(PDO $pdo, $action, $ip) {
        $cfg = isset(self::$limits[$action]) ? self::$limits[$action] : self::$limits['api'];
        $maxAttempts = $cfg['attempts'];
        $window      = $cfg['window'];
        $ipHash      = hash('sha256', $ip);
        $since       = date('Y-m-d H:i:s', time() - $window);

        try {
            $stmt = $pdo->prepare(
                "SELECT COUNT(*) FROM rate_limit_log WHERE action = ? AND ip_hash = ? AND created_at > ?"
            );
            $stmt->execute([$action, $ipHash, $since]);
            $count = (int) $stmt->fetchColumn();

            if ($count >= $maxAttempts) {
                header('Content-Type: application/json');
                http_response_code(429);
                echo json_encode([
                    'success' => false,
                    'message' => 'Muitas tentativas. Aguarde alguns minutos.'
                ]);
                exit;
            }

            $pdo->prepare("INSERT INTO rate_limit_log (action, ip_hash) VALUES (?, ?)")
                ->execute([$action, $ipHash]);

        } catch (PDOException $e) {
        }
    }
}
