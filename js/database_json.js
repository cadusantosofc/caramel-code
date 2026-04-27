class Database {
    constructor() {}

    async request(url, options = {}) {
        try {
            const response = await fetch(url, { credentials: 'same-origin', ...options });
            if (response.status === 401) {
                localStorage.removeItem('caramel_user');
                window.location.href = 'login.html';
                return null;
            }
            return response;
        } catch (error) {
            console.error('Network error:', error);
            return null;
        }
    }

    async validateLogin(email, senha) {
        const response = await fetch('api/login.php', {
            method: 'POST',
            credentials: 'same-origin',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email, senha })
        });
        if (!response) return null;
        const result = await response.json();
        return result.success ? result.user : null;
    }

    async getUserByEmail(email) {
        const response = await fetch(`api/get_user_by_email.php?email=${encodeURIComponent(email)}`);
        if (!response) return { exists: false };
        return await response.json();
    }

    async createUser(userData) {
        const response = await fetch('api/register.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(userData)
        });
        if (!response) throw new Error('Erro de conexão');
        const result = await response.json();
        if (result.success) return result.user;
        throw new Error(result.message || 'Erro ao cadastrar');
    }

    async getCursos() {
        const response = await this.request('api/get_cursos.php');
        if (!response) return [];
        return await response.json();
    }

    async getMatriculas() {
        const response = await this.request('api/get_matriculas.php');
        if (!response) return [];
        return await response.json();
    }

    async createMatricula(cursoId) {
        const response = await this.request('api/create_matricula.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ curso_id: cursoId })
        });
        if (!response) throw new Error('Erro de conexão');
        const result = await response.json();
        if (result.success) return result;
        throw new Error(result.message);
    }

    validateProgress(progressData) {
        if (!progressData || typeof progressData !== 'object') return false;
        if (typeof progressData.moedas !== 'number' || typeof progressData.xp !== 'number') return false;
        if (progressData.moedas < 0 || progressData.xp < 0) return false;
        if (!progressData.trilhas || typeof progressData.trilhas !== 'object') return false;
        for (const trailId in progressData.trilhas) {
            const trail = progressData.trilhas[trailId];
            if (!trail || typeof trail !== 'object') return false;
            if (typeof trail.fases_concluidas !== 'number' || trail.fases_concluidas < 0) return false;
            if (typeof trail.questoes_respondidas !== 'number' || trail.questoes_respondidas < 0) return false;
            if (!trail.phases || typeof trail.phases !== 'object') return false;
            for (const phaseKey in trail.phases) {
                const phase = trail.phases[phaseKey];
                if (!phase || typeof phase !== 'object') return false;
                if (typeof phase.questoes_concluidas !== 'number' || phase.questoes_concluidas < 0) return false;
            }
        }
        return true;
    }

    async saveProgress(userId, progressData) {
        const response = await this.request('api/save_progresso.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(progressData)
        });
        if (!response) return false;
        const result = await response.json();
        return result.success;
    }

    async getProgress(userId) {
        const response = await this.request('api/get_progresso.php');
        if (!response) return null;
        return await response.json();
    }

    async saveSettings(userId, settings) {
        const response = await this.request('api/save_settings.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ settings })
        });
        if (!response) return false;
        const result = await response.json();
        if (result.success) {
            localStorage.setItem('caramel_settings', JSON.stringify(settings));
        }
        return result.success;
    }

    async getSettings(userId) {
        const response = await this.request('api/get_settings.php');
        if (!response) {
            const cached = localStorage.getItem('caramel_settings');
            return cached ? JSON.parse(cached) : { darkMode: false };
        }
        const settings = await response.json();
        localStorage.setItem('caramel_settings', JSON.stringify(settings));
        return settings;
    }

    async updateUser(userData) {
        const response = await this.request('api/update_profile.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(userData)
        });
        if (!response) return { success: false, message: 'Erro de conexão' };
        return await response.json();
    }

    async getStats() {
        const response = await this.request('api/get_stats.php');
        if (!response) return {};
        return await response.json();
    }
}

window.Database = Database;
