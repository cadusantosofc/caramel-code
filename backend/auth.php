<?php
require_once __DIR__ . '/config.php';

class Auth {
    public static function generateToken($userId, $userEmail, $userType) {
        $header  = self::b64e(json_encode(['typ' => 'JWT', 'alg' => 'HS256']));
        $payload = self::b64e(json_encode([
            'sub'  => (int) $userId,
            'email'=> $userEmail,
            'tipo' => $userType,
            'iat'  => time(),
            'exp'  => time() + 86400
        ]));
        $sig = self::b64e(hash_hmac('sha256', "$header.$payload", JWT_SECRET, true));
        return "$header.$payload.$sig";
    }

    public static function validateToken($token) {
        if (!$token || substr_count($token, '.') !== 2) return null;

        list($header, $payload, $sig) = explode('.', $token);

        $expected = self::b64e(hash_hmac('sha256', "$header.$payload", JWT_SECRET, true));
        if (!hash_equals($expected, $sig)) return null;

        $data = json_decode(self::b64d($payload), true);
        if (!$data || !isset($data['exp'], $data['sub'])) return null;
        if ($data['exp'] < time()) return null;

        return [
            'id'   => (int) $data['sub'],
            'email'=> $data['email'],
            'tipo' => $data['tipo'],
        ];
    }

    public static function check() {
        $token = isset($_COOKIE['auth_token']) ? $_COOKIE['auth_token'] : null;
        $data  = self::validateToken($token);

        if (!$data) {
            header('Content-Type: application/json');
            http_response_code(401);
            echo json_encode(['success' => false, 'message' => 'Não autorizado']);
            exit;
        }

        return $data;
    }

    public static function setSecureCookie($token) {
        setcookie('auth_token', $token, [
            'expires'  => time() + 86400,
            'path'     => '/',
            'httponly' => true,
            'samesite' => 'Lax',
            'secure'   => (APP_ENV === 'production'),
        ]);
    }

    public static function clearCookie() {
        setcookie('auth_token', '', [
            'expires'  => time() - 3600,
            'path'     => '/',
            'httponly' => true,
            'samesite' => 'Lax',
            'secure'   => (APP_ENV === 'production'),
        ]);
    }

    private static function b64e($data) {
        return str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($data));
    }

    private static function b64d($data) {
        return base64_decode(str_replace(['-', '_'], ['+', '/'], $data));
    }
}
