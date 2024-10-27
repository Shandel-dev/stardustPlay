<?php

require('connect.php');
$id = $_GET['id'];

var_dump($id);

$usuarios = mysqli_query($conn, "SELECT * FROM `tbl_usuarios` WHERE `id_user` = '$id';");
$user = mysqli_fetch_assoc($usuarios);

$msg = "";
$foto_padrao = '../profilePhotos/photoPadrao.png';


if(file_exists($user['foto']) && $user['foto'] != $foto_padrao){
    unlink($user['foto']);
    $msg = "foto excluida com sucesso";
} else{
    $msg = "Foto de perfil inexistente ou já excluida";
}

echo $msg;

mysqli_query($conn, "DELETE FROM `tbl_usuarios` WHERE `id_user` = '$id'");

header("location: listarUser.php");
exit();


