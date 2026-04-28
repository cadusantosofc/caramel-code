<?php
/**
 * 🔐 Reset de Senha - Caramel Code
 * Acesse: http://localhost/caramel-code/reset_senha.php
 * Gere um novo hash e atualize manualmente no banco de dados
 */

$newPassword = null;
$newHash = null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $newPassword = $_POST['password'] ?? '';
    
    if (strlen($newPassword) < 6 || strlen($newPassword) > 128) {
        $error = 'Senha deve ter entre 6 e 128 caracteres';
    } else {
        $newHash = password_hash($newPassword, PASSWORD_BCRYPT, ['cost' => 12]);
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset de Senha - Caramel Code</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: 'Courier New', monospace; background: #0d0d0d; color: #e0e0e0; min-height: 100vh; display: flex; align-items: center; justify-content: center; padding: 20px; }
        .card { max-width: 600px; background: #1a1a1a; border: 1px solid #2a2a2a; border-radius: 10px; padding: 30px; }
        h1 { color: #f0a500; margin-bottom: 20px; font-size: 20px; }
        .form-group { margin-bottom: 16px; }
        label { display: block; color: #888; font-size: 12px; margin-bottom: 6px; }
        input { width: 100%; background: #111; border: 1px solid #333; color: #e0e0e0; padding: 10px; border-radius: 6px; font-family: monospace; font-size: 14px; }
        input:focus { outline: none; border-color: #f0a500; }
        button { background: #f0a500; color: #000; border: none; padding: 12px 20px; border-radius: 6px; font-weight: bold; cursor: pointer; width: 100%; }
        button:hover { background: #d4920a; }
        .result { background: #0a2a0a; border: 1px solid #4caf50; border-radius: 6px; padding: 16px; margin-top: 20px; }
        .result h3 { color: #4caf50; font-size: 14px; margin-bottom: 10px; }
        .hash-box { background: #000; border: 1px solid #333; padding: 12px; border-radius: 4px; word-break: break-all; color: #64b5f6; font-size: 12px; }
        .copy-btn { background: #2196f3; color: #fff; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; font-size: 12px; margin-top: 10px; }
        .copy-btn:hover { background: #1976d2; }
        .error { background: #2a0a0a; border: 1px solid #f44336; border-radius: 6px; padding: 12px; color: #f44336; margin-bottom: 16px; }
        .warn { background: #1a1500; border: 1px solid #f0a500; border-radius: 6px; padding: 12px; color: #f0a500; margin-bottom: 20px; font-size: 12px; }
        .instruction { background: #0a1a2a; border: 1px solid #64b5f6; border-radius: 6px; padding: 12px; color: #64b5f6; font-size: 12px; margin-top: 16px; }
    </style>
</head>
<body>
    <div class="card">
        <h1>🥕 Reset de Senha</h1>
        
        <div class="warn">
            ⚠️ Esta ferramenta gera um novo hash bcrypt para sua senha. 
            Use em ambiente de desenvolvimento apenas.
        </div>

        <?php if (isset($error)): ?>
            <div class="error">❌ <?php echo htmlspecialchars($error); ?></div>
        <?php endif; ?>

        <form method="POST">
            <div class="form-group">
                <label>Digite uma nova senha:</label>
                <input type="password" name="password" placeholder="Mínimo 6 caracteres" autofocus required>
            </div>
            <button type="submit">Gerar Hash →</button>
        </form>

        <?php if ($newHash): ?>
            <div class="result">
                <h3>✅ Hash Gerado com Sucesso!</h3>
                <p style="color: #aaa; font-size: 12px; margin-bottom: 10px;">
                    Copie e atualize no banco de dados:
                </p>
                <div class="hash-box" id="hashBox"><?php echo $newHash; ?></div>
                <button class="copy-btn" onclick="copyHash()">📋 Copiar Hash</button>
                
                <div class="instruction">
                    <strong>📝 Atualize seu banco de dados:</strong><br><br>
                    <code>UPDATE usuarios SET senha = '<?php echo $newHash; ?>' WHERE email = 'seu@email.com';</code>
                </div>
            </div>
        <?php endif; ?>
    </div>

    <script>
        function copyHash() {
            const hashBox = document.getElementById('hashBox');
            const text = hashBox.innerText;
            navigator.clipboard.writeText(text).then(() => {
                alert('✅ Hash copiado para clipboard!');
            });
        }
    </script>
</body>
</html>
