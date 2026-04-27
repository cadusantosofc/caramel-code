const db = new Database();

async function applyTheme(user) {
    if (!user) return;
    const s = await db.getSettings(user.id);
    if (s.darkMode) {
        document.documentElement.classList.add('dark');
        document.body.classList.add('dark');
    } else {
        document.documentElement.classList.remove('dark');
        document.body.classList.remove('dark');
    }
}

function checkAuth() {
    const userData = localStorage.getItem('caramel_user');
    if (!userData) {
        window.location.href = 'login.html';
        return null;
    }
    try {
        return JSON.parse(userData);
    } catch (e) {
        localStorage.removeItem('caramel_user');
        window.location.href = 'login.html';
        return null;
    }
}

async function getUserProgress(user) {
    return await db.getProgress(user.id);
}

function renderDashboard(user, progress) {
    const nomes = user.nome.split(' ');
    const primeiro = nomes[0];
    const resto = nomes.slice(1).join(' ');

    document.getElementById('headerGreeting').textContent = 'Olá, ' + primeiro + (resto ? ' ' + nomes[1] : '');
    if (nomes.length > 2) {
        document.getElementById('headerName').textContent = nomes.slice(2).join(' ') + '!';
    } else {
        document.getElementById('headerName').textContent = (resto || primeiro) + '!';
    }

    document.getElementById('statMoedas').textContent = progress.moedas;
    document.getElementById('statDias').textContent = progress.dias_seguidos;
    document.getElementById('statNivel').textContent = progress.nivel;
    document.getElementById('statXP').textContent = progress.xp + ' XP';
    document.getElementById('statMedalhas').textContent = progress.medalhas;

    const respondidas = progress.questoes_respondidas;
    const total = progress.total_questoes;
    const corretas = progress.questoes_corretas;
    const pct = total > 0 ? Math.round((respondidas / total) * 100) : 0;
    const precisao = respondidas > 0 ? ((corretas / respondidas) * 100).toFixed(1) : '0.0';

    document.getElementById('progressPercent').textContent = pct + '%';
    document.getElementById('progressFill').style.width = pct + '%';
    document.getElementById('questoesRespondidas').textContent = respondidas + '/' + total;
    document.getElementById('precisao').textContent = precisao + '%';
}

function bindActions(user) {
    document.getElementById('continuarBtn').addEventListener('click', function () {
        window.location.href = 'trails.html';
    });

    document.getElementById('profileBtn').addEventListener('click', function () {
        window.location.href = 'profile.html';
    });

    document.getElementById('settingsBtn').addEventListener('click', function () {
        window.location.href = 'settings.html';
    });
}

document.addEventListener('DOMContentLoaded', async function () {
    const user = checkAuth();
    if (!user) return;

    await applyTheme(user);
    const progress = await getUserProgress(user);
    renderDashboard(user, progress);
    bindActions(user);
});
