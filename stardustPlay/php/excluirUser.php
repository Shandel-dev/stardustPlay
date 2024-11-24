<?php

require('connect.php');
$id = $_GET['id'];
@session_start();

$usuarios = mysqli_query($conn, "SELECT * FROM `tbl_usuarios` WHERE `id_user` = '$id';");
$user = mysqli_fetch_assoc($usuarios);

$foto_padrao = '../profilePhotos/photoPadrao.png';


if (file_exists($user['foto']) && $user['foto'] != $foto_padrao) {
    unlink($user['foto']);
    $msg = "foto excluida com sucesso";
} else {
    $msg = "Foto de perfil inexistente ou já excluida";
}

mysqli_query($conn, "DELETE FROM `tbl_usuarios` WHERE `id_user` = '$id'");
mysqli_query($conn, "DELETE FROM `tbl_user_jogo` WHERE `id_user` = '$id'");

if ($id == $_SESSION['iduser']) {
    $linkDestino = "logout.php";
} else {
    $linkDestino = "listarUsers.php";
}

header("location:" . $linkDestino);
exit();
