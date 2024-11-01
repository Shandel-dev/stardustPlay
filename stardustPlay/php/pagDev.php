<?php include('topo.php'); ?>
<?php @session_start(); ?>
<link rel="stylesheet" href="../css/pagDev.css">

<body>
    <?php include('header.php'); ?>
    <h1 class="dev_titulo">O que gostaria de fazer <?php echo $_SESSION['nome']; ?>?</h1>
    <main class="container_main">
        <div class="opcoes_item_dev" onclick="linkListarUsers()"> <!--primeiro item-->
            <div class="item_icons">
                <img src="../imgs/icon_lista.svg" alt="Listar usuários cadastrados">
            </div>
            <div class="item_description">
                <p class="description_hashtag">#usuarios</p>
                <h2 class="description_titulo">Listar Usuários</h2>
                <p class="description_text">Liste e gerencie todos os usuários cadastrados na <strong>StarDust</strong></p>
            </div>
        </div>
        <div class="opcoes_item_dev" onclick="linkFormGame()"> <!--segundo item-->
            <div class="item_icons">
                <img src="../imgs/icon_controle.svg" alt="Cadastrar jogo">
            </div>
            <div class="item_description">
                <p class="description_hashtag">#jogos</p>
                <h2 class="description_titulo">Cadastrar jogo</h2>
                <p class="description_text">Preencha o formulario para cadastrar um novo jogo a plataforma!</p>
            </div>
        </div>
        <label for="database" class="opcoes_item_dev"> <!--terceiro item-->
            <div class="item_icons">
                <img src="../imgs/database_icon.svg" alt="Ver DER do banco de dados">
            </div>
            <div class="item_description">
                <p class="description_hashtag">#database</p>
                <h2 class="description_titulo">Banco de dados</h2>
                <p class="description_text">Veja o Diagrama de Entidade-Relacionamento do banco de dados</p>
            </div>
        </label>

        <input type="checkbox" id="database">
        <span class="modal_database">
            <div class="close">
                <p class="database_titulo">Banco de dados db_stardust</p>
                <label for="database">
                    <i class="fa-solid fa-circle-xmark"></i>
                </label>
            </div>
            <img src="../imgs/printDatabase.png" alt="">
        </span>

        <label for="paleta" class="opcoes_item_dev"> <!--quarto item-->
            <div class="item_icons">
                <img src="../imgs/icon_pallete.svg" alt="Paleta de cores">
            </div>
            <div class="item_description">
                <p class="description_hashtag">#pallete</p>
                <h2 class="description_titulo">Paleta de cores</h2>
                <p class="description_text">Confira a paleta de cores usada para a construção do site</p>
            </div>
        </label>

        <input type="checkbox" id="paleta">
        <span class="modal_pallete">
            <div class="close">
                <p class="database_titulo">Paleta de Cores da StarDust</p>
                <label for="paleta">
                    <i class="fa-solid fa-circle-xmark"></i>
                </label>
            </div>
            <img src="../imgs/print_pallete.png" alt="Paleta de cores">
        </span>
    </main>

    <script>
        function linkListarUsers() {
            window.location = "listarUsers.php";
        }

        function linkFormGame() {
            window.location = "formGame.php";
        }
    </script>

</body>

</html>