let login = document.getElementById('loginForm');
let signUp = document.getElementById('signUpForm');
let buttonLogin = document.getElementById('buttonLogin');
let buttonProfile = document.getElementById('buttonProfile');
let aSignUp = document.getElementById('aSignUp');
let menu = document.getElementById('menu');
let backButton = document.getElementById('backButton');
buttonLogin.onclick = function () {
    if (login.style.display === "none") {
        if (signUp.style.display === "block")
            signUp.style.display = "none";
        else
            login.style.display = "block";
    } else {
        login.style.display = "none";
        signUp.style.display = "none"
    }
};
aSignUp.onclick = function () {
    signUp.style.display = "block";
    login.style.display = "none";

};

window.onclick = function (event) {
    if (event.target === menu) {
        login.style.display = "none";

    }
};
document.addEventListener('DOMContentLoaded', function (){
    let password = document.getElementById("password"),
        confirmPassword = document.getElementById("passwordRepeat");


    function validatePassword(){
        if(password.value !==confirmPassword.value){
            confirmPassword.setCustomValidity("Passwords don't match");
        } else{
            confirmPassword.setCustomValidity('');
        }
    }

    confirmPassword.onkeyup = validatePassword();
},false);
backButton.onclick = function () {
    window.history.back();
};