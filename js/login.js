document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('.login-form');
    const inputs = document.querySelectorAll('input[type="email"], input[type="password"]');
    
    // Inicializar banco de dados JSON
    const db = new Database();
    
    inputs.forEach(input => {
        input.addEventListener('focus', function() {
            this.parentElement.classList.add('focused');
        });
        
        input.addEventListener('blur', function() {
            if (!this.value) {
                this.parentElement.classList.remove('focused');
            }
        });
    });
    
    form.addEventListener('submit', async function(e) {
        e.preventDefault();
        
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        
        if (!email || !password) {
            showError('Preencha todos os campos');
            return;
        }
        
        if (!validateEmail(email)) {
            showError('E-mail inválido');
            return;
        }
        
        const btn = form.querySelector('.login-btn');
        const originalText = btn.textContent;
        btn.textContent = 'Entrando...';
        btn.disabled = true;
        
        try {
            // Validar login com banco JSON
            const user = await db.validateLogin(email, password);
            
            if (user) {
                // Salvar usuário no localStorage
                localStorage.setItem('caramel_user', JSON.stringify(user));
                
                showSuccessMessage('Login realizado! Redirecionando...');
                
                setTimeout(() => {
                    if (user.tipo === 'admin') {
                        window.location.href = 'dashboard.html';

                    } else {
                        window.location.href = 'dashboard.html';
                    }
                }, 1500);
            } else {
                showError('E-mail ou senha incorretos');
            }
        } catch (error) {
            console.error('Erro no login:', error);
            showError('Erro ao fazer login. Tente novamente.');
        } finally {
            btn.textContent = originalText;
            btn.disabled = false;
        }
    });
});

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}

function showError(message) {
    const existingError = document.querySelector('.error-message');
    if (existingError) {
        existingError.remove();
    }
    
    const errorDiv = document.createElement('div');
    errorDiv.className = 'error-message';
    errorDiv.textContent = message;
    errorDiv.style.cssText = `
        background: #fee;
        color: #c33;
        padding: 12px;
        border-radius: 8px;
        margin-bottom: 20px;
        font-size: 14px;
        text-align: center;
        border: 1px solid #fcc;
    `;
    
    const form = document.querySelector('.login-form');
    form.insertBefore(errorDiv, form.firstChild);
    
    setTimeout(() => {
        errorDiv.remove();
    }, 5000);
}

function showSuccessMessage(message) {
    const existingMessage = document.querySelector('.success-message');
    if (existingMessage) {
        existingMessage.remove();
    }
    
    const messageDiv = document.createElement('div');
    messageDiv.className = 'success-message';
    messageDiv.textContent = message;
    messageDiv.style.cssText = `
        background: #d4edda;
        color: #155724;
        padding: 15px;
        border-radius: 8px;
        margin-bottom: 20px;
        font-size: 14px;
        text-align: center;
        border: 1px solid #c3e6cb;
    `;
    
    const form = document.querySelector('.login-form');
    form.insertBefore(messageDiv, form.firstChild);
}
