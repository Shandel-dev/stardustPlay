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
            <div class="user_data">
                <?php
                echo "<div class=user_data_foto>";
                    echo "<img src='$usuario[foto]' class=user_foto>";
                    echo "<div>";
                        echo "<a class=user_exclui href=#><i class='fa-solid fa-trash'></i></a>";
                        echo "<a class=user_perfil href=#>Editar Perfil</a>";
                    echo "</div>";
                echo "</div>";

                echo "<div class=user_data_content>";
                    echo "<p>$usuario[ocupacao]</p>";
                    echo "<h1 class=user_nome>$usuario[nome]</h1>";

                    echo "<p>Seu e-mail</p>";
                    echo "<h3 class=user_email>$usuario[email]</h3>";

                    echo "<p>N° de telefone</p>";
                    echo "<h3 class = user_telefone>$usuario[telefone]</h3>";
                echo "</div>";
                ?>

            </div>

            <div class="user_info">
                <p>jogos comprados</p>
                <p>Conta criada em 2024-11-05</p>
                <p>Redes Sociais</p>
                <div class="perfil_social">
                    <a href="" class="social_link"><i class="fa-brands fa-instagram"></i></a>
                    <a href="" class="social_link"><i class="fa-brands fa-whatsapp"></i></a>
                    <a href="" class="social_link"><i class="fa-brands fa-facebook"></i></a>
                    <a href="" class="social_link"><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>
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