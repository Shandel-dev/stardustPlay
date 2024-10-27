<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/listarUser.css">

<body>
    <?php

    include('header.php');
    require('connect.php');

    $usuarios = mysqli_query($conn, "SELECT * FROM `tbl_usuarios`;");
    
    echo var_dump($usuarios);

    echo "<div class=container_profiles>";
    while($user = mysqli_fetch_assoc($usuarios)){
        echo "<div class=card_profile>";

            echo "<img src= $user[foto]>";
            echo "<h4>Nome: $user[nome]</h4>";
            echo "<p>$user[ocupacao]</p>";
            echo "<p>Email: $user[email]</p>";
            echo "<p>Telefone: $user[telefone]</p>";
            echo "<a href=javascript:excluirUser($user[id_user])>Banir/Excluir usuário</a>";
        echo "</div>";
    }
    echo "</div>";
    ?>

    <script>
        function excluirUser(iduser){
            resposta = confirm("Deseja banir/excluir este usuário?");
            if(resposta){
                window.location = "excluirUser.php?id=" +iduser;
            } else{
                console.log("resposta falsa");
            }
        }
    </script>

</body>

</html>