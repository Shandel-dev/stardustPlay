const swiper = new Swiper(".swiper", {
    loop: true,
    spaceBetween: 30,
    slidesPerView: 1.8,
    centeredSlides: true,
    lazy: true,
    effect: "coverflow",
    coverflowEffect: {
        rotate: 50,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    
});

function facaLogin(){
    alert("Faça login para comprar este produto!");
}