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
    return { moedas: 50, dias_seguidos: 1, nivel: 1, xp: 0, medalhas: 0, questoes_respondidas: 0, questoes_corretas: 0, total_questoes: 50 };
}

function renderView(user, progress) {
    const initials = user.nome.split(' ').map(n => n[0]).join('').substring(0, 2).toUpperCase();
    document.getElementById('avatarCircle').textContent = initials;
    document.getElementById('profileName').textContent = user.nome;
    document.getElementById('profileEmail').textContent = user.email;
    document.getElementById('profileLevel').textContent = 'Nível ' + progress.nivel;
    document.getElementById('profileMedalhas').textContent = progress.medalhas + ' medalhas';
    document.getElementById('statMoedas').textContent = progress.moedas;
    document.getElementById('statDias').textContent = progress.dias_seguidos;
    document.getElementById('statXP').textContent = progress.xp;

    const precisao = progress.questoes_respondidas > 0
        ? ((progress.questoes_corretas / progress.questoes_respondidas) * 100).toFixed(1) + '%'
        : '0%';
    document.getElementById('statPrecisao').textContent = precisao;

    const data = new Date(user.data_cadastro || Date.now());
    document.getElementById('memberSince').textContent = data.toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit', year: 'numeric' });
}

function renderEditForm(user) {
    const initials = user.nome.split(' ').map(n => n[0]).join('').substring(0, 2).toUpperCase();
    document.getElementById('editAvatarCircle').textContent = initials;
    document.getElementById('editName').value = user.nome;
    document.getElementById('editEmail').value = user.email;
}

let editMode = false;

function toggleEdit(user) {
    editMode = !editMode;
    document.getElementById('viewMode').style.display = editMode ? 'none' : '';
    document.getElementById('editMode').style.display = editMode ? '' : 'none';
    document.getElementById('editToggleBtn').innerHTML = editMode
        ? '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg> Cancelar'
        : '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"/></svg> Editar';

    if (editMode) renderEditForm(user);
}

function saveProfile(user) {
    const nome = document.getElementById('editName').value.trim();
    const email = document.getElementById('editEmail').value.trim();
    const senha = document.getElementById('editPassword').value;

    if (!nome || nome.length < 2) { alert('Nome inválido.'); return; }
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) { alert('E-mail inválido.'); return; }

    const dbData = db.getData();
    const idx = dbData.usuarios.findIndex(u => u.id === user.id);
    if (idx === -1) return;

    dbData.usuarios[idx].nome = nome;
    dbData.usuarios[idx].email = email;
    if (senha && senha.length >= 6) dbData.usuarios[idx].senha = senha;
    db.saveData(dbData);

    const updatedUser = { ...user, nome, email };
    delete updatedUser.senha;
    localStorage.setItem('caramel_user', JSON.stringify(updatedUser));

    const progress = getProgress(user.id);
    renderView(updatedUser, progress);
    toggleEdit(updatedUser);
}

function applyTheme() {
    const settings = JSON.parse(localStorage.getItem('caramel_settings') || '{}');
    if (settings.darkMode) document.body.classList.add('dark');
}

document.addEventListener('DOMContentLoaded', function () {
    applyTheme();
    const user = checkAuth();
    if (!user) return;

    const progress = getProgress(user.id);
    renderView(user, progress);

    document.getElementById('editToggleBtn').addEventListener('click', function () { toggleEdit(user); });
    document.getElementById('saveProfileBtn').addEventListener('click', function () { saveProfile(user); });
});
