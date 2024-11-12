<?php

include('topo.php');
require('connect.php');
@session_start();

$idJogo = $_GET['id'];

$jogos = mysqli_query($conn, "SELECT * FROM `tbl_jogos` as j
JOIN `tbl_images` as i
on j.id_imgs = i.id_image
where j.id_jogo = '$idJogo';");

$jogo = mysqli_fetch_assoc($jogos);

$preco_str = str_replace(".", ",", $jogo['preco'])
?>

<link rel="stylesheet" href="../css/comprarJogo.css">

<body style="background-image: url('<?php echo $jogo['banner']; ?>');">
    <?php include('header.php'); ?>
    <!--<div class="gradiente"></div>-->

    <main class="content_game">
        <section class="game_information">
            <article class="game_capa">
                <div class="capa_container_poster">

                    <img src="<?php echo $jogo['poster']; ?>" alt="" class="game_poster">

                    <div class="capa_info">
                        <div>
                            <img src="<?php echo $jogo['logo']; ?>" alt="" class="game_logo">
                            <p class="game_dev"><?php echo $jogo['empresa']; ?></p>
                            <h1 class="game_nome"><?php echo $jogo['nome']; ?></h1>
                            <p><sup>#<?php echo $jogo['categoria']; ?></sup></p>
                        </div>
                        <div>
                            <p class="game_pass"><sup>Disponível na StarDust Pass</sup></p>
                            <h2 class="game_preco">R$<?php echo $preco_str; ?></h2>
                        </div>
                    </div>

                </div>
                <hr>
                <div class="capa_plataform">
                    <h4>Disponível para</h4>
                    <div class="plataformas_container">
                        <!--while de plataformas-->
                        <?php
                        $plataformas = mysqli_query($conn, "SELECT j.nome, p.nome, p.logo
                            FROM `tbl_jogos` as j
                            join `tbl_jogo_plataforma` as jp
                            ON j.id_jogo = jp.id_jogo
                            JOIN `tbl_plataforma` as p
                            ON p.id_plataforma = jp.id_plataforma
                            WHERE j.id_jogo = '$idJogo';");

                        while ($plataforma = mysqli_fetch_assoc($plataformas)) {
                            echo "<img src=" . $plataforma['logo'] . " class=img_plataform>";
                        }
                        ?>
                    </div>
                </div>
            </article>

            <form action="comprarJogo.act.php" method="post" class="game_pay">
                <h2 class="game_pay_titulo">Opções de compra</h2>
                <label for="payment" class="lbl_payment">
                    <input type="radio" name="payment" id="payment" value="pass" required>
                    <i class="fa-solid fa-ticket"></i>
                    <h4>Obtenha o StarDust Pass</h4>
                </label>
                <label for="payment2" class="lbl_payment">
                    <input type="radio" name="payment" id="payment2" value="pay">
                    <i class="fa-solid fa-credit-card"></i>
                    <h4>Adicione um método de pagamento para efetuar a compra</h4>
                </label>
                <div class="container_confirm">
                    <select class="select_plataform" name="versao" required>
                        <option value="">Selecione a versão</option>
                        <?php
                        $plataformas = mysqli_query($conn, "SELECT p.nome
                            FROM `tbl_jogos` as j
                            JOIN `tbl_jogo_plataforma` as jp
                            ON j.id_jogo = jp.id_jogo
                            JOIN `tbl_plataforma` as p
                            ON p.id_plataforma = jp.id_plataforma
                            WHERE j.id_jogo = '$idJogo';");

                        while ($plataforma = mysqli_fetch_assoc($plataformas)) {
                            echo "<option value='$plataforma[nome]'>" . $plataforma['nome'] . "</option>";
                        }
                        ?>
                    </select>           

                    <?php
                    //verifica se o usuario já comprou o jogo
                    if (isset($_SESSION['logado']) && $_SESSION['logado'] == true) {
                        $queryCompra = mysqli_query($conn, "SELECT * FROM `tbl_user_jogo`
                        where `id_user` = '$_SESSION[iduser]' and `id_jogo` = '$idJogo'");
                        if (mysqli_num_rows($queryCompra) == 0) {

                            echo "<input type='hidden' name='idJogo' value='$idJogo'>";
                            echo "<input type='hidden' name='idUser' value='" . $_SESSION['iduser'] . "'>";
                            echo "<input type='submit' style='display: none;' id='enviar'>";
                            echo "<label for='enviar' class='comprar_btn'><b><i class='fa-solid fa-cart-shopping'></i>Confirmar Compra</b></label>";
                        } else {
                            echo "<label for='enviar' class='comprar_btn'><b><i class='fa-solid fa-play'></i>Jogar</b></label>";
                        }
                    }else{
                        echo "<label for='enviar' class='comprar_btn' onclick='facaLogin()'><b><i class='fa-solid fa-cart-shopping'></i> Comprar</b></label>";
                    }
                    ?>

                </div>

                <?php
                if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor") {
                    echo "<a href='editarJogo.php?id=$idJogo' class='game_edit'><i class='fa-solid fa-pen-to-square'></i>Editar jogo</a>";
                }
                ?>
            </form>


        </section>

        
        <section class="game_description">
            <h2 class="game_slogan"><?php echo $jogo['slogan']; ?></h2>
            <article class="descricao">

                <div class="descricao_texto">
                    <?php
                    echo "<h2>Por dentro da experiência de " . $jogo['nome'] . "</h2>";
                    echo "<h4>Desenvolvido por " . $jogo['empresa'] . "</h4><br>";
                    $descricao_texto = str_replace("\n", "<br>", $jogo['descricao']);
                    //echo "<p>" . $jogo['descricao'] . "</p>";
                    echo "<p>" . $descricao_texto . "</p>";
                    ?>
                </div>
            </article>
            <article class="galeria">
                <h1 class="galeria_titulo">Galeria-Screenshots</h1>
                <p class="galeria_subtitulo">Conheça melhor este produto através de nossa galeria de imagens</p>

                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <?php echo "<div class=swiper-slide><iframe src= " . $jogo['trailer'] . " class=galeria_image alt='TRAILER INDISPONÍVEL NO MOMENTO'></iframe></div>"; ?>
                        <?php echo "<div class=swiper-slide><img src=" . $jogo['screen1'] . " class=galeria_image alt='IMAGEM INDISPONÍVEL!' loading='lazy'></div>"; ?>
                        <?php echo "<div class=swiper-slide><img src=" . $jogo['screen2'] . " class=galeria_image alt='IMAGEM INDISPONÍVEL!' loading='lazy'></div>"; ?>
                        <?php echo "<div class=swiper-slide><img src=" . $jogo['screen3'] . " class=galeria_image alt='IMAGEM INDISPONÍVEL!' loading='lazy'></div>"; ?>
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev">
                        <i class="fa-solid fa-circle-chevron-left"></i>
                    </div>
                    <div class="swiper-button-next">
                        <i class="fa-solid fa-circle-chevron-right"></i>
                    </div>

                    <!-- If we need scrollbar -->
                    <div class="swiper-scrollbar"></div>
                </div>
            </article>
        </section>
    </main>
    <script src="../javascript/comprarJogo.js"></script>
</body>

</html>