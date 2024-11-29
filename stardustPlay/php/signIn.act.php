<?php
@session_start();
require('connect.php');


$email_info = $_POST['email'];
$senha_info = $_POST['senha'];

$usuario = mysqli_query($conn, "SELECT * FROM `tbl_usuarios` where `email` = '$email_info'");

//verifica se retorno exatamente 1 email
if($usuario ->num_rows == 1){
    $usuario = mysqli_fetch_assoc($usuario);
    if(password_verify($senha_info, $usuario['senha'])){
        $_SESSION['logado'] = true;
        $_SESSION['nome'] = $usuario['nome'];
        $_SESSION['foto'] = $usuario['foto'];
        $_SESSION['ocupacao'] = $usuario['ocupacao'];
        $_SESSION['iduser'] = $usuario['id_user'];

        $msg = "Seja bem vindo <span>" . $_SESSION['nome'] . "</span>!";
        $irPara = "location: pagInicial.php";
    } else{
        $msg = "Usuário ou senha incorretos!";
        $irPara = "location: signIn.php";
    }
} else{
    $msg = "Usuário ou senha incorretos!";
    $irPara = "location: signIn.php";
}

$_SESSION['msg'] = $msg;
header($irPara);
exit();