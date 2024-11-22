<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/formGame.css">

<body>

    <?php include('navbar.php'); ?>

    <h1 class="titulo">Formulário para cadastro de um jogo</h1>
    <form action="formGame.act.php" method="post" enctype="multipart/form-data">
        <section class="container_datagame">
            <div class="content_info">

                <div class="info_data">

                    <div class="ctn_poster_logo">
                        <label for="poster" class="container_upload" id="img_poster">
                            <img src="" alt="Poster" class="upload_img" style="display: none;">
                            <span class="placeholder"><i class="fa-solid fa-upload"></i> Poster(2:3)</span>
                            <input type="file" name="poster" class="upload_input" id="poster" accept=".png, .jpg, .jpeg, .jfif, .webp, .avif" required>
                        </label>

                        <div class="ctn_logo_name">
                            <label for="logo" class="container_upload" id="img_logo">
                                <img src="" alt="Logo" class="upload_img" style="display: none;">
                                <span class="placeholder"><i class="fa-solid fa-upload"></i> Logo(1:1)</span>
                                <input type="file" name="logo" class="upload_input" id="logo" accept=".png, .jpg, .jpeg, .jfif, .webp" required>
                            </label>

                            <label for="nome">Nome do jogo:</label>
                            <input type="text" name="nome" id="nome" required>

                            <label for="empresa">Desenvolvedor/Empresa</label>
                            <input type="text" name="empresa" id="empresa" required>
                        </div>
                    </div>
                    <label for="youtube">Link do trailer(YouTube):</label>
                    <input type="text" name="trailer" id="youtube" required>

                    <label for="categoria_option">Categoria: </label>
                    <select name="categoria" id="categoria_option" required>
                        <option value="">Selecione</option>
                        <option value="Ação/Aventura">Ação/Aventura</option>
                        <option value="Sobrevivência">Sobrevivência</option>
                        <option value="RPG">RPG (Role-Playing Game)</option>
                        <option value="Simulação">Simulação</option>
                        <option value="Esportes/Corrida">Esportes/Corrida</option>
                        <option value="Terror/Suspense">Terror/Suspense</option>
                    </select>

                    <label for="preco">Preço(R$):
                        <input type="number" name="preco" id="preco" placeholder="R$0,00" step="0.01" min="0" required>
                    </label>

                    <label for="hashtag">#Hashtags</label>
                    <p id="mensage_tags"><i>Palavras-chaves que ajudam os usuários a encontrar este jogo</i></p>
                    <input type="text" name="hashtag" id="hashtag" placeholder="#hashtag1 #hashtag2 #hashtag3..." maxlength="250">

                    <h3 class="titulo_plataforma">Jogo disponível para:</h3>


                    <div class="container_lbl_plataforma">
                        <input type="checkbox" name="plataforma[]" id="playstation" value="1">
                        <label class="lbl_plataforma" for="playstation">PlayStation</label>

                        <input type="checkbox" name="plataforma[]" id="xbox" value="2">
                        <label class="lbl_plataforma" for="xbox">Xbox</label>

                        <input type="checkbox" name="plataforma[]" id="nintendo" value="3">
                        <label class="lbl_plataforma" for="nintendo">Nintendo</label>

                        <input type="checkbox" name="plataforma[]" id="computador" value="4">
                        <label class="lbl_plataforma" for="computador">Computador</label>

                        <input type="checkbox" name="plataforma[]" id="mobile" value="5">
                        <label class="lbl_plataforma" for="mobile">Mobile</label>
                    </div>

                </div>

                <div class="info_data">
                    <label for="banner" class="container_upload" id="img_banner">
                        <img src="" alt="Banner" class="upload_img" style="display: none;">
                        <span class="placeholder"><i class="fa-solid fa-upload"></i> Banner(16:9)</span>
                        <input type="file" name="banner" class="upload_input" id="banner" accept=".png, .jpg, .jpeg, .jfif, .webp" required>
                    </label>
                    <label for="slogan">Slogan</label>
                    <input type="text" name="slogan" id="slogan" required>

                    <label for="descricao" style="position: relative;">Descrição do jogo: <p id="qtnTxt">0/1500</p></label>
                    <textarea type="text" name="descricao" id="descricao" maxlength="1500" required></textarea>
                </div>
            </div>
            <div class="content_gallery">
                <h2>Galeria do jogo</h2>
                <div class="galley_screens">
                    <label for="screen1" class="container_upload img_screen" id="img_screen1">
                        <img src="" alt="Screenshot 1" class="upload_img" style="display: none;">
                        <span class="placeholder"><i class="fa-solid fa-upload"></i> Screenshot 1(16:9)</span>
                        <input type="file" name="screen1" class="upload_input" id="screen1" accept=".png, .jpg, .jpeg, .jfif, .webp" required>
                    </label>

                    <label for="screen2" class="container_upload img_screen" id="img_screen2">
                        <img src="" alt="Screenshot 2" class="upload_img" style="display: none;">
                        <span class="placeholder"><i class="fa-solid fa-upload"></i> Screenshot 2(16:9)</span>
                        <input type="file" name="screen2" class="upload_input" id="screen2" accept=".png, .jpg, .jpeg, .jfif, .webp" required>
                    </label>

                    <label for="screen3" class="container_upload img_screen" id="img_screen3">
                        <img src="" alt="Screenshot 3" class="upload_img" style="display: none;">
                        <span class="placeholder"><i class="fa-solid fa-upload"></i> Screenshot 3(16:9)</span>
                        <input type="file" name="screen3" class="upload_input" id="screen3" accept=".png, .jpg, .jpeg, .jfif, .webp" required>
                    </label>
                </div>
            </div>

            <div class="content_submit">
                <div>
                    <a href="pagDev.php"> <strong><- Voltar a página de Desenvolvedor</strong></a>
                    <input type="submit" value="Enviar dados">
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