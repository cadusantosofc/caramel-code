(function () {
    function getSettings() {
        try { return JSON.parse(localStorage.getItem('caramel_settings') || '{}'); }
        catch (e) { return {}; }
    }

    var s = getSettings();

    if (s.darkMode) {
        document.documentElement.classList.add('dark');
        document.body.classList.add('dark');
    }

    if (s.reduceAnimations) {
        document.documentElement.classList.add('no-animations');
    }
})();
