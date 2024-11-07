<?php
include('topo.php');
require('connect.php');
@session_start();
?>
<link rel="stylesheet" href="../css/pagPerfil.css">

<body>

    <?php include('header.php');
    $idUser = $_SESSION['iduser'];

    $usuarios = mysqli_query($conn, "SELECT * FROM `tbl_usuarios`
    WHERE `id_user` = '$idUser';");

    $usuario = mysqli_fetch_assoc($usuarios);
    ?>
    <main class="container-perfil">
        <article class="perfil-user">
            <?php
            echo "<img src='$usuario[foto]' class=user_foto>";

            echo "<div>";
            echo "<p class=user_ocupacao>$usuario[ocupacao]</p>";
            echo "<h1 class=user_nome>$usuario[nome]</h1>";
            echo "</div>";

            echo "<div>";
            echo "<p class=user_info>Seu e-mail</p>";
            echo "<h3 class=user_email>$usuario[email]</h3>";
            echo "</div>";

            echo "<div>";
            echo "<p class=user_info>N° de telefone</p>";
            echo "<h3 class = user_telefone>$usuario[telefone]</h3>";
            echo "</div>";
            ?>

            <div class="perfil_social">
                <a href="" class="social_link"><i class="fa-brands fa-instagram"></i></a>
                <a href="" class="social_link"><i class="fa-brands fa-whatsapp"></i></a>
                <a href="" class="social_link"><i class="fa-brands fa-facebook"></i></a>
                <a href="" class="social_link"><i class="fa-brands fa-youtube"></i></a>
            </div>
            <a href='#' class='user_editar'>Editar perfil</a>
        </article>
        <article class="perfil-jogos">
            <h1 class="jogos_titulo_sessao">
                Meus Jogos
            </h1>
            <hr>
            <h3>Veja sua coleção pessoal de jogos em um só lugar!</h3>

            <div class="container_jogos">

                <?php
                $jogos = mysqli_query($conn, "SELECT j.nome, j.categoria, j.preco, i.logo, uj.versao, uj.data_compra FROM `tbl_user_jogo` as uj
                JOIN `tbl_jogos` j
                ON uj.id_jogo = j.id_jogo
                JOIN `tbl_images` as i
                ON j.id_imgs = i.id_image
                WHERE uj.id_user = '$idUser';");
                while ($jogo = mysqli_fetch_assoc($jogos)) {
                    echo "<div class=card_jogo>";
                    echo "<img src=$jogo[logo]>";
                    echo "</div>";
                }
                ?>
            </div>
        </article>
    </main>


</body>

</html>