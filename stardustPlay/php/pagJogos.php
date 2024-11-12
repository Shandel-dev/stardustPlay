<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/pagJogos.css">

<body>
    <?php include('header.php'); ?>
    <?php require('connect.php');
    function gerarConsulta($id_plataforma, $categorias, $ordem) //função que gera uma consulta baseada na plataforma e categorias
    {
        $consulta = "SELECT j.id_jogo, j.nome, j.empresa, j.categoria, j.preco, i.banner, p.id_plataforma\n"
            . "FROM tbl_jogos as j\n"

            . "JOIN tbl_images as i\n"

            . "ON j.id_imgs = i.id_image\n"

            . "JOIN tbl_jogo_plataforma as p\n"

            . "ON p.id_jogo = j.id_jogo\n"

            . "WHERE p.id_plataforma = '$id_plataforma' and j.categoria IN('$categorias')\n"

            . "ORDER by $ordem\n"

            . "LIMIT 8;";
        return $consulta;
    }

    function whileSwiper($jogos)
    {
        while ($jogo = mysqli_fetch_assoc($jogos)) {
            echo "<div class=swiper-slide>";
            echo "<div class=card_jogo onclick=javascript:linkJogo($jogo[id_jogo])>";
            echo "<img src=" . $jogo['banner'] . " loading='lazy'>";
            echo "<h3 class=card_nome>" . $jogo['nome'] . "</h3>";
            echo "<p class=card_categoria><sup>#" . $jogo['categoria'] . "</sup></p>";

            if($jogo['preco'] == 0){
                $preco_str = "Gratuito";
            }else{
                $preco_str = str_replace(".", ",", "R$ " . $jogo['preco']);
            }
            echo "<p class=card_preco>" . $preco_str . "</p>";
            echo "</div>";
            echo "</div>";
        }
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
        <section class="container_slides">
            <article class="plataforma" id="playstation">
                <span class="plataforma_banner" style="background-image: url(../imgs/PlayStationBanner.jpg);"></span>
                <h1 class="plataforma_titulo">Play Has Not Limits</h1>

                <div class="plataform_container_cate"> <!--para ação e RPG-->
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Explore, lute e evolua!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(1, "Ação/Aventura', 'RPG", "j.id_jogo"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate"> <!--SOBREVIVENCIA E SIMULAÇÃO-->
                    <h3 class="categoria_slogan">Testes extremos de sobrevivência e simulação!</h3>
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(1, "Sobrevivência', 'Simulação", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate"> <!--ESPORTES/CORRIDA-->
                    <h3 class="categoria_slogan">Jogue, corra, conquiste: o esporte é sua paixão!</h3>
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(1, "Esportes/Corrida", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate"> <!--Terror/Suspense-->
                    <h3 class="categoria_slogan">Sussurros na penumbra, sustos a cada esquina!</h3>
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(1, "Terror/Suspense", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </article>
            <article class="plataforma" id="xbox">
                <span class="plataforma_banner" style="background-image: url(../imgs/xboxBanner.png);"></span>
                <h1 class="plataforma_titulo">Its Good to Play Together</h1>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Descubra, batalhe e desenvolva suas habilidades!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(2, "Ação/Aventura', 'RPG", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Desafie-se a viver, simular e prosperar!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(2, "Sobrevivência', 'Simulação", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Experimente a emoção do esporte e supere todos os desafios!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(2, "Esportes/Corrida", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Descubra o desconhecido e sobreviva ao horror!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(2, "Terror/Suspense", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </article>
            <article class="plataforma" id="nintendo">
                <span class="plataforma_banner" style="background-image: url(https://preview.redd.it/nintendo-banner-for-opera-gx-v0-sghgnidyb22d1.png?width=1920&format=png&auto=webp&s=715f7dd172bb9a5df79759dafd5151ebea6d6f28);"></span>
                <h1 class="plataforma_titulo">Switch and Play</h1>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Viva aventuras, lute contra adversários e evolua!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(3, "Ação/Aventura', 'RPG", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Explore, adapte-se e sobreviva em mundos imprevisíveis!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(3, "Sobrevivência', 'Simulação", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Corra, desafie seus limites e alcance o pódio!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(3, "Esportes/Corrida", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Abrace a escuridão e prepare-se para um susto a cada esquina!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(3, "Terror/Suspense", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </article>
            <article class="plataforma" id="computer">
                <span class="plataforma_banner" style="background-image: url(../imgs/banner_computer.png);"></span>
                <h1 class="plataforma_titulo">Controle Total, Diversão Ilimitada!</h1>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Desbrave, enfrente desafios e cresça!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(4, "Ação/Aventura', 'RPG", "j.id_jogo"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Aventure-se, combata e evolua!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(4, "Sobrevivência', 'Simulação", "j.id_jogo"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Deslize, drible e vença em emocionantes competições!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(4, "Esportes/Corrida", "j.nome desc"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Viva o terror, enfrente o sobrenatural e mantenha-se vivo!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(4, "Terror/Suspense", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </article>
            <article class="plataforma" id="mobile">
                <span class="plataforma_banner" style="background-image: url(../imgs/banner_mobile.png);"></span>
                <h1 class="plataforma_titulo">Onde Você For, O Jogo Vai Junto!</h1>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Lute com bravura, evolua e desvende segredos!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(5, "Ação/Aventura', 'RPG", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Construa seu abrigo, colete recursos e sobreviva ao inesperado!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(5, "Sobrevivência', 'Simulação", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">Domine a pista e mostre seu talento em emocionantes competições!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(5, "Esportes/Corrida", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
                <div class="plataform_container_cate">
                    <?php
                    ?>
                    <h3 class="categoria_slogan">A cada passo, o terror se aproxima; esteja preparado para o pior!</h3>
                    <!-- Slider main container -->
                    <div class="swiper">
                        <!-- Additional required wrapper -->
                        <div class="swiper-wrapper">
                            <!-- Slides -->
                            <?php
                            $jogos = mysqli_query($conn, gerarConsulta(5, "Terror/Suspense", "j.nome"));
                            whileSwiper($jogos);
                            ?>
                        </div>
                        <!-- If we need pagination -->
                        <div class="swiper-pagination"></div>

                        <!-- If we need navigation buttons -->

                        <div class="swiper-button-prev"> <i class="fa-solid fa-circle-chevron-left"></i>
                        </div>
                        <div class="swiper-button-next">
                            <i class="fa-solid fa-circle-chevron-right"></i>

                        </div>
                        <!-- If we need scrollbar -->
                        <div class="swiper-scrollbar"></div>
                    </div>
                </div>
            </article>
        </section>

    </div>
    <script src="../javascript/pagJogos.js"></script>

</body>

</html>