<link rel="stylesheet" href="../css/navbar.css">

<header class="cabecalho">
    <a href="" class="link_index">
        <img src="../imgs/logo_light_stardust.png" alt="" class="link_logo">
        <h2 class="link_titulo"><b>StarDust</b>Play</h2>
    </a>
    <ul class="lista_menu">
        <li class="lista_menu_item" id="btnCategoria">Categorias
            <ul class="lista_categorias_navbar" id="menuCategoria">
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">Ação/Aventura</a></li>
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">RPG</a></li>
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">Sobrevivência</a></li>
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">Simulação</a></li>
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">Esportes/Corrida</a></li>
                <li class="lista_categorias_item"><a href="" class="lista_categorias_ancora">Terror/Suspense</a></li>
            </ul>

        </li>
        <li class="lista_menu_item"><a href="gameHub.php" class="lista_menu_link">Jogos</a></li>
        <li class="lista_menu_item"><a href="
        <?php
        if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == 'Desenvolvedor') {
            echo "pagDev.php";
        } else {
            echo "javascript:notDev()";
        }
        ?>
        " class="lista_menu_link">Desenvolvedor</a></li>
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

<script>
    function notDev() {
        alert("Você não é um desenvolvedor!");
    }

    const avatar = document.getElementById('avatar')
    const dropdown = document.getElementById('drop_perfil')

    //Mostrar/Esconder menu
    avatar.addEventListener('click', (e) => {
        dropdown.style.display = dropdown.style.display == 'flex' ? 'none' : 'flex'
    })

    //Fechar menu
    document.addEventListener('click', (event) => {
        if (!avatar.contains(event.target) && !dropdown.contains(event.target)) {
            dropdown.style.display = "none"
        }
    })

    const btnCategoria = document.getElementById('btnCategoria')
    const menuCategoria = document.getElementById('menuCategoria')

    btnCategoria.addEventListener('click', (e) => {
        menuCategoria.style.display = menuCategoria.style.display == "flex" ? "none" : "flex"
    })
</script>