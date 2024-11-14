<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/signUp.css">

<body>
    <div class="container">
        <a href="pagInicial.php" class="homeLink">
            <i class="fa-solid fa-house-chimney"></i>
        </a>
        <aside class="banner">
            <h1 class="banner_titulo">Crie sua conta aqui na StarDust Play!</h1>

            <div class="banner_link">
                <p class="banner_content_mensagem">Já possui conta?</p>
                <a href="signIn.php">Log In</a>
            </div>
        </aside>
        <main class="formulario">
            <div class="formulario_content">
                <h1 class="formulario_titulo">SIGN UP</h1>
                <label for="foto">
                    <span id="img_msg"><i class="fa-solid fa-camera-retro"></i> Foto de perfil</span>
                    <img src="" id="image_profile">
                </label>

                <form action="signUp.act.php" method="post" enctype="multipart/form-data">

                    <input type="file" name="foto" id="foto">

                    <label for="nome"><i class="fa-solid fa-user-pen"></i> Seu primeiro nome:</label>
                    <input type="text" id="nome" name="nome" placeholder="Crie um nome de usuário" autofocus autocomplete="off" required>

                    <label for="email"><i class="fa-solid fa-envelope"></i> Informe seu email:</label>
                    <input type="email" id="email" name="email" placeholder="email@gmail.com" autocomplete="off" required>

                    <label for="telefone"><i class="fa-solid fa-phone"></i> Insira seu telefone:</label>
                    <input type="text" id="telefone" name="telefone" placeholder="(DDD)XXXXX-XXXX" autocomplete="off" maxlength="14" required>

                    <label for="senha"><i class="fa-solid fa-key"></i> Crie um senha forte:</label>

                    <div class="container_password">
                        <input type="password" id="senha" name="senha" placeholder="No mínimo 4 caracteres" minlength="4" autocomplete="off" required>
                        <label for="exibir_check" id="exibir_olho"><i class="fa-solid fa-eye-slash"></i></label>
                        <input type="checkbox" id="exibir_check" style="display: none;">
                    </div>

                    
                    <p class="ocupacao">Você é:</p>                    
                    <div class="lbl_ocupacoes">
                        <input type="radio" name="ocupacao" value="Usuario" id="user" checked required>
                        <label for="user"><i class="fa-solid fa-user"></i>USUÁRIO</label>

                        <input type="radio" name="ocupacao" value="Desenvolvedor" id="dev">
                        <label for="dev"><i class="fa-solid fa-code"></i>DEV</label>
                    </div>

                    <label for="enviar" class="enviar_btn">
                        <p><b>FINALIZAR CADASTRO</b></p>
                        <input type="submit" value="Finalizar cadastro" id="enviar" style="display: none;">
                    </label>

                </form>
            </div>
        </main>
    </div>

    <script src="../javascript/signUp.js"></script>

</body>

</html>