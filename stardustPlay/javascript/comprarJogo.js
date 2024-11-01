const swiper = new Swiper(".swiper", {
    loop: true,
    spaceBetween: 10,
    slidesPerView: 1.2,
    centeredSlides: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
})