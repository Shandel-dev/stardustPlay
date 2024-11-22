-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22/11/2024 às 02:23
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;

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
(35, '../image_jogo/logo/b19ef401dc0bf9b1924a9ebfc3f114ab.png', '../image_jogo/banner/68465fdad292be98f921b2d4c5f8509e.jpg', '../image_jogo/poster/795fcbf1a9e0d9b6ef5fba8d286524bc.jpg', 'https://www.youtube.com/embed/ixfokUG711U?si=O93mGdjHJ5p3wwoA', '../image_jogo/screen/b42b4a71fa021af9e85448734a7885bb.webp', '../image_jogo/screen/c1915d62ebca7c03a99e9d33defda9f2.jpg', '../image_jogo/screen/23536f4de3f8a28243876c3bbed1e003.jpg'),
(36, '../image_jogo/logo/993efa96a050f9fcb27072252a1756b8.png', '../image_jogo/banner/102ae149674bc83a2da0d71fb565e63a.jpg', '../image_jogo/poster/76de9b06013b212df82baaad68d903f8.webp', 'https://www.youtube.com/embed/53MyR_Z3i1w?si=R_RvS6ArdJxQMOKx', '../image_jogo/screen/c0e937260815ead50bb6a27517e604ca.webp', '../image_jogo/screen/7d5ef91ac530237dffb1c978b34ec06b.webp', '../image_jogo/screen/25c970aff771e4f86e9f1c704b972798.webp'),
(37, '../image_jogo/logo/b65a12707ef9bee28b4e155a4c38ad95.png', '../image_jogo/banner/5b9b6fab0967c13be235d15594aea8ff.webp', '../image_jogo/poster/8327f4fb8b333fb55d2516817cd70dc1.jpg', 'https://www.youtube.com/embed/ot7uXNQskhs?si=P7MAEWwJrzgmL4lJ', '../image_jogo/screen/0076092b340d693dc20b932a788ba36b.webp', '../image_jogo/screen/3b252fbd115820a0316167fc2c5b20b5.webp', '../image_jogo/screen/96e9ddb21268084e36355ededd6a7552.webp'),
(38, '../image_jogo/logo/6f9d795eb7b0bfb4a4accb379f7d1f07.jpg', '../image_jogo/banner/559ec0a1497648811a781af3f558fcd7.jpg', '../image_jogo/poster/9246d228d3596491bafabda0f4969ddf.jpg', 'https://www.youtube.com/embed/IGEc06Eypkg?si=xdHyOVTqfRe7HMBU', '../image_jogo/screen/21680954204dc238904df87c43d61eaa.webp', '../image_jogo/screen/562b64681a7145c480217508e5dca270.webp', '../image_jogo/screen/7d1c4e9c00daa4aeff013d677405846b.webp'),
(39, '../image_jogo/logo/77682c126a87d2673f1c4f747e9b89b9.png', '../image_jogo/banner/34dc8263b94198590986d4083c81639b.jfif', '../image_jogo/poster/1fd38b8f59db98f5626b1b2b147b9ff8.webp', 'https://www.youtube.com/embed/uwZBdWRSBRs?si=7vkwyMFHTz4naKOI', '../image_jogo/screen/32af5967eb3af8cb17c802e6c07d3e34.webp', '../image_jogo/screen/7689d4c3f038395479a5f36deada48a4.webp', '../image_jogo/screen/969874f99a14bf8cf124201ada73121d.webp'),
(40, '../image_jogo/logo/eb527fb14f3cf4b15c3b15c689d37f51.webp', '../image_jogo/banner/72e7fb66af247fbfc82b650e6f73664b.jpg', '../image_jogo/poster/d759a33de5a87f7ffd4aa91b335a8fe4.jpg', 'https://www.youtube.com/embed/iQQ3znvSfr0?si=ZLH9nHMZWiewCGRd', '../image_jogo/screen/57a563bb69e549cbc2277e6dd53c3b9a.webp', '../image_jogo/screen/e9f8172533ed1d5ea16fe30191aa31d6.webp', '../image_jogo/screen/96a307e04ed8c7f809b7acf753e8edb8.webp'),
(41, '../image_jogo/logo/dcbe4427b9a2a6eec59b7ee3dc05ee22.webp', '../image_jogo/banner/f64c59957ee01ae1803eb7efa5166827.jfif', '../image_jogo/poster/de9609304d7d87c279e4950f49497180.jpg', 'https://www.youtube.com/embed/hv1bezKv6Gc?si=gqiYZyXCRx5zuP4S', '../image_jogo/screen/43408f78fbda72f6d930fe678ee8c092.webp', '../image_jogo/screen/3d20a052c4ddafee7f0cc8c34eaef883.webp', '../image_jogo/screen/443a30f7972bdd0cb4f49bb0a440edb4.webp'),
(42, '../image_jogo/logo/5c00ba34b8b10105dcdd1562d1aaf337.png', '../image_jogo/banner/aac0c7e0f119a58eb09e0c07d46d8dfe.jpg', '../image_jogo/poster/0785313acde2c90da6c5219a6ebf819f.jfif', 'https://www.youtube.com/embed/lcVISRmANIo?si=6NGvnq1X_L9QA7S4', '../image_jogo/screen/f5f7a7e5c286c73a67b1d31ffda59b80.webp', '../image_jogo/screen/cf173a14ec05c64705411bff70069c06.webp', '../image_jogo/screen/17609a43da25d4f51888c85160d94ffe.webp'),
(43, '../image_jogo/logo/05505b1dc098727220129e62a5442aff.png', '../image_jogo/banner/90dc302c1aa0e17a81ce5640165640da.jpg', '../image_jogo/poster/dcff519ce44a85e14c7f40981f80b953.jpg', 'https://www.youtube.com/embed/aOadxZBsPiA?si=pDHxZTrOmAoK5OKb', '../image_jogo/screen/bb0a07befb6dda582bf37be226cf86ae.webp', '../image_jogo/screen/7b8e25a7278598615e15014a3642895c.webp', '../image_jogo/screen/ae5cdfc879cfd24bce5047f8691a87e5.webp'),
(44, '../image_jogo/logo/c643839fc28343e0f8eb89693be0750a.png', '../image_jogo/banner/42becfd6081a6be6bc9cf5589a67b868.jpg', '../image_jogo/poster/ff1270841802b6afb040ec98f0119270.jpeg', 'https://www.youtube.com/embed/7c_xdTnVPos?si=5SgBHCNuJdvjtXCe', '../image_jogo/screen/1f550a87feea9c60bf826dfd5111c6e9.webp', '../image_jogo/screen/78bec13ade399bd1b54e5f21143f1d53.webp', '../image_jogo/screen/ecfe4fca5052af3ea50741b1969cda85.webp'),
(45, '../image_jogo/logo/e362b1d7635027a82651220b178fefe0.jpg', '../image_jogo/banner/6e8a0438293497f9096a719a1019f57a.jpg', '../image_jogo/poster/e13c0de1b061a5bfdc717e20b7715028.jfif', 'https://www.youtube.com/embed/kotJEIahGdQ?si=fGX5qL21tp5F3EDx', '../image_jogo/screen/4687bfdb1d8bc617c7a52bdf80ddae2a.webp', '../image_jogo/screen/743e486583c6534bb21b310e5b5d6129.webp', '../image_jogo/screen/e3d9f9f2a60efd2b83826b536a3625c8.webp'),
(46, '../image_jogo/logo/4992fbe06dae8c18e6c15a889cf0aaff.jfif', '../image_jogo/banner/918262e63f47193093add142fa347b91.jfif', '../image_jogo/poster/8b67d2c149fdf7da5031be9a591f7c14.png', 'https://www.youtube.com/embed/4N6Ab_n7IL8?si=2f1ObvCy50e49g9z', '../image_jogo/screen/b76b9c716d7521c070c32f799c8d8525.webp', '../image_jogo/screen/73e88b2f17b9798a2e19ed48361569ea.jfif', '../image_jogo/screen/99b44420a89c3b581acd6bda8b6ce148.webp'),
(47, '../image_jogo/logo/8ca5be0b266e4849c5040599ae4026ce.png', '../image_jogo/banner/34b383aac9e1b53febe812b3033c2f2b.jpg', '../image_jogo/poster/9fa2dd341bc118e3d3db42f1125355b5.png', 'https://www.youtube.com/embed/5fIAPcVdZO8?si=k4ON5KTT4ZrVwSh7', '../image_jogo/screen/57428d7e0d4eb6ba73af2581fb907f7f.webp', '../image_jogo/screen/b9dea74d7b733fa3bf2039104b07bf7e.webp', '../image_jogo/screen/9e2a1301049bb3bcec604f1d9e1a77a6.webp'),
(48, '../image_jogo/logo/e42f8ea4e7b3eac8f0b4e93677c435f0.png', '../image_jogo/banner/d3a8d4fbbcd67b17f9563fd123de7a04.jpg', '../image_jogo/poster/9a7a41d5ae8d0383a6f318e900a58f09.jfif', 'https://www.youtube.com/embed/bVbyn7c1X6E?si=EsnSPaOejXnkTuo1', '../image_jogo/screen/df54afd5f68f46ff26c6a4bdfe91b977.webp', '../image_jogo/screen/fa666e49c27f4b0e5d144768c6615e2e.webp', '../image_jogo/screen/5fbef173c2fde214ef16644415c251ff.webp'),
(49, '../image_jogo/logo/fa6ac6e5bae36d5364a4b90200f9084c.webp', '../image_jogo/banner/433f76413d96ef1de914b9ef28c89ddf.jpg', '../image_jogo/poster/9de1f229b435b5866188edadf080d43c.jpg', 'https://www.youtube.com/embed/RvGaSPTcTxc?si=kyb2ex8rww3r5Zxy', '../image_jogo/screen/2ff4a7790b3d65f5f777e351c5d1b0ef.webp', '../image_jogo/screen/11a019119108f653351a28a1cd08b040.webp', '../image_jogo/screen/8126389fea29eb3453af561218ad2aba.webp'),
(50, '../image_jogo/logo/7537c9b41b5c60122b85df4143592009.webp', '../image_jogo/banner/e41583efe3751225814d41bc46ad0e8e.webp', '../image_jogo/poster/8449c0e1acd23114d45859f5fd3fa763.webp', 'https://www.youtube.com/embed/lVPONdZBh6s?si=pNX9itPYHvtya2Jz', '../image_jogo/screen/8d69713565192a99ad2c08bebc8ff1c1.webp', '../image_jogo/screen/9e8cb641740cea430592e3e5c2956f09.webp', '../image_jogo/screen/cc76d94a14a8d6c2068317b56a0c42a3.webp'),
(51, '../image_jogo/logo/5b0a03ebcf313777d0f3d4a593dd4fe2.webp', '../image_jogo/banner/50eefd777a46d79e2d5e7e16b10cec99.jpg', '../image_jogo/poster/77e0421dc58036deeed3ebb747df303d.jpg', 'https://www.youtube.com/embed/A-taWymx1WI?si=r0hn4hnx2UKHl5Ow', '../image_jogo/screen/f980e6ab507af79c5ec256a1da5fd4f6.webp', '../image_jogo/screen/5e522f5a556359446e20bb2431a381b0.jpg', '../image_jogo/screen/fa22948ddfc7e646d2c9fec6e5cf992f.webp'),
(52, '../image_jogo/logo/c22a83422d1b4397e0d693714aee083a.webp', '../image_jogo/banner/eb71e4473fa5f2f8016515b3a2ef9e56.jpg', '../image_jogo/poster/deb38f92d1e77980562a2a8d9a684ed9.png', 'https://www.youtube.com/embed/hdHlIy0W4uU?si=_Z3tKXaa7YiZth5L', '../image_jogo/screen/fe05f22ccc0858064f71374e75eab77f.webp', '../image_jogo/screen/99892e1377691aabda160563d3d7870d.webp', '../image_jogo/screen/3ffc6d58ec7bf572d5b33c8cdb5556ac.webp'),
(53, '../image_jogo/logo/b199e016402969581e3f3d908d85d123.jfif', '../image_jogo/banner/9eb69ce7d33b0ddaf019fd81a8d0b46b.webp', '../image_jogo/poster/62b6f2611edf18f9f95054fd5e50b61a.webp', 'https://www.youtube.com/embed/RP4UTOek0-Y?si=DplBJS2ZoeWJFkuq', '../image_jogo/screen/54cf8c0b7c2a0f163568a6e7befa6b0d.webp', '../image_jogo/screen/19ed22975bda94719369d6ca652d71e5.webp', '../image_jogo/screen/4081a18c8222035779d51c04db3b1d19.webp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_jogos`
--

DROP TABLE IF EXISTS `tbl_jogos`;
CREATE TABLE IF NOT EXISTS `tbl_jogos` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `empresa` varchar(40) DEFAULT NULL,
  `categoria` enum('Ação/Aventura','Sobrevivência','RPG','Simulação','Esportes/Corrida','Terror/Suspense') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `preco` decimal(6,2) DEFAULT NULL,
  `hashtag` varchar(250) DEFAULT NULL,
  `slogan` varchar(150) DEFAULT NULL,
  `descricao` varchar(1500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_imgs` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_imgs` (`id_imgs`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogos`
--

INSERT INTO `tbl_jogos` (`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `hashtag`, `slogan`, `descricao`, `id_imgs`) VALUES
(5, 'Terraria', 'Re-Logic', 'RPG', 19.99, '#Indie #Criatividade #Construcao #Chefoes #Combate #Mundo2D', 'Cave, construa, lute e explore um mundo sem limites, onde a aventura nunca tem fim', 'Em Terraria, o céu é o limite, e o chão? Bem, o chão é apenas o começo. Prepare-se para mergulhar em um mundo 2D cheio de oportunidades para explorar, construir e lutar. Neste jogo, você é o criador do seu destino, podendo cavar até as profundezas da terra, construir estruturas épicas e enfrentar criaturas monstruosas que habitam este vasto e imprevisível universo.\r\n\r\nCada bioma é único, com seus próprios desafios, e a progressão depende de como você escolhe explorar e aproveitar os recursos ao seu redor. Quer se aventurar em uma mina cheia de riquezas e criaturas perigosas? Ou talvez construir a casa dos seus sonhos em uma floresta encantada? Em Terraria, você tem total liberdade para criar, destruir e se reinventar a cada novo dia.\r\n\r\nO jogo também é um prato cheio para quem curte enfrentar chefes desafiadores e descobrir itens raros. E o melhor: pode ser jogado solo ou com amigos. Não importa o estilo de jogo, Terraria garante que a diversão nunca acabe. Vamos lá, aventureiro, o mundo está esperando para ser descoberto!', 5),
(6, 'Minecraft', 'Mojang', 'Ação/Aventura', 119.00, '#Criatividade #Multiplayer #Construcao #MundoAberto #Steve', 'Construa, explore, crie – o mundo é seu para moldar', 'Em Minecraft, o único limite é a sua imaginação. Mergulhe em um mundo de blocos, onde você pode construir tudo o que sempre sonhou, explorar cavernas misteriosas, lutar contra criaturas fantásticas e, claro, criar suas próprias aventuras. O jogo te oferece uma experiência sem igual, com possibilidades infinitas, seja sozinho ou com amigos.\r\n\r\nNo modo criativo, você tem liberdade total para criar construções imensas, desde castelos grandiosos até cidades futuristas. Já no modo sobrevivência, é hora de testar suas habilidades: minerar, caçar, construir e se proteger das ameaças que surgem à noite. Cada bioma traz um desafio novo e recursos únicos, fazendo com que cada jogo seja uma experiência diferente.\r\n\r\nCom gráficos simples, mas envolventes, Minecraft é mais do que um jogo – é uma plataforma para a criatividade sem limites, onde o único desafio é o que você deseja conquistar. Então, o que você está esperando? A aventura está apenas começando!', 6),
(7, 'Hollow Knight', 'Team Cherry', 'Ação/Aventura', 46.99, '#Indie #Metroidvania #Exploracao #2D #Chefoes #Misterios', 'Descubra segredos antigos em um reino sombrio repleto de desafios e beleza', 'Prepare-se para explorar o mundo de Hallownest, um reino subterrâneo onde cada canto esconde mistérios, segredos e perigos. Como um cavaleiro diminuto, sua missão é desbravar cavernas, florestas e cidades antigas, enquanto enfrenta uma infinidade de inimigos mortais. A beleza sombria de Hollow Knight vai te cativar, mas cuidado: cada vitória é seguida por novos desafios que exigem coragem, agilidade e inteligência.\r\n\r\nO jogo combina exploração meticulosa com combates emocionantes, onde você precisará aprender com cada derrota para seguir em frente. A história é contada de forma sutil, permitindo que você descubra o que aconteceu com Hallownest por conta própria, sem pressa.\r\n\r\nEm Hollow Knight, cada novo local, cada novo inimigo e cada chefe derrotado te leva mais fundo no coração desse mundo misterioso. Prepare-se para a imersão total nesse universo fascinante, onde cada escolha é crucial. Você está pronto para se perder no abismo e descobrir o que se esconde nas sombras?', 7),
(8, 'God of War', 'Santa Monica Studio', 'Ação/Aventura', 99.50, '#MitologiaNordica #Combate #Narrativa #Exploracao #Deuses', 'Vingança, redenção e uma jornada épica entre deuses e monstros', 'Entre no mundo brutal e emocionante da mitologia nórdica. Em God of War, Kratos, um guerreiro marcado por seu passado, busca redenção enquanto cria seu filho, Atreus, em uma jornada repleta de desafios emocionais e combates intensos. Explore um mundo repleto de mistérios, criaturas míticas e batalhas épicas, enquanto descobre uma nova faceta do lendário Deus da Guerra.\r\n\r\nCom uma narrativa profunda e combates que equilibram brutalidade e estratégia, você enfrentará deuses, monstros e seus próprios demônios. O machado Leviathan é sua arma principal, mas a verdadeira força de Kratos está na relação que ele constrói com Atreus, cheia de lições e desafios. Cada decisão impacta sua jornada, tornando cada momento inesquecível.\r\n\r\nSeja pela adrenalina dos combates ou pela profundidade emocional, God of War redefine o gênero de ação-aventura, oferecendo uma experiência intensa e cativante. Está pronto para se tornar uma lenda?', 8),
(9, 'Marvel s Spider-Man', 'Insomniac Games', 'Ação/Aventura', 169.00, '#HomemAranha #Heroi #Marvel #Console', 'Balance entre arranha-céus, proteja Nova York, seja o herói!', 'É hora de balançar pelas ruas de Nova York como nunca antes! Em Marvel’s Spider-Man, você assume o papel de Peter Parker, já estabelecido como o Homem-Aranha, mas ainda lidando com os desafios da vida cotidiana. Prepare-se para viver uma aventura repleta de ação, onde você vai combater vilões icônicos, desbravar a cidade em uma liberdade impressionante e explorar a história de Peter de uma maneira profunda e emocionante.\r\n\r\nAs batalhas são intensas e frenéticas, mas você também vai se ver em situações mais pessoais e emocionantes, onde as escolhas de Peter impactam sua jornada. Além disso, o jogo traz uma Nova York viva, com ruas movimentadas, prédios altos e oportunidades para fazer o bem, seja combatendo crimes ou ajudando os moradores da cidade.\r\n\r\nCom uma jogabilidade dinâmica, gráficos incríveis e uma narrativa que te prende, Marvel’s Spider-Man é a experiência definitiva de ser o herói. Prepare-se para voar entre os arranha-céus e enfrentar seus maiores inimigos. E lembre-se: “Com grandes poderes, vêm grandes responsabilidades.”', 12),
(10, 'Uncharted 4: A Thief\'s End', 'Naughty Dog', 'Ação/Aventura', 76.90, '#Tesouro #Aventura #Exploracao', 'Em busca do último tesouro, mas será que a verdade vale mais que a riqueza?', 'Em Uncharted 4, Nathan Drake retorna para sua última aventura, enfrentando dilemas sobre o que realmente importa: tesouros ou a família. Após uma vida cheia de aventuras e descobertas, Nathan tenta se afastar do mundo dos saqueadores, mas o passado nunca fica para trás. Quando um antigo parceiro aparece, ele é puxado para uma busca perigosa por um tesouro perdido que pode mudar tudo.\r\n\r\nO jogo traz cenas de ação de tirar o fôlego, exploração em paisagens deslumbrantes e uma narrativa envolvente que faz você sentir cada emoção dos personagens. A jogabilidade é mais fluida do que nunca, com combates emocionantes e plataformas que desafiam a agilidade do jogador. O visual é cinematográfico, cada cena mais impressionante do que a outra.\r\n\r\nA história de Uncharted 4 é uma despedida épica para Nathan Drake, onde você vai se ver entre as ruínas de civilizações antigas e a luta pela sobrevivência. Prepare-se para emoção, reviravoltas e, claro, muita ação. O fim de uma era está próximo, mas o impacto dessa aventura será eterno.', 13),
(11, 'Days Gone', 'Bend Studio', 'Sobrevivência', 39.99, '#PosApocalipse #MundoDesolado #Zumbis #Exploracao', 'Em um mundo devastado, a luta pela sobrevivência nunca foi tão intensa', 'Em Days Gone, a Terra foi tomada por hordas de criaturas, e a única regra que importa é: sobreviver. Você joga como Deacon St. John, um ex-motociclista e caçador de recompensas, que navega por um mundo pós-apocalíptico tentando encontrar propósito e redenção. Com paisagens desoladas, criaturas mutantes e grupos de sobreviventes, cada dia é uma batalha constante pela vida.\r\n\r\nA jogabilidade mistura ação, exploração e combate em um cenário aberto, onde suas escolhas realmente importam. Em Days Gone, você não está apenas enfrentando zumbis; as hordas podem ser esmagadoras, e o ambiente selvagem traz um desafio constante, seja com as condições climáticas imprevisíveis ou com os outros humanos, que podem ser tão perigosos quanto os monstros.\r\n\r\nO jogo também é repleto de momentos emocionantes, enquanto Deacon tenta lidar com seu passado e seguir em frente. A história é intensa, a ação, imersiva, e o sentimento de solidão, palpável. Prepare-se para pegar a estrada e lutar por sua sobrevivência em um mundo onde a cada curva pode surgir uma nova ameaça.', 14),
(12, 'Subnautica', 'Unknown Worlds Ent.', 'Sobrevivência', 351.27, '#Exploracao #Subaquatica #MundoSubmerso #Oceado', 'Explore as profundezas do oceano e descubra os segredos de um planeta alienígena', 'Em Subnautica, o abismo é sua casa e a exploração, sua missão. Após um acidente, você cai em um misterioso planeta oceânico, e a única saída é explorar o fundo do mar para encontrar recursos, construir bases e sobreviver. Com paisagens deslumbrantes, criaturas fantásticas e uma história envolvente, Subnautica oferece uma das experiências de exploração mais imersivas e emocionantes do mundo dos videogames.\r\n\r\nA beleza do jogo vai além de seus gráficos impressionantes: a sensação de estar sozinho em um planeta desconhecido e as decisões que você toma enquanto luta pela sobrevivência são o que realmente tornam Subnautica especial. O oceano é vasto, e o que você encontra pode ser tanto deslumbrante quanto aterrorizante.\r\n\r\nCom uma mistura de exploração, construção e sobrevivência, Subnautica te desafia a desbravar os mares e a desvendar os mistérios que ele esconde. Aventura, perigo e descobertas esperam por você a cada mergulho. Pronto para descer às profundezas?', 15),
(13, 'The Forest', 'Endnight Games', 'Sobrevivência', 104.90, '#MundoHostil #ConstrucaoEDefesa #CriaturasSombrias #Tensao', 'Sobreviva na selva, mas o verdadeiro perigo pode estar mais perto do que você imagina', 'Em The Forest, a sobrevivência não é apenas sobre caçar e coletar. Após um acidente aéreo, você se vê em uma floresta cheia de perigos inimagináveis, e o objetivo é claro: sobreviver. Mas o que você não sabe é que a floresta esconde segredos mais sombrios do que qualquer ameaça natural. Criaturas monstruosas e canibais aguardam a menor fraqueza, e a cada passo, o ambiente te testa de maneiras inesperadas.\r\n\r\nA verdadeira tensão do jogo vem de sua mistura de sobrevivência, construção e horror psicológico. À medida que você constrói seu abrigo, caça e explora, precisa ficar atento ao comportamento dos inimigos, cujas táticas de ataque podem ser imprevisíveis e mortais. O jogo também é ainda mais intenso quando jogado em modo cooperativo, onde você e seus amigos precisam trabalhar juntos para se proteger dos horrores que a floresta oferece.\r\n\r\nThe Forest é um jogo onde cada noite é um risco e cada decisão pode ser a diferença entre a vida e a morte. A selva está cheia de mistérios que você vai querer desvendar, mas o verdadeiro desafio é: você vai sobreviver?', 16),
(14, 'EA SPORTS FC 25', 'EA Sports', 'Esportes/Corrida', 299.00, '#Futebol #Jogadores #Competitivo #JogosImersivos', 'Prepare-se para o jogo, onde cada gol conta e a paixão pelo futebol nunca para!', 'EA Sports FC 25 traz o futebol de volta aos seus pés, com uma experiência mais realista e imersiva do que nunca. A cada drible, passe e gol, você sente a emoção de estar no campo, disputando as partidas mais épicas do mundo. Com gráficos melhorados e jogabilidade refinada, o jogo coloca você no controle de suas equipes favoritas, em ligas de todo o planeta.\r\n\r\nO realismo vai além das partidas. O sistema de IA inteligente faz com que cada jogador se mova e reaja de forma única, trazendo uma abordagem mais dinâmica ao jogo. Personalize sua equipe, enfrente adversários em modos desafiadores e crie o seu legado no futebol, seja com seu time dos sonhos ou com estrelas emergentes.\r\n\r\nCom EA Sports FC 25, cada momento é uma oportunidade para provar que você é o melhor. Prepare-se para a ação no campo e leve a paixão do futebol a um novo nível!', 17),
(15, 'NBA 2K25', 'Visual Concepts', 'Esportes/Corrida', 299.99, '#Basquete #Competitivo #Realismo #Esporte #NBA', 'Comande a quadra, brilhe nos arremessos e crie sua lenda no basquete!', 'NBA 2K25 te coloca no centro da ação, onde cada drible, passe e enterrada podem te transformar em uma lenda. Sinta a emoção do basquete com gráficos ultrarrealistas, mecânicas refinadas e animações tão fluidas que parece um jogo de verdade. Seja no modo MyCareer, construindo sua trajetória desde as quadras de rua até a NBA, ou no modo MyTeam, formando o esquadrão dos seus sonhos, você terá controle total da sua história.\r\n\r\nDesafie amigos, enfrente jogadores do mundo todo ou mergulhe em partidas emocionantes com os maiores ícones do esporte. Novas funcionalidades como modos de temporada dinâmicos e personalizações inéditas trazem mais possibilidades para viver a paixão pelo basquete.\r\n\r\nCom NBA 2K25, a quadra é sua, o jogo é seu, e a vitória está a um arremesso de distância. Prepare-se para dominar o basquete em grande estilo!', 18),
(16, 'F1 2023', 'Codemasters', 'Esportes/Corrida', 350.00, '#Competitivo #Formula1 #Adrenalina #Carros #Velocidade', 'Acelere, conquiste e sinta a adrenalina da Fórmula 1 como nunca antes!', 'F1 2023 coloca você no cockpit dos carros mais rápidos e tecnológicos do planeta. Sinta a adrenalina de correr em circuitos icônicos, enfrentando rivais em batalhas intensas e precisas. Com gráficos de tirar o fôlego e física aprimorada, cada curva, ultrapassagem e vitória se torna uma experiência inesquecível.\r\n\r\nPersonalize sua estratégia, ajuste cada detalhe do carro e conquiste o campeonato mundial. No modo carreira, você pode construir sua história desde as categorias menores até o topo da Fórmula 1, enquanto o modo multiplayer coloca suas habilidades à prova contra jogadores de todo o mundo.\r\n\r\nQuer seja enfrentando condições climáticas imprevisíveis ou desafiando as regras do limite, F1 2023 transforma cada corrida em um espetáculo de velocidade e emoção. Pronto para assumir o volante e mostrar quem manda nas pistas?', 19),
(17, 'MLB The Show 23', 'Sony San Diego Studio', 'Esportes/Corrida', 299.99, '#Beisebol #Realismo #Campeonatos #Competitivo', 'Entre no campo, mostre sua habilidade e conquiste a glória do beisebol!', 'MLB The Show 23 é mais que um jogo, é a experiência definitiva para os fãs de beisebol! Entre no campo com jogadores lendários e estrelas atuais, vivenciando cada jogada, arremesso e home run como se estivesse no estádio. Com gráficos impressionantes e jogabilidade refinada, cada partida traz um novo nível de emoção e estratégia.\r\n\r\nAssuma o controle total do seu time no modo franquia, crie sua carreira no modo Road to the Show ou desafie amigos e outros jogadores no competitivo online. Cada swing de taco e cada decisão estratégica pode ser o momento que define sua vitória.\r\n\r\nCom atualizações constantes, personalizações incríveis e mecânicas que capturam a essência do beisebol, MLB The Show 23 transforma o esporte em um espetáculo virtual onde você é o protagonista. Está pronto para dominar a temporada?', 20),
(18, 'Gran Turismo 7', 'Polyphony Digital', 'Esportes/Corrida', 350.00, '#Velocidade #Carros #Realismo #CorridasCompetitivas #Adrenalina', 'Velocidade, precisão e paixão: dirija o carro dos seus sonhos!', 'Gran Turismo 7 é a celebração definitiva do automobilismo! Aqui, você mergulha em um universo onde cada carro é recriado com detalhes impressionantes e cada pista testa suas habilidades ao limite. Desde clássicos históricos até supermáquinas modernas, o jogo entrega uma experiência de direção tão realista que é como se você sentisse o cheiro da borracha queimando.\r\n\r\nNo modo campanha, explore a história do automobilismo, colecione veículos e conquiste vitórias em competições ao redor do mundo. Prefere um desafio mais intenso? Mergulhe no modo multiplayer e enfrente pilotos de todo o globo em corridas acirradas e cheias de emoção.\r\n\r\nCom gráficos espetaculares, ajustes mecânicos detalhados e uma sensação autêntica de pilotagem, Gran Turismo 7 é mais que um jogo: é um convite para viver a paixão pela velocidade. Ajuste o cinto, escolha seu carro e conquiste a pista!', 21),
(19, 'The Crew Motorfest', 'Ubisoft', 'Esportes/Corrida', 300.00, '#Carro #MundoAberto #Velocidade #Competitivo #Corrida', 'Explore, acelere e celebre o mundo automotivo em alta velocidade!', 'Em The Crew Motorfest, o volante está nas suas mãos e a aventura é ilimitada. Descubra um mundo aberto vibrante, inspirado pelas paisagens incríveis do Havaí, e experimente o automobilismo de uma forma totalmente nova. De supercarros exóticos a clássicos icônicos, cada veículo é uma obra-prima pronta para dominar as estradas e fora delas.\r\n\r\nParticipe de festivais cheios de desafios emocionantes, explore trilhas escondidas e enfrente rivais em competições intensas. Quer correr sozinho, competir com amigos ou testar suas habilidades contra o mundo? O jogo oferece modos dinâmicos que se adaptam ao seu estilo. Personalize seus carros, crie eventos e deixe sua marca no universo automotivo.\r\n\r\nCom gráficos impressionantes, jogabilidade refinada e um cenário de tirar o fôlego, The Crew Motorfest não é apenas sobre velocidade, mas sobre viver e celebrar a paixão pelos carros. Seu motor está pronto?', 22),
(20, 'MotoGP 23', 'Milestone', 'Esportes/Corrida', 250.00, '#CorridasDeMoto #VelocidadeExtrema #Competitivo #Adrenalina', 'Domine as pistas, sinta a velocidade e viva a paixão das duas rodas!', 'MotoGP 23 é a corrida definitiva para quem ama a adrenalina sobre duas rodas! Entre em um mundo onde cada curva é um desafio, cada ultrapassagem é uma conquista, e cada corrida pode te levar ao topo. Com física aprimorada, gráficos de última geração e todas as equipes e pilotos oficiais da temporada, você viverá uma experiência que mistura emoção e autenticidade.\r\n\r\nSeja enfrentando condições climáticas dinâmicas, ajustando sua moto nos mínimos detalhes ou competindo contra amigos no modo multiplayer, o jogo entrega uma imersão única. No modo carreira, comece pequeno e construa sua jornada até a elite do MotoGP, criando rivalidades e provando que você é o melhor piloto do mundo.\r\n\r\nPrepare-se para acelerar ao máximo, dominar as pistas e sentir a vibração do motor como nunca antes. MotoGP 23 não é só um jogo, é uma viagem para os apaixonados por velocidade!', 23),
(21, 'Resident Evil 4', 'Capcom', 'Terror/Suspense', 299.90, NULL, 'Enfrente o terror, sobreviva ao horror e descubra os segredos de uma aldeia sombria!', 'Mergulhe no coração do horror em Resident Evil 4, um dos jogos mais aclamados da franquia! Assuma o papel de Leon S. Kennedy, um agente especial em uma missão para resgatar a filha do presidente sequestrada por uma seita obscura em uma aldeia rural da Europa. Enfrentando inimigos aterrorizantes, como os temíveis Ganados, você precisará usar astúcia, estratégia e uma variedade de armas para sobreviver a esse pesadelo.<br />\r\n<br />\r\nCom uma jogabilidade inovadora que combina ação intensa com elementos de terror, Resident Evil 4 redefine a experiência de sobrevivência. Explore ambientes atmosféricos, resolva quebra-cabeças desafiadores e descubra segredos sombrios que permeiam a trama. Os gráficos impressionantes e o design sonoro envolvente elevam a imersão, fazendo com que cada encontro com inimigos seja uma luta pela sobrevivência.<br />\r\n<br />\r\nPrepare-se para um passeio emocional repleto de reviravoltas e momentos de tensão, enquanto você desvenda a verdade por trás da seita e enfrenta horrores inimagináveis. Resident Evil 4 não é apenas uma luta pela sobrevivência, mas uma jornada que testará seus limites e revelará o verdadeiro significado do medo. A batalha começa agora—você está pronto para encarar o terror?', 24),
(22, 'Dead by Daylight', 'Behaviour Interactive', 'Terror/Suspense', 69.90, '#Sobreviver #MedoEAdrenalina #CacadaNoturna', 'Corra, se esconda e lute pela sobrevivência... O assassino está à espreita!', 'Em Dead by Daylight, o medo é real e a sobrevivência é a única opção. Junte-se a quatro sobreviventes e tente escapar de um assassino implacável, ou se coloque no papel do próprio monstro, caçando suas vítimas de forma sangrenta e calculista. Cada partida é uma tensão constante, onde a cada passo pode ser o último.\r\n\r\nEscolha entre uma variedade de sobreviventes com habilidades únicas ou assuma o papel de uma das criaturas mais aterrorizantes da história do terror. O jogo mistura elementos de sobrevivência, estratégia e ação em um cenário onde escuridão e suspense dominam. Com eventos e mapas temáticos, o terror nunca é o mesmo.\r\n\r\nEm Dead by Daylight, você sempre está sendo observado, e o relógio está correndo. Será que você será rápido o suficiente para escapar ou vai se tornar mais uma vítima? O que está em jogo aqui não é apenas a vida, mas o medo!', 25),
(23, 'Bloodborne', 'FromSoftware', 'Terror/Suspense', 149.99, '#Horror #MundoSombrio #RPGDesafiador #CacadorDeMonstros #AcaoIntensa', 'Enfrente seus pesadelos e mergulhe em uma cidade amaldiçoada repleta de horrores!', 'Em Bloodborne, você é um Caçador que adentra a sombria cidade de Yharnam, um lugar amaldiçoado onde horrores inomináveis espreitam a cada esquina. Em busca de uma cura para uma misteriosa doença, você enfrentará criaturas monstruosas e desafiantes, explorando um mundo repleto de mistérios e influências góticas. A atmosfera é densa e opressora, com cada detalhe do cenário revelando fragmentos da trágica história da cidade.\r\n\r\nO sistema de combate é rápido e implacável, exigindo reflexos ágeis e estratégias precisas para sobreviver. Com uma combinação de armas de fogo e lâminas transformáveis, você poderá personalizar seu estilo de luta para se adaptar aos terrores que habitam Yharnam. À medida que desvenda segredos antigos e enfrenta chefes poderosos, você será levado a questionar os limites entre realidade e pesadelo.\r\n\r\nCom gráficos impressionantes e uma trilha sonora atmosférica, Bloodborne oferece uma experiência desafiadora e envolvente, ideal para quem busca um jogo de ação e terror que testará sua coragem e habilidade. Prepare-se para enfrentar o desconhecido e descobrir o que reside nas profundezas da escuridão!                    ', 26),
(24, 'The Last of Us Part II', 'Naught Dog', 'Terror/Suspense', 299.90, NULL, 'Sobreviva em um mundo devastado, onde cada escolha pode ser a diferença entre a vida e a morte!', 'Mergulhe em uma narrativa emocional e impactante em The Last of Us, um jogo que redefine a experiência de sobrevivência em um mundo pós-apocalíptico. Junte-se a Joel, um sobrevivente endurecido, e Ellie, uma jovem cheia de esperança, enquanto eles atravessam os Estados Unidos devastados por uma pandemia que transformou a sociedade. Enfrentando não apenas criaturas infectadas, mas também outros sobreviventes dispostos a tudo para garantir sua própria sobrevivência, cada passo é repleto de tensão e desafios morais.\r\n\r\nCom gráficos impressionantes e uma trilha sonora envolvente, The Last of Us oferece uma experiência imersiva que explora temas de amor, perda e resiliência em meio ao caos. O sistema de combate combina furtividade e ação, permitindo que você escolha como enfrentar os perigos que surgem no caminho. Os ambientes ricamente detalhados contam histórias próprias, enquanto os personagens complexos e suas relações emocionais profundam a experiência de jogo.\r\n\r\nPrepare-se para uma jornada inesquecível onde cada decisão conta, e descubra o que realmente significa lutar por um futuro em um mundo onde a humanidade está à beira da extinção. The Last of Us não é apenas um jogo; é uma experiência que ficará com você para sempre.', 27),
(25, 'Outlast 2', 'Red Barrels', 'Terror/Suspense', 99.90, NULL, 'Enfrente seus medos mais sombrios e descubra os horrores ocultos em uma jornada de sobrevivência aterrorizante!', 'Em Outlast 2, a tensão e o terror estão sempre à espreita! Mergulhe em uma narrativa perturbadora que explora a escuridão da mente humana enquanto você assume o papel de Blake Langermann, um jornalista investigativo em busca de sua esposa desaparecida em uma remota comunidade rural. Este mundo sombrio está repleto de horrores sobrenaturais e criaturas aterrorizantes que farão seu coração disparar.<br />\r\n<br />\r\nUtilizando a famosa mecânica de sobrevivência da série, você deve escapar de inimigos implacáveis, resolver quebra-cabeças e explorar ambientes claustrofóbicos enquanto luta contra o desespero e a insanidade. Os gráficos impressionantes e o som imersivo intensificam a atmosfera de medo e desconforto, tornando cada momento uma luta pela sobrevivência.<br />\r\n<br />\r\nCom uma história profunda e perturbadora que desafia suas crenças, Outlast 2 oferece uma experiência aterrorizante que vai além do que os olhos podem ver. Prepare-se para enfrentar seus medos mais sombrios em uma jornada que testará seus limites e revelará os segredos mais sombrios de uma fé distorcida.', 28),
(26, 'Phasmophobia', 'Kinetic Games', 'Terror/Suspense', 59.90, NULL, 'Junte-se à equipe, enfrente os fantasmas e desvende os mistérios que assombram a noite!', 'Em Phasmophobia, o medo se torna uma experiência cooperativa emocionante! Junte-se a amigos como investigadores paranormais e prepare-se para enfrentar espíritos e entidades sobrenaturais em locais assombrados. Equipado com uma variedade de ferramentas, como câmeras, sensores e equipamentos de detecção de fantasmas, você e sua equipe devem coletar evidências e desvendar os mistérios que cercam cada caso.<br />\r\n<br />\r\nA tensão aumenta à medida que você explora casas abandonadas, escolas e outros cenários aterrorizantes, onde cada som e sombra podem indicar a presença de algo sobrenatural. Use a comunicação por voz para coordenar suas ações, mas esteja atento—os fantasmas podem responder e tornar a caçada ainda mais aterrorizante.<br />\r\n<br />\r\nCom gráficos imersivos e uma atmosfera de suspense palpável, Phasmophobia proporciona uma experiência de terror única que testará sua coragem e trabalho em equipe. Prepare-se para entrar em um mundo onde o sobrenatural se torna realidade e cada missão é uma luta pela sobrevivência!', 29),
(27, 'House Flipper', 'Empyrean', 'Simulação', 24.99, '#ConstrucaoEDecoracao #DesignDeInteriores #Reformas #House', 'Transforme casas em lares dos sonhos e libere seu potencial como designer!', 'Em House Flipper, o que você vê é o que você pode transformar! Se você sempre sonhou em reformar casas, este jogo é a sua chance de mostrar todo o seu talento para design e construção. Comece com projetos simples e, conforme acumula experiência e recursos, enfrente desafios maiores e mais complexos. Pinte, repare, decore e até crie espaços personalizados para vender e lucrar!\r\n\r\nMas House Flipper não é só sobre reformas. É sobre dar uma nova vida a ambientes esquecidos, transformar os espaços de uma maneira única e ver o impacto das suas escolhas no ambiente. Você será o arquiteto do seu próprio sucesso, onde cada parede que pinta, cada móvel que coloca, e cada toque de decoração faz parte de um projeto maior.\r\n\r\nE o melhor de tudo: você pode fazer tudo no seu ritmo, seja criando casas para vender ou apenas personalizando espaços para seu próprio prazer. Está pronto para mostrar seu talento e construir a casa dos seus sonhos?', 30),
(28, 'The Sims 4', 'Maxis', 'Simulação', 0.00, '#Npcs #Sims #SimulacaoDeVida #ConstrucaoCriativa', 'Crie vidas, construa histórias, e viva a diversão no seu próprio ritmo!', 'Em The Sims 4, você é o criador! Dê vida a personagens únicos, construa casas dos sonhos e crie histórias inesquecíveis. O jogo oferece uma liberdade incrível, onde cada escolha faz uma diferença no destino dos seus Sims. Quer que eles sejam médicos, artistas ou até chefes de uma família maluca? A decisão é toda sua!\r\n\r\nA diversão vai além da construção e da personalização: com The Sims 4, você tem a chance de viver a vida de seus personagens, criar laços e, claro, fazer algumas loucuras no caminho! Organize festas, desenvolva carreiras, explore relacionamentos ou apenas se dedique a deixar seu Sim viver a vida de forma inesperada. Tudo pode acontecer quando você é o arquiteto do destino deles.\r\n\r\nCom expansões e atualizações regulares, The Sims 4 continua a oferecer novas aventuras e possibilidades. Se joga nas atualizações e personaliza seu mundo do jeito que quiser! Seu controle, suas regras, suas histórias.', 31),
(29, 'Assassin s Creed Valhalla', 'Ubisoft', 'Ação/Aventura', 249.99, '#Viking #MundoAberto #Assassins', 'Conquiste reinos, forje seu destino e deixe sua marca na Era Viking', 'Prepare-se para viver como um verdadeiro viking! Em Assassin’s Creed Valhalla, você assume o papel de Eivor, um guerreiro feroz que deixa a Noruega em busca de novas terras na Inglaterra. Explore um mundo vasto, cheio de paisagens deslumbrantes, fortalezas para conquistar e segredos históricos para desvendar. Cada batalha, cada escolha e cada aliança que você forma moldam o futuro do seu clã.\r\n\r\nA experiência vai além da guerra: construa e expanda seu assentamento, participe de festas, cace tesouros e lidere invasões épicas contra os saxões. Mas cuidado—em um mundo cheio de conspirações, a ameaça pode vir de qualquer lado. Com combates brutais, opções de personalização e uma narrativa rica, Valhalla é mais que um jogo, é um mergulho na cultura e nos desafios de um viking em busca de glória.\r\n\r\nPronto para deixar sua marca na história? Levante o machado, grite como um viking e domine esse mundo cheio de oportunidades e perigos. Assassin’s Creed Valhalla te desafia a conquistar ou cair tentando!', 32),
(30, 'Starfield', 'Bethesda Game Studios', 'RPG', 299.99, '#Espaco #FiccaoCientifica #Planetas #MundoAberto #Exploracao', 'Explore os mistérios do cosmos e crie seu próprio destino entre as estrelas!', 'Você está pronto para explorar o cosmos como nunca antes? Starfield te coloca na pele de um explorador galáctico que tem a liberdade de ir onde quiser, desvendando segredos e mistérios de uma galáxia imensa. Cada planeta é um novo mundo cheio de recursos, formas de vida e histórias esperando por você. Embarque em uma nave que você pode personalizar, escolha o que quer ser—um mercenário destemido, um cientista curioso, ou o herói que o universo precisa.\r\n\r\nAlém disso, você vai encontrar facções que podem ser aliadas ou inimigas, construir bases em planetas distantes, e tomar decisões que vão ecoar por toda a galáxia. Com gráficos deslumbrantes e imersão total, cada detalhe foi feito para te transportar para essa jornada. Mas em Starfield, você não está apenas explorando o espaço: está moldando a sua própria história, com cada escolha que faz.\r\n\r\nPara quem sempre quis saber como é desbravar o desconhecido, Starfield é a oportunidade de realizar esse sonho e descobrir que o universo pode ser seu próximo grande lar. Embarque nessa aventura e descubra até onde você pode ir!                    ', 33),
(31, 'Elden Ring', 'FromSoftware', 'RPG', 349.99, '#MundoAberto #Desafio #Chefoes #Exploracao #CombateIntenso', 'Entre no vasto mundo das trevas, onde cada passo pode ser o último, mas a glória está ao seu alcance', 'Prepare-se para explorar um dos mundos mais imersivos e desafiadores já criados em um jogo. Elden Ring te joga em um vasto reino de terras devastadas, onde você será testado a cada passo. Criado pelos mestres de Dark Souls, este jogo traz uma experiência única, combinando combate brutal e uma narrativa envolvente em um cenário aberto e cheio de segredos.\r\n\r\nVocê assume o papel de um \"Tarnished\", um exilado destinado a buscar o Elden Ring e restaurar o equilíbrio de um mundo que caiu em ruínas. Com criaturas monstruosas, chefes imponentes e ambientes deslumbrantes, Elden Ring exige paciência, astúcia e perseverança. Cada batalha é uma luta pela sobrevivência, cada erro pode ser fatal, mas cada vitória é uma conquista épica.\r\n\r\nO mundo de Elden Ring é imenso, e você nunca vai parar de descobrir novas áreas, mistérios e histórias. A liberdade de explorar, criar estratégias e desafiar seus limites faz deste jogo uma experiência inesquecível. Está pronto para enfrentar o destino e se tornar o Elden Lord?', 34),
(32, 'Among Us', 'Innersloth LLC', 'Sobrevivência', 14.99, '#Multiplayer #Impostor #Tripulante #Amigos #Espaco #Deducao', 'Quem é o impostor? A amizade e a desconfiança estão no jogo', 'Em Among Us, a desconfiança nunca foi tão divertida! Junte seus amigos e prepare-se para uma experiência cheia de mistério, tensão e, claro, muitas risadas. O objetivo? Descobrir quem é o impostor antes que ele destrua a tripulação – ou se você for o impostor, enganar seus amigos e sabotar a missão!\r\n\r\nO jogo acontece em uma nave espacial, onde você e seus amigos têm tarefas a cumprir, mas há um sabotador entre vocês. Enquanto todos tentam completar suas tarefas, o impostor trabalha nas sombras para eliminar a equipe sem ser pego. A chave para a sobrevivência é a comunicação, mas cuidado, pois qualquer um pode ser o traidor.\r\n\r\nEm Among Us, a mentira e a dedução estão no centro da ação. Cada reunião é uma oportunidade para discutir e tentar descobrir quem está mentindo, mas cuidado: um bom impostor pode virar a situação a seu favor e virar o jogo. Prepare-se para muitas risadas, traições e surpresas até o último segundo!                    ', 35),
(33, 'The Witcher 3: Wild Hunt', 'CD Projekt Red', 'RPG', 199.99, '#MundoAberto #FantasiasSombrias #Caçador #Historia', 'Embarque em uma jornada épica, cheia de magia, monstros e escolhas que moldam o destino!', '                        Entre na pele de Geralt de Rívia, um caçador de monstros lendário em busca de sua protegida, Ciri, enquanto o mundo é consumido pelo caos em The Witcher 3: Wild Hunt. Neste RPG épico, você explorará um vasto mundo aberto repleto de missões cativantes, escolhas difíceis e personagens memoráveis que moldam cada aspecto da história.\r\n\r\nCom gráficos deslumbrantes e uma narrativa profunda, The Witcher 3 leva você a cidades vivas, florestas sombrias e montanhas nevadas, onde perigos e segredos o aguardam. Enfrente criaturas sobrenaturais em combates estratégicos que utilizam espadas, poções e magia, tudo enquanto personaliza seu estilo de jogo para superar os desafios à sua maneira.\r\n\r\nPrepare-se para enfrentar dilemas morais e decisões que afetam diretamente o destino de reinos e personagens. The Witcher 3: Wild Hunt não é apenas um jogo, mas uma experiência imersiva que o convida a explorar um universo onde cada escolha conta e onde lendas são forjadas.                    ', 36),
(34, 'Stardew Valley', 'ConcernedApe', 'RPG', 24.99, '#indie #fazenda #rpg', 'Uma fazenda, infinitas possibilidades—colha sonhos, cultive amizades', 'Cansado da correria da cidade? Em Stardew Valley, você herda uma fazenda simples e cheia de potencial. Aqui, é você quem decide o ritmo: plante, colha e crie animais enquanto transforma esse pedaço de terra no seu próprio paraíso agrícola. Mas a diversão não para na fazenda! Explore cavernas cheias de minerais raros (e monstros), construa laços com os moradores da vila, e até encontre o amor da sua vida.\r\n\r\nCada estação traz novos desafios e atividades, seja festivais animados ou mudanças que deixam sua rotina ainda mais interessante. Quer focar na agricultura, pesca ou até mesmo se tornar o minerador mais destemido? A escolha é toda sua! E o melhor? Dá pra jogar sozinho ou com amigos, compartilhando a diversão de cuidar da fazenda e explorar juntos.\r\n\r\nSe você curte jogos relaxantes e cheios de personalidade, Stardew Valley é o refúgio perfeito. Pegue sua enxada, plante novas amizades e crie sua vida dos sonhos no campo. A cidade nunca mais será o mesmo depois de conhecer esse lugar mágico!', 37),
(35, 'Free Fire', 'Garena Internacional', 'Ação/Aventura', 0.00, NULL, 'Caia, lute e sobreviva—o último em pé vence!', 'Prepare-se para a batalha definitiva em Free Fire! Neste jogo de tiro e sobrevivência de ritmo acelerado, 50 jogadores caem de paraquedas em uma ilha remota e disputam para ser o último sobrevivente. A cada partida, você terá que explorar o mapa em busca de armas, equipamentos e estratégias para eliminar seus oponentes.\r\n\r\nCom uma jogabilidade dinâmica e mapas variados, Free Fire oferece diversas opções de combate, incluindo solo e em equipes, permitindo que você jogue sozinho ou com amigos. Personalize seu personagem com habilidades únicas e aproveite uma grande variedade de skins, acessórios e veículos que aumentam ainda mais a imersão e estratégia no campo de batalha.\r\n\r\nEntre gráficos vibrantes e uma jogabilidade intuitiva, Free Fire proporciona batalhas intensas em partidas rápidas de cerca de 10 minutos, perfeitas para quem quer ação imediata. Desafie-se a sobreviver até o fim e conquiste a vitória em um dos jogos de battle royale mais populares do mundo!', 38),
(36, 'Machinarium', 'Amanita Design', 'Ação/Aventura', 9.99, '#Indie #Puzzles #Exploracao #PointAndClick #DesafiosMentais', 'Resolva enigmas, explore um mundo de sucata e descubra o coração de uma máquina!', '                        Em Machinarium, você embarca em uma jornada encantadora e desafiadora por um mundo repleto de robôs e enigmas. Assuma o papel de Josef, um simpático robô abandonado em um ferro-velho, em sua missão para resgatar sua amada e enfrentar a Gangue do Chapéu Preto que ameaça a cidade. Com cenários desenhados à mão e uma trilha sonora atmosférica, cada detalhe de Machinarium cria uma experiência visualmente única e envolvente.\r\n\r\nResolva uma série de puzzles criativos e complexos que exigem lógica e estratégia, enquanto explora ambientes fascinantes feitos de sucata e máquinas antigas. Machinarium não utiliza diálogos—em vez disso, a história é contada através de animações sutis e pistas visuais, permitindo uma imersão profunda em seu mundo peculiar.\r\n\r\nIdeal para os amantes de jogos de aventura e quebra-cabeças, Machinarium desafia você a pensar fora da caixa e apreciar a beleza de um universo mecânico cheio de charme e mistério. Descubra segredos, supere obstáculos e ajude Josef em sua jornada inesquecível!                    ', 39),
(37, 'SimCity Buildlt', 'ELECTRONIC ARTS', 'Simulação', 0.00, '#ConstrucaoEPlanejamento #Cidade #Metropole #Prefeito', 'Construa sua cidade, desafie suas habilidades e veja seu império crescer!', 'Em SimCity BuildIt, a cidade dos seus sonhos está ao seu alcance! Neste jogo de construção e estratégia, você é o prefeito responsável por transformar um terreno vazio em uma metrópole próspera. Edifique arranha-céus, construa infraestrutura, forneça serviços essenciais e cuide das necessidades de seus cidadãos, tudo enquanto enfrenta desafios diários que testarão sua habilidade de planejar e tomar decisões rápidas.\r\n\r\nMas SimCity BuildIt vai além de simplesmente gerenciar uma cidade: você também precisa lidar com crises, equilibrar o orçamento e garantir que seu povo esteja feliz. Não se esqueça de participar de competições com outros prefeitos ao redor do mundo e mostrar quem tem a cidade mais impressionante!\r\n\r\nE se você achar que precisa de um toque extra, personalize sua cidade com diferentes estilos e temas, ou até mesmo negocie com outros jogadores para obter os recursos que precisa. Está pronto para ser o grande arquiteto de sua cidade? Sua jornada começa agora!', 40),
(38, 'Farming Simulator 23', 'GIANTS Software', 'Simulação', 44.99, '#Fazenda #Agricola #VidaNoCampo #SimulacaoAgricola #CultivoEColheita', 'Colha, crie, cultive—viva a experiência autêntica de uma fazenda moderna!', '                                                Em Farming Simulator 23, assuma o controle de sua própria fazenda e vivencie a vida no campo como nunca antes! Com uma ampla variedade de máquinas agrícolas licenciadas de marcas renomadas, você poderá plantar e colher diferentes culturas, criar animais, gerenciar silos e expandir seu império agrícola. Cada estação traz novos desafios, e cabe a você planejar o cultivo, cuidar dos animais e vender os produtos para garantir o crescimento da sua propriedade.\r\n\r\nCom gráficos realistas e uma jogabilidade detalhada, Farming Simulator 23 oferece um ambiente imersivo onde cada detalhe da fazenda é fielmente recriado, desde o funcionamento das máquinas até a variação do clima. Trabalhe no campo com tratores, colheitadeiras e equipamentos especializados para cada tipo de cultivo, ou dedique-se à criação de animais como vacas, porcos e galinhas.\r\n\r\nIdeal para fãs de simulação e vida no campo, Farming Simulator 23 permite que você explore e gerencie todos os aspectos da fazenda com precisão e realismo, proporcionando uma experiência gratificante e autêntica. Plante seu caminho para o sucesso e construa o futuro de sua fazenda!                                        ', 41),
(39, 'Overcooked! 2', 'Team 17', 'Simulação', 33.47, '#Cozinha #Multiplayer #TrabalhoEmEquipe #Receitas', 'Caos na cozinha! Trabalhe em equipe e sirva pratos deliciosos antes que o tempo acabe!', '                        Prepare-se para a diversão frenética e desafiadora de Overcooked! 2, onde a cozinha é um campo de batalha! Junte-se a amigos ou jogue online para preparar pratos deliciosos sob uma pressão constante. Como chef em uma cozinha caótica, você precisará de habilidades rápidas e trabalho em equipe para cortar, fritar, cozinhar e servir os pedidos a tempo—tudo isso enquanto lida com obstáculos inusitados como plataformas móveis, incêndios e até cozinhas que mudam de layout!\r\n\r\nCada nível traz novos desafios e receitas, exigindo coordenação e comunicação entre os jogadores para alcançar o sucesso. De cozinhas em balões de ar quente a restaurantes flutuantes, a variedade de cenários e desafios deixa cada partida imprevisível e empolgante.\r\n\r\nCom gráficos vibrantes e uma jogabilidade viciante, Overcooked! 2 é perfeito para quem gosta de jogos cooperativos e de ação rápida. Prepare os ingredientes, divida as tarefas e trabalhem juntos para vencer o relógio e servir os pratos com perfeição. A cozinha pode ser um caos, mas com trabalho em equipe, nada é impossível!                    ', 42),
(40, 'Little Nightmares', 'Bandai Namco Entertainment', 'Terror/Suspense', 84.90, NULL, 'Enfrente seus medos e escape de um mundo sombrio e distorcido!', 'Em Little Nightmares, você entra em um mundo assustador e surreal, cheio de criaturas grotescas e cenários sombrios que parecem saídos de um pesadelo. No papel de Six, uma pequena garota vestida com uma capa de chuva amarela, você deve explorar um navio misterioso conhecido como The Maw, onde cada passo o coloca em perigo. O ambiente opressor e os visuais distorcidos criam uma experiência envolvente e assustadora que testa sua coragem e inteligência.\r\n\r\nCada ambiente apresenta novos obstáculos e perigos, desafiando você a resolver enigmas, se esconder dos monstros e usar sua astúcia para avançar. Little Nightmares combina elementos de aventura, suspense e plataforma, levando você a explorar ambientes detalhados onde a atmosfera é uma mistura de encantador e aterrorizante.\r\n\r\nIdeal para os fãs de jogos de terror e suspense psicológico, Little Nightmares oferece uma experiência envolvente e única. Descubra os segredos de The Maw e ajude Six a escapar das profundezas sombrias, onde cada canto esconde uma nova ameaça.', 43),
(41, 'Bendy and the Ink Machine', 'Joey Drew Studios', 'Terror/Suspense', 37.99, '#Indie #MisterioSombrio #AmbienteRetro #Horror #MonstrosDeTinta', 'Enfrente seus demônios de tinta e descubra os segredos sombrios do estúdio!', 'Em Bendy and the Ink Machine, você retorna a um estúdio de animação abandonado, onde os personagens criados por você parecem ter ganhado vida... e sede de vingança. No papel de Henry, um ex-animador, você explora corredores sombrios e encontra horrores que nunca esperava ver fora dos desenhos. Com gráficos únicos que evocam animações dos anos 30 e uma atmosfera de suspense crescente, Bendy and the Ink Machine combina terror e mistério para uma experiência verdadeiramente perturbadora.\r\n\r\nA cada capítulo, você desvenda mais sobre os experimentos macabros que transformaram o estúdio em um pesadelo. Enfrente monstros de tinta, resolva enigmas e fuja de Bendy, a assustadora mascote do estúdio, que espreita nas sombras. Armado com apenas algumas ferramentas improvisadas, você deve sobreviver, descobrir a verdade e escapar de uma realidade distorcida onde a linha entre fantasia e pesadelo se dissolve.\r\n\r\nCom seu estilo visual nostálgico e uma história envolvente, Bendy and the Ink Machine é perfeito para quem adora um mistério assustador. Prepare-se para enfrentar o passado sombrio do estúdio e descobrir até onde a tinta pode te levar!                    ', 44),
(42, 'Hello Neighbor 2', 'TinyBuild', 'Terror/Suspense', 107.99, NULL, 'Descubra o mistério… mas cuidado, ele está sempre de olho!', 'Em Hello Neighbor 2, você retorna à pequena cidade de Raven Brooks para investigar os segredos sombrios de seu vizinho misterioso e descobrir o que ele esconde. Desta vez, você não está enfrentando um vizinho comum—ele está mais esperto, com uma inteligência artificial que se adapta a cada movimento seu, antecipando suas ações e criando novos desafios. Esconda-se, invada e use sua criatividade para burlar a vigilância dele enquanto explora o cenário aberto da cidade em busca de pistas e respostas.\r\n\r\nCom gráficos intrigantes e uma atmosfera de suspense, Hello Neighbor 2 leva a jogabilidade de terror furtivo a um novo nível. Cada tentativa de descoberta vem com riscos, pois o vizinho está sempre à espreita, pronto para proteger seus segredos. Resolva enigmas e use o ambiente a seu favor para se manter sempre um passo à frente e evitar ser pego.\r\n\r\nIdeal para quem gosta de mistério e adrenalina, Hello Neighbor 2 desafia você a explorar e descobrir a verdade em um mundo onde cada escolha pode fazer a diferença. Corra riscos, enfrente o desconhecido e desvende o que está por trás das portas trancadas de Raven Brooks.', 45),
(43, 'Zoochosis', 'Clapper Heads LLC', 'Terror/Suspense', 73.99, NULL, 'Entre no habitat de criaturas perturbadas—onde a loucura encontra a selva!', 'Em Zoochosis, a tranquilidade de um zoológico se transforma em um pesadelo psicológico. Mergulhe em um ambiente claustrofóbico e misterioso onde os animais, antes dóceis, agora exibem comportamentos estranhos e perturbadores, tornando cada esquina uma ameaça. Ao investigar os recintos abandonados, você encontrará pistas que revelam a decadência mental e física dos animais, em uma metáfora para o confinamento e a perda de liberdade.\r\n\r\nComo o protagonista, você precisa explorar o zoológico, enfrentando mistérios e resolvendo enigmas que se desenrolam em um enredo profundo e crítico sobre o tratamento e o impacto do cativeiro em seres vivos. A atmosfera é densa e tensa, com gráficos que alternam entre o realismo e o surreal, criando um mundo onde o familiar se torna assustador e o inesperado é iminente.\r\n\r\nIdeal para os fãs de terror psicológico, Zoochosis é mais do que um jogo de suspense; é uma reflexão imersiva sobre as consequências da privação de liberdade. Sobreviva aos desafios, desvende os segredos do zoológico e descubra até onde a loucura pode se espalhar em um ambiente onde a natureza foi confinada.', 46),
(44, 'Ark Survival Evolved', 'Studio Wildcard', 'Sobrevivência', 46.99, NULL, 'Domine a selva, dome dinossauros e lute pela sobrevivência em um mundo primitivo!', 'Em ARK: Survival Evolved, você acorda em uma ilha misteriosa e selvagem, cercado por dinossauros, perigos naturais e outros sobreviventes com quem terá que competir ou colaborar. Nesse ambiente hostil e cheio de possibilidades, cada ação conta para sua sobrevivência: colete recursos, construa abrigos, crie ferramentas e armas, e enfrente os desafios de um ecossistema onde você está no meio da cadeia alimentar.\r\n\r\nA mecânica do jogo permite que você dome dinossauros e outras criaturas pré-históricas, criando um exército pessoal que auxilia tanto em combate quanto no transporte e coleta de materiais. Explore cavernas profundas, descubra mistérios antigos e avance na tecnologia, passando de armas rudimentares a bases tecnológicas, enquanto evolui seu personagem e expande seu território.\r\n\r\nCom gráficos impressionantes e uma jogabilidade de sobrevivência realista, ARK: Survival Evolved é ideal para quem busca um desafio em um mundo imersivo e dinâmico. Viva a emoção de explorar um universo repleto de criaturas gigantescas e incontroláveis, e faça de tudo para sobreviver e prosperar nesse paraíso selvagem!', 47);
INSERT INTO `tbl_jogos` (`id_jogo`, `nome`, `empresa`, `categoria`, `preco`, `hashtag`, `slogan`, `descricao`, `id_imgs`) VALUES
(45, 'Don\'t Starve Together', 'Klei Entertainment', 'Sobrevivência', 27.99, '#Cooperativo #Multiplayer #ImersaoSombria #MundoInospito', 'Sobreviva ao desconhecido com amigos—mas cuidado, a fome e a escuridão não perdoam!', '                        Em Don’t Starve Together, você e seus amigos são lançados em um mundo sombrio e estranho, onde a sobrevivência depende de trabalho em equipe e planejamento. Explore uma paisagem repleta de criaturas estranhas, desafios imprevisíveis e recursos escassos enquanto tenta resistir à fome, à loucura e aos perigos da escuridão. A cada dia, o ambiente se torna mais ameaçador, exigindo que você desenvolva estratégias para caçar, cultivar, construir abrigos e lidar com monstros que espreitam à noite.\r\n\r\nCada personagem possui habilidades únicas que podem ajudar a equipe a sobreviver, tornando a cooperação essencial para superar as adversidades e vencer os desafios da natureza hostil. O mundo de Don’t Starve Together é imprevisível e gerado aleatoriamente, garantindo que cada partida seja uma experiência única e repleta de surpresas.\r\n\r\nPara quem gosta de desafios de sobrevivência e de testar os limites da cooperação, Don’t Starve Together oferece uma aventura cativante e assustadora. Enfrente seus maiores medos ao lado de amigos e descubra se vocês têm o que é preciso para sobreviver... juntos!                    ', 48),
(46, 'Dead Cells', 'Playdigious', 'Ação/Aventura', 47.49, '#Indie #Chefoes #Exploracao #PixelArt #MorteERecomeco', 'Morra, aprenda, e volte mais forte—lute sem piedade nas profundezas de um castelo em constante mudança!', 'Prepare-se para uma corrida brutal onde cada morte é só o começo! Em Dead Cells, você é uma entidade imortal tentando escapar de um castelo sinistro que muda toda vez que você volta para ele. Esqueça a segurança—este jogo é sobre aprender na marra! Cada tentativa te joga em meio a inimigos imprevisíveis, chefes sanguinários e perigos por todos os lados. Mas a melhor parte? Toda vez que você volta, está mais forte e pronto para encarar o que antes parecia impossível.\r\n\r\nCom dezenas de armas e habilidades para experimentar, você escolhe como quer lutar: seja com espadas, arcos, magias ou até granadas! Encontre o estilo que funciona pra você e caia dentro de combates rápidos e cheios de ação. Só cuidado: aqui, uma escolha errada pode ser fatal, e a morte significa recomeçar do zero. Mas, hey—cada erro te ensina algo novo!\r\n\r\nPara quem curte adrenalina e desafios, Dead Cells é o jogo perfeito. Entre, morra, aprenda e volte mais forte, porque esse castelo não vai se libertar sozinho!                    ', 49),
(47, 'Five Nights at Freddy\'s 2', 'Scott Cawthon', 'Terror/Suspense', 16.59, '#Terror #Animatronic #Fnaf2 #Puppet #Jumpscare', 'Cinco noites de tensão pura—quem será que vai te encontrar no escuro?', '                        Bem-vindo de volta ao terror! Five Nights at Freddy\'s 2 te coloca de novo na pele de um vigia noturno com a missão aparentemente simples de monitorar câmeras... mas nada é tão fácil quando se está preso com animatrônicos sinistros que parecem ganhar vida após o expediente. Com um sistema de câmeras reformulado e novos corredores para vigiar, o medo só aumenta: os robôs não seguem mais regras e podem aparecer de qualquer lugar, a qualquer momento.\r\n\r\nNesta sequência, Freddy e seus amigos estão mais assustadores do que nunca. Esqueça portas para se proteger: agora, tudo o que você tem é uma máscara de Freddy para tentar confundi-los, mas será que isso será o suficiente para mantê-los afastados? Cada noite traz um novo desafio, com mais animatrônicos, sustos e adrenalina.\r\n\r\nSe você é fã de jogos de terror e adora aquela sensação de tensão crescente, Five Nights at Freddy s 2 vai te prender ao máximo. Prepare-se para uma experiência aterrorizante onde cada noite parece mais longa e cada som no escuro é uma ameaça. E então, acha que consegue sobreviver até o amanhecer?                                        ', 50),
(48, 'Five Nights at Freddy\'s 4', 'Scott Cawthon', 'Terror/Suspense', 16.59, '#Terror #Animatronic #Fnaf4 #Jumpscare #Pesadelos', 'Sem câmeras, sem portas—só você, o medo e o que se esconde no escuro!', 'Esqueça o escritório e as câmeras: em Five Nights at Freddy’s 4, o terror invade sua própria casa. Agora, você é apenas uma criança trancada no quarto, tentando sobreviver às criaturas que se escondem no escuro. Sem trancas, sem barreiras, apenas uma lanterna como única defesa contra pesadelos que parecem mais reais a cada noite.\r\n\r\nCom novos animatrônicos que são pura manifestação do medo, este jogo leva o terror psicológico a um nível mais pessoal. Você vai ouvir sussurros, passos e até mesmo a respiração das criaturas espreitando nos corredores, dentro do armário e embaixo da cama. É você, sua lanterna e a coragem de enfrentar o medo, noite após noite, sabendo que cada pequeno barulho pode ser o último.\r\n\r\nSe você gosta de sentir o coração disparar e a tensão crescer a cada segundo, Five Nights at Freddy’s 4 é um desafio intenso de resistência e coragem. Enfrente seus piores pesadelos e descubra se consegue resistir ao horror até o amanhecer, onde cada noite é uma luta pela sobrevivência… e pela sanidade.                    ', 51),
(49, 'Five Nights at Freddy\'s 3', 'Scott Cawthon', 'Terror/Suspense', 16.59, '#Terror #Animatronic #SpringTrap #Fnaf', 'Os horrores do passado nunca desaparecem—e agora, eles voltaram para te assombrar.', 'Bem-vindo ao Fazbear’s Fright! Trinta anos após os eventos terríveis no restaurante Freddy Fazbear’s Pizza, alguém decidiu transformar o local em uma atração de terror, trazendo de volta os medos e lendas que cercavam os animatrônicos. Mas aqui, o horror não é só uma decoração—ele é real. Como segurança noturno, sua tarefa é vigiar as câmeras e manter o local sob controle... mas logo você descobre que não está sozinho.\r\n\r\nEm Five Nights at Freddy’s 3, um animatrônico único e aterrorizante chamado Springtrap ronda os corredores, e cada erro pode ser fatal. Além disso, visões de antigos animatrônicos assombram suas noites, deixando você preso entre a paranoia e o medo real. Use os sistemas de ventilação e som para tentar manter Springtrap longe, mas cuidado—um movimento em falso e ele pode estar bem atrás de você.\r\n\r\nPrepare-se para noites de tensão e sustos constantes onde cada segundo conta. Five Nights at Freddy’s 3 te convida a enfrentar os fantasmas do passado, em uma experiência de terror imersiva e inesquecível. Será que você consegue sobreviver ao Fazbear’s Fright e sair ileso dessa nova atração de terror?                    ', 52),
(50, 'Five Nights at Freddy\'s', 'Scott Cawthon', 'Terror/Suspense', 10.89, '#Terror #Animatronics #freddy #fox #5Noites', 'Fique atento, cada movimento pode ser o último... O pesadelo está à sua porta!', '                        Prepare-se para viver uma experiência aterrorizante em Five Nights at Freddy\'s. Neste jogo de suspense psicológico, você assume o papel de um guarda noturno em uma pizzaria cheia de animatrônicos assustadores. Sua missão é simples: sobreviver até o amanhecer. Mas há um problema… os animatrônicos não estão em modo de descanso durante a noite, e eles têm planos bem sombrios para você.\r\n\r\nCom recursos limitados, como luzes e câmeras de segurança, você precisa controlar a situação sem ser pego de surpresa. Cada noite fica mais intensa à medida que os animatrônicos se tornam mais agressivos e imprevisíveis. O jogo desafia seus reflexos e sua capacidade de lidar com a tensão crescente, enquanto você tenta manter os monstros longe o suficiente para garantir sua sobrevivência.\r\n\r\nFive Nights at Freddy\'s não é apenas um jogo de terror, é uma batalha psicológica contra o medo do desconhecido. Você consegue suportar o terror até o amanhecer, ou será mais uma vítima desses assassinos mecânicos?                    ', 53);

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
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_jogo_plataforma`
--

INSERT INTO `tbl_jogo_plataforma` (`id`, `id_jogo`, `id_plataforma`) VALUES
(54, 21, 1),
(55, 21, 2),
(56, 21, 4),
(63, 25, 1),
(64, 25, 2),
(65, 25, 3),
(66, 25, 4),
(67, 26, 1),
(68, 26, 4),
(72, 28, 1),
(73, 28, 2),
(74, 28, 4),
(116, 35, 5),
(126, 40, 1),
(127, 40, 2),
(128, 40, 3),
(129, 40, 4),
(135, 42, 1),
(136, 42, 2),
(137, 42, 3),
(138, 42, 4),
(139, 42, 5),
(142, 43, 2),
(143, 43, 4),
(144, 44, 1),
(145, 44, 2),
(146, 44, 3),
(147, 44, 4),
(148, 24, 1),
(187, 34, 1),
(188, 34, 2),
(189, 34, 4),
(190, 34, 5),
(191, 29, 1),
(192, 29, 2),
(193, 29, 4),
(194, 8, 1),
(195, 7, 1),
(196, 7, 2),
(197, 7, 3),
(198, 7, 4),
(199, 36, 1),
(200, 36, 4),
(201, 36, 5),
(202, 9, 1),
(203, 6, 1),
(204, 6, 2),
(205, 6, 3),
(206, 6, 4),
(207, 6, 5),
(209, 10, 1),
(210, 31, 1),
(211, 31, 4),
(212, 30, 1),
(213, 30, 4),
(214, 5, 1),
(215, 5, 2),
(216, 5, 4),
(217, 5, 5),
(218, 33, 1),
(219, 33, 2),
(220, 33, 4),
(223, 32, 4),
(224, 32, 5),
(225, 11, 1),
(226, 45, 2),
(227, 45, 3),
(228, 45, 4),
(229, 45, 5),
(230, 12, 1),
(231, 12, 4),
(232, 13, 1),
(233, 13, 2),
(234, 13, 4),
(237, 38, 3),
(238, 38, 5),
(239, 27, 1),
(240, 27, 2),
(241, 27, 4),
(242, 39, 2),
(243, 39, 3),
(244, 39, 4),
(245, 37, 5),
(246, 14, 1),
(247, 14, 4),
(248, 16, 1),
(249, 16, 2),
(250, 16, 4),
(251, 18, 1),
(252, 17, 1),
(253, 17, 2),
(254, 17, 3),
(255, 20, 1),
(256, 20, 3),
(257, 15, 1),
(258, 15, 2),
(259, 15, 4),
(260, 19, 1),
(261, 19, 2),
(262, 19, 4),
(263, 41, 1),
(264, 41, 2),
(265, 41, 3),
(266, 41, 4),
(267, 41, 5),
(268, 23, 1),
(269, 22, 1),
(270, 22, 2),
(271, 22, 3),
(272, 22, 4),
(276, 50, 3),
(277, 50, 4),
(278, 50, 5),
(279, 49, 1),
(280, 49, 3),
(281, 49, 4),
(282, 49, 5),
(287, 47, 2),
(288, 47, 3),
(289, 47, 4),
(290, 47, 5),
(291, 48, 2),
(292, 48, 3),
(293, 48, 4),
(294, 48, 5),
(295, 46, 1),
(296, 46, 2),
(297, 46, 3),
(298, 46, 4),
(299, 46, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_user_jogo`
--

INSERT INTO `tbl_user_jogo` (`id_compra`, `versao`, `id_user`, `id_jogo`, `data_compra`) VALUES
(2, 'COMPUTER', 19, 5, '2024-11-05'),
(14, 'XBOX', 19, 13, '2024-11-06'),
(15, 'COMPUTER', 19, 7, '2024-11-06'),
(18, 'COMPUTER', 19, 46, '2024-11-12'),
(19, 'COMPUTER', 19, 44, '2024-11-13'),
(20, 'MOBILE', 19, 36, '2024-11-13'),
(21, 'COMPUTER', 19, 34, '2024-11-13'),
(22, 'MOBILE', 27, 35, '2024-11-13'),
(23, 'COMPUTER', 27, 5, '2024-11-13'),
(24, 'XBOX', 27, 27, '2024-11-13'),
(25, 'PLAYSTATION', 29, 10, '2024-11-13'),
(26, 'COMPUTER', 29, 42, '2024-11-13'),
(27, 'COMPUTER', 30, 7, '2024-11-15'),
(28, 'COMPUTER', 19, 41, '2024-11-21');

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
  `data_conta` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_user`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`, `data_conta`) VALUES
(19, 'Shandel', 'shandelvm16@gmail.com', '(11)91034-6024', '../profilePhotos/91793c4bc723216c06a573ff8578fa4a.jpg', '$2y$10$KTTzNo76PabmSGpanGcbaO2VHAFYlanj5mUBluo2cozV8eqrvypvW', 'Desenvolvedor', '2024-10-21 20:37:36'),
(27, 'Thiago', 'thiaguinhometralha@gmail.com', '(11)98775-6168', '../profilePhotos/251f99204ea7955cef79102349dbb513.jpg', '$2y$10$pKa47T2a48V3Rk3vlSufPO4KxT1HcrHm.OvUppbLdqncCsJofUWKu', 'Usuario', '2024-11-13 17:03:49'),
(29, 'Daniel', 'daniel@gmail.com', '(11)96643-7456', '../profilePhotos/photoPadrao.png', '$2y$10$zbGZW.xy.MjkEsWc3rIYs.KyhC73jZdRNT1s4qG9TiKd4uUDwhucK', 'Usuario', '2024-11-13 17:12:39'),
(30, 'pug master', 'pug_master1234@gmail.com', '(35)17382-6514', '../profilePhotos/photoPadrao.png', '$2y$10$opq4tItxMHveyoKOhbFoluKeFiSAdLRamOI5LwI0kHMkkNZ7acGc2', 'Desenvolvedor', '2024-11-15 12:24:50');

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
