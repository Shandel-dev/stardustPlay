<?php

@session_start();

require('connect.php');

$nome = $_POST['nome'];
$email = $_POST['email'];
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
(`iduser`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`) VALUES
(NULL, '$nome', '$email', '$telefone', '$destino', '$senha_hash', '$ocupacao');")){
    $msg = "Dados salvos no banco de dados com sucesso!";
} else{
    $msg = "Algum erro ocorreu!";
}

$_SESSION['msg'] = $msg;

header("location: signIn.php");
exit();