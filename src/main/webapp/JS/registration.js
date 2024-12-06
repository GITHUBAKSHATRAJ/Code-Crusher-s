document.addEventListener("DOMContentLoaded", () => {
    const registerForm = document.getElementById("registerForm");
    const usernameInput = document.getElementById("username");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("password");
    const confirmPasswordInput = document.getElementById("confirmPassword");
    const roleSelect = document.getElementById("role");

    // Helper function for showing error messages
    const showError = (input, message) => {
        const error = input.nextElementSibling;
        if (!error || !error.classList.contains("error-message")) {
            const errorMessage = document.createElement("small");
            errorMessage.classList.add("error-message");
            errorMessage.style.color = "red";
            errorMessage.textContent = message;
            input.parentNode.appendChild(errorMessage);
        }
        input.style.borderColor = "red";
    };

    // Helper function to clear errors
    const clearError = (input) => {
        const error = input.nextElementSibling;
        if (error && error.classList.contains("error-message")) {
            error.remove();
        }
        input.style.borderColor = "#ddd";
    };

    // Form validation
    registerForm.addEventListener("submit", (e) => {
        e.preventDefault(); // Prevent form submission for validation

        let isValid = true;

        // Username validation
        if (!usernameInput.value.trim()) {
            showError(usernameInput, "Username is required.");
            isValid = false;
        } else {
            clearError(usernameInput);
        }

        // Email validation
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailInput.value.trim() || !emailRegex.test(emailInput.value.trim())) {
            showError(emailInput, "Enter a valid email address.");
            isValid = false;
        } else {
            clearError(emailInput);
        }

        // Password validation
        if (!passwordInput.value.trim()) {
            showError(passwordInput, "Password is required.");
            isValid = false;
        } else if (passwordInput.value.length < 6) {
            showError(passwordInput, "Password must be at least 6 characters long.");
            isValid = false;
        } else {
            clearError(passwordInput);
        }

        // Confirm Password validation
        if (confirmPasswordInput.value.trim() !== passwordInput.value.trim()) {
            showError(confirmPasswordInput, "Passwords do not match.");
            isValid = false;
        } else {
            clearError(confirmPasswordInput);
        }

        // Role validation
        if (!roleSelect.value) {
            showError(roleSelect, "Role selection is required.");
            isValid = false;
        } else {
            clearError(roleSelect);
        }

        // If valid, proceed with form submission
        if (isValid) {
            alert("Registration successful!");
            registerForm.submit(); // Uncomment this to submit the form
        }
    });
});
