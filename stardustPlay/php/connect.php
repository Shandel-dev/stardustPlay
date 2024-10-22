<?php
define("SERVER", 'localhost');
define("USUARIO", 'root');
define("SENHA", '');
define("DATABASE", 'db_stardust');

$conn = mysqli_connect(SERVER, USUARIO, SENHA, DATABASE);
mysqli_query($conn, "SET NAMES utf8");