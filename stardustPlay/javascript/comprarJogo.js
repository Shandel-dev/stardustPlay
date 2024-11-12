const swiper = new Swiper(".swiper", {
    loop: true,
    spaceBetween: 10,
    slidesPerView: 1.7,
    centeredSlides: true,
    lazy: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    // breakpoints: {
    //     // Quando a largura da tela for maior que 768px
    //     768: {
    //         slidesPerView: 2.5,  // Ajuste para telas maiores
    //     },
    //     // Quando a largura da tela for maior que 1024px
    //     1024: {
    //         slidesPerView: 3.5,  // Ajuste para telas muito grandes
    //     },
    // },
});

function facaLogin(){
    alert("Faça login para comprar este produto!");
}