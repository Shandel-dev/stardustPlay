<?php

require('connect.php');

$id_user =  $_POST['idUser'];
$id_jogo = $_POST['idJogo'];
$versao = $_POST['versao'];
$payment = $_POST['payment'];

if(mysqli_query($conn, "INSERT INTO `tbl_user_jogo`
(`id_compra`, `versao`, `id_user`, `id_jogo`) VALUES
(default, '$versao', '$id_user', '$id_jogo');")){
    $msg = "Compra realizada com sucesso!";
}else{
    $msg = "Falha ao efetuar a compra!" . mysqli_error($conn);
}

header("location: comprarJogo.php?id=$id_jogo");
exit();