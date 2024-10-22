-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22/10/2024 às 01:32
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
-- Estrutura para tabela `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `foto` varchar(100) DEFAULT '../profilePhotos/photoPadrao.png',
  `senha` varchar(150) NOT NULL,
  `ocupacao` enum('Usuario','Desenvolvedor') NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`iduser`, `nome`, `email`, `telefone`, `foto`, `senha`, `ocupacao`) VALUES
(6, 'Shandel', 'shandelvm16@gmail.com', '(11)92345-4589', '../profilePhotos/photoPadrao.png', '$2y$10$bMDc5KUZPhkYp3PHAhiSwuF9JiFceqAIeOlq93kDHOI20U5EHUPNS', 'Usuario'),
(7, 'Thiago Ribeiro', 'ribeiros@gmail.com', '(11)90283-3945', '../profilePhotos/f2eaaaae7fd77f85c839ba5be9fb8502.jpg', '$2y$10$UUdx9Mj.bQ1T6sk0D8VV0eVZiC8jEez6QDWCDpftocYfUHHckFvL2', 'Usuario'),
(8, 'Pedro', 'medeirossantos@gmail.com', '(11)92384-0192', '../profilePhotos/photoPadrao.png', '$2y$10$NKkefetw2dPfjiyBoMvabeGQsKbZLeB6BCDVlHjlOJaR.cSZdG6OC', 'Desenvolvedor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
