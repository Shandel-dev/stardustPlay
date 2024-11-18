const swiperBanner = new Swiper(".swiper-banner", {
    slidesPerView: 1,
    spaceBetween: 10,
    effect: "fade",
    lazy: true,
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    pagination: {
        el: ".swiper-pagination",
        dynamicBullets: true,
        clickable: true,
    },
    autoplay: {
        delay: 10000,
    },
});

const swiperCard1 = new Swiper(".swiper-card", {
    slidesPerView: 2.5,
    spaceBetween: 10,
    lazy: true,
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

const swiperGrupo = new Swiper(".swiper-grupo", {
    slidesPerView: 5,
    lazy: true,
    grid: {
        fill: 'row',
        rows: 2,
    },
    spaceBetween: 30,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

const swiperPoster = new Swiper(".swiper-poster", {
    slidesPerView: 5.5,
    centeredSlides: true,
    spaceBetween: 15,
    loop: true,
    lazy: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

function linkJogo(idJogo){
    window.location = "comprarJogo.php?id=" +idJogo;
}