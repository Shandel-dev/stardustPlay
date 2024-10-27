<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/pagJogos.css">

<body>
    <?php include('header.php'); ?>

    <?php require('connect.php'); ?>

    <div>

        <input type="radio" name="plataforma" id="cat1" checked>
        <input type="radio" name="plataforma" id="cat2">
        <input type="radio" name="plataforma" id="cat3">
        <input type="radio" name="plataforma" id="cat4">
        <input type="radio" name="plataforma" id="cat5">

        <section class="option_plataform">
            <label for="cat1">PlayStation</label>
            <label for="cat2">Xbox</label>
            <label for="cat3">Nintendo</label>
            <label for="cat4">Computador</label>
            <label for="cat5">Mobile</label>
        </section>
        <div class="container_slides">
            <div class="plataforma" id="playstation">
                <span class="plataforma_banner" style="background-image: url(../imgs/PlayStationBanner.jpg);"></span>
                br*80
            </div>
            <div class="plataforma" id="xbox">
                <span class="plataforma_banner" style="background-image: url(../imgs/xboxBanner.png);"></span>
            </div>
            <div class="plataforma" id="nintendo">
                <span class="plataforma_banner" style="background-image: url(https://preview.redd.it/nintendo-banner-for-opera-gx-v0-sghgnidyb22d1.png?width=1920&format=png&auto=webp&s=715f7dd172bb9a5df79759dafd5151ebea6d6f28);"></span>
            </div>
            <div class="plataforma" id="computer">
                <span class="plataforma_banner" style="background-image: url(https://www.udacity.com/_next/image?url=https%3A%2F%2Fvideo.udacity-data.com%2Ftopher%2F2024%2FOctober%2F670986e9_cs212%2Fcs212.jpg&w=3840&q=75);"></span>
            </div>
            <div class="plataforma" id="mobile">
                <span class="plataforma_banner" style="background-image: url(https://static.www.tencent.com/uploads/2020/12/28/8b27503d629ab0253bc5673a2546ff95.png);"></span>
            </div>
        </div>

    </div>

</body>

</html>