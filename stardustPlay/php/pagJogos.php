<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/pagJogos.css">

<body>
    <?php include('header.php'); ?>
    <?php require('connect.php');
    function gerarConsulta($id_plataforma, $categorias) //função que gera uma consulta baseada na plataforma e categorias
    {
        $consulta = "SELECT j.id_jogo, j.nome, j.empresa, j.categoria, j.preco, i.banner, p.id_plataforma\n"
            . "FROM tbl_jogos as j\n"

            . "JOIN tbl_images as i\n"

            . "ON j.id_imgs = i.id_image\n"

            . "JOIN tbl_jogo_plataforma as p\n"

            . "ON p.id_jogo = j.id_jogo\n"

            . "WHERE p.id_plataforma = '$id_plataforma' and j.categoria IN('$categorias')\n"

            . "ORDER by j.nome\n"

            . "LIMIT 8;";
        return $consulta;
    }
    ?>

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
                <h1 class="plataforma_titulo">Play Has Not Limits</h1>

                <div class="plataform_container_cate"> <!--para ação e sobrevivencia-->
                    <?php
                    $jogos = mysqli_query($conn, gerarConsulta(1, "Ação/Aventura', 'RPG"));
                    ?>
                    <h3>Explore, lute e evolua!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            while ($jogo = mysqli_fetch_assoc($jogos)) {
                                echo "<div class=swiper-slide>";
                                    echo "<div class=card_jogo>";
                                        echo "<img src=" . $jogo['banner'] . ">";
                                        echo "<p>#" . $jogo['categoria'] . "</p>";
                                        echo "<h3>" . $jogo['nome'] . "</h3>";
                                        echo "<p>" . $jogo['empresa'] . "</p>";
                                        echo "<h2>R$ " . $jogo['preco'] . "</h2>";
                                        echo "<a href=#>Ver mais</a>";
                                    echo "</div>";
                                echo "</div>";
                            }
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>

                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    $jogos = mysqli_query($conn, gerarConsulta(1, "Sobrevivência', 'Simulação"));
                    ?>
                    <h3>Testes extremos de sobrevivência e simulação!</h3>
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            while ($jogo = mysqli_fetch_assoc($jogos)) {
                                echo "<div class=swiper-slide>";
                                    echo "<div class=card_jogo>";
                                        echo "<img src=" . $jogo['banner'] . ">";
                                        echo "<p>#" . $jogo['categoria'] . "</p>";
                                        echo "<h3>" . $jogo['nome'] . "</h3>";
                                        echo "<p>" . $jogo['empresa'] . "</p>";
                                        echo "<h2>R$ " . $jogo['preco'] . "</h2>";
                                        echo "<a href=#>Ver mais</a>";
                                    echo "</div>";
                                echo "</div>";
                            }
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>

                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
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
    <script src="../javascript/pagJogos.js"></script>

</body>

</html>