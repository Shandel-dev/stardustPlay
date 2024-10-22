<?php
@session_start();

$_SESSION['logado'] = false;
unset($_SESSION['nome'], $_SESSION['foto']);
session_destroy();

header("location: pagInicial.php");
exit();