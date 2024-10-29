const swiper = new Swiper(".swiper", {
    cssMode: true,
    loop: true,
    spaceBetween: 10,
    slidesPerView: 3.5,
    pagination: {
        el: ".swiper-navigation",
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    keyboard: true,
});