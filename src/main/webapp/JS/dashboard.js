document.addEventListener("DOMContentLoaded", () => {
    // Add hover effect for dashboard cards
    const cards = document.querySelectorAll(".dashboard-card");
    cards.forEach(card => {
        card.addEventListener("mouseover", () => {
            card.style.transform = "scale(1.05)";
            card.style.transition = "transform 0.3s ease-in-out";
        });
        card.addEventListener("mouseout", () => {
            card.style.transform = "scale(1)";
        });
    });

    // Log button actions
    const buttons = document.querySelectorAll(".btn");
    buttons.forEach(button => {
        button.addEventListener("click", () => {
            console.log(`Button clicked: ${button.textContent}`);
        });
    });
});
