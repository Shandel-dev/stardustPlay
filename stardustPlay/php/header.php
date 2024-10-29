<link rel="stylesheet" href="../css/header.css">

<header>
    <nav class="cabecalho">
        <div class="container"> <!--primeiro container-->
            <a href="pagInicial.php" class="linkHome">
                <img src="../imgs/logo_light_stardust.png" alt="Logo" class="linkHome_logo container_imgs">
            </a>
            <a href="pagJogos.php">
                <p>JOGOS</p>
            </a>
            <a href="pagCate.php">
                <p>CATEGORIAS</p>
            </a>
            <?php
                if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor") {
                    echo "<a href=pagDev.php>";
                    echo "Dev<i class='fa-solid fa-code'></i>";
                    echo "</a>";
                }
            ?>
        </div>

        <!--segundo container-->
        <div class="content_pesquisa">
            <input type="search" id="pesquisar" name="pesquisar" placeholder="Pesquisar" class="container_pesquisa">
            <img src="../imgs/icon_lupa.svg" alt="pesquisar" onclick="javascript:pesquisar()">
        </div>

        <div class="container"> <!--terceiro container-->

        <?php
        @session_start();
        if (isset($_SESSION['logado']) && $_SESSION['logado'] == true) {
            //echo "<div class=container_logado>";
            echo "<p>" . $_SESSION['welcome'] . "</p>";
            echo "<img src=$_SESSION[foto] class='logado_foto container_imgs'>";
            echo "<a href=logout.php><img src=../imgs/icon_logout.svg class='container_imgs'></a>";
            //echo "</div>";
        } else {
            echo "<div class=container_login onclick='javascript:linkLogin()'>";
            echo "<img src=../imgs/perfil_icon_dark.svg alt=Login class=container_login_img>";
            echo "<p class=container_login_txt>Fazer login</p>";
            echo "</div>";
        }
        ?>
        </div>
    </nav>
</header>

<script>
    function linkLogin() {
        window.location = "signIn.php";
    }
    function pesquisar(){
        let texto = document.querySelector('#pesquisar').value;
        if(texto != ""){
            //window.location = "pesquisar.act.php?texto="+texto;
            window.location = "pagListar?texto=" + encodeURIComponent(texto);
        } else{
            console.log("nada escrito");
        }
        
    }
</script>