const db = new Database();

let currentQuestionIdx = 0;
let totalQuestions = 0;
let currentQuestion = null;
let trailId = 'html';
let phaseId = '1';
let user = null;
let progress = null;
let selectedOption = null;
let timer = null;
let cursoDbId = 10;
let timeLeft = 30;
let speedBonus = 0;
let hasAnswered = false;
let hintsUsed = 0;
let eliminateUsed = 0;
let isPaused = false;

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

async function loadProgress() {
    const p = await db.getProgress(user.id);
    if (p) progress = p;
    else progress = { moedas: 50, xp: 0, nivel: 1, dias_seguidos: 1, medalhas: 0, trilhas: {} };
    document.getElementById('currentCoins').textContent = progress.moedas;
}

async function fetchNextQuestion(useAutoOffset = false) {
    try {
        let url = `api/get_questoes.php?curso_id=${cursoDbId}&modulo_id=${phaseId}`;
        if (!useAutoOffset) {
            url += `&offset=${currentQuestionIdx}`;
        }
        const response = await fetch(url);
        const result = await response.json();
        if (result.success) {
            totalQuestions = result.total;
            currentQuestion = result.question;
            if (useAutoOffset && result.current_offset !== undefined) {
                currentQuestionIdx = result.current_offset;
            }
            renderQuestion();
        } else {
            finishPhase();
        }
    } catch (e) {
        alert("Erro ao carregar questão.");
    }
}

function showConfirm(title, message, iconHtml = '🪙') {
    return new Promise((resolve) => {
        isPaused = true;
        const modal = document.getElementById('confirmModal');
        document.getElementById('confirmTitle').textContent = title;
        document.getElementById('confirmMessage').textContent = message;
        document.getElementById('confirmIcon').innerHTML = iconHtml;
        modal.classList.add('active');
        const handleOk = () => { modal.classList.remove('active'); isPaused = false; cleanup(); resolve(true); };
        const handleCancel = () => { modal.classList.remove('active'); isPaused = false; cleanup(); resolve(false); };
        const cleanup = () => {
            document.getElementById('confirmOk').removeEventListener('click', handleOk);
            document.getElementById('confirmCancel').removeEventListener('click', handleCancel);
        };
        document.getElementById('confirmOk').addEventListener('click', handleOk);
        document.getElementById('confirmCancel').addEventListener('click', handleCancel);
    });
}

function startTimer() {
    clearInterval(timer);
    timeLeft = 30;
    speedBonus = 5;
    isPaused = false;
    updateTimerUI();
    timer = setInterval(() => {
        if (isPaused || hasAnswered) return;
        timeLeft--;
        if (timeLeft <= 0) { clearInterval(timer); timeoutAnswer(); }
        else if (timeLeft <= 5) speedBonus = 0;
        else if (timeLeft <= 10) speedBonus = 1;
        else if (timeLeft <= 20) speedBonus = 3;
        updateTimerUI();
    }, 1000);
}

async function timeoutAnswer() {
    if (hasAnswered) return;
    await processAnswer(-1);
    document.getElementById('qSub').innerHTML = '<span style="color:#ef4444; font-weight:700;">⏰ TEMPO ESGOTADO!</span>';
}

function updateTimerUI() {
    const timerEl = document.getElementById('timeLeft');
    const barEl = document.getElementById('timerBar');
    if (timerEl) timerEl.textContent = timeLeft + 's';
    if (barEl) barEl.style.width = (timeLeft / 30 * 100) + '%';
}

function renderQuestion() {
    const q = currentQuestion;
    selectedOption = null;
    hasAnswered = false;
    const hintEl = document.getElementById('hintText');
    if (hintEl) hintEl.style.display = 'none';
    
    // Configura botões (apenas habilita/desabilita)
    const hintBtn = document.getElementById('hintBtn');
    if (hintBtn) hintBtn.disabled = (hintsUsed >= 2);

    const eliminateBtn = document.getElementById('eliminateBtn');
    if (eliminateBtn) {
        eliminateBtn.disabled = (eliminateUsed >= 2);
        eliminateBtn.style.opacity = (eliminateUsed >= 2) ? '0.5' : '1';
    }

    document.getElementById('mainNextBtn').style.display = 'none';
    document.getElementById('actionButtons').style.display = 'flex';
    const ansBtn = document.getElementById('answerBtn');
    ansBtn.classList.remove('ready');
    ansBtn.disabled = false;
    const countEl = document.getElementById('questionCounter');
    const fillEl = document.getElementById('questionProgressFill');
    if (countEl) countEl.textContent = (currentQuestionIdx + 1) + '/' + totalQuestions;
    if (fillEl) fillEl.style.width = ((currentQuestionIdx + 1) / totalQuestions * 100) + '%';
    document.getElementById('qText').innerText = q.text;
    document.getElementById('qSub').innerText = q.sub;
    const list = document.getElementById('optionsList');
    list.innerHTML = '';
    q.options.forEach((opt, idx) => {
        const btn = document.createElement('button');
        btn.className = 'option-btn';
        btn.onclick = () => selectOption(idx, btn);
        const header = document.createElement('div');
        header.className = 'option-header';
        const check = document.createElement('div');
        check.className = 'option-check';
        const text = document.createElement('span');
        text.className = 'option-text';
        text.innerText = opt;
        header.appendChild(check);
        header.appendChild(text);
        btn.appendChild(header);
        const expDiv = document.createElement('div');
        expDiv.className = 'option-explanation';
        btn.appendChild(expDiv);
        list.appendChild(btn);
    });
    startTimer();
}

function selectOption(idx, btn) {
    if (hasAnswered) return;
    selectedOption = idx;
    document.querySelectorAll('.option-btn').forEach(b => b.classList.remove('selected'));
    btn.classList.add('selected');
    document.getElementById('answerBtn').classList.add('ready');
}

async function processAnswer(idx) {
    if (hasAnswered && idx !== -1) return;
    hasAnswered = true;
    clearInterval(timer);
    const q = currentQuestion;
    try {
        console.log("Enviando resposta para:", q.id, "Opcao:", idx);
        const response = await fetch('api/check_resposta.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ questao_id: q.id, opcao_index: idx, speed_bonus: speedBonus })
        });
        const result = await response.json();
        console.log("JSON recebido:", result);

        if (result.success) {
            const expText = result.explanation || "Informação geral do sistema.";
            const explanationLines = expText.split('\n');
            const btns = document.querySelectorAll('.option-btn');
            
            console.log("Botoes encontrados:", btns.length);
            btns.forEach((btn, bIdx) => {
                const exp = btn.querySelector('.option-explanation');
                const textSpan = btn.querySelector('.option-text');
                const optText = textSpan ? textSpan.innerText : '';
                
                if (exp && optText) {
                    const specificExp = explanationLines.find(line => 
                        line.toLowerCase().includes(optText.toLowerCase()) || 
                        (optText.length > 3 && line.toLowerCase().includes(optText.substring(0, 4).toLowerCase()))
                    );
                    exp.innerText = specificExp || 'Informação sobre este item.';
                    exp.style.display = 'block';
                }
                if (bIdx === result.correct_index) btn.classList.add('correct');
                else if (bIdx === idx) btn.classList.add('wrong');
            });

            console.log("Atualizando Moedas e XP");
            progress.moedas = result.new_moedas;
            progress.xp = result.new_xp;
            
            const currentCoinsEl = document.getElementById('currentCoins');
            if (currentCoinsEl) currentCoinsEl.textContent = progress.moedas;
            
            if (result.correct) {
                if (!progress.last_phase_correct) progress.last_phase_correct = 0;
                progress.last_phase_correct++;
            }
            
            console.log("Exibindo botão de avançar");
            document.getElementById('actionButtons').style.display = 'none';
            document.getElementById('mainNextBtn').style.display = 'flex';
        }
    } catch (e) {
        console.error("ERRO COMPLETO:", e);
        alert("Erro no frontend: " + e.message);
        hasAnswered = false;
    }
}

async function handleAnswer() { await processAnswer(selectedOption); }

async function handleHint() {
    if (hasAnswered) return;
    const q = currentQuestion;
    if (hintsUsed >= 2) return;
    if (progress.moedas < 5) { alert("Moedas insuficientes!"); return; }

    const lightbulbSvg = `<svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="#F5A623" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 18h6m-3-15a7 7 0 0 1 7 7c0 2.5-2 4.5-3 5.5s-1.5 2.5-1.5 3.5h-5c0-1-.5-2.5-1.5-3.5s-3-3-3-5.5a7 7 0 0 1 7-7z"/></svg>`;

    const confirmed = await showConfirm(
        "Usar Dica?", 
        `Gastar 5 moedas para ver uma pista? (Você tem ${2 - hintsUsed} rest.)`, 
        lightbulbSvg
    );

    if (confirmed) {
        progress.moedas -= 5;
        hintsUsed++;
        document.getElementById('currentCoins').textContent = progress.moedas;
        const hintEl = document.getElementById('hintText');
        const hintContent = document.getElementById('hintContent');
        if (hintEl && hintContent) {
            hintContent.textContent = q.dica || "Pense bem no significado inglês!";
            hintEl.style.display = 'block';
        }
        document.getElementById('hintBtn').disabled = true;
        await db.saveProgress({ moedas_ganhas: -5, xp_ganho: 0, nivel: progress.nivel, dias_seguidos: progress.dias_seguidos });
    }
}

async function handleEliminate() {
    if (hasAnswered) return;
    const q = currentQuestion;
    if (eliminateUsed >= 2) return;
    if (progress.moedas < 15) { alert("Moedas insuficientes!"); return; }

    const magicWandSvg = `<svg width="64" height="64" viewBox="0 0 24 24" fill="none" stroke="#7c3aed" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 4l6 6m-11 7l-5 5m7-11l11-11m-14 7l-2-2m-3 5l2 2m12 12l2 2"/></svg>`;

    const confirmed = await showConfirm(
        "Eliminar 2?", 
        `Gastar 15 moedas para riscar duas alternativas incorretas? (Você tem ${2 - eliminateUsed} rest.)`, 
        magicWandSvg
    );

    if (confirmed) {
        try {
            const response = await fetch('api/get_wrong_options.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ questao_id: q.id })
            });
            const result = await response.json();
            if (result.success) {
                progress.moedas -= 15;
                eliminateUsed++;
                document.getElementById('currentCoins').textContent = progress.moedas;
                document.getElementById('eliminateBtn').disabled = true;
                const btns = document.querySelectorAll('.option-btn');
                const toHide = result.eliminate;
                btns.forEach((btn, idx) => {
                    if (toHide.includes(idx)) {
                        btn.style.opacity = '0.2';
                        btn.style.pointerEvents = 'none';
                        btn.querySelector('.option-text').style.textDecoration = 'line-through';
                    }
                });
                await db.saveProgress({ moedas_ganhas: -15, xp_ganho: 0, nivel: progress.nivel, dias_seguidos: progress.dias_seguidos });
            }
        } catch (e) { alert("Erro ao usar varinha mágica."); }
    }
}

function nextQuestion() { currentQuestionIdx++; fetchNextQuestion(); }

async function finishPhase() {
    const correctAnswers = progress.last_phase_correct || 0;
    const scorePct = Math.round((correctAnswers / totalQuestions) * 100);
    const passed = scorePct >= 70;
    const totalPhaseMoedas = passed ? 25 : 5;
    const totalPhaseXP = passed ? 50 : 10;
    await db.saveProgress({ curso_id: cursoDbId, modulo_ordem: phaseId, moedas_ganhas: totalPhaseMoedas, xp_ganho: totalPhaseXP, nivel: progress.nivel, dias_seguidos: progress.dias_seguidos });
    document.getElementById('summaryTitle').textContent = passed ? 'Fase Concluída!' : 'Tente Novamente';
    document.getElementById('summaryCoins').textContent = `+${totalPhaseMoedas}`;
    document.getElementById('summaryXP').textContent = `+${totalPhaseXP}`;
    document.getElementById('summaryOverlay').classList.add('active');
}

document.addEventListener('DOMContentLoaded', async () => {
    user = checkAuth(); if (!user) return;
    await loadProgress(); window.applyTheme();
    const params = new URLSearchParams(window.location.search);
    trailId = params.get('trail') || 'html'; phaseId = params.get('phase') || '1';
    const trailToId = { 
        'html': 10, 'css': 11, 'javascript': 12, 'logica': 13, 
        'php': 14, 'mysql': 15, 'python': 16, 'c': 17, 'java': 18 
    };
    cursoDbId = trailToId[trailId] || 10;
    progress.last_phase_correct = 0;
    await fetchNextQuestion(true); // Carga inicial com checkpoint automático
    document.getElementById('answerBtn').addEventListener('click', handleAnswer);
    document.getElementById('mainNextBtn').addEventListener('click', nextQuestion);
    document.getElementById('hintBtn').addEventListener('click', handleHint);
    document.getElementById('eliminateBtn').addEventListener('click', handleEliminate);
});
