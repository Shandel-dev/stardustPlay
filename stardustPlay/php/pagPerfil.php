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

    $jogos = mysqli_query($conn, "SELECT j.nome, j.categoria, j.preco, i.logo, uj.versao, uj.data_compra FROM `tbl_user_jogo` as uj
    JOIN `tbl_jogos` j
    ON uj.id_jogo = j.id_jogo
    JOIN `tbl_images` as i
    ON j.id_imgs = i.id_image
    WHERE uj.id_user = '$idUser';");
    ?>
    <main class="container-perfil">
        <article class="perfil-user">
            <div class="user_data">
                <?php
                echo "<div class=user_data_foto>";
                echo "<img src='$usuario[foto]' class=user_foto>";
                echo "<div>";
                echo "<a class='user_excluir' href='javascript:excluirConta($idUser)'><i class='fa-solid fa-trash'></i></a>";
                echo "<a class='user_perfil' href='#'>Editar Perfil</a>";
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
                <p><?php echo $jogos->num_rows;?> jogos adquiridos</p>
                <p><sub>Data de criação de conta</sub></p>
                <?php echo "<p>" . $usuario['data_conta'] . "</p>";?>
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

                while ($jogo = mysqli_fetch_assoc($jogos)) {
                    echo "<div class=card-jogo>";
                    echo "<img src=$jogo[logo] class=card-jogo_image>";
                    echo "<div class=card-jogo_info>";

                    echo "<div class=info_main>";
                    echo "<p><sub>Comprado em " . $jogo['data_compra'] . "</sub></p>";
                    echo "<h2>" . $jogo['nome']  . "</h2>";
                    echo "</p>#" . $jogo['categoria'] . "</p>";
                    echo "</div>";

                    echo "<div class=info_links>";
                    echo "<p><sub>Versão: " . $jogo['versao'] . "</sub></p>";
                    echo "<a href=# class=link_play><b><i class='fa-solid fa-play'></i>Jogar</b></a>";
                    echo "</div>";

                    echo "</div>";
                    echo "</div>";
                }
                ?>
            </div>
        </article>
    </main>

    <script>
        function excluirConta(idUser){
            resposta = confirm("Deseja excluir sua conta?\nEsta ação não pode ser revertida!");

            if(resposta){
                window.location = "excluirUser?id=" + idUser;
            }else{
                alert("Exclusão Cancelada");
            }
        }
    </script>

</body>

</html>