<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/pagListar.css">

<body>
    <?php include('navbar.php');
    require('connect.php');
    $texto = $_GET['texto'];

    $jogos = mysqli_query(
        $conn,
        "SELECT j.id_jogo, j.categoria, j.nome, j.preco, i.poster\n"

            . "FROM tbl_jogos as j\n"

            . "JOIN tbl_images as i\n"

            . "ON j.id_imgs = i.id_image where j.nome like '%$texto%' OR j.hashtag like '%$texto%' OR j.categoria = '$texto'\n"

            . "ORDER BY 
                CASE 
                    WHEN j.nome LIKE '%$texto%' THEN 1 
                    WHEN j.hashtag LIKE '%$texto%' THEN 2 
                    ELSE 3 
                END,
                j.nome;"
    );
    ?>

    <div class="container_resul">
        <h2>
            <?php
            //echo $jogos->num_rows . " resultado(s) para " . $texto;
            echo "Exibindo resultados para " . $texto . " (<small>" . $jogos->num_rows . " resultado(s)</small>)";
            ?>
        </h2>
    </div>

    <div class="content_cards">
        <?php
        while ($jogo = mysqli_fetch_assoc($jogos)) {
            $preco_sup = str_replace(".", "<sup> ", $jogo['preco']);

            echo "<div class= card_jogo onclick=javascript:pagCompra($jogo[id_jogo])>";

            echo "<img src=$jogo[poster] class=jogo_poster>";

            echo "<div class=container_cate_plata>";
                echo "<p class=jogo_cate><sup>#" . $jogo['categoria'] . "</sup></p>";
                echo "<div class=container_plataformas>";
                
                    $plataformas = mysqli_query($conn, "SELECT p.logo
                    FROM `tbl_jogos` as j
                    JOIN `tbl_jogo_plataforma` as jp
                    ON j.id_jogo = jp.id_jogo
                    JOIN `tbl_plataforma` as p
                    ON p.id_plataforma = jp.id_plataforma
                    WHERE j.id_jogo = '$jogo[id_jogo]';");

                    while($plataforma = mysqli_fetch_assoc($plataformas)){
                        echo "<img src=" . $plataforma['logo'] . ">";
                    }

                echo "</div>";
            echo "</div>";

            echo "<h3 class=jogo_nome>" . $jogo['nome'] . "</h3>";
            echo "<h4 class=jogo_preco>R$ " . $preco_sup . "</sup></h4>";

            echo "</div>";
        }
        ?>
    </div>
    <script>
        function pagCompra(idJogo){
            window.location = "pagGame.php?id=" + idJogo;
        }
    </script>
</body>

</html>