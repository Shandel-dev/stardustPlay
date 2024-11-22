<?php
require('connect.php');

$id_user = $_POST['idUser'];
$id_jogo = $_POST['idJogo'];
$plataforma = $_POST['plataforma'];

if(mysqli_query($conn, "INSERT INTO `tbl_user_jogo`
(`id_compra`, `versao`, `id_user`, `id_jogo`) VALUES
(default, '$plataforma', '$id_user', '$id_jogo');")){
    $msg = "Jogo adquirido com sucesso!";
}else{
    $msg = "Falha na compra do jogo<br>" . mysqli_error($conn);
}
header("location: pagGame.php?id=$id_jogo");