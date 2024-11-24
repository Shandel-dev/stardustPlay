<?php

@session_start();

require('connect.php');

$email = $_POST['email'];

$verifica_email = mysqli_query($conn, "SELECT * FROM `tbl_usuarios`
WHERE `email` = '$email'");

if($verifica_email->num_rows == 0){
    $nome = $_POST['nome'];
    $telefone = $_POST['telefone'];
    $senha = $_POST['senha'];
    $ocupacao = $_POST['ocupacao'];
    
    //define o caminho da foto padrão
    $foto_padrao = '../profilePhotos/photoPadrao.png';
    $senha_hash = password_hash($senha, PASSWORD_BCRYPT);
    
    //verifica se uma nova foto foi enviada
    if(isset($_FILES['foto']) && $_FILES['foto']['error'] == 0){
    
        $foto = $_FILES['foto'];
        $destino = "../profilePhotos/" . md5(time() . $foto['name']) . ".jpg";
        move_uploaded_file($foto['tmp_name'], $destino);
    } else{ //caso nenhuma foto tenha sido enviada
        $destino = $foto_padrao;
    }

    if(mysqli_query($conn, "INSERT INTO `tbl_usuarios`
    (`id_user`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`) VALUES
    (NULL, '$nome', '$email', '$telefone', '$destino', '$senha_hash', '$ocupacao');")){
        $msg = "Conta criada com sucesso!";
        $pagDestino = "signIn.php";
    } else{
        $msg = "Erro ao cadastrar usuário!<br>" . mysqli_error($conn);
        $pagDestino = "signUp.php";
    }
} else{
    $msg = "Email já existente!<br>Faça login ou cadastre-se com outro email!";
    $pagDestino = "signUp.php";
}

$_SESSION['msg'] = $msg;
header("location: $pagDestino");
exit();