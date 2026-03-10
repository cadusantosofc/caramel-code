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

function getProgress(userId) {
    const key = 'caramel_progress_' + userId;
    const raw = localStorage.getItem(key);
    let p = { moedas: 100, dias_seguidos: 1, nivel: 1, xp: 0, medalhas: 0, questoes_respondidas: 0, questoes_corretas: 0, total_questoes: 100, trilhas: {}, last_empty_coins: null };
    
    if (raw) { 
        try { 
            p = JSON.parse(raw); 
            // Lógica de Regeneração: 2 horas (7200000 ms)
            if (p.moedas < 10 && p.last_empty_coins) {
                const now = Date.now();
                const diff = now - p.last_empty_coins;
                if (diff >= 7200000) { // 2 horas
                    p.moedas = 100;
                    p.last_empty_coins = null;
                    localStorage.setItem(key, JSON.stringify(p));
                    console.log('🪙 Moedas regeneradas após 2 horas!');
                }
            }
        } catch (e) {} 
    } else {
        localStorage.setItem(key, JSON.stringify(p));
    }
    return p;
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
    
    q.options.forEach((opt, idx) => {
        const btn = document.createElement('button');
        btn.className = 'option-btn';
        
        const check = document.createElement('div');
        check.className = 'option-check';
        
        const text = document.createElement('span');
        text.className = 'option-text';
        text.innerText = opt; // Segurança contra tags HTML nas opções
        
        btn.appendChild(check);
        btn.appendChild(text);

        btn.onclick = () => {
            selectedOption = idx;
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
    const isCorrect = selectedOption === q.correct;

    if (isCorrect) {
        document.getElementById('explanationCorrect').textContent = q.explanation;
        document.getElementById('speedBonusCorrect').textContent = `+${speedBonus} velocidade`;
        document.getElementById('feedbackCorrect').classList.add('active');
        
        // Update stats
        progress.moedas += (10 + speedBonus);
        progress.xp += 15;
        progress.questoes_corretas++;
        progress.last_phase_correct = (progress.last_phase_correct || 0) + 1;
    } else {
        document.getElementById('explanationWrong').textContent = q.explanation;
        document.getElementById('feedbackWrong').classList.add('active');
    } 
    
    // Salva para revisão
    lastAnswers.push({
        question: q.text,
        userAnswer: q.options[selectedOption],
        correctAnswer: q.options[q.correct],
        isCorrect: isCorrect
    });

    progress.questoes_respondidas++;

    // Registra se ficou sem moedas para o timer de 2 horas
    if (progress.moedas < 10 && !progress.last_empty_coins) {
        progress.last_empty_coins = Date.now();
    }
    
    db.saveProgress(user.id, progress);
    
    // Atualiza moedas no topo em tempo real
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

function finishPhase() {
    const totalQuestions = questions.length;
    const correctAnswers = progress.last_phase_correct || 0;
    const scorePct = Math.round((correctAnswers / totalQuestions) * 100);
    const passed = scorePct >= 70;

    const totalPhaseMoedas = passed ? 25 : 5;
    const totalPhaseXP = passed ? 50 : 10;

    progress.moedas += totalPhaseMoedas;
    progress.xp += totalPhaseXP;

    // Se ganhou moedas e saiu do estado crítico, limpa o timer de regeneração
    if (progress.moedas >= 10) {
        progress.last_empty_coins = null;
    }

    // Atualiza progresso da trilha apenas se passou (70%+)
    if (passed) {
        if (!progress.trilhas) progress.trilhas = {};
        if (!progress.trilhas[trailId]) progress.trilhas[trailId] = { fases_concluidas: 0, questoes_respondidas: 0, phases: {} };
        
        const tProg = progress.trilhas[trailId];
        if (!tProg.phases) tProg.phases = {};
        
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
    
    // Atualiza os valores visuais do resumo
    document.getElementById('summaryCoins').textContent = `+${totalPhaseMoedas}`;
    document.getElementById('summaryXP').textContent = `+${totalPhaseXP}`;
    
    // Gera Revisão Detalhada
    const reviewList = lastAnswers.map(ans => `
        <div style="text-align:left; background:rgba(0,0,0,0.03); border-radius:12px; padding:12px; margin-bottom:10px; border-left:4px solid ${ans.isCorrect ? '#22c55e' : '#ef4444'};">
            <div style="font-size:13px; font-weight:700; color:var(--text-primary); margin-bottom:4px;">${ans.question}</div>
            <div style="font-size:12px; color:${ans.isCorrect ? '#166534' : '#991b1b'};">Sua resposta: ${ans.userAnswer}</div>
            ${!ans.isCorrect ? `<div style="font-size:12px; color:#166534; font-weight:600;">Correta: ${ans.correctAnswer}</div>` : ''}
        </div>
    `).join('');

    const reviewContainer = document.createElement('div');
    reviewContainer.id = 'reviewContainer';
    reviewContainer.style = "width:100%; max-height:200px; overflow-y:auto; margin: 20px 0; padding-right:5px;";
    reviewContainer.innerHTML = `<div style="font-size:14px; font-weight:800; margin-bottom:12px; text-align:left;">Revisão da Fase:</div>` + reviewList;
    
    // Remove revisão anterior se existir
    const oldReview = document.getElementById('reviewContainer');
    if (oldReview) oldReview.remove();
    
    // Insere antes do botão continuar
    const continueBtn = document.querySelector('.continue-btn');
    continueBtn.parentNode.insertBefore(reviewContainer, continueBtn);

    document.getElementById('summaryOverlay').classList.add('active');
}

document.addEventListener('DOMContentLoaded', () => {
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

    progress = getProgress(user.id);
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
