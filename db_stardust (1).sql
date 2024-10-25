-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25/10/2024 às 12:35
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
  `screen1` varchar(150) DEFAULT NULL,
  `screen2` varchar(150) DEFAULT NULL,
  `screen3` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_jogos`
--

DROP TABLE IF EXISTS `tbl_jogos`;
CREATE TABLE IF NOT EXISTS `tbl_jogos` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `empresa` varchar(40) DEFAULT NULL,
  `categoria` enum('AÇÃO/AVENTURA','RPG','FPS','ESPORTES/CORRIDA','ESTRATÉGIA','SIMULAÇÃO','TERROR','SANDBOX') DEFAULT NULL,
  `preco` decimal(5,2) DEFAULT NULL,
  `slogan` varchar(150) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `id_imgs` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_imgs` (`id_imgs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_plataforma`
--

DROP TABLE IF EXISTS `tbl_plataforma`;
CREATE TABLE IF NOT EXISTS `tbl_plataforma` (
  `id_plataforma` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `slogan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_plataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `tbl_plataforma`
--

INSERT INTO `tbl_plataforma` (`id_plataforma`, `nome`, `slogan`) VALUES
(1, 'PLAYSTATION', 'Play Has No Limits'),
(2, 'XBOX', 'Its Good to Play Together'),
(3, 'NINTENDO', 'Switch and Play'),
(4, 'COMPUTER', 'Controle Total, Diversão Ilimitada'),
(5, 'MOBILE', 'Onde Você For, o Jogo Vai Junto');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

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
