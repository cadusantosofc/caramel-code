const db = new Database();

async function loadSettingsFromDb(userId) {
    return await db.getSettings(userId);
}

async function saveSettingsToDb(userId, settings) {
    await db.saveSettings(userId, settings);
}

function applyTheme(dark) {
    if (dark) {
        document.body.classList.add('dark-mode');
    } else {
        document.body.classList.remove('dark-mode');
    }
}

function bindToggle(id, settingKey, settings, userId) {
    const btn = document.getElementById(id);
    if (!btn) return;

    if (settings[settingKey]) btn.classList.add('on');
    else btn.classList.remove('on');

    btn.addEventListener('click', async function () {
        const isOn = btn.classList.toggle('on');
        settings[settingKey] = isOn;
        await saveSettingsToDb(userId, settings);

        if (settingKey === 'darkMode') applyTheme(isOn);
    });
}

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

function loadAppVersion() {
    const el = document.getElementById('appVersion');
    if (!el) return;

    if (window.location.protocol === 'file:') {
        // Abrindo diretamente do sistema de arquivos não permite fetch CORS em alguns navegadores.
        el.textContent = window.APP_VERSION || 'local';
        return;
    }

    fetch('version.json')
        .then(resp => {
            if (!resp.ok) throw new Error('Versão não encontrada');
            return resp.json();
        })
        .then(data => {
            if (data && typeof data.version === 'string') {
                el.textContent = data.version;
            }
        })
        .catch(() => {
            el.textContent = 'indisponível';
        });
}

document.addEventListener('DOMContentLoaded', async function () {
    const user = checkAuth();
    if (!user) return;

    loadAppVersion();

    const settings = await loadSettingsFromDb(user.id);
    applyTheme(settings.darkMode);

    bindToggle('toggleDark', 'darkMode', settings, user.id);
    bindToggle('toggleAnimations', 'reduceAnimations', settings, user.id);
    bindToggle('toggleNotif', 'notificacoes', settings, user.id);
    bindToggle('toggleLembrete', 'lembrete', settings, user.id);
    bindToggle('toggleConquistas', 'conquistas', settings, user.id);
    bindToggle('toggleEmail', 'emailRelatorio', settings, user.id);
    bindToggle('toggleSons', 'sons', settings, user.id);
    bindToggle('toggleVibracao', 'vibracao', settings, user.id);
    bindToggle('toggleAutoSave', 'autoSave', settings, user.id);

    document.getElementById('exportBtn').addEventListener('click', function () {
        db.backup();
    });

    document.getElementById('logoutBtn').addEventListener('click', function () {
        if (confirm('Deseja sair da sua conta?')) {
            localStorage.removeItem('caramel_user');
            window.location.href = 'login.html';
        }
    });
});
