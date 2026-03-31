// Sistema de Banco de Dados JSON - Caramel Code
// Usa localStorage como banco de dados

class Database {
    constructor() {
        this.initDatabase();
    }

    initDatabase() {
        // Inicializar banco se não existir
        if (!localStorage.getItem('caramel_database')) {
            const initialData = {
                usuarios: [
                    {
                        id: 1,
                        nome: 'Administrador',
                        email: 'admin@caramel.com',
                        senha: '123456',
                        tipo: 'admin',
                        status: 'ativo',
                        data_cadastro: new Date().toISOString(),
                        ultimo_login: null
                    }
                ],
                cursos: [
                    {
                        id: 1,
                        titulo: 'HTML e CSS para Iniciantes',
                        descricao: 'Aprenda os fundamentos de HTML e CSS para criar suas primeiras páginas web',
                        categoria: 'Programação',
                        nivel: 'basico',
                        duracao_horas: 20,
                        status: 'ativo',
                        admin_id: 1,
                        created_at: new Date().toISOString()
                    },
                    {
                        id: 2,
                        titulo: 'JavaScript Moderno',
                        descricao: 'Domine JavaScript ES6+ e crie aplicações web interativas',
                        categoria: 'Programação',
                        nivel: 'intermediario',
                        duracao_horas: 40,
                        status: 'ativo',
                        admin_id: 1,
                        created_at: new Date().toISOString()
                    },
                    {
                        id: 3,
                        titulo: 'UI/UX Design Fundamentos',
                        descricao: 'Conceitos essenciais de design de interfaces e experiência do usuário',
                        categoria: 'Design',
                        nivel: 'basico',
                        duracao_horas: 15,
                        status: 'ativo',
                        admin_id: 1,
                        created_at: new Date().toISOString()
                    }
                ],
                aulas: [
                    { id: 1, curso_id: 1, titulo: 'Aula 1: Introdução ao HTML', conteudo: '<h2>O que é HTML?</h2><p>HTML é a linguagem básica para criar páginas web...</p>', ordem: 1 },
                    { id: 2, curso_id: 1, titulo: 'Aula 2: Estrutura Básica', conteudo: '<h2>Estrutura de um documento HTML</h2><p>Todo documento HTML tem uma estrutura básica...</p>', ordem: 2 },
                    { id: 3, curso_id: 1, titulo: 'Aula 3: Tags Essenciais', conteudo: '<h2>Tags mais importantes</h2><p>Conheça as tags fundamentais do HTML...</p>', ordem: 3 },
                    { id: 4, curso_id: 1, titulo: 'Aula 4: CSS Básico', conteudo: '<h2>Introdução ao CSS</h2><p>CSS serve para estilizar suas páginas...</p>', ordem: 4 },
                    { id: 5, curso_id: 2, titulo: 'Aula 1: Primeiros Passos', conteudo: '<h2>O que é JavaScript?</h2><p>JavaScript é uma linguagem de programação...</p>', ordem: 1 },
                    { id: 6, curso_id: 2, titulo: 'Aula 2: Variáveis e Tipos', conteudo: '<h2>Trabalhando com variáveis</h2><p>Em JavaScript podemos usar let, const e var...</p>', ordem: 2 },
                    { id: 7, curso_id: 2, titulo: 'Aula 3: Funções', conteudo: '<h2>Criando funções</h2><p>Funções são blocos de código reutilizáveis...</p>', ordem: 3 },
                    { id: 8, curso_id: 3, titulo: 'Aula 1: Fundamentos do Design', conteudo: '<h2>O que é UI/UX?</h2><p>UI é a interface, UX é a experiência...</p>', ordem: 1 },
                    { id: 9, curso_id: 3, titulo: 'Aula 2: Cores e Tipografia', conteudo: '<h2>Escolhendo cores</h2><p>Cores influenciam a percepção do usuário...</p>', ordem: 2 },
                    { id: 10, curso_id: 3, titulo: 'Aula 3: Layout e Grid', conteudo: '<h2>Sistemas de grid</h2><p>Grid ajuda a organizar o layout...</p>', ordem: 3 }
                ],
                matriculas: [],
                progresso_aulas: [],
                configuracoes: {
                    nome_sistema: 'Caramel Code',
                    versao: '1.0.0'
                }
            };

            localStorage.setItem('caramel_database', JSON.stringify(initialData));
            // Banco inicializado (sem impressão de dados sensíveis em console)
        }
    }

    getData() {
        const data = localStorage.getItem('caramel_database');
        return data ? JSON.parse(data) : {};
    }

    saveData(data) {
        localStorage.setItem('caramel_database', JSON.stringify(data));
    }

    // Usuários
    async validateLogin(email, senha) {
        const data = this.getData();
        const user = data.usuarios.find(u => u.email === email && u.senha === senha && u.status === 'ativo');

        if (user) {
            // Atualizar último login
            user.ultimo_login = new Date().toISOString();
            this.saveData(data);

            // Não retornar senha
            const { senha: _, ...userWithoutPassword } = user;
            return userWithoutPassword;
        }

        return null;
    }

    async getUserByEmail(email) {
        const data = this.getData();
        return data.usuarios.find(u => u.email === email) || null;
    }

    async createUser(userData) {
        const data = this.getData();

        // Gerar ID
        const maxId = data.usuarios.length > 0 ? Math.max(...data.usuarios.map(u => u.id)) : 0;
        const newUser = {
            ...userData,
            id: maxId + 1,
            status: 'ativo',
            data_cadastro: new Date().toISOString(),
            ultimo_login: null
        };

        data.usuarios.push(newUser);
        this.saveData(data);

        // Não retornar senha
        const { senha: _, ...userWithoutPassword } = newUser;
        return userWithoutPassword;
    }

    // Cursos
    async getCursos() {
        const data = this.getData();
        return data.cursos.filter(c => c.status === 'ativo');
    }

    // Matrículas
    async getMatriculas(alunoId) {
        const data = this.getData();
        return data.matriculas.filter(m => m.aluno_id === alunoId);
    }

    async createMatricula(matriculaData) {
        const data = this.getData();

        // Verificar se já existe
        const exists = data.matriculas.find(m => m.aluno_id === matriculaData.aluno_id && m.curso_id === matriculaData.curso_id);
        if (exists) {
            throw new Error('Matrícula já existe');
        }

        // Gerar ID
        const maxId = data.matriculas.length > 0 ? Math.max(...data.matriculas.map(m => m.id)) : 0;
        const newMatricula = {
            ...matriculaData,
            id: maxId + 1,
            status: 'ativa',
            progresso_percentual: 0,
            created_at: new Date().toISOString()
        };

        data.matriculas.push(newMatricula);
        this.saveData(data);

        return newMatricula;
    }

    // Backup e restore
    backup() {
        const data = this.getData();
        const backup = {
            data: data,
            timestamp: new Date().toISOString(),
            version: '1.0.0'
        };

        const blob = new Blob([JSON.stringify(backup, null, 2)], { type: 'application/json' });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = `caramel_backup_${new Date().toISOString().split('T')[0]}.json`;
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        URL.revokeObjectURL(url);

        console.log('💾 Backup criado!');
    }

    restore(backupData) {
        if (backupData.data) {
            this.saveData(backupData.data);
            console.log('✅ Dados restaurados!');

            // Recarregar página
            setTimeout(() => {
                window.location.reload();
            }, 1000);
        }
    }

    // Limpar tudo
    clear() {
        if (confirm('⚠️ Tem certeza que quer limpar TODOS os dados? Esta ação não pode ser desfeita!')) {
            localStorage.removeItem('caramel_database');
            localStorage.removeItem('caramel_user');
            console.log('🗑️ Banco limpo!');

            // Recarregar página
            setTimeout(() => {
                window.location.reload();
            }, 1000);
        }
    }

    // Progresso e Estatísticas de Estudo
    validateProgress(progressData) {
        if (!progressData || typeof progressData !== 'object') return false;
        if (typeof progressData.moedas !== 'number' || typeof progressData.xp !== 'number') return false;
        if (!progressData.trilhas || typeof progressData.trilhas !== 'object') return false;

        // Certificar-se que trilhas e fases são inteiros positivos
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

    saveProgress(userId, progressData) {
        const key = 'caramel_progress_' + userId;
        if (!this.validateProgress(progressData)) {
            console.warn('⚠️ Progresso inválido não salvo para usuário ' + userId);
            return false;
        }

        localStorage.setItem(key, JSON.stringify(progressData));
        // remove logs sensíveis em produção
        return true;
    }

    getProgress(userId) {
        const key = 'caramel_progress_' + userId;
        const raw = localStorage.getItem(key);
        if (raw) return JSON.parse(raw);

        // Retorna progresso inicial se não existir
        return {
            userId: userId,
            moedas: 50,
            xp: 0,
            nivel: 1,
            dias_seguidos: 1,
            medalhas: 0,
            questoes_respondidas: 0,
            questoes_corretas: 0,
            total_questoes: 50,
            trilhas: {} // Estrutura: { html: { fases_concluidas: 0, questoes_respondidas: 0, phases: { '1': { questoes_concluidas: 3 } } } }
        };
    }

    // Estatísticas
    getStats() {
        const data = this.getData();
        return {
            usuarios: data.usuarios.length,
            cursos: data.cursos.length,
            aulas: data.aulas.length,
            matriculas: data.matriculas.length
        };
    }
}

// Exportar para uso global
window.Database = Database;
