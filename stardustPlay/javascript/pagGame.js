const swiper = new Swiper('.swiper-jogo', {
    // Optional parameters
    allowTouchMove: false,
    speed: 500,
    parallax: true,
    slidesPerView: 1,

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-jogo-next',
        prevEl: '.swiper-jogo-prev',
    },

    // And if we need scrollbar
    scrollbar: {
        el: '.swiper-scrollbar',
    },
    keyboard: {
        enable: true,
        onlyInViewport: false,
    }
});

const swiperGallery = new Swiper('.swiper-gallery', {
    loop: true,
    slidesPerView: 1,
    effect: "fade",
    pagination: {
        el: '.swiper-pagination',
    },

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-gallery-next',
        prevEl: '.swiper-gallery-prev',
    },
});

const inputcheck = document.getElementById('exibir')
const lbl_olho = document.getElementById('olho')
const slides = document.querySelectorAll('.swiper-jogo .swiper-slide_jogo')
const gradiente = document.getElementById('parallax')

olho.addEventListener('click', (e) =>{
    
    if(inputcheck.checked == true){
        lbl_olho.style.opacity = "0.5"
        gradiente.style.filter = "blur(20px) brightness(0.4)"
        slides.forEach(function(slide){
            slide.style.opacity = "1"
        })
    } else{
        lbl_olho.style.opacity = "1"
        gradiente.style.filter = "unset"
        slides.forEach(function(slide){
            slide.style.opacity = "0"
        })
    }   
})

function notLogin(){
    alert("Entre ou cadastre-se na StarDust")
}