let currentScreen = 1;
let selectedLevel = 'iniciante';
let selectedStyle = 'progressivo';

const screen1 = document.getElementById('screen1');
const screen2 = document.getElementById('screen2');
const bottomNav1 = document.getElementById('bottomNav1');
const nextBtn = document.getElementById('nextBtn');
const prevBtn = document.getElementById('prevBtn');
const skipBtn = document.getElementById('skipBtn');
const dot1 = document.getElementById('dot1');
const dot2 = document.getElementById('dot2');

function goToScreen(n) {
    currentScreen = n;

    screen1.classList.toggle('active', n === 1);
    screen2.classList.toggle('active', n === 2);
    bottomNav1.style.display = n === 1 ? '' : 'none';

    dot1.classList.toggle('active', n === 1);
    dot2.classList.toggle('active', n === 2);

    prevBtn.style.visibility = n > 1 ? 'visible' : 'hidden';
}

nextBtn.addEventListener('click', function () {
    if (currentScreen === 1) goToScreen(2);
});

prevBtn.addEventListener('click', function () {
    if (currentScreen === 2) goToScreen(1);
});

skipBtn.addEventListener('click', function () {
    finishOnboarding();
});

document.querySelectorAll('.ob-level-card').forEach(function (card) {
    card.addEventListener('click', function () {
        document.querySelectorAll('.ob-level-card').forEach(function (c) {
            c.classList.remove('selected');
        });
        card.classList.add('selected');
        selectedLevel = card.dataset.level;
    });
});

document.querySelectorAll('.ob-style-tab').forEach(function (tab) {
    tab.addEventListener('click', function () {
        document.querySelectorAll('.ob-style-tab').forEach(function (t) {
            t.classList.remove('active');
        });
        tab.classList.add('active');
        selectedStyle = tab.dataset.style;
    });
});

document.getElementById('chooseLangBtn').addEventListener('click', function () {
    finishOnboarding();
});

async function finishOnboarding() {
    const db = new Database();
    const btn = document.getElementById('chooseLangBtn');
    const originalText = btn.textContent;
    
    btn.textContent = 'Salvando...';
    btn.disabled = true;

    try {
        const response = await fetch('api/complete_onboarding.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                nivel_aprendizado: selectedLevel,
                estilo_aprendizado: selectedStyle
            })
        });

        const result = await response.json();
        
        if (result.success) {
            // Atualizar usuário no localStorage com os dados do banco
            localStorage.setItem('caramel_user', JSON.stringify(result.user));
            window.location.href = 'dashboard.html';
        } else {
            alert(result.message || 'Erro ao salvar onboarding');
        }
    } catch (error) {
        console.error('Erro no onboarding:', error);
        alert('Erro de conexão. Tente novamente.');
    } finally {
        btn.textContent = originalText;
        btn.disabled = false;
    }
}

goToScreen(1);
