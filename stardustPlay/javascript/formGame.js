// Seleciona todos os inputs de arquivo
const inputs = document.querySelectorAll('.upload_input');

inputs.forEach(input => {
    input.addEventListener('change', (e) => {
        console.log('Input clicado');
        const file = e.target.files[0];
        
        // Obtém o elemento pai <label>
        const container = input.closest('.container_upload');
        
        // Seleciona a imagem e o placeholder dentro do mesmo contêiner
        const img = container.querySelector('.upload_img');     //imagem
        const placeholder = container.querySelector('.placeholder');    //span placeholder

        if (file) {
            img.src = URL.createObjectURL(file); // Atualiza a imagem com a URL do arquivo
            img.style.display = 'block'; // Mostra a imagem
            placeholder.style.display = 'none'; // Esconde o placeholder
            container.style.border = '2px solid var(--cor-terciaria)';
        } else {
            img.style.display = 'none'; // Esconde a imagem se não houver arquivo
            placeholder.style.display = 'inline'; // Mostra o placeholder novamente
        }
    });
});

const quantTxt = document.getElementById('qtnTxt');
const descricao = document.getElementById('descricao');

descricao.addEventListener('input', function(){
    let descricaoLenght = descricao.value.length;
    quantTxt.innerHTML = descricaoLenght + "/1500";
});

const tag = document.getElementById('hashtag');
const mensage_tag = document.getElementById('mensage_tags');

tag.addEventListener('input', (e)=>{
    if(tag.value.length === 1 && !tag.value.startsWith('#')){
        tag.value = `#${tag.value}`;
    }
});

tag.addEventListener('keydown', (e)=>{
    if(e.code === 'Space'){
        e.preventDefault(); // Impede o espaço padrão
        tag.value += " #";
    }
})
