const db = new Database();

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

function getProgress(userId) {
    const key = 'caramel_progress_' + userId;
    const raw = localStorage.getItem(key);
    if (raw) { try { return JSON.parse(raw); } catch (e) {} }
    return { moedas: 50, dias_seguidos: 1, nivel: 1, xp: 0, medalhas: 0, questoes_respondidas: 0, questoes_corretas: 0, total_questoes: 50, trilhas: {} };
}

// Extensão dos dados das trilhas com fases reais (10 por curso)
const TRAILS_DB = {
    'html': {
        nome: 'HTML do Zero',
        desc: 'Domine a estrutura da web com 10 módulos essenciais',
        emoji: '🌐',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de HTML', questions: 10 }))
    },
    'css': {
        nome: 'CSS & Estilo',
        desc: 'Estilize páginas incríveis com 10 módulos práticos',
        emoji: '🎨',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de CSS', questions: 10 }))
    },
    'javascript': {
        nome: 'JavaScript',
        desc: 'Torne suas páginas interativas com JS',
        emoji: '⚡',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de JavaScript', questions: 10 }))
    },
    'php': {
        nome: 'PHP Backend',
        desc: 'Crie sistemas dinâmicos com PHP',
        emoji: '🐘',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de PHP', questions: 10 }))
    },
    'logica': {
        nome: 'Lógica de Prog.',
        desc: 'Base fundamental para qualquer linguagem',
        emoji: '🧠',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de Lógica', questions: 10 }))
    },
    'c': {
        nome: 'Linguagem C',
        desc: 'Aprenda a base da computação de baixo nível',
        emoji: '💻',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de C', questions: 10 }))
    },
    'java': {
        nome: 'Java & POO',
        desc: 'Programação Orientada a Objetos com Java',
        emoji: '☕',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de Java', questions: 10 }))
    },
    'mysql': {
        nome: 'Bancos MySQL',
        desc: 'Manipulação de dados com SQL',
        emoji: '🐬',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de MySQL', questions: 10 }))
    },
    'python': {
        nome: 'Python',
        desc: 'Data Science, Web e Automação',
        emoji: '🐍',
        fases: Array.from({length: 10}, (_, i) => ({ id: i+1, name: `Módulo ${i+1}`, desc: 'Lição detalhada de Python', questions: 10 }))
    }
};

function renderFaseCard(fase, trailId, isUnlocked, faseProgress) {
    const count = fase.questions;
    const done = faseProgress.questoes_concluidas || 0;
    const pct = Math.round((done / count) * 100);
    const completed = pct === 100;

    const card = document.createElement('div');
    card.className = 'phase-card' + (isUnlocked ? '' : ' locked');

    let bottomContent = '';
    if (isUnlocked) {
        if (completed) {
            bottomContent = `<button class="phase-btn" style="background:none; border: 1.5px solid #22c55e; color: #166534; box-shadow:none;" onclick="location.href='study.html?trail=${trailId}&phase=${fase.id}'">
                <span style="color:#22c55e;">✅</span> Revisar Fase
            </button>`;
        } else {
            bottomContent = `<button class="phase-btn" onclick="location.href='study.html?trail=${trailId}&phase=${fase.id}'">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><polygon points="5 3 19 12 5 21 5 3"/></svg>
                Jogar Fase
            </button>`;
        }
    } else {
        bottomContent = `<div class="phase-locked-msg"><span>🔒</span> Complete a fase anterior para desbloquear</div>`;
    }

    const stateIcon = completed ? '✅' : (isUnlocked ? fase.id : '🔒');
    const starBadge = completed ? '<span style="background:#f97316; color:#fff; padding:2px 6px; border-radius:10px; font-size:10px; display:inline-flex; align-items:center; gap:2px;">⭐ 100%</span>' : `<span style="font-size:11px; color:var(--text-muted);">${pct}%</span>`;

    card.innerHTML = `
        <div class="phase-top">
            <div class="phase-num-circle" style="${completed ? 'border-color:#22c55e; color:#22c55e;' : ''}">${stateIcon}</div>
            <div class="phase-info">
                <div style="display:flex; justify-content:space-between; align-items:center;">
                    <div class="phase-name">${fase.name}</div>
                    ${starBadge}
                </div>
                <div class="phase-desc">${fase.desc}</div>
                <div class="phase-meta">
                    <span>⏱️</span> ${count} questões
                    <span style="margin-left:auto;">${done}/${count} concluídas</span>
                </div>
                ${completed ? '<div class="banner-progress-bar" style="height:4px; margin-top:8px; margin-bottom:0;"><div class="banner-progress-fill" style="width:100%; background:#22c55e;"></div></div>' : ''}
            </div>
        </div>
        ${bottomContent}
    `;
    return card;
}

document.addEventListener('DOMContentLoaded', function () {
    const user = checkAuth();
    if (!user) return;

    const params = new URLSearchParams(window.location.search);
    const trailId = params.get('trail') || 'html';
    const trail = TRAILS_DB[trailId] || TRAILS_DB['html'];

    document.getElementById('courseTitle').textContent = (trail.emoji || '📙') + ' ' + trail.nome;
    document.getElementById('courseDesc').textContent = trail.desc;

    const progress = getProgress(user.id);
    const trailProgress = (progress.trilhas && progress.trilhas[trailId]) || { fases_concluidas: 0, questoes_respondidas: 0, phases: {} };

    // Render Banner Stats
    document.getElementById('countFases').textContent = trail.fases.length;
    document.getElementById('countMoedas').textContent = progress.moedas;
    document.getElementById('countNivel').textContent = progress.nivel;

    const totalQuestionsInTrail = trail.fases.reduce((acc, f) => acc + f.questions, 0);
    const totalDoneInTrail = trailProgress.questoes_respondidas || 0;
    const totalPct = Math.round((totalDoneInTrail / totalQuestionsInTrail) * 100) || 0;

    document.getElementById('totalPct').textContent = totalPct + '%';
    document.getElementById('statusMsg').textContent = `${totalDoneInTrail}/${totalQuestionsInTrail} questões completadas`;
    document.getElementById('totalProgressFill').style.width = totalPct + '%';

    const list = document.getElementById('phasesList');
    trail.fases.forEach((f, idx) => {
        const isFaseUnlocked = idx <= (trailProgress.fases_concluidas || 0);
        const faseProgress = (trailProgress.phases && trailProgress.phases[f.id]) || { questoes_concluidas: 0 };
        list.appendChild(renderFaseCard(f, trailId, isFaseUnlocked, faseProgress));
    });
});
