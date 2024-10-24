<?php include('topo.php'); ?>
<?php session_start(); ?>
<link rel="stylesheet" href="../css/pagInicial.css">

<body>
    <?php include('header.php'); ?>

    <section class="banner">
        <div class="banner_container">
            <a href="">     <!--jogos-->
                <div class="banner_container_item"> 
                    <img src="../imgs/controle_icon.svg" alt="">
                    <p>JOGOS</p>
                </div>
            </a>
            <a href="">     <!--categorias-->
                <div class="banner_container_item"> 
                    <img src="../imgs/categoria_icon.svg" alt="">
                    <p>CATEGORIAS</p>
                </div>
            </a>
            <a href="">     <!--perfil-->
                <div class="banner_container_item">
                    <img src="../imgs/perfil_icon.svg" alt="">
                    <p>PERFIL</p>
                </div>
            </a>

            <!--desenvolvedor-->
            <a href="
                <?php
                if (isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor") {
                    echo "pagDev.php";
                } else {
                    echo "javascript:notDev()";
                }
                ?>
            ">
                <div class="banner_container_item"> 
                    <img src="../imgs/admpanel_icon.svg" alt="">
                    <p>DESENVOLVEDOR</p>
                </div>
            </a>
        </div>
    </section>

    <section class="myDescription">
        <div class="myDescription_msg">
            <h1>StarDust Play</h1>
            <h3>Aventura além das estrelas</h3>
            <p>A StarDust Play é uma plataforma de jogos online, criada por um aluno da ETEC, que reúne títulos das principais empresas do mercado, como PlayStation, Xbox, Nintendo e muito mais. Nosso objetivo é oferecer uma experiência única, com uma vasta seleção de jogos de diversos consoles e gêneros, tudo em um único lugar. Seja você fã de clássicos ou dos lançamentos mais recentes, a StarDust Play proporciona um espaço onde todos os gamers podem se conectar, competir e se divertir. Explore o universo dos jogos com a gente!</p>
        </div>
        <img src="../imgs/Stardust_logobg.png" alt="">
    </section>

    <?php include('footer.php'); ?>
    <script>
        function notDev() {
            alert("Você não é um desenvolvedor!");
        }
    </script>
</body>

</html>