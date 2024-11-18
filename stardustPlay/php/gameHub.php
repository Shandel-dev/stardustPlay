<?php include('topo.php');
require('connect.php');

function consultaJogos($limite, $categoria, $categoria2 = null)
{

    global $conn;

    $consulta = "SELECT j.id_jogo, j.nome, j.preco, j.categoria, i.banner, i.logo, i.poster FROM `tbl_jogos` as j
    JOIN `tbl_images` as i
    on i.id_image = j.id_imgs
    WHERE j.categoria = '$categoria'";

    if ($categoria2 !== null) {
        $consulta .= " or j.categoria = '$categoria2'";
    }

    $consulta .= " ORDER BY j.nome LIMIT $limite";

    return mysqli_query($conn, $consulta);
}
?>

<link rel="stylesheet" href="../css/gameHub.css">

<body>
    <?php include('navbar.php'); ?>

    <!-- Slider main container -->
    <div class="swiper swiper-banner">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <?php
            $jogosPopular = mysqli_query($conn, "SELECT j.*, COUNT(uj.id_jogo), i.* FROM `tbl_jogos` as j
            JOIN `tbl_images` as i
            on j.id_imgs = i.id_image
            JOIN `tbl_user_jogo` as uj
            on uj.id_jogo = j.id_jogo
            GROUP BY uj.id_jogo
            limit 10;");

            while ($jogo = mysqli_fetch_assoc($jogosPopular)) {
                echo "<div class='swiper-slide' style='background-image: url($jogo[banner]);'>";

                echo "<div class='banner-content'>";
                echo "<p class=banner_mensagem>Destaques da StarDustPlay</p>";
                echo "<h1 class='banner_nome jogo_nome'>" . $jogo['nome'] . "</h1>";
                echo "<h2 class=banner_slogan>" . $jogo['slogan'] . "</h2>";
                echo "<h3 class=banner_preco>" . ($jogo['preco'] == 0 ? "GRÁTIS" : "R$" . $jogo['preco']) . "</h3>";
                echo "<a href=comprarJogo.php?id=$jogo[id_jogo] class=banner_link>Adquira já!</a>";
                echo "</div>";

                echo "</div>";
            }
            ?>
            <!-- <div class="swiper-slide" style="background-image: url();">Slide 1</div> -->
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>

        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>

        <!-- If we need scrollbar -->
        <div class="swiper-scrollbar"></div>
    </div>

    <section>
        <h2>A diversidade de jogos que procura está aqui!</h2>
        <!-- Slider main container -->
        <div class="swiper swiper-card">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <?php
                $jogosAcao = consultaJogos(15, "RPG", "Ação/Aventura");
                ?>
                <?php
                while ($jogo = mysqli_fetch_assoc($jogosAcao)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[banner] class=card1_image>";
                    echo "<div class = card1-jogo_info>";
                    echo "<h1 class = 'jogo_nome'>$jogo[nome]</h1>";
                    echo "<p><sup>$jogo[categoria]</sup></p>";
                    echo "<h2 class = 'jogo_preco'>" . ($jogo['preco'] == 0 ? "GRÁTIS" : "R$$jogo[preco]") . "</h2>";
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
    </section>
    <section>

        <h2>Sobreviva ao caos!</h2>
        <!-- Slider main container -->
        <div class="swiper swiper-grupo">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php
                $jogosGrupo = consultaJogos(30, "Sobrevivência", "RPG");

                while ($jogo = mysqli_fetch_assoc($jogosGrupo)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[logo] class=jogo_image>";
                    echo "<h2 class='grupo_nome jogo_nome'>$jogo[nome]</h2>";
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
    </section>

    <section class="container-indie">

        <h1>Um agradecimento aos desenvolvedores Indies</h1>

        <!-- Slider main container -->
        <div class="swiper swiper-poster">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php
                $jogosIndie = consultaJogos(10, "Sobrevivência"); //SESSÃO PARA JOGOS INDIE

                while ($jogo = mysqli_fetch_assoc($jogosIndie)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[poster] class=poster_img>";
                    echo "<p><sub>#$jogo[categoria]</sub></p>";
                    echo "<h2 class=jogo_nome>$jogo[nome]</h2>";
                    echo "<h3 class=jogo_preco>" . ($jogo['preco'] == 0 ? "Gratuito" : "R$$jogo[preco]") . "</h3>";
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
    </section>
    <section>
        <h1>Gosta de Esportes e Adrenalina? esta sessão é para você!</h1>
        <div class="swiper swiper-card">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <?php
                $jogosAcao = consultaJogos(15, "Esportes/Corrida");
                ?>
                <?php
                while ($jogo = mysqli_fetch_assoc($jogosAcao)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[banner] class=card1_image>";
                    echo "<div class = card1-jogo_info>";
                    echo "<h1 class = 'jogo_nome'>$jogo[nome]</h1>";
                    echo "<p><sup>$jogo[categoria]</sup></p>";
                    echo "<h2 class = 'jogo_preco'>" . ($jogo['preco'] == 0 ? "GRÁTIS" : "R$$jogo[preco]") . "</h2>";
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
    </section>
    <section>
        <h1>Simule seu mundo como quiser!</h1>
        <div class="swiper swiper-grupo">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php
                $jogosGrupo = consultaJogos(16, "Simulação");

                while ($jogo = mysqli_fetch_assoc($jogosGrupo)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[logo] class=jogo_image>";
                    echo "<h2 class='grupo_nome jogo_nome'>$jogo[nome]</h2>";
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
    </section>
    <section>
        <h1>Seu coração aguenta? Mergulhe num mundo de terror na penumbra</h1>
        <div class="swiper swiper-poster">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php
                $jogosIndie = consultaJogos(10, "Terror/Suspense");

                while ($jogo = mysqli_fetch_assoc($jogosIndie)) {
                    echo "<div class='swiper-slide' onclick=javascript:linkJogo($jogo[id_jogo])>";
                    echo "<img src=$jogo[poster] class=poster_img>";
                    echo "<p><sub>#$jogo[categoria]</sub></p>";
                    echo "<h2 class=jogo_nome>$jogo[nome]</h2>";
                    echo "<h3 class=jogo_preco>" . ($jogo['preco'] == 0 ? "Gratuito" : "R$$jogo[preco]") . "</h3>";
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
    </section>


    <script src="../javascript/gameHub.js"></script>
</body>

</html>