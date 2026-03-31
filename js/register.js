document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('.login-form');
    const inputs = document.querySelectorAll('input[type="text"], input[type="email"], input[type="password"]');
    const nameInput = document.getElementById('name');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');

    // Inicializar banco de dados JSON
    const db = new Database();

    inputs.forEach(input => {
        input.addEventListener('focus', function () {
            this.parentElement.classList.add('focused');
        });

        input.addEventListener('blur', function () {
            if (!this.value) {
                this.parentElement.classList.remove('focused');
            }
        });

        input.addEventListener('input', function () {
            validateField(this);
        });
    });

    nameInput.addEventListener('input', function () {
        if (this.value.length >= 3) {
            showSuccess(this);
        } else {
            clearValidation(this);
        }
    });

    emailInput.addEventListener('input', async function () {
        if (validateEmail(this.value)) {
            // Verificar se e-mail já existe
            const existingUser = await db.getUserByEmail(this.value);
            if (existingUser) {
                showError(this, 'E-mail já cadastrado');
            } else {
                showSuccess(this);
            }
        } else {
            clearValidation(this);
        }
    });

    passwordInput.addEventListener('input', function () {
        const strength = checkPasswordStrength(this.value);
        updatePasswordStrength(strength);

        if (this.value.length >= 6) {
            showSuccess(this);
        } else {
            clearValidation(this);
        }
    });

    form.addEventListener('submit', async function (e) {
        e.preventDefault();

        const name = nameInput.value.trim();
        const email = emailInput.value.trim();
        const password = passwordInput.value;

        if (!validateForm(name, email, password)) {
            return;
        }

        // Verificar se e-mail já existe
        const existingUser = await db.getUserByEmail(email);
        if (existingUser) {
            showError(emailInput, 'E-mail já cadastrado');
            return;
        }

        const btn = form.querySelector('.register-btn');
        const originalText = btn.textContent;
        btn.textContent = 'Criando conta...';
        btn.disabled = true;

        try {
            const userData = {
                nome: name,
                email: email,
                senha: password,
                tipo: 'aluno'
            };

            const newUser = await db.createUser(userData);

            localStorage.setItem('caramel_user', JSON.stringify(newUser));

            showSuccessMessage('Conta criada! Preparando sua experiência...');

            setTimeout(() => {
                window.location.href = 'onboarding.html';
            }, 1500);
        } catch (error) {
            console.error('Erro ao criar conta:', error);
            showError('Erro ao criar conta. Tente novamente.');
        } finally {
            btn.textContent = originalText;
            btn.disabled = false;
        }
    });
});

function validateField(input) {
    const value = input.value.trim();

    if (input.id === 'name' && value.length < 3) {
        showError(input, 'Nome deve ter pelo menos 3 caracteres');
        return false;
    }

    if (input.id === 'email' && !validateEmail(value)) {
        showError(input, 'E-mail inválido');
        return false;
    }

    if (input.id === 'password' && value.length < 6) {
        showError(input, 'Senha deve ter pelo menos 6 caracteres');
        return false;
    }

    clearValidation(input);
    return true;
}

function validateForm(name, email, password) {
    let isValid = true;

    if (name.length < 3) {
        showError(nameInput, 'Nome deve ter pelo menos 3 caracteres');
        isValid = false;
    }

    if (!validateEmail(email)) {
        showError(emailInput, 'E-mail inválido');
        isValid = false;
    }

    if (password.length < 6) {
        showError(passwordInput, 'Senha deve ter pelo menos 6 caracteres');
        isValid = false;
    }

    return isValid;
}

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}

function checkPasswordStrength(strength) {
    let strength = 0;

    if (password.length >= 6) strength++;
    if (password.length >= 10) strength++;
    if (/[a-z]/.test(password) && /[A-Z]/.test(password)) strength++;
    if (/[0-9]/.test(password)) strength++;
    if (/[^a-zA-Z0-9]/.test(password)) strength++;

    return strength;
}

function updatePasswordStrength(strength) {
    const existingIndicator = document.querySelector('.password-strength');
    if (existingIndicator) {
        existingIndicator.remove();
    }

    if (strength > 0) {
        const indicator = document.createElement('div');
        indicator.className = 'password-strength';

        const colors = ['#ff6b6b', '#ffa500', '#ffeb3b', '#8bc34a', '#4caf50'];
        const labels = ['Muito fraca', 'Fraca', 'Média', 'Forte', 'Muito forte'];

        indicator.innerHTML = `
            <div class="strength-bar">
                <div class="strength-fill" style="width: ${(strength / 5) * 100}%; background: ${colors[strength - 1]}"></div>
            </div>
            <div class="strength-text">${labels[strength - 1]}</div>
        `;

        indicator.style.cssText = `
            margin-top: 8px;
            font-size: 12px;
        `;

        passwordInput.parentElement.appendChild(indicator);
    }
}

function showError(input, message) {
    clearValidation(input);

    const errorDiv = document.createElement('div');
    errorDiv.className = 'field-error';
    errorDiv.textContent = message;
    errorDiv.style.cssText = `
        color: #e74c3c;
        font-size: 12px;
        margin-top: 5px;
    `;

    input.style.borderColor = '#e74c3c';
    input.parentElement.appendChild(errorDiv);
}

function showSuccess(input) {
    clearValidation(input);
    input.style.borderColor = '#27ae60';
}

function clearValidation(input) {
    input.style.borderColor = '';
    const error = input.parentElement.querySelector('.field-error');
    if (error) error.remove();
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
