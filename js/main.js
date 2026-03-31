document.addEventListener('DOMContentLoaded', function () {
    const buttons = document.querySelectorAll('button');

    buttons.forEach(button => {
        button.addEventListener('click', function (e) {
            if (this.classList.contains('btn-primary')) {
                window.location.href = 'login.html';
            } else if (this.classList.contains('btn-secondary')) {
                window.location.href = 'register.html';
            }
        });
    });

    const featureCards = document.querySelectorAll('.feature-card');
    featureCards.forEach((card, index) => {
        card.style.animationDelay = `${index * 0.1}s`;
        card.style.animation = 'fadeIn 0.6s ease-out forwards';
    });
});
