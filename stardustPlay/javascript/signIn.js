const password = document.getElementById("password_input");
const input_check = document.getElementById("exibir_check");
const exibir_olho = document.getElementById("exibir_olho");

input_check.addEventListener("change", (e) =>{
    if(input_check.checked){
        password.type = "text";
        exibir_olho.innerHTML = "<i class='fa-solid fa-eye'></i>"
    } else{
        exibir_olho.innerHTML = "<i class='fa-solid fa-eye-slash'></i>"
        password.type = "password";
    }
});