const db = new Database();

let currentQuestionIdx = 0;
let questions = [];
let trailId = 'html';
let phaseId = '1';
let user = null;
let progress = null;
let selectedOption = null;
let timer = null;
let timeLeft = 15;
let speedBonus = 0;
let lastAnswers = []; // Para revisão final

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

async function getUserProgress(userId) {
    return await db.getProgress(userId);
}

function startTimer() {
    clearInterval(timer);
    timeLeft = 15;
    speedBonus = 5;
    updateTimerUI();

    timer = setInterval(() => {
        timeLeft--;
        if (timeLeft > 10) speedBonus = 5;
        else if (timeLeft > 5) speedBonus = 3;
        else if (timeLeft > 0) speedBonus = 1;
        else speedBonus = 0;

        updateTimerUI();
        if (timeLeft <= 0) {
            clearInterval(timer);
        }
    }, 1000);
}

function updateTimerUI() {
    const el = document.getElementById('timeLeft');
    const bar = document.getElementById('timerBar');
    if (el) el.textContent = timeLeft + 's';
    if (bar) bar.style.width = ((timeLeft / 15) * 100) + '%';
}

function renderQuestion() {
    const q = questions[currentQuestionIdx];
    selectedOption = null;
    const ansBtn = document.getElementById('answerBtn');
    if (ansBtn) ansBtn.classList.remove('ready');

    const countEl = document.getElementById('questionCounter');
    const fillEl = document.getElementById('questionProgressFill');
    if (countEl) countEl.textContent = (currentQuestionIdx + 1) + '/' + questions.length;
    if (fillEl) fillEl.style.width = ((currentQuestionIdx + 1) / questions.length * 100) + '%';

    document.getElementById('qText').innerText = q.text;
    document.getElementById('qSub').innerText = q.sub;

    const list = document.getElementById('optionsList');
    list.innerHTML = '';

    // Embaralhar opções com rastreamento do índice original
    const optionsWithIndices = q.options.map((opt, idx) => ({ option: opt, originalIndex: idx }));
    optionsWithIndices.sort(() => Math.random() - 0.5);

    optionsWithIndices.forEach((item) => {
        const btn = document.createElement('button');
        btn.className = 'option-btn';

        const check = document.createElement('div');
        check.className = 'option-check';

        const text = document.createElement('span');
        text.className = 'option-text';
        text.innerText = item.option; // Segurança contra tags HTML nas opções

        btn.appendChild(check);
        btn.appendChild(text);

        btn.onclick = () => {
            selectedOption = item.originalIndex; // Armazena o índice original da resposta correta
            document.querySelectorAll('.option-btn').forEach(b => b.classList.remove('selected'));
            btn.classList.add('selected');
            if (ansBtn) ansBtn.classList.add('ready');
        };
        list.appendChild(btn);
    });

    startTimer();
}

function handleAnswer() {
    if (selectedOption === null) return;
    clearInterval(timer);

    const q = questions[currentQuestionIdx];
    if (!q) return;
    const isCorrect = selectedOption === q.correct;

    if (isCorrect) {
        document.getElementById('explanationCorrect').textContent = q.explanation;
        document.getElementById('speedBonusCorrect').textContent = `+${speedBonus} velocidade`;
        document.getElementById('feedbackCorrect').classList.add('active');

        progress.moedas += (10 + speedBonus);
        progress.xp += 15;
        progress.questoes_corretas++;
        progress.last_phase_correct = (progress.last_phase_correct || 0) + 1;
    } else {
        document.getElementById('explanationWrong').textContent = q.explanation;
        document.getElementById('feedbackWrong').classList.add('active');
    }

    lastAnswers.push({
        question: q.text,
        userAnswer: q.options[selectedOption],
        correctAnswer: q.options[q.correct],
        isCorrect: isCorrect
    });

    progress.questoes_respondidas++;

    if (progress.moedas < 10 && !progress.last_empty_coins) {
        progress.last_empty_coins = Date.now();
    }

    db.saveProgress(user.id, progress);

    const coinEl = document.getElementById('currentCoins');
    if (coinEl) coinEl.textContent = progress.moedas;
}

function nextQuestion() {
    document.getElementById('feedbackCorrect').classList.remove('active');
    document.getElementById('feedbackWrong').classList.remove('active');

    currentQuestionIdx++;
    if (currentQuestionIdx < questions.length) {
        renderQuestion();
    } else {
        finishPhase();
    }
}

function escapeHtml(text) {
    if (text === null || text === undefined) return '';
    return String(text)
        .replace(/&/g, '&amp;')
        .replace(/</g, '&lt;')
        .replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;')
        .replace(/'/g, '&#39;');
}

function finishPhase() {
    const totalQuestions = questions.length;
    const correctAnswers = progress.last_phase_correct || 0;
    const scorePct = Math.round((correctAnswers / totalQuestions) * 100);
    const passed = scorePct >= 70;

    const totalPhaseMoedas = passed ? 25 : 5;
    const totalPhaseXP = passed ? 50 : 10;

    progress.moedas += totalPhaseMoedas;
    progress.xp += totalPhaseXP;

    if (progress.moedas >= 10) {
        progress.last_empty_coins = null;
    }

    if (passed) {
        if (!progress.trilhas) progress.trilhas = {};
        if (!progress.trilhas[trailId]) progress.trilhas[trailId] = { fases_concluidas: 0, questoes_respondidas: 0, phases: {} };

        const tProg = progress.trilhas[trailId];
        if (!tProg.phases) tProg.phases = {};

        const currentPhaseNumber = parseInt(phaseId, 10);
        const maxPhase = currentPhaseNumber || 1;
        if (currentPhaseNumber > (tProg.fases_concluidas || 0) + 1) {
            console.warn('Progressão inválida detectada no finishPhase:', phaseId);
            // não salvar progresso inválido
            const blockedOverlayEl = document.getElementById('blockedOverlay');
            if (blockedOverlayEl) blockedOverlayEl.classList.add('active');

            const blockedMessageEl = document.getElementById('blockedMessage');
            if (blockedMessageEl) blockedMessageEl.textContent = 'Progresso inválido detectado. Você será redirecionado ao curso principal.';

            const blockedOkBtnEl = document.getElementById('blockedOkBtn');
            if (blockedOkBtnEl) {
                blockedOkBtnEl.addEventListener('click', () => window.location.href = `course.html?trail=${trailId}`);
            }

            return;
        }

        const pProg = tProg.phases[phaseId] || { questoes_concluidas: 0 };

        if (pProg.questoes_concluidas < totalQuestions) {
            if (!tProg.phases[phaseId]) tProg.fases_concluidas++;
            tProg.questoes_respondidas += (totalQuestions - pProg.questoes_concluidas);
        }

        pProg.questoes_concluidas = totalQuestions;
        tProg.phases[phaseId] = pProg;
    }

    db.saveProgress(user.id, progress);

    const title = passed ? 'Parabéns! Você passou!' : 'Quase lá! Continue estudando';
    const sub = passed ? `Você acertou ${scorePct}% e liberou o próximo módulo!` : `Você acertou ${scorePct}%. Precisa de 70% para liberar o próximo nível.`;

    document.getElementById('summaryTitle').textContent = title;
    document.getElementById('summarySub').textContent = sub;
    document.getElementById('summaryCoins').textContent = `+${totalPhaseMoedas}`;
    document.getElementById('summaryXP').textContent = `+${totalPhaseXP}`;

    const reviewList = lastAnswers.map(ans => {
        const questionText = escapeHtml(ans.question);
        const userAnswerText = escapeHtml(ans.userAnswer);
        const correctAnswerText = escapeHtml(ans.correctAnswer);
        const border = ans.isCorrect ? '#22c55e' : '#ef4444';

        return `
        <div style="text-align:left; background:rgba(0,0,0,0.03); border-radius:12px; padding:12px; margin-bottom:10px; border-left:4px solid ${border};">
            <div style="font-size:13px; font-weight:700; color:var(--text-primary); margin-bottom:4px;">${questionText}</div>
            <div style="font-size:12px; color:${ans.isCorrect ? '#166534' : '#991b1b'};">Sua resposta: ${userAnswerText}</div>
            ${!ans.isCorrect ? `<div style="font-size:12px; color:#166534; font-weight:600;">Correta: ${correctAnswerText}</div>` : ''}
        </div>
        `;
    }).join('');

    const reviewContainer = document.createElement('div');
    reviewContainer.id = 'reviewContainer';
    reviewContainer.style = "width:100%; max-height:200px; overflow-y:auto; margin: 20px 0; padding-right:5px;";
    reviewContainer.innerHTML = `<div style="font-size:14px; font-weight:800; margin-bottom:12px; text-align:left;">Revisão da Fase:</div>` + reviewList;

    const oldReview = document.getElementById('reviewContainer');
    if (oldReview) oldReview.remove();

    const continueBtn = document.querySelector('.continue-btn');
    continueBtn.parentNode.insertBefore(reviewContainer, continueBtn);

    document.getElementById('summaryOverlay').classList.add('active');
}

document.addEventListener('DOMContentLoaded', async () => {
    user = checkAuth();
    if (!user) return;

    const params = new URLSearchParams(window.location.search);
    trailId = params.get('trail') || 'html';
    phaseId = params.get('phase') || '1';

    questions = (window.QUESTIONS_DB && window.QUESTIONS_DB[trailId] && window.QUESTIONS_DB[trailId][phaseId]) || [];

    // Embaralhar questões (Shuffle)
    questions = questions.sort(() => Math.random() - 0.5);

    if (questions.length === 0) {
        alert('Fase não encontrada.');
        history.back();
        return;
    }

    progress = await db.getProgress(user.id);

    // Bloquear acesso direto à fase via URL (somente fases liberadas)
    const trailProg = (progress.trilhas && progress.trilhas[trailId]) || { fases_concluidas: 0, phases: {} };
    const unlockedPhase = (trailProg.fases_concluidas || 0) + 1;
    const requestedPhase = parseInt(phaseId, 10) || 1;

    if (requestedPhase > unlockedPhase) {
        const blockedOverlay = document.getElementById('blockedOverlay');
        const blockedMessage = document.getElementById('blockedMessage');
        const blockedOkBtn = document.getElementById('blockedOkBtn');

        if (blockedMessage) blockedMessage.textContent = 'Essa fase ainda está bloqueada. Você será redirecionado ao curso principal.';

        if (blockedOverlay) {
            blockedOverlay.classList.add('active');
        }

        if (blockedOkBtn) {
            blockedOkBtn.onclick = () => {
                if (blockedOverlay) blockedOverlay.classList.remove('active');
                window.location.href = `course.html?trail=${trailId}`;
            };
        }

        return;
    }

    // Proteção extra: a fase atual deve ser no máximo a primeira não completada +1
    const realMaxPhase = unlockedPhase;
    if (parseInt(phaseId, 10) > realMaxPhase) {
        console.warn('Tentativa de acesso a fase inválida detectada:', phaseId);
        window.location.href = `course.html?trail=${trailId}`;
        return;
    }

    phaseId = String(requestedPhase);

    progress.last_phase_correct = 0; // Reset acertos da fase
    db.saveProgress(user.id, progress); // Salva o estado inicial
    document.getElementById('currentCoins').textContent = progress.moedas;

    // Set Phase Title (Simple mock)
    const titles = {
        '1': 'Fundamentos e Sintaxe',
        '2': 'Cabeçalho e Metadados',
        '3': 'Corpo e Estrutura',
        '4': 'Textos e Parágrafos',
        '5': 'Listas e Navegação'
    };
    const pTitle = titles[phaseId] || 'Módulo ' + phaseId;
    document.getElementById('phaseTitle').innerText = pTitle;

    renderQuestion();

    document.getElementById('answerBtn').onclick = handleAnswer;
    document.getElementById('nextBtnCorrect').onclick = nextQuestion;
    document.getElementById('nextBtnWrong').onclick = nextQuestion;
    document.getElementById('retryBtn').onclick = () => {
        document.getElementById('feedbackWrong').classList.remove('active');
        renderQuestion();
    };

    document.getElementById('hintBtn').onclick = () => {
        if (progress.moedas >= 5) {
            progress.moedas -= 5;
            document.getElementById('currentCoins').textContent = progress.moedas;
            db.saveProgress(user.id, progress);
            alert('Dica: ' + questions[currentQuestionIdx].explanation.substring(0, 50) + '...');
        } else {
            alert('Moedas insuficientes!');
        }
    };
});
