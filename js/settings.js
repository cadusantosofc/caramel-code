const SETTINGS_KEY = 'caramel_settings';

function loadSettings() {
    try { return JSON.parse(localStorage.getItem(SETTINGS_KEY) || '{}'); }
    catch (e) { return {}; }
}

function saveSettings(settings) {
    localStorage.setItem(SETTINGS_KEY, JSON.stringify(settings));
}

function applyTheme(dark) {
    if (dark) {
        document.documentElement.classList.add('dark');
        document.body.classList.add('dark');
    } else {
        document.documentElement.classList.remove('dark');
        document.body.classList.remove('dark');
    }
}

function bindToggle(id, settingKey, settings) {
    const btn = document.getElementById(id);
    if (!btn) return;

    if (settings[settingKey]) btn.classList.add('on');
    else btn.classList.remove('on');

    btn.addEventListener('click', function () {
        const isOn = btn.classList.toggle('on');
        settings[settingKey] = isOn;
        saveSettings(settings);

        if (settingKey === 'darkMode') applyTheme(isOn);
    });
}

function checkAuth() {
    const raw = localStorage.getItem('caramel_user');
    if (!raw) { window.location.href = 'login.html'; return null; }
    try { return JSON.parse(raw); } catch (e) { window.location.href = 'login.html'; return null; }
}

document.addEventListener('DOMContentLoaded', function () {
    const user = checkAuth();
    if (!user) return;

    const settings = loadSettings();
    applyTheme(settings.darkMode);

    bindToggle('toggleDark', 'darkMode', settings);
    bindToggle('toggleAnimations', 'reduceAnimations', settings);
    bindToggle('toggleNotif', 'notificacoes', settings);
    bindToggle('toggleLembrete', 'lembrete', settings);
    bindToggle('toggleConquistas', 'conquistas', settings);
    bindToggle('toggleEmail', 'emailRelatorio', settings);
    bindToggle('toggleSons', 'sons', settings);
    bindToggle('toggleVibracao', 'vibracao', settings);
    bindToggle('toggleAutoSave', 'autoSave', settings);

    document.getElementById('exportBtn').addEventListener('click', function () {
        const db = new Database();
        db.backup();
    });

    document.getElementById('logoutBtn').addEventListener('click', function () {
        if (confirm('Deseja sair da sua conta?')) {
            localStorage.removeItem('caramel_user');
            window.location.href = 'login.html';
        }
    });
});
