const swiper = new Swiper(".swiper", {
    cssMode: true,
    spaceBetween: 10,
    slidesPerView: 1.5,
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    keyboard: true,
    breakpoints: {
        // Quando a largura da tela for maior que 768px
        768: {
            slidesPerView: 2.5,  // Ajuste para telas maiores
        },
        //quando a largura da tela for maior que 992px
        992: {
            slidesPerView: 3.5
        }
    },
});

function linkJogo(id){
    window.location = "comprarJogo.php?id=" +id;
}