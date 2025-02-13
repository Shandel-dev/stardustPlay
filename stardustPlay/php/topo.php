<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StardustPlay</title>
    <link rel="shortcut icon" href="../imgs/logo_light_stardust.png" type="image/x-icon">

    <!--FONTES-->
    <link href="https://fonts.googleapis.com/css2?family=Exo:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!--icones do fontawesome-->

    <!--css do swiper slider-->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../css/root.css">

    <!-- javascript -->
    <script src="../javascript/jquery-3.7.1.min.js"></script> <!--JQUERY-->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script> <!--SWIPER-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!--SWEEET ALERT-->
</head>
<script>
    function sweet_message(msg) {
        tempo = msg.length / 6 * 750
        Swal.fire({
            position: "top-end",
            title: "<i class='fa-regular fa-comment' style='font-size:2em;'></i>",
            html: `${msg}`,
            showConfirmButton: false,
            timer: tempo,
            backdrop: false,
            timerProgressBar: true,
            showCloseButton: true,
            customClass: {
                popup: 'swat-message_popup',
                html: 'swat-message_text',
                timerProgressBar: 'swat-message_timer'
            },
        })
    }
</script>