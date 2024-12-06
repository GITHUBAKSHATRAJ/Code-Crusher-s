document.addEventListener("DOMContentLoaded", () => {
    // Smooth Scrolling for Navbar Links
    document.querySelectorAll('.nav-link').forEach(link => {
        link.addEventListener('click', (e) => {
            const targetId = link.getAttribute('href').split('#')[1];
            const targetElement = document.getElementById(targetId);

            if (targetElement) {
                e.preventDefault();
                targetElement.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });

    // Hover Effect on Cards
    const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        card.addEventListener('mouseover', () => {
            card.style.boxShadow = '0 12px 24px rgba(0, 0, 0, 0.3)';
        });

        card.addEventListener('mouseout', () => {
            card.style.boxShadow = '0 4px 8px rgba(0, 0, 0, 0.1)';
        });
    });

    // Animate Hero Section on Load
    const heroTitle = document.querySelector('.hero h1');
    const heroSubtitle = document.querySelector('.hero p');

    heroTitle.classList.add('animated');
    heroSubtitle.classList.add('animated');
});
