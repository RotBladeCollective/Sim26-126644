-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Tempo de geração: 19-Nov-2026 às 17:16
-- Versão do servidor: 11.4.13-MariaDB-ubu2404
-- versão do PHP: 8.3.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dados: `codespaces_demo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `plataforma` varchar(30) NOT NULL DEFAULT 'PC',
  `descricao` text NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id`, `nome`, `genero`, `plataforma`, `descricao`, `imagem`) VALUES
(1, 'EspaCat', 'Cozy', 'PC', 'Um gato cozinheiro tem uma barraquinha muito especial: ele vende macarrão feito de novelo de lã. Prepare as receitas, atenda os clientes e relaxe em uma aventura aconchegante.', 'espacat.jpg'),
(2, 'Soul Pong', 'Arcade/Multiplayer', 'PC', 'Um ping-pong entre um demônio e um anjo. Cada jogador controla um lado e os dois batalham por uma alma, que faz o papel da bola. Quem vai levar a alma?', 'soulpong.jpg'),
(3, 'Yomi\'s Hunger', 'Metroidvania', 'PC', 'No Japão feudal, um samurai desce ao inferno em busca de vingança. Seu mestre foi morto por um demônio, e Yomi precisa explorar esse mundo sombrio para acertar as contas.', 'yomishunger.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `merchandising`
--

CREATE TABLE `merchandising` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `merchandising`
--

INSERT INTO `merchandising` (`id`, `nome`, `categoria`, `preco`, `descricao`, `imagem`) VALUES
(1, 'Produto 1', 'Vestuário', 24.90, 'Descrição do primeiro produto de merchandising.', 'espacat.jpg'),
(2, 'Produto 2', 'Colecionáveis', 39.90, 'Descrição do segundo produto de merchandising.', 'soulpong.jpg'),
(3, 'Produto 3', 'Acessórios', 14.90, 'Descrição do terceiro produto de merchandising.', 'yomishunger.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `merchandising`
--
ALTER TABLE `merchandising`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `merchandising`
--
ALTER TABLE `merchandising`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
