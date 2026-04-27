(function () {
    function getSettings() {
        try { return JSON.parse(localStorage.getItem('caramel_settings') || '{}'); }
        catch (e) { return {}; }
    }

    var s = getSettings();

    function applyTheme(dark) {
        if (dark) {
            document.documentElement.classList.add('dark');
            if (document.body) document.body.classList.add('dark');
            else document.addEventListener('DOMContentLoaded', () => document.body.classList.add('dark'));
        } else {
            document.documentElement.classList.remove('dark');
            if (document.body) document.body.classList.remove('dark');
        }
    }

    var s = getSettings();
    applyTheme(s.darkMode);

    if (s.reduceAnimations) {
        document.documentElement.classList.add('no-animations');
    }

    window.applyTheme = applyTheme;
})();
