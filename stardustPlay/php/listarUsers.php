<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/listarUser.css">

<body>
    <?php

    include('navbar.php');
    require('connect.php');

    $usuarios = mysqli_query($conn, "SELECT * FROM `tbl_usuarios`
    ORDER BY ocupacao, id_user;");

    echo "<div class=container_profiles>";
    while ($user = mysqli_fetch_assoc($usuarios)) {
        echo "<div class=card_profile>";

        echo "<p><sub>$user[ocupacao]</sub></p>";
        echo "<img src= $user[foto]>";
        echo "<p><sub>Nome</sub></p>";
        echo "<h3>$user[nome]</h3>";
        
        echo "<p><sub>Email</sub></p>";
        echo "<p>$user[email]</p>";
        
        echo "<p><sub>Telefone</sub></p>";
        echo "<p>$user[telefone]</p>";
        echo "<a href=javascript:excluirUser($user[id_user])><i class='fa-solid fa-user-slash'></i> Excluir/Banir Usuário</a>";
        echo "</div>";
    }
    echo "</div>";
    ?>

    <script>
        function excluirUser(iduser) {
            resposta = confirm("Deseja banir/excluir este usuário?");
            if (resposta) {
                window.location = "excluirUser.php?id=" + iduser;
            } else {
                console.log("resposta falsa");
            }
        }
    </script>

</body>

</html>