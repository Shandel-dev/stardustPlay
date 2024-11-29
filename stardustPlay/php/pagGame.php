<?php
include('topo.php');
require('connect.php');
@session_start();

$id_Jogo = $_GET['id'];

$jogos = mysqli_query($conn, "SELECT * FROM `tbl_jogos` as j
JOIN `tbl_images` as i
on j.id_imgs = i.id_image
where j.id_jogo = '$id_Jogo';");

$jogo = mysqli_fetch_assoc($jogos);
$preco_str = str_replace(".", ",", "R$" . $jogo['preco']);

?>
<link rel="stylesheet" href="../css/pagGame.css">

<body>
    <?php include('navbar.php');
    include('mensagem.php')?>
    <!-- Slider main container -->
    <div class="swiper swiper-jogo">
        <div class="parallax-bg" style="
          background-image: url(<?php echo $jogo['banner']; ?>);
        " data-swiper-parallax="-23%" id="parallax"></div>


        <label for="exibir" id="olho">
            <i class="fa-solid fa-eye"></i>
        </label>

        <?php
        if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor") {
            echo "<a href='editarJogo.php?id=$id_Jogo' class='game_edit'><i class='fa-solid fa-pen-to-square'></i></a>";
        }
        ?>
        <input type="checkbox" name="exibir" id="exibir" style="display: none;">

        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide swiper-slide_jogo">
                <section class="container-info">
                    <article class="info_capa">
                        <img src="<?php echo $jogo['poster']; ?>" alt="Poster do jogo" id="image-poster">
                        <div class="info_capa_content">
                            <img src="<?php echo $jogo['logo']; ?>" alt="Logo do jogo" id="image-logo">
                            <h3 class="capa_empresa"><?php echo $jogo['empresa']; ?></h3>
                            <h1 class="capa_nome"><?php echo $jogo['nome']; ?></h1>
                            <p class="capa_hashtag"><?php echo $jogo['hashtag']; ?></p>
                            <p class="capa_categoria"><?php echo $jogo['categoria']; ?></p>
                            <?php
                                $preco = str_replace(".", ",", $jogo['preco']);
                            ?>
                            <h2 class="capa_preco"><?php echo ($jogo['preco'] == 0 ? "GRATUITO" : "R$" . $preco); ?></h2>
                        </div>
                    </article>
                    <article class="info_plataformas">
                        <h3>Disponível para</h3>
                        <div class="plataformas_images">

                            <?php
                            $plataformas = mysqli_query($conn, "SELECT j.nome, p.nome, p.logo
                            FROM `tbl_jogos` as j
                            join `tbl_jogo_plataforma` as jp
                            ON j.id_jogo = jp.id_jogo
                            JOIN `tbl_plataforma` as p
                            ON p.id_plataforma = jp.id_plataforma
                            WHERE j.id_jogo = '$id_Jogo';");
                            while ($plataforma = mysqli_fetch_assoc($plataformas)) {
                                echo "<img src=" . $plataforma['logo'] . " class=img_plataforma>";
                            }
                            ?>
                        </div>
                    </article>
                    <article class="info_payment">
                        <?php

                        if (isset($_SESSION['logado']) && $_SESSION['logado']) {
                            $queryCompra = mysqli_query($conn, "SELECT * FROM `tbl_user_jogo`
                            where `id_user` = '$_SESSION[iduser]' and `id_jogo` = '$id_Jogo'");
                            $linkSubmit = "for=comprarJogo";
                        }else{
                            $linkSubmit = "onclick='sweet_message(\"Entre ou Cadastre-se na StarDust!\")'";
                        }

                        if (isset($queryCompra) && mysqli_num_rows($queryCompra) == 1) {
                            echo "<button class=btn_jogar>Jogar <i class='fa-solid fa-play'></i></button>";
                            echo "<a href=pagPerfil.php class=btn_jogo_perfil><i class='fa-regular fa-user'></i> Ir Para Perfil</a>";
                        }else{
                            echo "<form action='pagGame.act.php' method='post' class='payment_form'>";
                                echo "<input type='hidden' name='idJogo' value='$id_Jogo'>";
                                echo "<input type='hidden' name='nomeJogo' value='$jogo[nome]'>";
                                echo "<input type='hidden' name='idUser' value=" . (isset($_SESSION['iduser']) ? $_SESSION['iduser'] : "") . ">";
                                echo "<input type='submit' style='display: none;' id=comprarJogo>";

                                echo "<select name='plataforma' id='versao' required>";
                                    echo "<option value=''>Escolha a versão do jogo</option>";
                                    
                                    $plataformas = mysqli_query($conn, "SELECT p.nome
                                    FROM `tbl_jogos` as j
                                    JOIN `tbl_jogo_plataforma` as jp
                                    ON j.id_jogo = jp.id_jogo
                                    JOIN `tbl_plataforma` as p
                                    ON p.id_plataforma = jp.id_plataforma
                                    WHERE j.id_jogo = '$id_Jogo';");
                                    while ($plataforma = mysqli_fetch_assoc($plataformas)) {
                                        echo "<option value='$plataforma[nome]'>" . "$plataforma[nome]" . "</option>";
                                    }
                                echo "</select>";
                                echo "<label $linkSubmit class='pay_link_pass'>";
                                    echo "<p>Obter o StarDust PASS</p>";
                                    echo "<p>Incluído no PASS</p>";
                                echo "</label>";
                                echo "<p> - OU - </p>";
                                echo "<label $linkSubmit class='pay_link_money'>";
                                    if ($jogo['preco'] == 0) {
                                        echo '<p>OBTER JOGO</p>';
                                        echo '<p>Gratuito</p>';
                                    } else {
                                        echo '<p>COMPRAR JOGO</p>';
                                        echo '<p>R$' . $jogo['preco'] . '</p>';
                                    }                                    
                                echo "</label>";
                            echo "</form>";
                        }
                        ?>

                    </article>
                </section>
            </div>
            <div class="swiper-slide swiper-slide_jogo">
                <section class="container-descricao">
                    <?php
                    echo "<h1 class=descricao_slogan>" . $jogo['slogan'] . "</h1>";
                    echo "<h4 class=descricao_empresa>Desenvolvido por <span>" . $jogo['empresa'] . "</span></h4>";
                    ?>
                    <article class="descricao-content">

                        <div class="content_descricao">
                            <?php
                            echo "<h2 class=descricao_subtitulo>Por dentro da experiência de " . $jogo['nome'] . "</h2><br>";
                            $descricao_texto = str_replace("\n", "<br>", $jogo['descricao']);
                            echo "<p class=descricao_texto>" .  $descricao_texto . "</p>";
                            ?>
                        </div>
                        <div class="content_galeria">
                            <h1 class="descricao_subtitulo">Galeria-ScreenShots</h1>
                            <p class="galeria_subtitulo">Conheça melhor este produto através da nossa galeria de imagens</p>
                            <!-- Slider main container -->
                            <div class="swiper swiper-gallery">
                                <!-- Additional required wrapper -->
                                <div class="swiper-wrapper">
                                    <!-- Slides -->
                                    <div class="swiper-slide galeria_imgs"><iframe src="<?php echo $jogo['trailer']; ?>" frameborder="0"></iframe></div>
                                    <div class="swiper-slide galeria_imgs"><img src="<?php echo $jogo['screen1']; ?>" alt=""></div>
                                    <div class="swiper-slide galeria_imgs"><img src="<?php echo $jogo['screen2']; ?>" alt=""></div>
                                    <div class="swiper-slide galeria_imgs"><img src="<?php echo $jogo['screen3']; ?>" alt=""></div>
                                </div>

                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev swiper-gallery-prev"></div>
                                <div class="swiper-button-next swiper-gallery-next"></div>

                            </div>
                        </div>
                    </article>
                </section>

            </div>
        </div>

        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev swiper-jogo-prev"><i class="fa-solid fa-caret-left"></i></div>
        <div class="swiper-button-next swiper-jogo-next"><i class="fa-solid fa-caret-right"></i></div>

        <!-- If we need scrollbar -->
        <div class="swiper-scrollbar"></div>
    </div>

    <script src="../javascript/pagGame.js"></script>
</body>

</html>