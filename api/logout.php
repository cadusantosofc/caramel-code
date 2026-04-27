<?php
setcookie('auth_token', '', [
    'expires' => time() - 3600,
    'path' => '/',
    'httponly' => true,
    'samesite' => 'Lax',
    'secure' => isset($_SERVER['HTTPS'])
]);

header('Location: ../login.html');
exit;
