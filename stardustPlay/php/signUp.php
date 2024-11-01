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
                <h1>SIGN UP</h1>
                <label for="foto">
                    <span id="img_msg"><i class="fa-solid fa-camera-retro"></i> Foto de perfil</span>
                    <img src="" id="image_profile">
                </label>

                <form action="signUp.act.php" method="post" enctype="multipart/form-data">

                    <input type="file" name="foto" id="foto">

                    <label for="nome">Seu primeiro nome:</label>
                    <input type="text" id="nome" name="nome" placeholder="Crie um nome de usuário" autofocus autocomplete="off" required>

                    <label for="email">Informe seu email:</label>
                    <input type="text" id="email" name="email" placeholder="email@gmail.com" autocomplete="off" required>

                    <label for="telefone">Insira seu telefone:</label>
                    <input type="text" id="telefone" name="telefone" placeholder="(DDD)XXXXX-XXXX" autocomplete="off" maxlength="14" required>


                    <label for="senha">Crie um senha forte:</label>
                    <input type="password" id="senha" name="senha" placeholder="No mínimo 4 caracteres" minlength="4" autocomplete="off" required>
                    <p class="ocupacao">Você é:</p>
                    <label for="user">
                        <input type="radio" name="ocupacao" value="Usuario" id="user" required> USUÁRIO
                    </label>
                    <label for="dev">
                        <input type="radio" name="ocupacao" value="Desenvolvedor" id="dev"> DESENVOLVEDOR
                    </label>
                    <label for="enviar" class="enviar_btn">
                        <p><b>FINALIZAR CADASTRO</b></p>
                        <input type="submit" value="Finalizar cadastro" id="enviar" style="display: none;">
                    </label>

                </form>
            </div>
        </main>
    </div>

    <script>
        const input = document.getElementById('foto');
        const image = document.getElementById('image_profile');
        const span = document.getElementById('img_msg');

        input.addEventListener('change', (e) => {
            span.style.display = "none";
            image.style.display = "block";
            image.src = URL.createObjectURL(e.target.files[0]);
        });

        const telefone = document.getElementById('telefone');

        telefone.addEventListener('keypress', (e) => {
            let phoneLength = telefone.value.length;

            if (phoneLength === 0) {
                telefone.value = "(" + telefone.value;
            }
            if (phoneLength === 3) {
                telefone.value += ")";
            }
            if (phoneLength === 9) {
                telefone.value += "-";
            }
            console.log(phoneLength);
        });
    </script>

</body>

</html>