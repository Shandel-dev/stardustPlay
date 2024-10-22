<link rel="stylesheet" href="../css/header.css">

<header>
    <nav class="cabecalho">
        <div class="container"> <!--primeiro container-->
            <input type="checkbox" class="container_menu_burguer_btn" id="sidebar">
            <label for="sidebar"><span class="container_menu_burguer"></span></label>
            <div class="container_sidebar"></div>
            <label for="sidebar" class="container_sidebar_close">
                <div class="close"></div>
            </label>

            <a href="pagInicial.php" class="linkHome">
                <img src="../imgs/Stardust_logo_mini.png" alt="Logo" class="linkHome_logo">
                <p>Stardust</p>
            </a>

        </div>
        <div class="container"> <!--segundo container-->
            <input type="search" name="pesquisar" placeholder="Pesquisar" class="container_pesquisa">
        </div>
        <div class="container"> <!--terceiro container-->
            
            <?php
            @session_start();
            if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
                echo "<p>" . $_SESSION['welcome'] . "</p>";
                echo "<img src=$_SESSION[foto]>";
                echo "<a href=logout.php>Sair da conta</a>";
                //echo "</a>";
            } else{
                echo "<div class=container_login onclick='javascript:linkLogin()'>";
                echo "<img src=../imgs/perfil_icon.svg alt=Login class=container_login_img>";
                echo "<p class=container_login_txt>Fazer login</p>";
                echo "</div>";
            }           
            ?>

        </div>
    </nav>
</header>

<script>
    function linkLogin(){
        window.location = "signIn.php";
    }
</script>