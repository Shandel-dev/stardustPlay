<?php
include('topo.php'); ?>
<link rel="stylesheet" href="../css/editarJogo.css">

<body>

    <?php include('header.php');
    require('connect.php');

    $idJogo = $_GET['id'];

    $jogos = mysqli_query($conn, "SELECT * FROM `tbl_jogos` as j
    JOIN `tbl_images` as i
    ON j.id_imgs = i.id_image
    WHERE j.id_jogo = $idJogo    
    ");

    $jogo = mysqli_fetch_assoc($jogos);

    // var_dump($jogos);
    // var_dump($jogo);
    ?>

    <h1 class="titulo">Edite as informações do jogo</h1>
    <form action="editarJogo.act.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $idJogo; ?>">
        <section class="container_datagame">
            <div class="content_info">
                <div class="info_data">

                    <div class="ctn_poster_logo">
                        <label for="poster" class="container_upload" id="img_poster">
                            <img src="<?php echo $jogo['poster']; ?>" alt="Poster" class="upload_img">
                            <input type="file" name="poster" class="upload_input" id="poster" accept=".png, .jpg, .jpeg, .jfif, .webp">
                        </label>

                        <div class="ctn_logo_name">
                            <label for="logo" class="container_upload" id="img_logo">
                                <img src="<?php echo $jogo['logo']; ?>" alt="Logo" class="upload_img">
                                <input type="file" name="logo" class="upload_input" id="logo" accept=".png, .jpg, .jpeg, .jfif, .webp">
                            </label>

                            <label for="nome">Nome do jogo:</label>
                            <input type="text" name="nome" id="nome" value="<?php echo $jogo['nome']; ?>" required>

                            <label for="empresa">Desenvolvedor/Empresa</label>
                            <input type="text" name="empresa" id="empresa" value="<?php echo $jogo['empresa']; ?>" required>
                        </div>
                    </div>
                    <label for="youtube">Link do trailer(YouTube):</label>
                    <input type="text" name="trailer" id="youtube" value="<?php echo $jogo['trailer']; ?>" required>

                    <label for="categoria_option">Categoria: </label>
                    <select name="categoria" id="categoria_option" required>
                        <option value="">Selecione</option>
                        <option value="Ação/Aventura" <?= $jogo['categoria'] == "Ação/Aventura" ? 'selected' : '' ?>>Ação/Aventura</option>
                        <option value="Sobrevivência" <?= $jogo['categoria'] == "Sobrevivência" ? 'selected' : '' ?>>Sobrevivência</option>
                        <option value="RPG" <?= $jogo['categoria'] == "RPG" ? 'selected' : '' ?>>RPG (Role-Playing Game)</option>
                        <option value="Simulação" <?= $jogo['categoria'] == "Simulação" ? 'selected' : '' ?>>Simulação</option>
                        <option value="Esportes/Corrida" <?= $jogo['categoria'] == "Esportes/Corrida" ? 'selected' : '' ?>>Esportes/Corrida</option>
                        <option value="Terror/Horror" <?= $jogo['categoria'] == "Terror/Horror" ? 'selected' : '' ?>>Terror/Horror</option>
                    </select>

                    <label for="preco">Preço(R$):
                        <input type="number" name="preco" id="preco" placeholder="R$0,00" step="0.01" min="0" value="<?php echo $jogo['preco']; ?>" required>
                    </label>

                    <div class="info_plataforma">
                        <p>Atualmente disponível para:</p>
                        <div class="container_plataformas">
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

                    <h3 class="plataforma_title">Atualize as plataformas disponíveis do jogo</h3>

                    <div class="container_lbl_plataforma">
                        <input type="checkbox" name="plataforma[]" id="playstation" value="1">
                        <label for="playstation" class="lbl_plataforma">PlayStation</label>

                        <input type="checkbox" name="plataforma[]" id="xbox" value="2">
                        <label for="xbox" class="lbl_plataforma">Xbox</label>

                        <input type="checkbox" name="plataforma[]" id="nintendo" value="3">
                        <label for="nintendo" class="lbl_plataforma">Nintendo</label>

                        <input type="checkbox" name="plataforma[]" id="computador" value="4">
                        <label for="computador" class="lbl_plataforma">Computador</label>

                        <input type="checkbox" name="plataforma[]" id="mobile" value="5">
                        <label for="mobile" class="lbl_plataforma">Mobile</label>
                    </div>

                </div>

                <div class="info_data">
                    <label for="banner" class="container_upload" id="img_banner">
                        <img src="<?php echo $jogo['banner']; ?>" alt="Banner" class="upload_img">
                        <input type="file" name="banner" class="upload_input" id="banner" accept=".png, .jpg, .jpeg, .jfif, .webp">
                    </label>
                    <label for="slogan">Slogan</label>
                    <input type="text" name="slogan" id="slogan" value="<?php echo $jogo['slogan']; ?>">

                    <label for="descricao" style="position: relative;">Descrição do jogo: <p id="qtnTxt"></p></label>
                    <textarea type="text" name="descricao" id="descricao" maxlength="1500" required><?php
                                                                                                    // Verifica se a descrição possui tags <br> e as substitui por quebras de linha reais
                                                                                                    $descricao_texto = str_replace('<br>', "\n", $jogo['descricao']);

                                                                                                    // Escapa caracteres especiais para exibição no HTML
                                                                                                    echo htmlspecialchars($descricao_texto);
                                                                                                    ?></textarea>
                </div>
            </div>
            <div class="content_gallery">
                <h2>Galeria do jogo</h2>
                <div class="galley_screens">
                    <label for="screen1" class="container_upload img_screen" id="img_screen1">
                        <img src="<?php echo $jogo['screen1']; ?>" alt="Screenshot 1" class="upload_img">
                        <input type="file" name="screen1" class="upload_input" id="screen1" accept=".png, .jpg, .jpeg, .jfif, .webp">
                    </label>

                    <label for="screen2" class="container_upload img_screen" id="img_screen2">
                        <img src="<?php echo $jogo['screen2']; ?>" alt="Screenshot 2" class="upload_img">
                        <input type="file" name="screen2" class="upload_input" id="screen2" accept=".png, .jpg, .jpeg, .jfif, .webp">
                    </label>

                    <label for="screen3" class="container_upload img_screen" id="img_screen3">
                        <img src="<?php echo $jogo['screen3']; ?>" alt="Screenshot 3" class="upload_img">
                        <input type="file" name="screen3" class="upload_input" id="screen3" accept=".png, .jpg, .jpeg, .jfif, .webp">
                    </label>
                </div>
            </div>

            <div class="content_submit">
                <div>
                    <label for="verificar" style="display: flex;">
                        <input type="checkbox" id="verificar" name="verificar" style="display: block;" required>
                        Eu atualizei corretamente a área de plataformas</label>
                    <input type="submit" id="enviar" name="Atualizar dados">
                    <!-- <label for="enviar">Atualizar dados do jogo</label> -->
                </div>
                <hr>
                <div class="submit_message">
                    <p>Atenção! Forneça os dados do jogo de maneira precisa. Lembre-se: a responsabilidade por informações incorretas ou incoerentes no cadastro recai sobre o <strong>DESENVOLVEDOR!</strong></p>
                    <p class="db_mensage">
                        <?php
                        @session_start();
                        if (isset($_SESSION['msg'])) {
                            echo "Relatório => ";
                            echo $_SESSION['msg'];
                            unset($_SESSION['msg']);
                        }
                        ?>
                    </p>
                </div>
                <div>
                    <img src="../imgs/logo_light_stardust.png" alt="logo stardust">
                    <h3>StarDust Play</h3>
                </div>
            </div>
        </section>
    </form>
    <script src="../javascript/formGame.js"></script>
</body>

</html>