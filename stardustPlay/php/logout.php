<?php
@session_start();

$_SESSION['logado'] = false;
unset($_SESSION['nome'], $_SESSION['foto']);

$_SESSION['msg'] = "Você saiu da sua conta";

//session_destroy();

header("location: pagInicial.php");
exit();