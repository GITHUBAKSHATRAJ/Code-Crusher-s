// Wait for the DOM to be fully loaded
document.addEventListener("DOMContentLoaded", () => {
    // Form validation
    const loginForm = document.querySelector("form");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("password");

    // Helper function to show error messages
    const showError = (input, message) => {
        const formGroup = input.parentElement;
        const errorText = formGroup.querySelector(".error-text");
        if (errorText) errorText.remove(); // Remove existing error messages

        const errorMessage = document.createElement("small");
        errorMessage.classList.add("error-text");
        errorMessage.textContent = message;
        errorMessage.style.color = "red";
        formGroup.appendChild(errorMessage);

        input.style.borderColor = "red";
    };

    // Helper function to clear errors
    const clearError = (input) => {
        const formGroup = input.parentElement;
        const errorText = formGroup.querySelector(".error-text");
        if (errorText) errorText.remove(); // Remove existing error messages

        input.style.borderColor = "#ccc";
    };

    // Validate email format
    const isValidEmail = (email) => {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    };

    // Form submission handler
    loginForm.addEventListener("submit", (e) => {
        e.preventDefault(); // Prevent form from submitting

        let isValid = true;

        // Validate email
        if (!emailInput.value.trim()) {
            showError(emailInput, "Email is required.");
            isValid = false;
        } else if (!isValidEmail(emailInput.value.trim())) {
            showError(emailInput, "Enter a valid email address.");
            isValid = false;
        } else {
            clearError(emailInput);
        }

        // Validate password
        if (!passwordInput.value.trim()) {
            showError(passwordInput, "Password is required.");
            isValid = false;
        } else {
            clearError(passwordInput);
        }

        // If form is valid, proceed with login
        if (isValid) {
            // Simulate a login action (e.g., AJAX request or form submission)
            alert("Login successful!");
            loginForm.submit(); // Uncomment this to submit the form
        }
    });

    // Add animations to inputs on focus
    [emailInput, passwordInput].forEach((input) => {
        input.addEventListener("focus", () => {
            input.style.boxShadow = "0 0 10px rgba(37, 117, 252, 0.5)";
            input.style.transition = "box-shadow 0.3s ease";
        });

        input.addEventListener("blur", () => {
            input.style.boxShadow = "none";
        });
    });

    // Smooth scroll for navbar links (optional)
    document.querySelectorAll(".nav-link").forEach((link) => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            const targetId = link.getAttribute("href").replace("#", "");
            const targetElement = document.getElementById(targetId);

            if (targetElement) {
                targetElement.scrollIntoView({ behavior: "smooth" });
            }
        });
    });
});
