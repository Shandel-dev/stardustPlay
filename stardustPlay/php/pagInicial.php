<?php include('topo.php'); ?>
<?php session_start(); ?>
<link rel="stylesheet" href="../css/pagInicial.css">

<body>
    <?php include('header.php'); ?>

    <section class="banner">
        <div class="banner_container">
            <a href="pagJogos.php">     <!--jogos-->
                <div class="banner_container_item"> 
                    <img src="../imgs/controle_icon.svg" alt="">
                    <p>JOGOS</p>
                </div>
            </a>
            <a href="pagCate.php">     <!--categorias-->
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

    <script>
        function notDev() {
            alert("Você não é um desenvolvedor!");
        }
    </script>
</body>

</html>