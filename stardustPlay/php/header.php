<link rel="stylesheet" href="../css/header.css">

<header>
    <nav class="cabecalho">
        <div class="container"> <!--primeiro container-->
            <input type="checkbox" class="container_menu_burguer_btn" id="sidebar">
            <label for="sidebar"><span class="container_menu_burguer"></span></label>
            <div class="container_sidebar">

            </div>
            <a href="pagInicial.php" class="linkHome">
                <img src="../imgs/Stardust_logo_mini.png" alt="Logo" class="linkHome_logo">
                <p>Stardust</p>
            </a>

        </div>
        <div class="container"> <!--segundo container-->
            <input type="search" name="pesquisar" placeholder="Pesquisar" class="container_pesquisa">
        </div>
        <div class="container"> <!--terceiro container-->
            
            <div class="container_login" onclick="javascript:linkLogin()">
                <img src="../imgs/perfil_icon.svg" alt="Login" class="container_login_img">
                <p class="container_login_txt">Fazer login</p>
            </div>
        </div>
    </nav>
</header>

<script>
    function linkLogin(){
        window.location = "login.php";
    }
</script>