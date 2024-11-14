<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/signIn.css">

<body>
    <div class="container">
        <a href="pagInicial.php" class="homeLink">
            <i class="fa-solid fa-house-chimney"></i>
        </a>

        <main class="container_child formulario">
            <form action="signIn.act.php" method="post">
                <div class="container_texto">
                    <h1 class="texto_titulo">Entre em sua conta</h1>
                    <p class="texto_subtitulo">Por favor preencha os campos abaixo</p>
                </div>
                <input type="text" name="email" class="form_email" placeholder="Digite seu email" autofocus required>

                <div class="password_container">
                    <input type="password" name="senha" class="form_pass" id="password_input" placeholder="Digite sua senha" required>
                    <label for="exibir_check" id="exibir_olho"><i class="fa-solid fa-eye-slash"></i></label>
                </div>

                <input type="checkbox" id="exibir_check" style="display: none;">

                <label for="enviar" class="form_submit"><b>FAZER LOGIN</b></label>
                <input type="submit" id="enviar" value="FAZER LOGIN" class="form_submit" style="display: none;">
                <a href="#" style="text-align: end;">Esqueceu a senha?</a>
            </form>
        </main>



        <aside class="container_child banner">

            <div class="banner_texto">
                <h1 class="texto_titulo">Sign Up</h1>
                <p class="banner_content_subtitulo">É novo por aqui? Crie uma nova conta</p>
            </div>

            <div class="banner_vantagens">
                <div class="banner_vantagens_item">
                    <img src="../imgs/controle_icon.svg" alt="">
                    <p>Jogos</p>
                </div>
                <div class="banner_vantagens_item">
                    <img src="../imgs/categoria_icon.svg" alt="">
                    <p>Categorias</p>
                </div>
                <div class="banner_vantagens_item">
                    <img src="../imgs/pagamento_icon.svg" alt="">
                    <p>Compras</p>
                </div>
            </div>

            <div class="banner_link">
                <label for="termos"><input type="checkbox" id="termos">Ao me cadastrar, concordo com os termos e condições</label>
                <a href="signUp.php" class="link_btn">Fazer Cadastro</a>
            </div>
        </aside>
    </div>
    <script src="../javascript/signIn.js"></script>
</body>

</html>