function notDev() {
    alert("Você não é um desenvolvedor!");
}

const avatar = document.getElementById('avatar')
const dropdown = document.getElementById('drop_perfil')

//Mostrar/Esconder menu
avatar.addEventListener('click', (e) => {
    dropdown.style.display = dropdown.style.display == 'flex' ? 'none' : 'flex'
})

//Fechar menu
document.addEventListener('click', (event) => {
    if (!avatar.contains(event.target) && !dropdown.contains(event.target)) {
        dropdown.style.display = "none"
    }
})