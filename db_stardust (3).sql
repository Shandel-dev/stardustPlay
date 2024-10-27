-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27/10/2024 às 21:29
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_stardust`
--
CREATE DATABASE IF NOT EXISTS `db_stardust` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_stardust`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_images`
--

DROP TABLE IF EXISTS `tbl_images`;
CREATE TABLE IF NOT EXISTS `tbl_images` (
  `id_image` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(150) DEFAULT NULL,
  `banner` varchar(150) DEFAULT NULL,
  `poster` varchar(150) DEFAULT NULL,
  `trailer` varchar(70) DEFAULT NULL,
  `screen1` varchar(150) DEFAULT NULL,
  `screen2` varchar(150) DEFAULT NULL,
  `screen3` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_images`
--

INSERT INTO `tbl_images` (`id_image`, `logo`, `banner`, `poster`, `trailer`, `screen1`, `screen2`, `screen3`) VALUES
(5, '../image_jogo/logo/6aeead776d94063b7be10a2fc85476c1.png', '../image_jogo/banner/09fc68f79c087b588f905666696d84b5.jpg', '../image_jogo/poster/cd1fdb46517286417e5c86c573a8776e.jpg', 'https://www.youtube.com/embed/Azq5IOrFtEI?si=eox5hewJJCzKGTNg', '../image_jogo/screen/5be8f1fa46966c90fc5ca7b2c575dc39.jpg', '../image_jogo/screen/f661f9e5798e5d51775e18693a9ecf6a.jpg', '../image_jogo/screen/310effb7f344b8792de3f98333d06a9b.jfif'),
(6, '../image_jogo/logo/8aadf7307e84cbe7e7f437f5249a874f.png', '../image_jogo/banner/94dfb4689616c78dc770add452945304.jpg', '../image_jogo/poster/ced60d2078035bd4c313a55a5b5b6f7f.png', 'https://www.youtube.com/embed/Rla3FUlxJdE?si=0SLIbO0rmAKdJyOK', '../image_jogo/screen/3b357da37da48b06780518b66ffedd5e.jpg', '../image_jogo/screen/5fdcdccb3dccc345d0d0a46cff1d62ca.png', '../image_jogo/screen/9a38f9a0f99b92b675bfb913f89d1b99.jpg'),
(7, '../image_jogo/logo/723d409f91bbc08f0d8e4ffc17d453ef.png', '../image_jogo/banner/7372758620e90638971b6335eee30e58.jpg', '../image_jogo/poster/e8fd97cf98d935ce787df2ff87b61215.jpg', 'https://www.youtube.com/embed/nSPJXlYjENE?si=gUxp_MJ3KH5xzzmq', '../image_jogo/screen/984837a3df47ffadc131bd482cbbfd9b.png', '../image_jogo/screen/dc8cb2a629f1f5f1ef2b3b0e9c2a2088.jfif', '../image_jogo/screen/b89ea915308e19ead9152d4c1ad3ff8d.webp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_jogos`
--

DROP TABLE IF EXISTS `tbl_jogos`;
CREATE TABLE IF NOT EXISTS `tbl_jogos` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `empresa` varchar(40) DEFAULT NULL,
  `categoria` enum('Ação/Aventura','Sobrevivência','RPG','Simulação','Estratégia','Esportes/Corrida','Terror/Horror') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `preco` decimal(5,2) DEFAULT NULL,
  `slogan` varchar(150) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `id_imgs` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_imgs` (`id_imgs`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogos`
--

INSERT INTO `tbl_jogos` (`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `slogan`, `descricao`, `id_imgs`) VALUES
(5, 'Terraria', 'Re-Logic', 'RPG', 19.99, 'Construa, Explore, e Enfrente Lendários Chefes em um Mundo de Infinitas Aventuras!', 'Embarque na aventura épica de Terraria, onde cada bloco conta uma história e cada passo revela um novo desafio! Construa sua fortaleza, explore cavernas misteriosas, e enfrente chefes formidáveis que testam até os guerreiros mais bravos. Com um universo gerado aleatoriamente, Terraria oferece infinitas possibilidades de criação e exploração, dando a você o poder de moldar seu mundo ao enfrentar monstros e desafios cada vez mais intensos. Desbrave florestas, desertos, oceanos e terras subterrâneas, equipando-se com armas, armaduras e habilidades para sobreviver. Terraria é mais que um jogo, é uma jornada onde coragem e criatividade se encontram. Você está pronto para o desafio?', 5),
(6, 'Minecraft', 'Mojang', 'Ação/Aventura', 119.00, 'Construa, explore, sobreviva — seu mundo, suas regras!', 'Minecraft é um jogo de construção e aventura onde cada bloco representa uma nova possibilidade. Explore mundos gerados aleatoriamente, desde florestas densas até cavernas misteriosas. No modo Sobrevivência, colete materiais, construa ferramentas e enfrente inimigos como zumbis e creepers. Gerencie sua saúde e fome enquanto expande suas construções e explora biomas variados. Para uma experiência sem limites, o modo Criativo oferece acesso a todos os blocos, permitindo que você crie livremente.\r\n\r\nAlém disso, Minecraft está em constante evolução, com atualizações que trazem novos blocos, criaturas e biomas, ampliando as possibilidades. Sua comunidade global é ativa, criando mods e servidores únicos que enriquecem a experiência. Jogue sozinho ou em equipe e descubra sempre algo novo. Em Minecraft, sua imaginação é o único limite!', 6),
(7, 'Hollow Knight', 'Team Cherry', 'Ação/Aventura', 46.99, 'Enfrente a escuridão, torne-se a luz!', 'Mergulhe no mundo sombrio de Hollow Knight, um aclamado jogo de ação e aventura em 2D. Explore as profundezas de Hallownest, uma civilização em ruínas cheia de mistérios, criaturas ameaçadoras e segredos. Como um cavaleiro sem nome, você enfrentará inimigos desafiadores e chefes épicos em combates emocionantes.\r\n\r\nA jogabilidade fluida permite movimentos ágeis, enquanto você coleta “Geo” para melhorias e habilidades. Com visuais deslumbrantes desenhados à mão e uma trilha sonora envolvente, cada área do jogo é um convite à exploração.\r\n\r\nDesvende a rica narrativa através de personagens únicos e personalizações de habilidades com \"Charms\". Hollow Knight oferece um desafio emocionalmente envolvente e uma experiência inesquecível. Prepare-se para descobrir os segredos e enfrentar a escuridão de Hallownest!', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_jogo_plataforma`
--

DROP TABLE IF EXISTS `tbl_jogo_plataforma`;
CREATE TABLE IF NOT EXISTS `tbl_jogo_plataforma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_jogo` int NOT NULL,
  `id_plataforma` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_jogo` (`id_jogo`),
  KEY `id_plataforma` (`id_plataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogo_plataforma`
--

INSERT INTO `tbl_jogo_plataforma` (`id`, `id_jogo`, `id_plataforma`) VALUES
(12, 5, 1),
(13, 5, 2),
(14, 5, 4),
(15, 5, 5),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 6, 4),
(20, 6, 5),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_plataforma`
--

DROP TABLE IF EXISTS `tbl_plataforma`;
CREATE TABLE IF NOT EXISTS `tbl_plataforma` (
  `id_plataforma` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `slogan` varchar(50) NOT NULL,
  `logo` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id_plataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_plataforma`
--

INSERT INTO `tbl_plataforma` (`id_plataforma`, `nome`, `slogan`, `logo`) VALUES
(1, 'PLAYSTATION', 'Play Has No Limits', NULL),
(2, 'XBOX', 'Its Good to Play Together', NULL),
(3, 'NINTENDO', 'Switch and Play', NULL),
(4, 'COMPUTER', 'Controle Total, Diversão Ilimitada', NULL),
(5, 'MOBILE', 'Onde Você For, o Jogo Vai Junto', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_user_jogo`
--

DROP TABLE IF EXISTS `tbl_user_jogo`;
CREATE TABLE IF NOT EXISTS `tbl_user_jogo` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_jogo` int DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `id_jogo` (`id_jogo`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `foto` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '../profilePhotos/photoPadrao.png',
  `senha` varchar(150) NOT NULL,
  `ocupacao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_user`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`) VALUES
(19, 'Shandel', 'shandelvm16@gmail.com', '(11)91034-6024', '../profilePhotos/91793c4bc723216c06a573ff8578fa4a.jpg', '$2y$10$KTTzNo76PabmSGpanGcbaO2VHAFYlanj5mUBluo2cozV8eqrvypvW', 'Desenvolvedor');

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbl_jogos`
--
ALTER TABLE `tbl_jogos`
  ADD CONSTRAINT `tbl_jogos_ibfk_1` FOREIGN KEY (`id_imgs`) REFERENCES `tbl_images` (`id_image`);

--
-- Restrições para tabelas `tbl_jogo_plataforma`
--
ALTER TABLE `tbl_jogo_plataforma`
  ADD CONSTRAINT `tbl_jogo_plataforma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `tbl_jogos` (`id_jogo`),
  ADD CONSTRAINT `tbl_jogo_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `tbl_plataforma` (`id_plataforma`);

--
-- Restrições para tabelas `tbl_user_jogo`
--
ALTER TABLE `tbl_user_jogo`
  ADD CONSTRAINT `tbl_user_jogo_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `tbl_jogos` (`id_jogo`),
  ADD CONSTRAINT `tbl_user_jogo_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_usuarios` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
