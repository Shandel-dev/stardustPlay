<?php
@session_start();

require('connect.php');

extract($_FILES);

//dados do jogo
$nome = $_POST['nome'];
$nome_escape = mysqli_real_escape_string($conn, $nome);

$empresa = $_POST['empresa'];
$empresa_escape = mysqli_real_escape_string($conn, $empresa);

$categoria = $_POST['categoria'];
$preco = $_POST['preco'];
$plataformas = $_POST['plataforma']; //array de plataformas selecionadas
$hashtag = $_POST['hashtag'];
$slogan = $_POST['slogan'];
$slogan_escape = mysqli_real_escape_string($conn, $slogan);

$trailer = $_POST['trailer'];

$preco_str = str_replace(",", ".", $preco);

$descricao = $_POST['descricao'];
$descricao_br = mysqli_real_escape_string($conn, $descricao);

$trailer_embed = str_replace("https://youtu.be/", "https://www.youtube.com/embed/", $trailer);

//https://youtu.be/Azq5IOrFtEI?si=IcQCCfacpzurnhsU
//https://www.youtube.com/embed/Azq5IOrFtEI?si=IcQCCfacpzurnhsU

//imagens do jogo
/*$poster = $_FILES['poster'];
$logo = $_FILES['logo'];
$banner = $_FILES['banner'];
$screen1 = $_FILES['screen1'];
$screen2 = $_FILES['screen2'];
$screen3 = $_FILES['screen3'];*/

//obtendo a extensao de cada imagem, e em seguida um novo nome hash
$poster_ext = pathinfo($poster['name'], PATHINFO_EXTENSION);
$poster_hash = "../image_jogo/poster/" . md5(time() . $poster['name']) . "." . $poster_ext;

$logo_ext = pathinfo($logo['name'], PATHINFO_EXTENSION);
$logo_hash = "../image_jogo/logo/" . md5(time() . $logo['name']) . "." . $logo_ext;

$banner_ext = pathinfo($banner['name'], PATHINFO_EXTENSION);
$banner_hash = "../image_jogo/banner/" . md5(time() . $banner['name']) . "." . $banner_ext;

$screen1_ext = pathinfo($screen1['name'], PATHINFO_EXTENSION);
$screen1_hash = "../image_jogo/screen/" . md5(time() . $screen1['name']) . "." . $screen1_ext;

$screen2_ext = pathinfo($screen2['name'], PATHINFO_EXTENSION);
$screen2_hash = "../image_jogo/screen/" . md5(time() . $screen2['name']) . "." . $screen2_ext;

$screen3_ext = pathinfo($screen3['name'], PATHINFO_EXTENSION);
$screen3_hash = "../image_jogo/screen/" . md5(time() . $screen3['name']) . "." . $screen3_ext;

//movendo os arquivos em seu diretorio de destino

move_uploaded_file($poster['tmp_name'], $poster_hash);
move_uploaded_file($logo['tmp_name'], $logo_hash);
move_uploaded_file($banner['tmp_name'], $banner_hash);
move_uploaded_file($screen1['tmp_name'], $screen1_hash);
move_uploaded_file($screen2['tmp_name'], $screen2_hash);
move_uploaded_file($screen3['tmp_name'], $screen3_hash);

//inserindo dados na table tbl_images
if(mysqli_query($conn, "INSERT INTO `tbl_images`
(`id_image`,`poster`,`logo`,`banner`, `trailer`, `screen1`,`screen2`,`screen3`) VALUES
(DEFAULT, '$poster_hash', '$logo_hash', '$banner_hash', '$trailer_embed', '$screen1_hash', '$screen2_hash', '$screen3_hash');")){
    $msg_image = "Imagens guardadas com sucesso! - ";
} else{
    $msg_image = "Algo deu errado no upload das imagens (" . mysqli_error($conn) . ") - ";
}

$id_image = $conn->insert_id;   //recupera o ultimo id gerado na tbl_images

//inserindo dados na tabela tbl_jogos
if (mysqli_query($conn, "INSERT INTO tbl_jogos
(`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `hashtag`, `slogan`, `descricao`, `id_imgs`) VALUES
(DEFAULT, '$nome_escape', '$empresa_escape', '$categoria', '$preco_str', '$hashtag', '$slogan_escape', '$descricao_br','$id_image');")) {
    $msg_dados .= "Sucesso! O jogo <span>$nome</span> já está disponível para todos os usuários!<br>";
} else {
    $msg_dados .= "Erro no envio de dados para a tbl_jogos! (" . mysqli_error($conn) . ")<br>";
}

$id_jogo = $conn->insert_id;    //recupera o id gerado na tbl_jogos

//inserindo dados na tabela tbl_jogo_plataforma
foreach($plataformas as $id_plataforma){
    if(mysqli_query($conn, "INSERT INTO `tbl_jogo_plataforma`
    (`id`, `id_jogo`, `id_plataforma`) VALUES
    (DEFAULT, '$id_jogo', '$id_plataforma');")){
        $msg_cate .= "|";
    } else{
        $msg_cate .= "- Ocorreu algum erro" . mysqli_error($conn);
    }
}

$msg = $msg_dados .= $msg_image .= $msg_cate;

$_SESSION['msg'] = $msg;

header("location: formGame.php");
exit();