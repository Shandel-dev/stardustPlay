<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/pagListar.css">

<body>
    <?php include('header.php');
    require('connect.php');
    $texto = $_GET['texto'];

    $jogos = mysqli_query(
        $conn,
        "SELECT j.categoria, j.nome, j.preco, i.poster\n"

            . "FROM tbl_jogos as j\n"

            . "JOIN tbl_images as i\n"

            . "ON j.id_imgs = i.id_image where j.nome like '%$texto%'\n"

            . "ORDER BY j.nome;"
    );
    ?>

    <div class="container_resul">
        <p>
            <?php
            echo $jogos->num_rows . " resultado(s) para " . $texto;
            ?>
        </p>
    </div>

    <div class="content_cards">
        <?php
        while ($jogo = mysqli_fetch_assoc($jogos)) {
            echo "<div class= card_jogo>";

            echo "<img src=$jogo[poster]>";
            echo "<p class=jogo_cate>#" . $jogo['categoria'] . "</p>";
            echo "<h3 class=jogo_nome>" . $jogo['nome'] . "</h3>";
            echo "<p class=jogo_preco>R$ " . $jogo['preco'] . "</p>";

            echo "</div>";
        }
        ?>
    </div>

</body>

</html>