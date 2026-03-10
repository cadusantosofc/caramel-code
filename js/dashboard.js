const db = new Database();

function applyTheme() {
    const s = JSON.parse(localStorage.getItem('caramel_settings') || '{}');
    if (s.darkMode) document.body.classList.add('dark');
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

function getUserProgress(user) {
    const key = 'caramel_progress_' + user.id;
    const raw = localStorage.getItem(key);
    let p = { moedas: 100, dias_seguidos: 1, nivel: 1, xp: 0, medalhas: 0, questoes_respondidas: 0, questoes_corretas: 0, total_questoes: 100, trilhas: {}, last_empty_coins: null };
    
    if (raw) {
        try { 
            p = JSON.parse(raw); 
            // Regeneração: 2 horas (7200000 ms)
            if (p.moedas < 10 && p.last_empty_coins) {
                const now = Date.now();
                if (now - p.last_empty_coins >= 7200000) {
                    p.moedas = 100;
                    p.last_empty_coins = null;
                    localStorage.setItem(key, JSON.stringify(p));
                }
            }
        }
        catch (e) {}
    } else {
        localStorage.setItem(key, JSON.stringify(p));
    }
    return p;
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

document.addEventListener('DOMContentLoaded', function () {
    applyTheme();
    const user = checkAuth();
    if (!user) return;

    const progress = getUserProgress(user);
    renderDashboard(user, progress);
    bindActions(user);
});
