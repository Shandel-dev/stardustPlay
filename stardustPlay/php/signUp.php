<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/signUp.css">

<body>
    <div class="container">
        <a href="pagInicial.php">
            <img src="../imgs/home_icon.svg" alt="Ir para pagina principal" class="homeLink">
        </a>
        <aside class="banner">
            <div class="banner_content">
                <h1 class="banner_content_titulo">Crie sua conta aqui na StarDust Play!</h1>

                <div>
                    <p class="banner_content_mensagem">Já possui conta?</p>
                    <a href="signIn.php"><button>Fazer Login</button></a>
                </div>
            </div>
        </aside>
        <main class="formulario">
            <div class="formulario_content">
                <h1>SIGN UP</h1>
                <form action="signUp.act.php" method="post" enctype="multipart/form-data">
                    <input type="text" name="nome" placeholder="Crie um nome de usuário" required>
                    <input type="text" name="email" placeholder="Informe seu email (@gmail.com)" required>
                    <input type="text" name="telefone" placeholder="Informe seu telefone" required>
                    <input type="file" name="foto">
                    <input type="password" name="senha" placeholder="Crie uma senha forte" required>
                    <p>Você é:</p>
                    <label for="user">
                        <input type="radio" name="ocupacao" value="usuario" id="user" checked>Usuário
                    </label>
                    <label for="dev">
                        <input type="radio" name="ocupacao" value="desenvolvedor" id="dev">Desenvolvedor
                    </label>
                    <input type="submit" value="Criar conta">
                </form>
            </div>
        </main>
    </div>
</body>

</html>