<?php include('topo.php'); ?>
<?php @session_start(); ?>
<link rel="stylesheet" href="../css/pagDev.css">

<body>
    <?php include('header.php'); ?>
    <h1 class="dev_titulo">O que gostaria de fazer <?php echo $_SESSION['nome']; ?>?</h1>
    <main class="container_opcoes">
        <div class="opcoes_item">       <!--primeiro item-->
            <div class="item_icons">
                <img src="../imgs/icon_lista.svg" alt="">
                <img src="../imgs/icon_peoplesupervisor.svg" alt="">
            </div>
            <div class="item_description">
                <h3>Listar pessoas</h3>
                <p>Liste e gerencie pessoas cadastradas</p>
            </div>
        </div>
        <div class="opcoes_item">       <!--segundo item-->
            <div class="item_icons">
                <img src="" alt="">
                <img src="" alt="">
            </div>
            <div class="item_description">
                <h3></h3>
                <p></p>
            </div>
        </div>
        <div class="opcoes_item">       <!--terceiro item-->
            <div class="item_icons">
                <img src="" alt="">
                <img src="" alt="">
            </div>
            <div class="item_description">
                <h3></h3>
                <p></p>
            </div>
        </div>
        <div class="opcoes_item">       <!--quarto item-->
            <div class="item_icons">
                <img src="" alt="">
                <img src="" alt="">
            </div>
            <div class="item_description">
                <h3></h3>
                <p></p>
            </div>
        </div>
    </main>

    <?php include('footer.php'); ?>
</body>

</html>