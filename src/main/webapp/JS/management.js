document.addEventListener("DOMContentLoaded", function () {
    // Animate Content Area on Scroll
    const contentArea = document.querySelector('.content-area');
    if (contentArea) {
        const observer = new IntersectionObserver(function (entries) {
            entries.forEach(function (entry) {
                if (entry.isIntersecting) {
                    contentArea.classList.add('animate');
                }
            });
        }, { threshold: 0.5 });

        observer.observe(contentArea);
    }

    // Smooth Scroll for Buttons
    const buttons = document.querySelectorAll('.btn');
    buttons.forEach(function (button) {
        button.addEventListener('click', function (e) {
            const targetId = button.getAttribute('href')?.split('#')[1];
            if (targetId) {
                e.preventDefault();
                const targetElement = document.getElementById(targetId);
                if (targetElement) {
                    targetElement.scrollIntoView({ behavior: 'smooth' });
                }
            }
        });
    });

    // Hover Effects on Buttons
    buttons.forEach(function (button) {
        button.addEventListener('mouseover', function () {
            button.style.transform = 'scale(1.1)';
        });

        button.addEventListener('mouseout', function () {
            button.style.transform = 'scale(1)';
        });
    });
});
