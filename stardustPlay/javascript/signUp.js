const input = document.getElementById('foto');
const image = document.getElementById('image_profile');
const span = document.getElementById('img_msg');

input.addEventListener('change', (e) => {
    span.style.display = "none";
    image.style.display = "block";
    image.src = URL.createObjectURL(e.target.files[0]);
});

const telefone = document.getElementById('telefone');

telefone.addEventListener('keypress', (e) => {
    let phoneLength = telefone.value.length;

    if (phoneLength === 0) {
        telefone.value = "(" + telefone.value;
    }
    if (phoneLength === 3) {
        telefone.value += ")";
    }
    if (phoneLength === 9) {
        telefone.value += "-";
    }
});

const btndev = document.getElementById('dev');
const btnUser = document.getElementById('user');
senhaDev = "1306";

btndev.addEventListener('change', (e) => {
    let senhaDigitada = prompt("Insira a senha de acesso de desenvolvedor");

    if (senhaDigitada == senhaDev) {
        alert("Acesso de desenvolvedor liberado");
    } else {
        alert("Senha de acesso incorreto!");
        btnUser.checked = true;
    }
});

const password = document.getElementById("senha");
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