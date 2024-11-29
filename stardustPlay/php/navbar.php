<link rel="stylesheet" href="../css/navbar.css">

<header class="cabecalho">
    <a href="pagInicial.php" class="link_index">
        <img src="../imgs/logo_light_stardust.png" alt="" class="link_logo">
        <h2 class="link_titulo"><b>StarDust</b> Play</h2>
    </a>
    <ul class="lista_menu">
        <li class="lista_menu_item"><a href="gameHub.php" class="lista_menu_link" style="padding: 0.3em;"><i class="fa-solid fa-gamepad"></i> Jogos</a></li>
        <li class="lista_menu_item" id="btnCategoria">
            <input type="checkbox" name="lbl_categoria" id="lbl_categoria" style="display: none;">
            <label for="lbl_categoria"><i class="fa-solid fa-caret-right"></i> Categorias</label>
            <ul class="lista_categorias_navbar" id="dropdown_categorias">
                <li class="lista_categorias_item"><a href="pagListar?texto=Ação/Aventura" class="lista_categorias_ancora">Ação/Aventura</a></li>
                <li class="lista_categorias_item"><a href="pagListar?texto=RPG" class="lista_categorias_ancora">RPG</a></li>
                <li class="lista_categorias_item"><a href="pagListar?texto=Sobrevivência" class="lista_categorias_ancora">Sobrevivência</a></li>
                <li class="lista_categorias_item"><a href="pagListar?texto=Simulação" class="lista_categorias_ancora">Simulação</a></li>
                <li class="lista_categorias_item"><a href="pagListar?texto=Esportes/Corrida" class="lista_categorias_ancora">Esportes/Corrida</a></li>
                <li class="lista_categorias_item"><a href="pagListar?texto=Terror/Suspense" class="lista_categorias_ancora">Terror/Suspense</a></li>
            </ul>
        </li>
        <li class="lista_menu_item"><a href="
        <?php
        @session_start();
        if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor") {
            echo "pagDev.php";
        } else {
            echo "javascript:sweet_message('Funções de Desenvolvedor Restritas')";
        }
        ?>
        " class="lista_menu_link"><i class="fa-solid fa-code"></i> Desenvolvedor</a></li>
        <li class="lista_menu_item"><a href="#" onclick="sweet_message('Em breve...')"><i class="fa-solid fa-headset"></i> Suporte</a></li>
    </ul>
    <div class="container3">
        <form action="pagListar.php" method="get" id="pesquisarNavbar"></form>
        <input type="search" name="texto" id="" placeholder="Pesquise por jogo" form="pesquisarNavbar">
        <?php
        @session_start();
        if (isset($_SESSION['logado']) && $_SESSION['logado'] == true) {
            echo "<img src='$_SESSION[foto]' class=image_logado id=avatar>";

            echo "<div class=perfil_card id=drop_perfil>";
            echo "<h2 class=perfil_nome_usuario>" . $_SESSION['nome'] . "</h2>";
            echo "<p class = perfil_ocupacao_usuario>" . $_SESSION['ocupacao'] . "</p>";
            echo "<ul class=perfil_lista>";
            echo "<li class='perfil_lista_item'>";
            echo "<a href='pagPerfil.php' class=perfil_link><i class='fa-solid fa-user'></i> Meu Perfil</a>";
            echo "</li>";
            echo "<li class='perfil_lista_item'>";
            echo "<a href='#' class=perfil_link><i class='fa-solid fa-pen-to-square'></i> Editar Perfil</a>";
            echo "</li>";
            echo "<li class='perfil_lista_item'>";
            echo "<a href='logout.php' class=perfil_link><i class='fa-solid fa-right-from-bracket'></i> Log Out</a>";
            echo "</li>";
            echo "</ul>";
            echo "</div>";
        } else {
            echo "<a href='signIn' class=link_login><i class='fa-regular fa-circle-user'></i> Fazer Login</a>";
        }
        ?>
    </div>

</header>

<script src="../javascript/navbar.js"></script>