const TRAILS_DATA = [
    {
        id: 'html',
        nome: 'HTML do Zero',
        desc: 'Estruture páginas web modernas',
        icon: '🌐',
        iconBg: '#e3f2fd',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'iniciante',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'css',
        nome: 'CSS & Estilo',
        desc: 'Design e layouts responsivos',
        icon: '🎨',
        iconBg: '#fce4ec',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'iniciante',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'javascript',
        nome: 'JavaScript',
        desc: 'Interatividade e lógica real',
        icon: '⚡',
        iconBg: '#fffde7',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'iniciante',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'logica',
        nome: 'Lógica de Prog.',
        desc: 'Algoritmos e pensamento lógico',
        icon: '🧠',
        iconBg: '#f3e5f5',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'iniciante',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'php',
        nome: 'PHP Backend',
        desc: 'Sistemas dinâmicos e servidores',
        icon: '🐘',
        iconBg: '#e8eaf6',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'intermediario',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'mysql',
        nome: 'MySQL',
        desc: 'Bancos de dados e queries SQL',
        icon: '🐬',
        iconBg: '#e1f5fe',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'intermediario',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'python',
        nome: 'Python',
        desc: 'Inteligência Artificial e Automação',
        icon: '🐍',
        iconBg: '#e8f5e9',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'iniciante',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'c',
        nome: 'Linguagem C',
        desc: 'A base da computação moderna',
        icon: '💻',
        iconBg: '#eceff1',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'intermediario',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    },
    {
        id: 'java',
        nome: 'Java & POO',
        desc: 'Desenvolvimento corporativo',
        icon: '☕',
        iconBg: '#fff3e0',
        fases: 10,
        questoes: 100,
        nivel_minimo: 'avancado',
        fases_list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    }
];

const NIVEL_ORDER = { iniciante: 0, intermediario: 1, avancado: 2 };

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

async function getUserProgress(userId) {
    return await db.getProgress(userId);
}

function getTrailProgress(progress, trailId) {
    if (!progress.trilhas) return { fases_concluidas: 0, questoes_respondidas: 0 };
    return progress.trilhas[trailId] || { fases_concluidas: 0, questoes_respondidas: 0 };
}

function isUnlocked(trail, trailIndex, progress) {
    if (trailIndex === 0) return true;
    const prev = TRAILS_DATA[trailIndex - 1];
    const prevProgress = getTrailProgress(progress, prev.id);
    return prevProgress.fases_concluidas >= prev.fases;
}

function renderBanner(user, progress) {
    const nivel = user.nivel_aprendizado || 'iniciante';
    const emojis = { iniciante: '🌱', intermediario: '🌿', avancado: '🌳' };
    const labels = { iniciante: 'Iniciante', intermediario: 'Intermediário', avancado: 'Avançado' };

    document.getElementById('bannerEmoji').textContent = emojis[nivel] || '🌱';
    document.getElementById('bannerLevel').textContent = 'Nível ' + progress.nivel;
    document.getElementById('bannerXP').textContent = progress.xp + ' XP • ' + progress.moedas + ' moedas';
    document.getElementById('bannerBadge').textContent = labels[nivel] || 'Iniciante';
}

function buildPhaseDots(trail, trailProgress) {
    const done = trailProgress.fases_concluidas || 0;
    const show = Math.min(trail.fases_list.length, 5);
    const extra = trail.fases_list.length - show;
    let html = '';

    for (let i = 0; i < show; i++) {
        const isDone = i < done;
        const isCurrent = i === done;
        const cls = isDone ? 'done' : (isCurrent ? 'current' : '');
        html += `<div class="phase-dot ${cls}">${trail.fases_list[i]}</div>`;
    }
    if (extra > 0) {
        html += `<div class="phase-dot more">+${extra}</div>`;
    }
    return html;
}

function renderTrails(user, progress) {
    const userNivel = user.nivel_aprendizado || 'iniciante';
    const userNivelOrder = NIVEL_ORDER[userNivel] || 0;
    const list = document.getElementById('trailsList');
    list.innerHTML = '';

    TRAILS_DATA.forEach(function (trail, idx) {
        const unlocked = isUnlocked(trail, idx, progress);
        const trailProgress = getTrailProgress(progress, trail.id);
        const pct = trail.questoes > 0 ? Math.round((trailProgress.questoes_respondidas / trail.questoes) * 100) : 0;
        const isActive = unlocked && idx === 0;

        const card = document.createElement('div');
        card.className = 'trail-card' + (unlocked ? '' : ' locked');

        let phasesHtml = buildPhaseDots(trail, trailProgress);
        let progressRow = '';

        if (unlocked) {
            progressRow = `
                <div class="trail-progress-row">
                    <div class="trail-label-row">
                        <span>Progresso</span>
                        <span>${trailProgress.questoes_respondidas}/${trail.questoes} questões</span>
                    </div>
                    <div class="trail-track">
                        <div class="trail-fill" style="width:${pct}%"></div>
                    </div>
                </div>
            `;
        }

        const lockMsg = !unlocked
            ? `<div class="trail-lock-msg"><span>🔒</span> Complete a trilha anterior para desbloquear</div>`
            : '';

        const playIcon = unlocked
            ? `<svg width="18" height="18" viewBox="0 0 24 24" fill="#f5a623"><polygon points="5 3 19 12 5 21 5 3"/></svg>`
            : `<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ccc" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>`;

        card.innerHTML = `
            <div class="trail-card-top">
                <div class="trail-card-icon" style="background:${trail.iconBg}">${trail.icon}</div>
                <div class="trail-card-info">
                    <div class="trail-card-header">
                        <span class="trail-card-name">${trail.nome}</span>
                        ${playIcon}
                    </div>
                    <div class="trail-card-desc">${trail.desc}</div>
                    <div class="trail-card-meta">
                        <span>📋</span> ${trail.fases} fases • ${trail.questoes} questões
                    </div>
                </div>
            </div>
            ${progressRow}
            <div class="trail-phases">${phasesHtml}</div>
            ${lockMsg}
        `;

        if (unlocked) {
            card.style.cursor = 'pointer';
            card.addEventListener('click', function () {
                window.location.href = 'course.html?trail=' + trail.id;
            });
        }

        list.appendChild(card);
    });
}

async function applyTheme(user) {
    if (!user) return;
    const settings = await db.getSettings(user.id);
    if (settings.darkMode) {
        document.documentElement.classList.add('dark');
        document.body.classList.add('dark');
    }
}

document.addEventListener('DOMContentLoaded', async function () {
    const user = checkAuth();
    if (!user) return;

    await applyTheme(user);
    const progress = await getUserProgress(user.id);
    renderBanner(user, progress);
    renderTrails(user, progress);
});
