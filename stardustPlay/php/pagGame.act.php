<?php
@session_start();
require('connect.php');

$id_user = $_POST['idUser'];
$id_jogo = $_POST['idJogo'];
$nome = $_POST['nomeJogo'];
$plataforma = $_POST['plataforma'];

if(mysqli_query($conn, "INSERT INTO `tbl_user_jogo`
(`id_compra`, `versao`, `id_user`, `id_jogo`) VALUES
(default, '$plataforma', '$id_user', '$id_jogo');")){
    $msg = "Parabéns! <span>$nome</span> foi adicionado à sua conta com sucesso!";
}else{
    $msg = "Falha na compra do jogo<br>" . mysqli_error($conn);
}

$_SESSION['msg'] = $msg;

header("location: pagGame.php?id=$id_jogo");