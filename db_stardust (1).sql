-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29/10/2024 às 01:27
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_images`
--

INSERT INTO `tbl_images` (`id_image`, `logo`, `banner`, `poster`, `trailer`, `screen1`, `screen2`, `screen3`) VALUES
(5, '../image_jogo/logo/6aeead776d94063b7be10a2fc85476c1.png', '../image_jogo/banner/09fc68f79c087b588f905666696d84b5.jpg', '../image_jogo/poster/cd1fdb46517286417e5c86c573a8776e.jpg', 'https://www.youtube.com/embed/Azq5IOrFtEI?si=eox5hewJJCzKGTNg', '../image_jogo/screen/5be8f1fa46966c90fc5ca7b2c575dc39.jpg', '../image_jogo/screen/f661f9e5798e5d51775e18693a9ecf6a.jpg', '../image_jogo/screen/310effb7f344b8792de3f98333d06a9b.jfif'),
(6, '../image_jogo/logo/8aadf7307e84cbe7e7f437f5249a874f.png', '../image_jogo/banner/94dfb4689616c78dc770add452945304.jpg', '../image_jogo/poster/ced60d2078035bd4c313a55a5b5b6f7f.png', 'https://www.youtube.com/embed/Rla3FUlxJdE?si=0SLIbO0rmAKdJyOK', '../image_jogo/screen/3b357da37da48b06780518b66ffedd5e.jpg', '../image_jogo/screen/5fdcdccb3dccc345d0d0a46cff1d62ca.png', '../image_jogo/screen/9a38f9a0f99b92b675bfb913f89d1b99.jpg'),
(7, '../image_jogo/logo/723d409f91bbc08f0d8e4ffc17d453ef.png', '../image_jogo/banner/7372758620e90638971b6335eee30e58.jpg', '../image_jogo/poster/e8fd97cf98d935ce787df2ff87b61215.jpg', 'https://www.youtube.com/embed/nSPJXlYjENE?si=gUxp_MJ3KH5xzzmq', '../image_jogo/screen/984837a3df47ffadc131bd482cbbfd9b.png', '../image_jogo/screen/dc8cb2a629f1f5f1ef2b3b0e9c2a2088.jfif', '../image_jogo/screen/b89ea915308e19ead9152d4c1ad3ff8d.webp'),
(8, '../image_jogo/logo/553331de0ed1cbe8908c09abbd20b55e.png', '../image_jogo/banner/7cff116fd31822eef4e9e6515c24be1a.jfif', '../image_jogo/poster/9f097194f19889d145e261110bca4573.webp', 'https://www.youtube.com/embed/FyIwEFXOcaE?si=13d0qHJuvnErnhtJ', '../image_jogo/screen/352470f6c847b08e81adc9c2151391b1.webp', '../image_jogo/screen/43f5bb728b36529e3676a8354597656c.jpg', '../image_jogo/screen/333d73e5fb9e2922ea21bcc8236c79f7.jpg'),
(12, '../image_jogo/logo/a9edcd4b672e49c894b2bb1ee2707b05.jpg', '../image_jogo/banner/6eee7d47a3e5a102c11adb1a3d602e36.jpeg', '../image_jogo/poster/5c87625bc3777e41621e44a696fe2d72.jpg', 'https://www.youtube.com/embed/q4GdJVvdxss?si=GIx3UN_punD6rRcO', '../image_jogo/screen/c20c87d26d8ee5c193b3fd909a60e9dd.jpg', '../image_jogo/screen/55acdcc9db45b494ef779395e391f0f0.jpg', '../image_jogo/screen/569f71e98a570b145e9edfcfbe6bb02b.webp'),
(13, '../image_jogo/logo/c670b18c89f1d0e0a161ac39fb5a457b.png', '../image_jogo/banner/050acc3eb70cf1996196e322e97c19e0.jpg', '../image_jogo/poster/df6e43deb193d7860d42d409ca56258f.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y?si=Rztm4ZKCssC2Ionh', '../image_jogo/screen/2760d0347bf9ca9f752b361ecd6fb385.webp', '../image_jogo/screen/39dafa74dc22df43f6bd2355f3288e62.jpg', '../image_jogo/screen/3d66d3bf3c51fa398f9528ce1d3d4630.jpg'),
(14, '../image_jogo/logo/56da2fb000bd283ec1b810117827a747.png', '../image_jogo/banner/887538775259a3e281b6890e07d36ab6.jpg', '../image_jogo/poster/68ad0021b8ba486df0bc72fd4a23e44a.jpg', 'https://www.youtube.com/embed/FKtaOY9lMvM?si=mB1XUDhkYUU-lGhZ', '../image_jogo/screen/2cb21382209f26aa343543bd1c4b7569.webp', '../image_jogo/screen/68b4c14bef8de62d2809d8f9c2255736.webp', '../image_jogo/screen/013b45df6858b7523a68a4f12b17799a.webp'),
(15, '../image_jogo/logo/19cccc5119155b8161f3f7980922ff7d.png', '../image_jogo/banner/30477c9e49ff4476dfddb1bdcdb96a2e.jpg', '../image_jogo/poster/c176abba99c6cc455e85e5d7406521b3.jpg', 'https://www.youtube.com/embed/Rz2SNm8VguE?si=ZHVmL65szJKXatUC', '../image_jogo/screen/952f9786de28cfdb9337635b1b0e11d9.webp', '../image_jogo/screen/33fc9ec879a5766c7d95f71a6fb7dff7.webp', '../image_jogo/screen/ee36866ec8d60340df20ae523cadc6ce.webp'),
(16, '../image_jogo/logo/fdff7fd92bae19429c93760863aa721f.png', '../image_jogo/banner/0cd412d21718d5bf3e85a2756bc07214.jpg', '../image_jogo/poster/805b5fb051773281be88d3001d3ef859.jpg', 'https://www.youtube.com/embed/8KXfxHujIAA?si=So3coX04msexBU4j', '../image_jogo/screen/df7d18fe6ef72a5fef680eb32e9479e8.png', '../image_jogo/screen/17f746e17e2f1125827f4cf01272a6ae.jpg', '../image_jogo/screen/4460cfce646ac31983ca9f9a4d92664a.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_jogos`
--

DROP TABLE IF EXISTS `tbl_jogos`;
CREATE TABLE IF NOT EXISTS `tbl_jogos` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `empresa` varchar(40) DEFAULT NULL,
  `categoria` enum('Ação/Aventura','Sobrevivência','RPG','Simulação','Esportes/Corrida','Terror/Horror') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `slogan` varchar(150) DEFAULT NULL,
  `descricao` varchar(1500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_imgs` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_imgs` (`id_imgs`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogos`
--

INSERT INTO `tbl_jogos` (`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `slogan`, `descricao`, `id_imgs`) VALUES
(5, 'Terraria', 'Re-Logic', 'RPG', 19.99, 'Construa, Explore, e Enfrente Lendários Chefes em um Mundo de Infinitas Aventuras!', 'Embarque na aventura épica de Terraria, onde cada bloco conta uma história e cada passo revela um novo desafio! Construa sua fortaleza, explore cavernas misteriosas, e enfrente chefes formidáveis que testam até os guerreiros mais bravos. Com um universo gerado aleatoriamente, Terraria oferece infinitas possibilidades de criação e exploração, dando a você o poder de moldar seu mundo ao enfrentar monstros e desafios cada vez mais intensos. Desbrave florestas, desertos, oceanos e terras subterrâneas, equipando-se com armas, armaduras e habilidades para sobreviver. Terraria é mais que um jogo, é uma jornada onde coragem e criatividade se encontram. Você está pronto para o desafio?', 5),
(6, 'Minecraft', 'Mojang', 'Ação/Aventura', 119.00, 'Construa, explore, sobreviva — seu mundo, suas regras!', 'Minecraft é um jogo de construção e aventura onde cada bloco representa uma nova possibilidade. Explore mundos gerados aleatoriamente, desde florestas densas até cavernas misteriosas. No modo Sobrevivência, colete materiais, construa ferramentas e enfrente inimigos como zumbis e creepers. Gerencie sua saúde e fome enquanto expande suas construções e explora biomas variados. Para uma experiência sem limites, o modo Criativo oferece acesso a todos os blocos, permitindo que você crie livremente.\r\n\r\nAlém disso, Minecraft está em constante evolução, com atualizações que trazem novos blocos, criaturas e biomas, ampliando as possibilidades. Sua comunidade global é ativa, criando mods e servidores únicos que enriquecem a experiência. Jogue sozinho ou em equipe e descubra sempre algo novo. Em Minecraft, sua imaginação é o único limite!', 6),
(7, 'Hollow Knight', 'Team Cherry', 'Ação/Aventura', 46.99, 'Enfrente a escuridão, torne-se a luz!', 'Mergulhe no mundo sombrio de Hollow Knight, um aclamado jogo de ação e aventura em 2D. Explore as profundezas de Hallownest, uma civilização em ruínas cheia de mistérios, criaturas ameaçadoras e segredos. Como um cavaleiro sem nome, você enfrentará inimigos desafiadores e chefes épicos em combates emocionantes.\r\n\r\nA jogabilidade fluida permite movimentos ágeis, enquanto você coleta “Geo” para melhorias e habilidades. Com visuais deslumbrantes desenhados à mão e uma trilha sonora envolvente, cada área do jogo é um convite à exploração.\r\n\r\nDesvende a rica narrativa através de personagens únicos e personalizações de habilidades com \"Charms\". Hollow Knight oferece um desafio emocionalmente envolvente e uma experiência inesquecível. Prepare-se para descobrir os segredos e enfrentar a escuridão de Hallownest!', 7),
(8, 'God of War', 'Santa Monica Studio', 'Ação/Aventura', 99.50, 'Enfrente o passado. Desafie os deuses!', 'Mergulhe no mundo épico de God of War, onde Kratos, o feroz guerreiro espartano, embarca em uma jornada inigualável pelo misticismo da mitologia nórdica ao lado de seu filho, Atreus. Nesta aventura repleta de ação, estratégia e emoção, você enfrentará inimigos colossais, resolverá enigmas complexos e desvendará segredos antigos, tudo enquanto testemunha o vínculo entre pai e filho se fortalecer. Com gráficos impressionantes, uma narrativa envolvente e uma jogabilidade refinada, God of War redefine o conceito de aventura em terceira pessoa, garantindo uma experiência visceral e imersiva que ressoa além da tela. Prepare-se para explorar reinos lendários, enfrentar desafios formidáveis e sentir o peso das escolhas de Kratos nesta épica saga.', 8),
(9, 'Marvel s Spider-Man', 'Insomniac Games', 'Ação/Aventura', 169.00, 'Balance entre arranha-céus, proteja Nova York, seja o herói!', 'Vivencie a adrenalina de Marvel s Spider-Man e sinta-se como o verdadeiro Amigão da Vizinhança! Neste aclamado jogo, você encarna Peter Parker, um herói experiente que luta para equilibrar sua vida civil com sua missão de proteger Nova York. Mova-se com fluidez entre arranha-céus, utilizando acrobacias espetaculares e habilidades de combate dinâmico para enfrentar vilões icônicos como Kingpin, Electro e o Duende Verde. A história imersiva e cinematográfica oferece profundidade emocional e grandes reviravoltas, enquanto você desbrava uma cidade rica em detalhes e cheia de missões e segredos para descobrir. Com gráficos impressionantes, jogabilidade refinada e personagens inesquecíveis, Marvel s Spider-Man leva você a um mundo onde cada escolha importa e cada batalha conta. Uma jornada épica que redefine o que é ser um super-herói em meio à agitação de uma Nova York viva e reativa. Pronto para salvar a cidade e viver o legado do Homem-Aranha?', 12),
(10, 'Uncharted 4: A Thief s End', 'Naughty Dog', 'Ação/Aventura', 76.90, 'Aventura além dos limites, um último tesouro para desvendar!', 'Prepare-se para uma última e inesquecível jornada em Uncharted 4: A Thief s End! No papel de Nathan Drake, o lendário caçador de tesouros, você é levado a explorar cenários exóticos e perigosos ao redor do mundo em busca de um tesouro perdido e respostas para os mistérios do passado de Drake. Com gráficos de tirar o fôlego, uma narrativa emocionante e cenas de ação cinematográficas, o jogo oferece uma experiência rica e intensa, onde cada desafio e reviravolta colocam à prova a coragem e o laço de Nathan com seus amigos e familiares. Enfrente inimigos perigosos, resolva enigmas complexos e mergulhe em uma aventura épica que mistura ação, exploração e momentos emocionantes. Uncharted 4 é mais do que uma caçada por riquezas; é um teste final para o coração e a alma de um herói. Você está pronto para descobrir o que vale a pena arriscar até o fim?', 13),
(11, 'Days Gone', 'Bend Studio', 'Sobrevivência', 39.99, 'Sobreviver é apenas o começo; lutar é essencial!', 'Entre em um mundo devastado em Days Gone, onde cada dia é uma luta pela sobrevivência em meio a ameaças implacáveis e um ambiente brutal. Assuma o papel de Deacon St. John, um andarilho e caçador de recompensas que vaga pelas terras desoladas de Oregon em busca de respostas e, acima de tudo, esperança. Enfrente hordas de frenéticos, humanos hostis e perigos da natureza enquanto usa habilidades de sobrevivência, estratégias de combate e uma motocicleta personalizável que é sua companheira fiel nessa jornada. O jogo oferece uma experiência imersiva e sombria, onde o clima dinâmico e o ciclo de dia e noite influenciam diretamente os desafios que você encontra. Em um cenário pós-apocalíptico detalhado e realista, Days Gone não é apenas sobre resistir, mas sobre encontrar propósito em meio ao caos e redescobrir o que significa lutar pelo que ama.', 14),
(12, 'Subnautica', 'Unknown Worlds Ent.', 'Sobrevivência', 351.27, 'Desça às profundezas, explore o desconhecido e sobreviva ao incrível!', 'Mergulhe em uma aventura subaquática sem igual em Subnautica! Neste jogo de sobrevivência e exploração, você é um sobrevivente de uma nave espacial que caiu em um vasto oceano alienígena repleto de mistérios e maravilhas. Explore ambientes deslumbrantes, desde recifes de corais vibrantes até cavernas profundas e escuras, enquanto coleta recursos, constrói bases e fabrica equipamentos para garantir sua sobrevivência. Enfrente criaturas marinhas fascinantes e, às vezes, ameaçadoras, enquanto desvenda os segredos de um mundo subaquático repleto de histórias a serem contadas. Com gráficos impressionantes e uma trilha sonora envolvente, Subnautica oferece uma experiência imersiva que combina exploração, criatividade e uma narrativa rica que mantém você engajado. Prepare-se para descobrir não apenas a beleza das profundezas, mas também os perigos que habitam este vasto oceano alienígena. A aventura começa quando você se atreve a mergulhar!', 15),
(13, 'The Forest', 'Endnight Games', 'Sobrevivência', 104.90, 'Sobreviva, construa e enfrente os horrores de uma ilha desconhecida!', 'Embarque em uma experiência de sobrevivência aterrorizante em The Forest! Após um acidente de avião, você se encontra preso em uma ilha isolada, dominada por uma tribo de canibais e criaturas aterrorizantes. Sua única chance de sobrevivência é reunir recursos, construir abrigos e explorar o ambiente hostil para desvendar os segredos sombrios da ilha. Com um sistema de construção flexível e uma jogabilidade cooperativa, você pode criar refúgios personalizados, armadilhas e ferramentas para proteger-se das ameaças noturnas. A atmosfera intensa e os gráficos impressionantes trazem à vida um mundo aberto, onde cada decisão pode ser crucial para sua sobrevivência. Mergulhe em uma narrativa envolvente enquanto busca por seu filho desaparecido, enfrentando desafios que testarão sua coragem e habilidades. Prepare-se para lutar contra seus medos e descobrir o que realmente significa sobreviver em um lugar onde o perigo espreita a cada esquina!', 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

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
(24, 7, 4),
(25, 8, 1),
(29, 9, 1),
(30, 10, 1),
(31, 11, 1),
(32, 12, 1),
(33, 12, 4),
(34, 13, 1),
(35, 13, 2),
(36, 13, 4);

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
