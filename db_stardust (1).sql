-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08/11/2024 às 02:20
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_images`
--

INSERT INTO `tbl_images` (`id_image`, `logo`, `banner`, `poster`, `trailer`, `screen1`, `screen2`, `screen3`) VALUES
(5, '../image_jogo/logo/6aeead776d94063b7be10a2fc85476c1.png', '../image_jogo/banner/09fc68f79c087b588f905666696d84b5.jpg', '../image_jogo/poster/cd1fdb46517286417e5c86c573a8776e.jpg', 'https://www.youtube.com/embed/Azq5IOrFtEI?si=eox5hewJJCzKGTNg', '../image_jogo/screen/5be8f1fa46966c90fc5ca7b2c575dc39.jpg', '../image_jogo/screen/f661f9e5798e5d51775e18693a9ecf6a.jpg', '../image_jogo/screen/310effb7f344b8792de3f98333d06a9b.jfif'),
(6, '../image_jogo/logo/8aadf7307e84cbe7e7f437f5249a874f.png', '../image_jogo/banner/94dfb4689616c78dc770add452945304.jpg', '../image_jogo/poster/ced60d2078035bd4c313a55a5b5b6f7f.png', 'https://www.youtube.com/embed/Rla3FUlxJdE?si=0SLIbO0rmAKdJyOK', '../image_jogo/screen/3b357da37da48b06780518b66ffedd5e.jpg', '../image_jogo/screen/5fdcdccb3dccc345d0d0a46cff1d62ca.png', '../image_jogo/screen/9a38f9a0f99b92b675bfb913f89d1b99.jpg'),
(7, '../image_jogo/logo/723d409f91bbc08f0d8e4ffc17d453ef.png', '../image_jogo/banner/7372758620e90638971b6335eee30e58.jpg', '../image_jogo/poster/e8fd97cf98d935ce787df2ff87b61215.jpg', 'https://www.youtube.com/embed/nSPJXlYjENE?si=gUxp_MJ3KH5xzzmq', '../image_jogo/screen/984837a3df47ffadc131bd482cbbfd9b.png', '../image_jogo/screen/dc8cb2a629f1f5f1ef2b3b0e9c2a2088.jfif', '../image_jogo/screen/b89ea915308e19ead9152d4c1ad3ff8d.webp'),
(8, '../image_jogo/logo/553331de0ed1cbe8908c09abbd20b55e.png', '../image_jogo/banner/7cff116fd31822eef4e9e6515c24be1a.jfif', '../image_jogo/poster/9f097194f19889d145e261110bca4573.webp', 'https://www.youtube.com/embed/FyIwEFXOcaE?si=13d0qHJuvnErnhtJ', '../image_jogo/screen/352470f6c847b08e81adc9c2151391b1.webp', '../image_jogo/screen/43f5bb728b36529e3676a8354597656c.jpg', '../image_jogo/screen/333d73e5fb9e2922ea21bcc8236c79f7.jpg'),
(12, '../image_jogo/logo/a9edcd4b672e49c894b2bb1ee2707b05.jpg', '../image_jogo/banner/6eee7d47a3e5a102c11adb1a3d602e36.jpeg', '../image_jogo/poster/bcf8605bb5ad5fb1b1c629c395a8e665.webp', 'https://www.youtube.com/embed/q4GdJVvdxss?si=GIx3UN_punD6rRcO', '../image_jogo/screen/c20c87d26d8ee5c193b3fd909a60e9dd.jpg', '../image_jogo/screen/55acdcc9db45b494ef779395e391f0f0.jpg', '../image_jogo/screen/569f71e98a570b145e9edfcfbe6bb02b.webp'),
(13, '../image_jogo/logo/c670b18c89f1d0e0a161ac39fb5a457b.png', '../image_jogo/banner/050acc3eb70cf1996196e322e97c19e0.jpg', '../image_jogo/poster/df6e43deb193d7860d42d409ca56258f.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y?si=Rztm4ZKCssC2Ionh', '../image_jogo/screen/2760d0347bf9ca9f752b361ecd6fb385.webp', '../image_jogo/screen/39dafa74dc22df43f6bd2355f3288e62.jpg', '../image_jogo/screen/3d66d3bf3c51fa398f9528ce1d3d4630.jpg'),
(14, '../image_jogo/logo/56da2fb000bd283ec1b810117827a747.png', '../image_jogo/banner/887538775259a3e281b6890e07d36ab6.jpg', '../image_jogo/poster/68ad0021b8ba486df0bc72fd4a23e44a.jpg', 'https://www.youtube.com/embed/FKtaOY9lMvM?si=mB1XUDhkYUU-lGhZ', '../image_jogo/screen/2cb21382209f26aa343543bd1c4b7569.webp', '../image_jogo/screen/68b4c14bef8de62d2809d8f9c2255736.webp', '../image_jogo/screen/013b45df6858b7523a68a4f12b17799a.webp'),
(15, '../image_jogo/logo/19cccc5119155b8161f3f7980922ff7d.png', '../image_jogo/banner/30477c9e49ff4476dfddb1bdcdb96a2e.jpg', '../image_jogo/poster/c176abba99c6cc455e85e5d7406521b3.jpg', 'https://www.youtube.com/embed/Rz2SNm8VguE?si=ZHVmL65szJKXatUC', '../image_jogo/screen/952f9786de28cfdb9337635b1b0e11d9.webp', '../image_jogo/screen/33fc9ec879a5766c7d95f71a6fb7dff7.webp', '../image_jogo/screen/ee36866ec8d60340df20ae523cadc6ce.webp'),
(16, '../image_jogo/logo/fdff7fd92bae19429c93760863aa721f.png', '../image_jogo/banner/0cd412d21718d5bf3e85a2756bc07214.jpg', '../image_jogo/poster/805b5fb051773281be88d3001d3ef859.jpg', 'https://www.youtube.com/embed/8KXfxHujIAA?si=So3coX04msexBU4j', '../image_jogo/screen/df7d18fe6ef72a5fef680eb32e9479e8.png', '../image_jogo/screen/17f746e17e2f1125827f4cf01272a6ae.jpg', '../image_jogo/screen/4460cfce646ac31983ca9f9a4d92664a.jpg'),
(17, '../image_jogo/logo/5c37f6fed2779702f7e0c53b829bb4f3.png', '../image_jogo/banner/0b23d56dc1eb1820602c143497c0a48f.jpg', '../image_jogo/poster/86b5e4de095f81574ae329f43a8773b5.jfif', 'https://www.youtube.com/embed/RefXbk1_taI?si=G8Rc4GuYarVnLmov', '../image_jogo/screen/dc2767afc544a309c6bb936e19346c75.webp', '../image_jogo/screen/9d0fdddc0f54030fb7693fcffdb6e4b4.webp', '../image_jogo/screen/200472d930ed72758f346280be42fbe7.webp'),
(18, '../image_jogo/logo/66e7ebe969143c3d1be057980f0e845e.jpg', '../image_jogo/banner/3b748b4f256325794d430fa6905b4b2a.jpeg', '../image_jogo/poster/88e5c24f2512c1b18c18897509c5c060.png', 'https://www.youtube.com/embed/qx0A921z8mA?si=ZmX25tYsxDwh1jxx', '../image_jogo/screen/b319aa3cbfe74ae93f39e350a2cb2c9e.webp', '../image_jogo/screen/ec974d052e4970423073d952971ff4a8.webp', '../image_jogo/screen/0b98e6bc547257130b8a8869b50161c9.webp'),
(19, '../image_jogo/logo/29f2810f7a33303cc1b49ca20f81be6e.png', '../image_jogo/banner/63f155534d53c27b7c152dc7cbc3a947.jpg', '../image_jogo/poster/ef6f6fa09afe40f998e159afa7bfa385.jpg', 'https://www.youtube.com/embed/wHNgoRCWqTg?si=9tKm2hy7YattM-b3', '../image_jogo/screen/c871ac34e01a95be51d7b4c9a4620e1a.webp', '../image_jogo/screen/789601f98fd5ccd77fd02555c7b207cc.webp', '../image_jogo/screen/6ca69b1ca1349da56386622fae612251.webp'),
(20, '../image_jogo/logo/515da5c4df4807f3436170972300a65e.png', '../image_jogo/banner/2334dacd751783ecc0106f0b3b7b5016.webp', '../image_jogo/poster/612ef39d6030708d150da6caaf7b70e3.webp', 'https://www.youtube.com/embed/ym_9K5hcg2g?si=iyeDQJVCGzrv2iFo', '../image_jogo/screen/403504a614c9362045bb565a3d85e2b8.webp', '../image_jogo/screen/86907d969cfc7dd51a57efafd96e0ad1.webp', '../image_jogo/screen/c9597674872765afc2dbd2de8a1bae73.webp'),
(21, '../image_jogo/logo/d09a0a235ab0a35d2d6c1c37099f4f33.jpg', '../image_jogo/banner/4a46608bf39c0d08004e24b763f950b1.jpg', '../image_jogo/poster/4a334414def05468760ac222d5ceaa24.webp', 'https://www.youtube.com/embed/1tBUsXIkG1A?si=bS2k3oXo_CqwmeLk', '../image_jogo/screen/b0c44c3c8ba3900f2650d7757a543ab1.webp', '../image_jogo/screen/217dc7a0b46ee5e39a1c68c61adef821.webp', '../image_jogo/screen/8ec8c60d47c795c337560fa60d88aab8.webp'),
(22, '../image_jogo/logo/0280ba595d21323b0e62972e2dabe2c5.jpg', '../image_jogo/banner/1382e0ea997930a4c8cae778abb416dd.jpeg', '../image_jogo/poster/7c1893d6dbb647a0e9eed48bc097e890.jpg', 'https://www.youtube.com/embed/2S-A3z866YI?si=akSjBKCjkgdVQKUz', '../image_jogo/screen/95b119c874275e345c499cdca0922615.webp', '../image_jogo/screen/43928f8f4c00a46678ac33b79990906b.webp', '../image_jogo/screen/569cd42fba77934acb0159611b17a8ed.webp'),
(23, '../image_jogo/logo/9b24cc1339d77857f8cc307ae2be90d1.png', '../image_jogo/banner/f159aa9512ae966e679fce3817e44b07.jpg', '../image_jogo/poster/75961b016f90e5f095e49b713218ea0d.png', 'https://www.youtube.com/embed/PvgTSrE5bzA?si=tIKT6j2_mDDyl8tO', '../image_jogo/screen/1a68a32b82d58e16499a5e5a13d88ea3.webp', '../image_jogo/screen/66436a1c81db270a2cb4fdc7047ca80c.webp', '../image_jogo/screen/7fa8bc3a85819010a9f241544a63d3dc.webp'),
(24, '../image_jogo/logo/2bea9565faa27bd87affcafd4f3b9853.png', '../image_jogo/banner/8de74e07d6a99f672ee9ccf8ca71d464.jpeg', '../image_jogo/poster/a4cb492cec950ce6c439df5288dd7dfb.jpg', 'https://www.youtube.com/embed/-L1EuRo54pI?si=qADHK1Q4whT1-oab', '../image_jogo/screen/375d8d39c0751c55bf49410c4a5bbd5a.webp', '../image_jogo/screen/df64fd0cd52ea18e32c3092aa7279587.jpg', '../image_jogo/screen/b0a423f84d1bf6344b2af29ce6503a70.webp'),
(25, '../image_jogo/logo/700e55d3ce9def93feb3a63f227668da.webp', '../image_jogo/banner/fa8227de719d9cba1057856fb6916ca2.jpeg', '../image_jogo/poster/af2715a8462982f0dd2a781da83f7270.jpg', 'https://www.youtube.com/embed/JGhIXLO3ul8?si=HR--ESNqR-BcNPz-', '../image_jogo/screen/51d255203326fbc11a96f6ab69baf933.webp', '../image_jogo/screen/2981fe81453baaceb31166b9cd3b1222.webp', '../image_jogo/screen/a048bbc37dba745471cd396b58075764.webp'),
(26, '../image_jogo/logo/5acc9578dd06ab9439088cfa42e318c7.webp', '../image_jogo/banner/b8f5160d3eb92271ca6ab5c7628406c2.jpg', '../image_jogo/poster/a989493b36fdb7223fe62526c5cd7a25.webp', 'https://www.youtube.com/embed/G203e1HhixY?si=ohUljBzFuAJRFY7z', '../image_jogo/screen/728af9acfa2bfaab1dc028c6db2e22af.webp', '../image_jogo/screen/030b3ed101131310848fc8aa185f7db3.webp', '../image_jogo/screen/54720d5eeea0462363b0c542cafba117.webp'),
(27, '../image_jogo/logo/70fee616b5d240e174efe012857621aa.jpg', '../image_jogo/banner/70e849f29a6e3ece6bc55867f410851e.jpg', '../image_jogo/poster/a420b3b6d525c2e1b9005819aaa82338.jpg', 'https://www.youtube.com/embed/W2Wnvvj33Wo?si=u4CIqVGX14FOFqRa', '../image_jogo/screen/5e111d1a33fef08294847b194f239115.jpg', '../image_jogo/screen/3d6cf0e52c7088412ffac37e15d416bd.webp', '../image_jogo/screen/98e6ca038f4d15d145f2ffae8e95fa0b.jpg'),
(28, '../image_jogo/logo/0d62c5d6ae15e73f968fa2f4d0de03f8.png', '../image_jogo/banner/e6026ccae0f1ea3893b7832d1a0adf9e.png', '../image_jogo/poster/c0e6ad4de3c50ce149f3d5167941838e.jfif', 'https://www.youtube.com/embed/W73XZ1WHuLQ?si=6glWbcCHeTzcNRYu', '../image_jogo/screen/b4984b3e458b5c84137ad2c7b7604ce7.jpg', '../image_jogo/screen/4dea60d37f2f2b82a9e75d3430701778.webp', '../image_jogo/screen/ea589b891a492696eac91ada8a0040bd.jpg'),
(29, '../image_jogo/logo/57f1a7ab318629fbc161ffb5096495dd.jpg', '../image_jogo/banner/4cba3b912c5406a366146d31395663a2.webp', '../image_jogo/poster/5da0a4463f50f5579dab73b77bf0fada.jpg', 'https://www.youtube.com/embed/sRa9oeo5KiY?si=7csNTIylUM2IkayL', '../image_jogo/screen/c7ae071fd20bc2da88fb0903c35be78f.webp', '../image_jogo/screen/f945ef3a26c0198a4f79add896fe6b8b.webp', '../image_jogo/screen/953a8fbaf7823bad93f7015625ff6f2d.webp'),
(30, '../image_jogo/logo/11bbdfc30fa952cde48f4004e383db25.png', '../image_jogo/banner/b2263ff66421b1bf43e0262d61a07c05.webp', '../image_jogo/poster/698ce502aead4125f5b09303669e6186.jpg', 'https://www.youtube.com/embed/nh4zuyi7vVM?si=d55bw8hGQ31VweR2', '../image_jogo/screen/4d0278734a23c2070ed0b9aebeb92925.webp', '../image_jogo/screen/fb27c756972d35f3386d2baea6ac13c9.webp', '../image_jogo/screen/c53b1937cb43a2951a2c082d468298fd.webp'),
(31, '../image_jogo/logo/7cfb6ff184753450e1f6c8e3b1da807f.png', '../image_jogo/banner/d49b7efde3a936953c2324d49c428450.webp', '../image_jogo/poster/98065f9aaffcb46fc9d900fb18e265e0.webp', 'https://www.youtube.com/embed/0D5bRyZV_Dw?si=z5PkHe3obUaWWt2t', '../image_jogo/screen/56e0dc5ab546202c54370b014e954773.webp', '../image_jogo/screen/e8c1c82a5060ac7f73f8d0bcda699f84.webp', '../image_jogo/screen/6d56bf7dcbe4a4ae84027ec00a89d6f7.webp'),
(32, '../image_jogo/logo/6c41a1350d01fd9135d1e1a3b9a2feaa.png', '../image_jogo/banner/33c3941682c15bb7feba7c16da7b613c.jfif', '../image_jogo/poster/ca4de7d9106cfa58da0e7d79f9b84cf5.jpg', 'https://www.youtube.com/embed/gnmuEkn30ZE?si=_gWNdGRzsWRlu3H8', '../image_jogo/screen/be18d9cf33500214d7fb6d524d20ee85.webp', '../image_jogo/screen/e58184568f088a6e19e7f4c7d4e5c9d2.webp', '../image_jogo/screen/a258700b42b0892d5533c7e53d4a446c.webp'),
(33, '../image_jogo/logo/59666a13e67de751635f669156e88e53.webp', '../image_jogo/banner/3e5e1041771c3f165f781fc383b31926.jpeg', '../image_jogo/poster/d5d384dd7b20e56ba993c610b8290d61.jpg', 'https://www.youtube.com/embed/kfYEiTdsyas?si=74WOulkc_f9O4eTN', '../image_jogo/screen/5d8b30b6fcc3035bd6612fa057564aba.webp', '../image_jogo/screen/1d5f0e9c9f2b866e707482bbfa2e9b7c.webp', '../image_jogo/screen/d25d12602c3070af3542a82aefe73728.webp'),
(34, '../image_jogo/logo/4b7be84c74d510efef23ab3597cac35b.jfif', '../image_jogo/banner/7b244fa3fdd64089ee1428f60e1c2e9f.jpg', '../image_jogo/poster/8c32ad56e806e63030ea56a6068c5001.jpg', 'https://www.youtube.com/embed/E3Huy2cdih0?si=8oCaUA3pI45O0DF0', '../image_jogo/screen/30c79e23d6b6099e29d7cbc58a26182e.webp', '../image_jogo/screen/902737ec085b0ed4669ed82f09bbfcc8.webp', '../image_jogo/screen/6f9019be2db969b86296335485b58bae.webp'),
(35, '../image_jogo/logo/b19ef401dc0bf9b1924a9ebfc3f114ab.png', '../image_jogo/banner/68465fdad292be98f921b2d4c5f8509e.jpg', '../image_jogo/poster/795fcbf1a9e0d9b6ef5fba8d286524bc.jpg', 'https://www.youtube.com/embed/ixfokUG711U?si=O93mGdjHJ5p3wwoA', '../image_jogo/screen/b42b4a71fa021af9e85448734a7885bb.webp', '../image_jogo/screen/c1915d62ebca7c03a99e9d33defda9f2.jpg', '../image_jogo/screen/23536f4de3f8a28243876c3bbed1e003.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogos`
--

INSERT INTO `tbl_jogos` (`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `slogan`, `descricao`, `id_imgs`) VALUES
(5, 'Terraria', 'Re-Logic', 'RPG', 19.99, 'Construa, Explore, e Enfrente Lendários Chefes em um Mundo de Infinitas Aventuras!', 'Embarque na aventura épica de Terraria, onde cada bloco conta uma história e cada passo revela um novo desafio! Construa sua fortaleza, explore cavernas misteriosas, e enfrente chefes formidáveis que testam até os guerreiros mais bravos. Com um universo gerado aleatoriamente, Terraria oferece infinitas possibilidades de criação e exploração, dando a você o poder de moldar seu mundo ao enfrentar monstros e desafios cada vez mais intensos. Desbrave florestas, desertos, oceanos e terras subterrâneas, equipando-se com armas, armaduras e habilidades para sobreviver. Terraria é mais que um jogo, é uma jornada onde coragem e criatividade se encontram. Você está pronto para o desafio?', 5),
(6, 'Minecraft', 'Mojang', 'Ação/Aventura', 119.00, 'Construa, explore, sobreviva — seu mundo, suas regras!', 'Minecraft é um jogo de construção e aventura onde cada bloco representa uma nova possibilidade. Explore mundos gerados aleatoriamente, desde florestas densas até cavernas misteriosas. No modo Sobrevivência, colete materiais, construa ferramentas e enfrente inimigos como zumbis e creepers. Gerencie sua saúde e fome enquanto expande suas construções e explora biomas variados. Para uma experiência sem limites, o modo Criativo oferece acesso a todos os blocos, permitindo que você crie livremente.\r\n\r\nAlém disso, Minecraft está em constante evolução, com atualizações que trazem novos blocos, criaturas e biomas, ampliando as possibilidades. Sua comunidade global é ativa, criando mods e servidores únicos que enriquecem a experiência. Jogue sozinho ou em equipe e descubra sempre algo novo. Em Minecraft, sua imaginação é o único limite!', 6),
(7, 'Hollow Knight', 'Team Cherry', 'Ação/Aventura', 46.99, 'Enfrente a escuridão, torne-se a luz!', 'Mergulhe no mundo sombrio de Hollow Knight, um aclamado jogo de ação e aventura em 2D. Explore as profundezas de Hallownest, uma civilização em ruínas cheia de mistérios, criaturas ameaçadoras e segredos. Como um cavaleiro sem nome, você enfrentará inimigos desafiadores e chefes épicos em combates emocionantes.\r\n\r\nA jogabilidade fluida permite movimentos ágeis, enquanto você coleta “Geo” para melhorias e habilidades. Com visuais deslumbrantes desenhados à mão e uma trilha sonora envolvente, cada área do jogo é um convite à exploração.\r\n\r\nDesvende a rica narrativa através de personagens únicos e personalizações de habilidades com \"Charms\". Hollow Knight oferece um desafio emocionalmente envolvente e uma experiência inesquecível. Prepare-se para descobrir os segredos e enfrentar a escuridão de Hallownest!', 7),
(8, 'God of War', 'Santa Monica Studio', 'Ação/Aventura', 99.50, 'Enfrente o passado. Desafie os deuses!', 'Mergulhe no mundo épico de God of War, onde Kratos, o feroz guerreiro espartano, embarca em uma jornada inigualável pelo misticismo da mitologia nórdica ao lado de seu filho, Atreus. Nesta aventura repleta de ação, estratégia e emoção, você enfrentará inimigos colossais, resolverá enigmas complexos e desvendará segredos antigos, tudo enquanto testemunha o vínculo entre pai e filho se fortalecer. Com gráficos impressionantes, uma narrativa envolvente e uma jogabilidade refinada, God of War redefine o conceito de aventura em terceira pessoa, garantindo uma experiência visceral e imersiva que ressoa além da tela. Prepare-se para explorar reinos lendários, enfrentar desafios formidáveis e sentir o peso das escolhas de Kratos nesta épica saga.', 8),
(9, 'Marvel s Spider-Man', 'Insomniac Games', 'Ação/Aventura', 169.00, 'Balance entre arranha-céus, proteja Nova York, seja o herói!', 'Viva a experiência de ser o Homem-Aranha em Marvel s Spider-Man, um jogo que leva você a balançar pelas ruas de Nova York em um combate ágil e cinematográfico. Enfrente vilões lendários, proteja a cidade e acompanhe a vida de Peter Parker enquanto ele luta para equilibrar sua vida pessoal com a responsabilidade de ser o Amigão da Vizinhança.<br />\r\n<br />\r\nCom uma história original e personagens cativantes, você enfrentará inimigos como Rei do Crime, Electro e muitos outros em uma trama repleta de ação e reviravoltas. Personalize seu Homem-Aranha com habilidades únicas e trajes inspirados em diferentes eras do herói, desbloqueando novos poderes à medida que avança.<br />\r\n<br />\r\nCom gráficos de tirar o fôlego e uma jogabilidade fluida, Marvel s Spider-Man proporciona uma experiência emocionante que captura a essência de ser um super-herói. Prepare-se para explorar, lutar e salvar a cidade como nunca antes—ser o Homem-Aranha é sua maior aventura!', 12),
(10, 'Uncharted 4: A Thief s End', 'Naughty Dog', 'Ação/Aventura', 76.90, 'Aventura além dos limites, um último tesouro para desvendar!', 'Prepare-se para uma última e inesquecível jornada em Uncharted 4: A Thief s End! No papel de Nathan Drake, o lendário caçador de tesouros, você é levado a explorar cenários exóticos e perigosos ao redor do mundo em busca de um tesouro perdido e respostas para os mistérios do passado de Drake. Com gráficos de tirar o fôlego, uma narrativa emocionante e cenas de ação cinematográficas, o jogo oferece uma experiência rica e intensa, onde cada desafio e reviravolta colocam à prova a coragem e o laço de Nathan com seus amigos e familiares. Enfrente inimigos perigosos, resolva enigmas complexos e mergulhe em uma aventura épica que mistura ação, exploração e momentos emocionantes. Uncharted 4 é mais do que uma caçada por riquezas; é um teste final para o coração e a alma de um herói. Você está pronto para descobrir o que vale a pena arriscar até o fim?', 13),
(11, 'Days Gone', 'Bend Studio', 'Sobrevivência', 39.99, 'Sobreviver é apenas o começo; lutar é essencial!', 'Entre em um mundo devastado em Days Gone, onde cada dia é uma luta pela sobrevivência em meio a ameaças implacáveis e um ambiente brutal. Assuma o papel de Deacon St. John, um andarilho e caçador de recompensas que vaga pelas terras desoladas de Oregon em busca de respostas e, acima de tudo, esperança. Enfrente hordas de frenéticos, humanos hostis e perigos da natureza enquanto usa habilidades de sobrevivência, estratégias de combate e uma motocicleta personalizável que é sua companheira fiel nessa jornada. O jogo oferece uma experiência imersiva e sombria, onde o clima dinâmico e o ciclo de dia e noite influenciam diretamente os desafios que você encontra. Em um cenário pós-apocalíptico detalhado e realista, Days Gone não é apenas sobre resistir, mas sobre encontrar propósito em meio ao caos e redescobrir o que significa lutar pelo que ama.', 14),
(12, 'Subnautica', 'Unknown Worlds Ent.', 'Sobrevivência', 351.27, 'Desça às profundezas, explore o desconhecido e sobreviva ao incrível!', 'Mergulhe em uma aventura subaquática sem igual em Subnautica! Neste jogo de sobrevivência e exploração, você é um sobrevivente de uma nave espacial que caiu em um vasto oceano alienígena repleto de mistérios e maravilhas. Explore ambientes deslumbrantes, desde recifes de corais vibrantes até cavernas profundas e escuras, enquanto coleta recursos, constrói bases e fabrica equipamentos para garantir sua sobrevivência. Enfrente criaturas marinhas fascinantes e, às vezes, ameaçadoras, enquanto desvenda os segredos de um mundo subaquático repleto de histórias a serem contadas. Com gráficos impressionantes e uma trilha sonora envolvente, Subnautica oferece uma experiência imersiva que combina exploração, criatividade e uma narrativa rica que mantém você engajado. Prepare-se para descobrir não apenas a beleza das profundezas, mas também os perigos que habitam este vasto oceano alienígena. A aventura começa quando você se atreve a mergulhar!', 15),
(13, 'The Forest', 'Endnight Games', 'Sobrevivência', 104.90, 'Sobreviva, construa e enfrente os horrores de uma ilha desconhecida!', 'Embarque em uma experiência de sobrevivência aterrorizante em The Forest! Após um acidente de avião, você se encontra preso em uma ilha isolada, dominada por uma tribo de canibais e criaturas aterrorizantes. Sua única chance de sobrevivência é reunir recursos, construir abrigos e explorar o ambiente hostil para desvendar os segredos sombrios da ilha. Com um sistema de construção flexível e uma jogabilidade cooperativa, você pode criar refúgios personalizados, armadilhas e ferramentas para proteger-se das ameaças noturnas. A atmosfera intensa e os gráficos impressionantes trazem à vida um mundo aberto, onde cada decisão pode ser crucial para sua sobrevivência. Mergulhe em uma narrativa envolvente enquanto busca por seu filho desaparecido, enfrentando desafios que testarão sua coragem e habilidades. Prepare-se para lutar contra seus medos e descobrir o que realmente significa sobreviver em um lugar onde o perigo espreita a cada esquina!', 16),
(14, 'EA SPORTS FC 25', 'EA Sports', 'Esportes/Corrida', 299.00, 'Domine o campo, viva a paixão e jogue com os melhores!', '\nExperimente a emoção do futebol como nunca em EA Sports FC 25! Esta nova era do futebol virtual traz uma jogabilidade refinada e autenticidade inigualável, com gráficos impressionantes e física de jogo aprimorada para cada drible, passe e finalização. Seja no modo carreira, construindo seu time dos sonhos, ou em partidas online contra jogadores de todo o mundo, EA Sports FC 25 oferece uma experiência imersiva e desafiadora que coloca você no centro das maiores competições do futebol mundial.\n\nViva a intensidade dos jogos em estádios realistas, com uma atmosfera vibrante e torcidas apaixonadas. Personalize estratégias, monte esquemas táticos e leve seu time à glória com controle absoluto sobre o campo. EA Sports FC 25 combina inovação e autenticidade, permitindo que você jogue com as maiores estrelas e participe de ligas exclusivas e torneios icônicos. Sinta a paixão do futebol em cada jogada e mostre suas habilidades em uma experiência que une fãs do esporte de todo o mundo!', 17),
(15, 'NBA 2K25', 'Visual Concepts', 'Esportes/Corrida', 299.99, 'Eleve seu jogo, domine a quadra e faça história!', 'Prepare-se para elevar seu jogo ao próximo nível em NBA 2K25! Com gráficos ultrarrealistas e animações fluidas, esta edição traz uma imersão total nas quadras, onde cada passe, arremesso e enterrada ganham vida em uma experiência cinematográfica. Crie seu jogador no modo MyCareer e suba na hierarquia da liga, ou gerencie o time dos seus sonhos em MyTeam, enfrentando desafios e eventos exclusivos enquanto monta sua equipe ideal com as maiores lendas e astros atuais da NBA.<br />\r\n<br />\r\nCom melhorias no sistema de física e inteligência artificial avançada, NBA 2K25 permite uma jogabilidade mais precisa e estratégias táticas para dominar cada partida. Entre no modo online para competir com jogadores do mundo todo, ou desafie seus amigos em partidas locais intensas. Desde o ambiente de arenas icônicas até o entusiasmo das torcidas, cada detalhe reforça a autenticidade e paixão do basquete, fazendo de NBA 2K25 a experiência definitiva para fãs que querem mais do que apenas assistir ao jogo—querem viver', 18),
(16, 'F1 2023', 'Codemasters', 'Esportes/Corrida', 350.00, 'Domine a velocidade, enfrente cada curva com precisão e viva a adrenalina máxima da Fórmula 1!', 'Em F1 2023, cada corrida é uma batalha pela supremacia nas pistas! Experimente a emoção de pilotar carros de Fórmula 1 em circuitos icônicos, onde cada segundo conta e a estratégia é tudo. Com gráficos ultrarrealistas e uma física de jogo avançada, cada curva, ultrapassagem e pit stop são vividos em detalhes impressionantes. Sinta a pressão de uma temporada completa, enfrentando condições climáticas variáveis, corridas noturnas e desafios que testam suas habilidades ao máximo. Seja no modo carreira, construindo sua trajetória rumo ao título, ou em emocionantes competições online contra outros jogadores, F1 2023 coloca você no coração da ação.<br />\n<br />\nDomine as pistas com configurações personalizadas, ajustando cada detalhe do seu carro para otimizar desempenho e estabilidade. Competindo com inteligência artificial aprimorada, você enfrentará adversários que reagem ao seu estilo de corrida, tornando cada prova única e desafiadora. De corridas rápidas a eventos em tempo real, F1 2023 é a experiência definitiva para quem quer ultrapassar os próprios limites e sentir a intensidade de ser um piloto de elite!', 19),
(17, 'MLB The Show 23', 'Sony San Diego Studio', 'Esportes/Corrida', 299.99, 'Entre em campo, sinta a emoção do beisebol e faça sua lenda no diamante!', 'Em MLB The Show 23, a paixão pelo beisebol ganha vida como nunca antes! Entre em campo e experimente a emoção de jogar com as melhores equipes da Major League Baseball, onde cada jogo é uma nova oportunidade para brilhar. Com gráficos impressionantes e uma jogabilidade realista, cada arremesso, rebatida e jogada defensiva captura a essência do esporte, fazendo você se sentir como um verdadeiro atleta.<br /><br />\r\n<br /><br />\r\nPersonalize seu jogador no modo Road to the Show e construa sua carreira, enfrentando desafios e buscando reconhecimento no mundo do beisebol. Participe de ligas e torneios online, mostrando suas habilidades contra jogadores de todo o mundo, ou desfrute da rica história do beisebol em modos como March to October, onde cada decisão pode mudar o curso da temporada.<br /><br />\r\n<br /><br />\r\nMLB The Show 23 oferece uma experiência imersiva, com novas mecânicas de jogo, atualizações de roster e eventos sazonais que trazem a emoção do beisebol em tempo real. Prepare-se para viver a intensidade do diamante, fazer jogadas memoráveis e criar sua própria lenda nas grandes ligas!', 20),
(18, 'Gran Turismo 7', 'Polyphony Digital', 'Esportes/Corrida', 350.00, 'Desperte sua paixão por velocidade e conquiste as pistas com realismo incomparável!', 'Em Gran Turismo 7, a verdadeira essência da corrida se encontra em cada curva e reta! Prepare-se para uma experiência automobilística sem igual, onde você pode dirigir uma vasta coleção de mais de 400 carros, cada um meticulosamente recriado com gráficos de última geração e física realista. Desde modelos clássicos até as mais recentes inovações do setor, Gran Turismo 7 oferece uma jornada de amor pelo automobilismo que atrai tanto novatos quanto veteranos.<br /><br />\r\n<br /><br />\r\nMergulhe em modos de jogo variados, desde corridas emocionantes em pistas icônicas até desafios de licença que aprimoram suas habilidades de direção. A nova experiência Scapes permite que você fotografe seus carros em cenários deslumbrantes, enquanto o modo Cafe oferece uma narrativa envolvente que destaca a rica história do automobilismo. Com um sistema de clima dinâmico e mudanças de hora do dia, cada corrida se torna uma experiência única e desafiadora.<br /><br />\r\n<br /><br />\r\nGran Turismo 7 não é apenas um jogo de corrida; é uma celebração do automobilismo, oferecendo uma comunidade vibrante, eventos online e competições emocionantes que mantêm a adrenalina em alta. Sente-se ao volante e descubra o que significa realmente ser um piloto!', 21),
(19, 'The Crew Motorfest', 'Ubisoft', 'Esportes/Corrida', 300.00, 'Explore, desafie e conquiste as estradas em um festival de velocidade sem limites!', 'Em The Crew Motorfest, a aventura automotiva atinge novas alturas! Prepare-se para um festival de velocidade repleto de ação, onde você pode explorar uma recriação vibrante do Havai. Desde as praias deslumbrantes até as montanhas imponentes, cada cenário oferece oportunidades únicas para desafiar amigos e adversários em uma variedade de eventos emocionantes.<br />\r\n<br />\r\nMonte seu próprio clube de corridas e participe de competições que vão desde corridas de rua a desafios de off-road, testando suas habilidades e a performance dos veículos. Com uma vasta seleção de carros, motos e outros veículos, cada um personalizável de acordo com seu estilo, você pode realmente criar sua experiência de corrida única. O jogo também apresenta uma jogabilidade dinâmica que combina elementos de corrida e exploração, permitindo que você descubra o mundo à sua maneira.<br />\r\n<br />\r\nSinta a adrenalina enquanto compete em eventos ao vivo e desfrute de uma comunidade ativa que traz um toque social à experiência. The Crew Motorfest é mais do que apenas um jogo de corrida; é um convite para viver a paixão pela velocidade e pela aventura em cada curva. Venha participar da festa!', 22),
(20, 'MotoGP 23', 'Milestone', 'Esportes/Corrida', 250.00, 'Experimente a adrenalina das pistas e conquiste o mundo do motociclismo!', 'Em MotoGP 23, sinta a adrenalina das corridas em duas rodas como nunca antes! Prepare-se para assumir o controle das máquinas mais poderosas do motociclismo e competir nas pistas mais icônicas do mundo. Com gráficos impressionantes e física realista, cada curva e reta oferece uma experiência autêntica que faz você se sentir como um verdadeiro piloto de MotoGP.<br /><br />\r\n<br /><br />\r\nMergulhe em uma carreira emocionante, onde você pode personalizar sua moto, ajustar configurações e trabalhar em equipe com engenheiros para otimizar seu desempenho em cada corrida. Explore modos de jogo variados, incluindo o novo Sprint Mode, que traz corridas rápidas e intensas, e participe de eventos online para competir com jogadores de todo o mundo.<br /><br />\r\n<br /><br />\r\nAlém disso, MotoGP 23 oferece um modo de carreira mais aprofundado, onde você pode desenvolver seu piloto desde o início e enfrentar desafios únicos em sua jornada para se tornar campeão. Acompanhe as emoções de cada temporada e viva a rivalidade dos grandes nomes do motociclismo. Prepare-se para acelerar, superar limites e conquistar o pódio em um dos jogos mais emocionantes da franquia até agora!', 23),
(21, 'Resident Evil 4', 'Capcom', 'Terror/Horror', 299.90, 'Enfrente o terror, sobreviva ao horror e descubra os segredos de uma aldeia sombria!', 'Mergulhe no coração do horror em Resident Evil 4, um dos jogos mais aclamados da franquia! Assuma o papel de Leon S. Kennedy, um agente especial em uma missão para resgatar a filha do presidente sequestrada por uma seita obscura em uma aldeia rural da Europa. Enfrentando inimigos aterrorizantes, como os temíveis Ganados, você precisará usar astúcia, estratégia e uma variedade de armas para sobreviver a esse pesadelo.<br />\r\n<br />\r\nCom uma jogabilidade inovadora que combina ação intensa com elementos de terror, Resident Evil 4 redefine a experiência de sobrevivência. Explore ambientes atmosféricos, resolva quebra-cabeças desafiadores e descubra segredos sombrios que permeiam a trama. Os gráficos impressionantes e o design sonoro envolvente elevam a imersão, fazendo com que cada encontro com inimigos seja uma luta pela sobrevivência.<br />\r\n<br />\r\nPrepare-se para um passeio emocional repleto de reviravoltas e momentos de tensão, enquanto você desvenda a verdade por trás da seita e enfrenta horrores inimagináveis. Resident Evil 4 não é apenas uma luta pela sobrevivência, mas uma jornada que testará seus limites e revelará o verdadeiro significado do medo. A batalha começa agora—você está pronto para encarar o terror?', 24),
(22, 'Dead by Daylight', 'Behaviour Interactive', 'Terror/Horror', 69.90, 'Escape do terror ou torne-se a próxima vítima em uma caça implacável!', 'Em Dead by Daylight, a tensão e o medo estão sempre à espreita! Mergulhe em um jogo de terror assimétrico onde um assassino implacável persegue quatro sobreviventes em uma batalha de vida ou morte. Cada partida oferece uma nova experiência, repleta de emoções intensas e decisões estratégicas que podem determinar o destino dos jogadores.<br />\r\n<br />\r\nComo sobrevivente, você deve trabalhar em equipe para reparar geradores, criar armadilhas e escapar de um cenário aterrorizante, enquanto evita ser capturado. Use astúcia e furtividade para se esconder e superar as ameaças que se aproximam, pois a cada passo, a pressão aumenta. Como assassino, aproveite suas habilidades únicas para caçar e eliminar suas presas antes que elas consigam escapar, transformando cada partida em um emocionante jogo de gato e rato.<br />\r\n<br />\r\nCom uma comunidade vibrante, eventos sazonais e uma variedade de mapas e personagens icônicos, Dead by Daylight oferece uma experiência de terror envolvente e cheia de adrenalina que desafia os limites da sobrevivência. Prepare-se para gritar, correr e lutar pela sua vida em um mundo onde cada decisão pode ser a diferença entre escapar ou se tornar a próxima vítima do assassino!', 25),
(23, 'Bloodborne', 'FromSoftware', 'Terror/Horror', 149.99, 'Enfrente seus pesadelos e mergulhe em uma cidade amaldiçoada repleta de horrores!', 'Em Bloodborne, você é um Caçador que adentra a sombria cidade de Yharnam, um lugar amaldiçoado onde horrores inomináveis espreitam a cada esquina. Em busca de uma cura para uma misteriosa doença, você enfrentará criaturas monstruosas e desafiantes, explorando um mundo repleto de mistérios e influências góticas. A atmosfera é densa e opressora, com cada detalhe do cenário revelando fragmentos da trágica história da cidade.\r\n\r\nO sistema de combate é rápido e implacável, exigindo reflexos ágeis e estratégias precisas para sobreviver. Com uma combinação de armas de fogo e lâminas transformáveis, você poderá personalizar seu estilo de luta para se adaptar aos terrores que habitam Yharnam. À medida que desvenda segredos antigos e enfrenta chefes poderosos, você será levado a questionar os limites entre realidade e pesadelo.\r\n\r\nCom gráficos impressionantes e uma trilha sonora atmosférica, Bloodborne oferece uma experiência desafiadora e envolvente, ideal para quem busca um jogo de ação e terror que testará sua coragem e habilidade. Prepare-se para enfrentar o desconhecido e descobrir o que reside nas profundezas da escuridão!', 26),
(24, 'The Last of Us Part II', 'Naught Dog', 'Terror/Horror', 299.90, 'Sobreviva em um mundo devastado, onde cada escolha pode ser a diferença entre a vida e a morte!', 'Mergulhe em uma narrativa emocional e impactante em The Last of Us, um jogo que redefine a experiência de sobrevivência em um mundo pós-apocalíptico. Junte-se a Joel, um sobrevivente endurecido, e Ellie, uma jovem cheia de esperança, enquanto eles atravessam os Estados Unidos devastados por uma pandemia que transformou a sociedade. Enfrentando não apenas criaturas infectadas, mas também outros sobreviventes dispostos a tudo para garantir sua própria sobrevivência, cada passo é repleto de tensão e desafios morais.<br />\r\n<br />\r\nCom gráficos impressionantes e uma trilha sonora envolvente, The Last of Us oferece uma experiência imersiva que explora temas de amor, perda e resiliência em meio ao caos. O sistema de combate combina furtividade e ação, permitindo que você escolha como enfrentar os perigos que surgem no caminho. Os ambientes ricamente detalhados contam histórias próprias, enquanto os personagens complexos e suas relações emocionais profundam a experiência de jogo.<br />\r\n<br />\r\nPrepare-se para uma jornada inesquecível onde cada decisão conta, e descubra o que realmente significa lutar por um futuro em um mundo onde a humanidade está à beira da extinção. The Last of Us não é apenas um jogo; é uma experiência que ficará com você para sempre.', 27),
(25, 'Outlast 2', 'Red Barrels', 'Terror/Horror', 99.90, 'Enfrente seus medos mais sombrios e descubra os horrores ocultos em uma jornada de sobrevivência aterrorizante!', 'Em Outlast 2, a tensão e o terror estão sempre à espreita! Mergulhe em uma narrativa perturbadora que explora a escuridão da mente humana enquanto você assume o papel de Blake Langermann, um jornalista investigativo em busca de sua esposa desaparecida em uma remota comunidade rural. Este mundo sombrio está repleto de horrores sobrenaturais e criaturas aterrorizantes que farão seu coração disparar.<br />\r\n<br />\r\nUtilizando a famosa mecânica de sobrevivência da série, você deve escapar de inimigos implacáveis, resolver quebra-cabeças e explorar ambientes claustrofóbicos enquanto luta contra o desespero e a insanidade. Os gráficos impressionantes e o som imersivo intensificam a atmosfera de medo e desconforto, tornando cada momento uma luta pela sobrevivência.<br />\r\n<br />\r\nCom uma história profunda e perturbadora que desafia suas crenças, Outlast 2 oferece uma experiência aterrorizante que vai além do que os olhos podem ver. Prepare-se para enfrentar seus medos mais sombrios em uma jornada que testará seus limites e revelará os segredos mais sombrios de uma fé distorcida.', 28),
(26, 'Phasmophobia', 'Kinetic Games', 'Terror/Horror', 59.90, 'Junte-se à equipe, enfrente os fantasmas e desvende os mistérios que assombram a noite!', 'Em Phasmophobia, o medo se torna uma experiência cooperativa emocionante! Junte-se a amigos como investigadores paranormais e prepare-se para enfrentar espíritos e entidades sobrenaturais em locais assombrados. Equipado com uma variedade de ferramentas, como câmeras, sensores e equipamentos de detecção de fantasmas, você e sua equipe devem coletar evidências e desvendar os mistérios que cercam cada caso.<br />\r\n<br />\r\nA tensão aumenta à medida que você explora casas abandonadas, escolas e outros cenários aterrorizantes, onde cada som e sombra podem indicar a presença de algo sobrenatural. Use a comunicação por voz para coordenar suas ações, mas esteja atento—os fantasmas podem responder e tornar a caçada ainda mais aterrorizante.<br />\r\n<br />\r\nCom gráficos imersivos e uma atmosfera de suspense palpável, Phasmophobia proporciona uma experiência de terror única que testará sua coragem e trabalho em equipe. Prepare-se para entrar em um mundo onde o sobrenatural se torna realidade e cada missão é uma luta pela sobrevivência!', 29),
(27, 'House Flipper', 'Empyrean', 'Simulação', 24.99, 'Transforme casas em lares dos sonhos e libere seu potencial como designer!', 'Em House Flipper, você se torna o mestre da renovação, transformando imóveis deteriorados em lares deslumbrantes! Com uma variedade de ferramentas e itens à sua disposição, você pode reformar, decorar e personalizar cada espaço de acordo com sua visão criativa. Desde a demolição de paredes até a escolha de móveis, cada decisão conta para criar ambientes acolhedores e funcionais.<br />\r\n<br />\r\nExplore diferentes propriedades, cada uma com seu próprio conjunto de desafios e possibilidades. Aprenda com cada projeto, desenvolvendo suas habilidades enquanto você aumenta seu portfólio e seu lucro. O jogo oferece uma experiência de simulação envolvente, onde você pode liberar sua criatividade e experimentar estilos de design variados, desde o moderno até o rústico.<br />\r\n<br />\r\nCom gráficos detalhados e uma jogabilidade intuitiva, House Flipper permite que você viva o sonho de ser um designer de interiores. Prepare-se para colocar suas habilidades à prova e veja como suas escolhas podem transformar uma casa simples em uma obra-prima do design!', 30),
(28, 'The Sims 4', 'Maxis', 'Simulação', 0.00, 'Crie mundos, construa laços e viva histórias inesquecíveis com seus Sims!', 'Mergulhe em um mundo de possibilidades ilimitadas com The Sims 4! Crie e personalize seus Sims, desde a aparência até suas personalidades, enquanto você dá vida a histórias únicas e emocionantes. Com uma jogabilidade envolvente e gráficos vibrantes, você pode explorar uma variedade de ambientes, construir casas dos sonhos e interagir com outros Sims em uma comunidade dinâmica.<br />\r\n<br />\r\nExperimente o dia a dia dos seus Sims, ajudando-os a desenvolver suas habilidades, seguir carreiras e formar relacionamentos significativos. As expansões e pacotes de conteúdo oferecem ainda mais opções, permitindo que você adicione novas atividades, locais e histórias. De festas animadas a momentos emocionantes, cada dia na vida de seus Sims é uma nova aventura.<br />\r\n<br />\r\nCom The Sims 4, a única limitação é a sua imaginação! Crie, jogue e compartilhe suas experiências, vivendo a vida de forma criativa e divertida em um universo que reflete suas ideias e sonhos.', 31),
(29, 'Assassin s Creed Valhalla', 'Ubisoft', 'Ação/Aventura', 249.99, 'Desperte o guerreiro nórdico que há em você e conquiste novos mundos em busca de glória!', 'Em Assassin s Creed Valhalla, embarque em uma jornada épica como Eivor, um feroz guerreiro viking em busca de um novo lar nas terras da Inglaterra medieval. Explore um mundo aberto vasto e dinâmico, repleto de culturas ricas, batalhas intensas e uma narrativa envolvente que desafia suas lealdades e valores.<br />\r\n<br />\r\nPersonalize Eivor com habilidades únicas e uma variedade de armas, enquanto você conquista território, estabelece alianças e luta contra inimigos formidáveis, incluindo saxões e outros clãs vikings. A construção de seu assentamento é fundamental, permitindo que você recrute novos membros e fortaleça sua comunidade, influenciando a história ao seu redor.<br />\r\n<br />\r\nCom gráficos deslumbrantes e uma trilha sonora imersiva, Assassin s Creed Valhalla oferece uma experiência rica em detalhes históricos e mitologia nórdica. Mergulhe na saga dos vikings, enfrente desafios épicos e descubra o que significa ser um verdadeiro guerreiro em busca de honra e legado. Sua aventura começa agora—prepare-se para conquistar!', 32),
(30, 'Starfield', 'Bethesda Game Studios', 'RPG', 299.99, 'Explore os mistérios do cosmos e crie seu próprio destino entre as estrelas!', 'Em Starfield, embarque em uma jornada intergaláctica como nunca antes, explorando um universo vasto e aberto repleto de planetas inexplorados e segredos cósmicos. Como membro da Constellation, você se tornará um explorador em busca de respostas e aventuras, personalizando seu personagem com habilidades únicas e equipamentos avançados.<br />\r\n<br />\r\nDesfrute de um mundo rico em detalhes, desde cidades vibrantes até paisagens alienígenas deslumbrantes, onde cada escolha impacta sua jornada. Interaja com facções intrigantes, embarque em missões emocionantes e descubra a história por trás de antigos mistérios que cercam a humanidade e o cosmos.<br />\r\n<br />\r\nCom gráficos impressionantes e uma narrativa profunda, Starfield oferece uma experiência imersiva que combina exploração, combate e desenvolvimento de personagem. Prepare-se para desbravar as estrelas, enfrentar desafios e forjar seu próprio legado em um universo onde as possibilidades são infinitas!', 33),
(31, 'Elden Ring', 'FromSoftware', 'RPG', 349.99, 'Desafie os deuses e descubra os segredos de um mundo aberto repleto de desafios!', 'Em Elden Ring, mergulhe em um mundo vasto e interconectado, repleto de mistérios, criaturas míticas e desafios épicos. Criado em colaboração com George R.R. Martin, este jogo de ação e RPG apresenta uma narrativa rica que se desenrola em meio a uma terra destruída e cheia de lendas.<br />\r\n<br />\r\nComo um Ternário, você terá a liberdade de explorar vastos reinos, enfrentando inimigos formidáveis e desvendando segredos em cada esquina. O sistema de combate dinâmico permite uma personalização profunda do seu personagem, oferecendo uma variedade de armas, magias e habilidades para enfrentar as adversidades.<br />\r\n<br />\r\nCom gráficos deslumbrantes e uma atmosfera envolvente, Elden Ring promete uma experiência imersiva que desafia suas habilidades e testes de resistência. Prepare-se para um mundo onde cada decisão pode levar à glória ou à derrota, e descubra o que significa ser um verdadeiro herói em busca do Elden Ring!', 34),
(32, 'Among Us', 'Innersloth LLC', 'Sobrevivência', 14.99, 'Desconfie de seus amigos e descubra o impostor antes que seja tarde!', 'Em Among Us, a suspeita está no ar! Junte-se a um grupo de até 10 jogadores e embarque em uma emocionante missão espacial, onde você deve completar tarefas enquanto tenta descobrir quem entre você é o impostor. A jogabilidade cooperativa e as interações sociais criam um ambiente repleto de tensão e estratégias, onde cada decisão pode mudar o rumo da partida.<br />\n<br />\nComo tripulante, você precisa trabalhar em equipe, resolver quebra-cabeças e manter seus olhos abertos para comportamentos suspeitos. Como impostor, sua missão é sabotar os esforços dos outros e eliminar os tripulantes sem ser descoberto. As reuniões de emergência adicionam uma camada extra de estratégia, onde você deve defender sua inocência ou acusar os outros.<br />\n<br />\nCom gráficos coloridos e uma jogabilidade acessível, Among Us oferece horas de diversão e suspense, ideal para jogar com amigos ou desconhecidos. Prepare-se para enganar e desmascarar em um jogo onde a confiança é a chave para a vitória!', 35);

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;

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
(30, 10, 1),
(31, 11, 1),
(32, 12, 1),
(33, 12, 4),
(34, 13, 1),
(35, 13, 2),
(36, 13, 4),
(37, 14, 1),
(38, 14, 4),
(39, 15, 1),
(40, 15, 2),
(41, 15, 4),
(42, 16, 1),
(43, 16, 2),
(44, 16, 4),
(49, 19, 1),
(50, 19, 2),
(51, 19, 4),
(54, 21, 1),
(55, 21, 2),
(56, 21, 4),
(57, 22, 1),
(58, 22, 2),
(59, 22, 3),
(60, 22, 4),
(62, 24, 1),
(63, 25, 1),
(64, 25, 2),
(65, 25, 3),
(66, 25, 4),
(67, 26, 1),
(68, 26, 4),
(69, 27, 1),
(70, 27, 2),
(71, 27, 4),
(72, 28, 1),
(73, 28, 2),
(74, 28, 4),
(75, 29, 1),
(76, 29, 2),
(77, 29, 4),
(78, 30, 2),
(79, 30, 4),
(84, 32, 4),
(85, 32, 5),
(91, 31, 2),
(92, 31, 4),
(93, 9, 1),
(94, 20, 1),
(95, 20, 3),
(96, 17, 1),
(97, 17, 2),
(98, 17, 3),
(99, 18, 1),
(103, 23, 1);

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
(1, 'PLAYSTATION', 'Play Has No Limits', '../imgs/logoPlayStation.png'),
(2, 'XBOX', 'Its Good to Play Together', '../imgs/logoXbox.png'),
(3, 'NINTENDO', 'Switch and Play', '../imgs/logoNintendo.png'),
(4, 'COMPUTER', 'Controle Total, Diversão Ilimitada', '../imgs/logoPc.png'),
(5, 'MOBILE', 'Onde Você For, o Jogo Vai Junto', '../imgs/logoPhone.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_user_jogo`
--

DROP TABLE IF EXISTS `tbl_user_jogo`;
CREATE TABLE IF NOT EXISTS `tbl_user_jogo` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `versao` varchar(40) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_jogo` int DEFAULT NULL,
  `data_compra` date DEFAULT (curdate()),
  PRIMARY KEY (`id_compra`),
  KEY `id_jogo` (`id_jogo`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_user_jogo`
--

INSERT INTO `tbl_user_jogo` (`id_compra`, `versao`, `id_user`, `id_jogo`, `data_compra`) VALUES
(1, 'XBOX', 23, 19, '2024-11-05'),
(2, 'COMPUTER', 19, 5, '2024-11-05'),
(14, 'XBOX', 19, 13, '2024-11-06'),
(15, 'COMPUTER', 19, 7, '2024-11-06');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_user`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`) VALUES
(19, 'Shandel', 'shandelvm16@gmail.com', '(11)91034-6024', '../profilePhotos/91793c4bc723216c06a573ff8578fa4a.jpg', '$2y$10$KTTzNo76PabmSGpanGcbaO2VHAFYlanj5mUBluo2cozV8eqrvypvW', 'Desenvolvedor'),
(23, 'Thiago Ribeiro', 'thiagoribeiros@gmail.com', '(11)93857-3384', '../profilePhotos/photoPadrao.png', '$2y$10$uaDNo83MnyMK3OztU7Tx1udyteGD24wiXK3tON5YSbIOla7kSQHZ2', 'Usuario');

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
