<?php
@session_start();

if(isset($_SESSION['msg'])){   
    $msg_tamanho = strlen($_SESSION['msg']);
    $msg_tempo = intval($msg_tamanho / 4);
    echo "<p class='message_session' style='animation-duration: " . $msg_tempo . "s;'>";
    echo " <i class='fa-solid fa-comments'></i>" . $_SESSION['msg'] . "<i class='fa-solid fa-comments'></i>";
    echo "</p>";
    unset($_SESSION['msg']);
}
?>

