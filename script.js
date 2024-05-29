document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.getElementById('login-form');
    const signupForm = document.getElementById('signup-form');
    const loginLink = document.getElementById('login-link');
    const signupLink = document.getElementById('signup-link');
    const cancelButton = document.getElementById('cancel');
    const backToLoginLink = document.getElementById('back-login');

    loginLink.addEventListener('click', function (event) {
        event.preventDefault();
        loginForm.style.display = 'block';
        signupForm.style.display = 'none';
    });

    signupLink.addEventListener('click', function (event) {
        event.preventDefault();
        signupForm.style.display = 'block';
        loginForm.style.display = 'none';
    });

    cancelButton.addEventListener('click', function (event) {
        event.preventDefault();
        loginForm.style.display = 'none';
        signupForm.style.display = 'none';
    });

    backToLoginLink.addEventListener('click', function (event) {
        event.preventDefault();
        loginForm.style.display = 'block';
        signupForm.style.display = 'none';
    });
});

        
