<?php include('topo.php'); ?>
<?php session_start(); ?>
<link rel="stylesheet" href="../css/pagInicial.css">

<body>
    <?php include('header.php'); ?>

    <main class="container_pagina">

        <section class="section_pesquisar">
            <h1 class="pesquisar-titulo">StarDust</h1>
            <form action="pagListar.php" method="get" id="pesquisarJogo"></form>
            <input type="search" name="texto" placeholder="O que gostaria de jogar hoje?" form="pesquisarJogo" required>
        </section>

        <section class="section_navegar">
            <h2 class="navegar-subtitulo">Navegue por</h2>
            <div class="container_button">
                <a href="pagJogos.php" class="button_link">
                    <i class="fa-solid fa-gamepad"></i>
                    <p>JOGOS</p>
                </a>
                <a href="
                <?php
                if(isset($_SESSION['logado']) && $_SESSION['logado'] == true){
                    echo "pagPerfil.php";
                } else{
                    echo "javascript:notLogado()";
                }
                ?>
                " class="button_link">
                    <i class="fa-solid fa-user"></i>
                    <p>SEU PERFIL</p>
                </a>

                <a href="
                <?php
                if(isset($_SESSION['ocupacao']) && $_SESSION['ocupacao'] == "Desenvolvedor"){
                    echo "pagDev.php";
                }else{
                    echo "javascript:notDev()";
                }
                ?>
                " class="button_link">
                    <i class="fa-solid fa-code"></i>
                    <p>DEV</p>
                </a>
            </div>
        </section>

        
        <section class="section_categoria">
            <hr class="linha">
            <h3 class="categoria-subtitulo">Categoria de jogos</h3>
            <ul class="lista_categorias">
                <li class="lista_categoria_item"><a href="pagListar?texto=Ação/Aventura" class="lista_categoria_link"><i class="fa-solid fa-map"></i> Ação/Aventura</a></li>
                <li class="lista_categoria_item"><a href="pagListar?texto=RPG" class="lista_categoria_link"><i class="fa-solid fa-dragon"></i> RPG(Role-Playing Game)</a></li>
                <li class="lista_categoria_item"><a href="pagListar?texto=Sobrevivência" class="lista_categoria_link"><i class="fa-solid fa-fire"></i> Sobrevivência</a></li>
                <li class="lista_categoria_item"><a href="pagListar?texto=Simulação" class="lista_categoria_link"><i class="fa-solid fa-mask"></i> Simulação</a></li>
                <li class="lista_categoria_item"><a href="pagListar?texto=Esportes/Corrida" class="lista_categoria_link"><i class="fa-solid fa-basketball"></i> Esportes/Corrida</a></li>
                <li class="lista_categoria_item"><a href="pagListar?texto=Terror/Horror" class="lista_categoria_link"><i class="fa-solid fa-ghost"></i> Terror/Horror</a></li>
            </ul>
        </section>

    </main>

    <script>
        function notDev() {
            alert("Você não é um desenvolvedor!");
        }
        function notLogado(){
            alert("Entre ou Cadastre-se na StarDust!");
        }
    </script>
</body>

</html>