<?php

@session_start();

require('connect.php');

$idJogo = $_POST['id'];

$nome = $_POST['nome'];
// $nome_str = str_replace("'", " ", $nome);
$nome_escape = mysqli_real_escape_string($conn, $nome);

$empresa = $_POST['empresa'];
$empresa_escape = mysqli_real_escape_string($conn, $empresa);

$trailer = $_POST['trailer'];
$trailer_embed = str_replace("https://youtu.be/", "https://www.youtube.com/embed/", $trailer);
$categoria = $_POST['categoria'];
$preco = $_POST['preco'];
$preco_str = str_replace(",", ".", $preco);
$hashtag = $_POST['hashtag'];
$slogan = $_POST['slogan'];
$slogan_escape = mysqli_real_escape_string($conn, $slogan);

$descricao = $_POST['descricao'];
$descricao_br = mysqli_real_escape_string($conn, $descricao);
//$descricao_str = str_replace("'", " ", $descricao);
//$descricao_br = nl2br($descricao_str);

$plataformas = $_POST['plataforma'];

$jogoImagens = mysqli_query($conn, "SELECT * FROM `tbl_jogos` as j
join `tbl_images` as i
ON j.id_imgs = i.id_image
WHERE j.id_jogo = '$idJogo'");

$imagemAntiga = mysqli_fetch_assoc($jogoImagens);

var_dump($jogoImagens);

$imagensNome = ['poster', 'logo', 'banner'];
$screensNome = ['screen1', 'screen2', 'screen3'];

//array associativo responsavel por armazenar o caminho do diretorio das imagens
$destino = [
    'poster' => "",
    'logo' => "",
    'banner' => "",
    'screen1' => "",
    'screen2' => "",
    'screen3' => "",
];

foreach($imagensNome as $imagem){
    if(isset($_FILES[$imagem]) && $_FILES[$imagem]['error'] === 0){
        $extensao = pathinfo($_FILES[$imagem]['name'], PATHINFO_EXTENSION);
        $destino[$imagem] = "../image_jogo/" . $imagem . "/" . md5(time() . $_FILES[$imagem]['name']) . "." . $extensao;

        if($imagemAntiga[$imagem] != "" && file_exists($imagemAntiga[$imagem])){
            unlink($imagemAntiga[$imagem]);
        }
        move_uploaded_file($_FILES[$imagem]['tmp_name'], $destino[$imagem]);
    }else{
        $destino[$imagem] = $imagemAntiga[$imagem];
    }
}

foreach($screensNome as $screen){
    if(isset($_FILES[$screen]) && $_FILES[$screen]['error'] === 0){
        $extensao = pathinfo($_FILES[$screen]['name'], PATHINFO_EXTENSION);
        $destino[$screen] = "../image_jogo/screen/" . md5(time() . $_FILES[$screen]['name']) . "." . $extensao;

        if($imagemAntiga[$screen] !="" && file_exists($imagemAntiga[$screen])){
            unlink($imagemAntiga[$screen]);
        }
        move_uploaded_file($_FILES[$screen]['tmp_name'], $destino[$screen]);
    }else{
        $destino[$screen] = $imagemAntiga[$screen];
    }
}

//atualizar a tbl de jogos
if(mysqli_query($conn, "UPDATE `tbl_jogos` SET
`nome` = '$nome_escape',
`empresa` = '$empresa_escape',
`categoria` = '$categoria',
`preco` = '$preco_str',
`hashtag` = '$hashtag',
`slogan` = '$slogan_escape',
`descricao` = '$descricao_br'
WHERE `id_jogo` = '$idJogo';")){
    $msg = "dados do jogo <span>$nome_escape</span> atualizados com sucesso! <br>";
}else{
    $msg = "erro no envio de dados!" . mysqli_error($conn) . "<br>";
}

//atualizar imagens
if(mysqli_query($conn, "UPDATE `tbl_images` SET
`logo` = '$destino[logo]',
`poster` = '$destino[poster]',
`banner` = '$destino[banner]',
`trailer` = '$trailer_embed',
`screen1` = '$destino[screen1]',
`screen2` = '$destino[screen2]',
`screen3` = '$destino[screen3]'
WHERE `id_image` = '{$imagemAntiga['id_image']}';")) {
    $msg .= "imagens do jogo salvas";
}else{
    $msg .= "erro no envio das imagens" . mysqli_error($conn);
}

if(isset($plataformas)){
    mysqli_query($conn, "DELETE FROM `tbl_jogo_plataforma` WHERE `id_jogo` = '$idJogo'");
    foreach($plataformas as $plataforma){
        mysqli_query($conn, "INSERT INTO `tbl_jogo_plataforma` (`id_jogo`, `id_plataforma`) VALUES
        ('$idJogo', '$plataforma')");
    }
}
$_SESSION['msg'] = $msg;
header("location: pagGame?id=" . $idJogo);