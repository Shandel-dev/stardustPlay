<?php include('topo.php'); ?>
<link rel="stylesheet" href="../css/signIn.css">

<body>
    <div class="container">
        <a href="pagInicial.php">
            <img src="../imgs/home_icon.svg" alt="Ir para pagina principal" class="homeLink">
        </a>
        <main class="container_child formulario">
            <form action="signIn.act.php" method="post">
                <h1>Faça seu login</h1>
                <h4>Por favor preencha os campos abaixo</h4>
                <input type="text" name="email" placeholder="Digite seu email" required>
                <input type="password" name="senha" placeholder="Digite sua senha" required>
                <input type="submit" value="LOGIN">
            </form>
            <?php
            
            if(isset($_SESSION['msg'])){
                echo $_SESSION['msg'];
                unset($_SESSION['msg']);
            }
            ?>
        </main>
        <aside class="container_child banner">
            <div class="banner_content">
                <h1 class="banner_content_titulo">Sign Up</h1>
                <h3 class="banner_content_subtitulo">É novo por aqui? Crie uma nova conta</h3>
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
                <p><input type="checkbox">Ao me cadastrar, concordo com os termos e condições</p>
                <a href="signUp.php"><button>Criar Conta</button></a>
            </div>
        </aside>

    </div>
</body>