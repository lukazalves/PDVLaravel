-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 01:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `caixas`
--

CREATE TABLE `caixas` (
  `id` int(10) UNSIGNED NOT NULL,
  `inicial` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caixas`
--

INSERT INTO `caixas` (`id`, `inicial`, `data`, `valor`, `created_at`, `updated_at`) VALUES
(1, '500.00', '2019-08-29', '716.00', '2019-08-29 02:46:08', '2019-08-29 02:47:16'),
(2, '10.00', '2020-03-11', '0.00', '2020-03-12 00:00:30', '2020-03-12 00:00:59'),
(3, '69.95', '2020-04-01', '274.95', '2020-04-01 18:45:31', '2020-04-01 19:04:38'),
(4, '50.00', '2020-05-27', '194.00', '2020-05-27 17:09:09', '2020-05-27 21:19:18'),
(5, '58.85', '2020-05-29', '1034.85', '2020-05-29 13:20:36', '2020-05-29 14:49:39'),
(6, '67.00', '2020-06-22', '127.00', '2020-06-22 22:25:57', '2020-06-22 22:27:42'),
(7, '196.55', '2020-07-08', '196.55', '2020-07-08 14:31:03', '2020-07-08 14:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(3, 'ACESSóRIOS'),
(5, 'JOIA'),
(6, 'LETRA'),
(4, 'OURO'),
(2, 'PRATA'),
(7, 'SEMIJOIA');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CPF` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F','I') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nascimento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `CPF`, `sexo`, `nascimento`, `telefone`, `endereco`, `bairro`, `estado`, `cidade`, `cep`, `created_at`, `updated_at`) VALUES
(3, 'Cliente Padrão', '000.000.000-00', 'I', '2020-03-20', '(98) 32210-346', 'Rua Oswaldo Cruz', 'Centro', 'MA', 'São Luís', '65020-250', '2020-03-20 19:01:13', '2020-03-20 19:01:13'),
(4, 'Maria da Conceição de Andrade Ribeiro', '178.238.113-91', 'F', '1955-01-01', '(98) 90000-0000', 'Rua dos Buritis, 69', 'Jardim São Francisco', 'MA', 'São Luís', '65076-050', '2020-04-27 14:19:20', '2020-04-27 14:19:20'),
(5, 'Tereza Cristina Nunes Castelo Branco', '494.197.223-68', 'F', '1961-10-05', '(98) 99975-277', '1ª Travessa Azaléia, nº02', 'Vila Embratel', 'MA', 'São Luís', '65081-467', '2020-05-27 17:04:49', '2020-05-27 17:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `cors`
--

CREATE TABLE `cors` (
  `id` int(10) UNSIGNED NOT NULL,
  `cor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cors`
--

INSERT INTO `cors` (`id`, `cor`) VALUES
(1, 'AZUL'),
(3, 'BEGE'),
(6, 'DOURADO'),
(2, 'PRATEADA'),
(5, 'PRETO'),
(4, 'VERMELHO');

-- --------------------------------------------------------

--
-- Table structure for table `entrada_caixas`
--

CREATE TABLE `entrada_caixas` (
  `id` int(10) UNSIGNED NOT NULL,
  `valor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entrada_caixas`
--

INSERT INTO `entrada_caixas` (`id`, `valor`, `descricao`, `created_at`, `updated_at`) VALUES
(1, '1400.00', 'Recebimento Parcela Venda Ester', '2020-04-01 18:48:42', '2020-04-01 18:48:42'),
(2, '2270.00', 'Recebimento Pagamento Cartão Rute', '2020-04-01 18:52:30', '2020-04-01 18:52:30'),
(3, '50', 'Dinheiro Guardado', '2020-04-01 18:54:40', '2020-04-01 18:54:40'),
(4, '50', 'para troco no envelope', '2020-05-29 13:21:22', '2020-05-29 13:21:22'),
(5, '1080.00', 'recebimento Ester', '2020-05-29 13:23:40', '2020-05-29 13:23:40'),
(6, '96.00', 'CRR 925k + Pi Rabo Baleia', '2020-05-29 14:49:39', '2020-05-29 14:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `estoques`
--

CREATE TABLE `estoques` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tecido` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estoque` float NOT NULL,
  `unidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fornecedor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lucro` decimal(10,2) NOT NULL,
  `preco_custo` decimal(10,2) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estoques`
--

INSERT INTO `estoques` (`id`, `codigo`, `categoria`, `nome`, `marca`, `descricao`, `tecido`, `estoque`, `unidade`, `fornecedor`, `lucro`, `preco_custo`, `preco`) VALUES
(5, '544', 'ACESSóRIOS', 'MOSTRUARIO MINI', 'MA EMBALAGENS', 'MOSTRUARIO MINI-MINI PRETO MISTO - BEGE', NULL, 2, 'Pç', 'MA EMBALAGENS', '100.00', '13.00', '26.00'),
(6, '117', 'ACESSóRIOS', 'MOSTRUARIO MEDIO', 'MA EMBALAGENS', 'MOSTRUARIO MEDIO MISTO PRETO COM ZIPER M01 - VERMELHA', NULL, 3, 'Pç', 'MA EMBALAGENS', '100.00', '22.99', '46.00'),
(7, '516', 'ACESSóRIOS', 'MOSTRUARIO MISTO PEQUENO', 'MA EMBALAGENS', 'MOSTRUARIO MISTO PEQUENO PRETO SEM ZIPER M00 - PRETA', NULL, 1, 'Pç', 'MA EMBALAGENS', '101.00', '16.40', '33.00'),
(8, '1255', 'ACESSóRIOS', 'MOSTRUARIO MISTO PRETO GG', 'MA EMBALAGENS', 'MOSTRUARIO MISTO PRETO GG COM ZIPER M06 - VERMELHA', NULL, 3, 'Pç', 'MA EMBALAGENS', '115.00', '41.95', '90.00'),
(9, '1171', 'ACESSóRIOS', 'MOSTRUARIO EXTRA GRANDE C/Z', 'MA EMBALAGENS', 'MOSTRUARIO PRETO MISTO EXTRA GRANDE COM ZIPER - PRETA', NULL, 2, 'Pç', 'MA EMBALAGENS', '107.00', '58.10', '120.00'),
(10, '0050', 'JOIA', 'PINGENTE CRUCIFIXO PEQUENO', '750K', 'C50 OURO 18K', NULL, 1, 'Pç', 'AU', '300.00', '50.00', '200.00'),
(11, '0040', 'PRATA', 'COT FINISSIMO CURTO', '925', '40 CM', NULL, 2, 'Pç', 'CAETANNA', '300.00', '7.25', '29.00'),
(12, '0145', 'PRATA', 'COT FINISSIMO CURTO', '925', '45 CM', NULL, 2, 'GR', 'AG', '300.00', '8.25', '33.00'),
(13, '0245', 'PRATA', 'COT FINO CURTO', '925', '45 CM AJUSTAVEL', NULL, 2, 'Pç', 'AG', '300.00', '10.13', '40.50'),
(14, '11150', 'OURO', 'ARGOLA TRIANGULAR', '750K', 'CAMBITO GROSSINHA', NULL, 1, 'Pç', 'AU', '263.00', '165.00', '598.40'),
(15, '0038', 'OURO', 'PINGENTE OLHO GREGO OVAL PONTUDO', '750K', '0,38', NULL, 1, 'Pç', 'AU', '304.00', '57.00', '230.00'),
(16, '0031', 'LETRA', 'PINGENTE LETRA NA PLACA MACIÇA', '950', '3,0G - S', NULL, 1, 'Pç', 'AG', '213.00', '19.20', '60.00'),
(17, '0048', 'PRATA', 'PULSEIRA MALEAVEL', '925', 'CHEIA', NULL, 1, 'Pç', 'AG', '225.00', '28.00', '91.00'),
(18, '1101069', 'PRATA', 'ANEL SOLITÁRIO', '925', 'LIFE FINO', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '227.00', '10.69', '35.00'),
(19, '1101300', 'ACESSóRIOS', 'ANEL DOIS CORAçõES', '750K', 'VAZADO', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '13.00', '41.60'),
(21, '1104990', 'PRATA', 'ANEL CRAVEJADO', '950', '1732', NULL, 1, 'Pç', 'ASG', '221.00', '49.90', '160.00'),
(22, '112690', 'PRATA', 'ANEL P.D REFORÇADO LISO', 'ASG', '697', NULL, 3, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '26.90', '86.08'),
(23, '114580', 'PRATA', 'ANEL INDIANO', 'ASG', '641', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '45.80', '146.56'),
(24, 'ar119', 'ACESSóRIOS', 'ARGOLA TRABALHADA', 'IP', 'ONDULADA NAS BORDAS', NULL, 10, 'Pç', 'MARCOS JUNIOR', '213.00', '3.10', '9.70'),
(25, 'ar135', 'SEMIJOIA', 'ARGOLA LISA', 'IP', 'FINA MEDIA', NULL, 10, 'Pç', 'MARCOS JUNIOR', '200.00', '5.00', '15.00'),
(26, '0150', 'SEMIJOIA', 'PULSEIRA BOLA CORRENTE', 'NL', 'BOLA MEDIA', NULL, 5, 'Pç', 'LUIS', '223.00', '15.50', '50.00'),
(27, '0138', 'SEMIJOIA', 'PULSEIRA BOLA CORRENTE', 'NL', 'BOLA PEQUENA', NULL, 4, 'Pç', 'LUIS', '217.00', '12.00', '38.00'),
(29, '1101970', 'PRATA', 'ANEL CORAÇAO', '925', '', NULL, 2, 'Pç', 'ASG', '220.00', '19.70', '63.04'),
(30, '2200820', 'PRATA', 'BRINCO LUA C/ PEDRINHAS', 'ASG', '2642', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '8.20', '26.24'),
(31, '2201140', 'PRATA', 'BRINCO MAOZINHA', 'ASG', '2275', NULL, 3, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '11.40', '36.48'),
(32, '2201279', 'PRATA', 'BRINCO INFINITO PEDRINHAS', 'ASG', '2637', NULL, 3, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '12.79', '40.93'),
(33, '2201363', 'PRATA', 'BRINCO OSSINHO', 'ASG', '2628', NULL, 3, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '13.63', '43.62'),
(34, '2201722', 'PRATA', 'BRINCO OLHO GREGO PEDRINHAS', 'ASG', '2636', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '17.22', '55.10'),
(35, '2203250', 'PRATA', 'BRINCO CORAÇAO', 'ASG', '2265', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '32.50', '104.00'),
(36, '33002628', 'PRATA', 'PING. JESUS NA GOTA', 'ASG', '1001', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '26.28', '84.10'),
(37, '3300434', 'PRATA', 'PING ESTRELA DAVI', 'ASG', '1649', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '300.00', '4.34', '17.36'),
(38, '33005100', 'PRATA', 'PING.CORAÇÃO FECHADO TODO LISO', 'ASG', '1040', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '51.00', '163.20'),
(39, '3300560', 'PRATA', 'PINGENTE MÃO OLHO GREGO', 'ASG', '1483', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '5.60', '17.92'),
(40, '3300589', 'PRATA', 'CRUZ LISA', 'ASG', '1606', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '5.89', '18.85'),
(41, '33006988', 'PRATA', 'PING. REDONDO CRUZ AO MEIO', 'ASG', '856', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '69.88', '223.62'),
(42, '3300768', 'PRATA', 'PINGENTEOLHO GREGO NA MAÃO', 'ASG', '1490', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '7.68', '24.58'),
(43, '3300818', 'PRATA', 'PINGENTE CRUZ PALITO', 'ASG', '1477', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME', '220.00', '8.18', '26.18'),
(44, '3300940', 'PRATA', 'PING JESUS', 'ASG', '1980', NULL, 3, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '9.40', '30.08'),
(45, '3300950', 'PRATA', 'PING CRUZ', 'ASG', '2111', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '9.50', '30.40'),
(46, '3301310', 'PRATA', 'PING 2 MENINOS', 'ASG', '1676', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '13.10', '41.92'),
(47, '3301460', 'PRATA', 'PING 2 MENINAS', 'ASG', '1668', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '14.60', '46.72'),
(48, '3301670', 'PRATA', 'PINGENTE CORAÇÃO FECHADO M', 'ASG', '1512', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '16.70', '53.44'),
(49, '3301694', 'PRATA', 'PING S. 23', 'ASG', '1678', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '16.94', '54.21'),
(50, '3301997', 'PRATA', 'PING MENINO', 'ASG', '2332', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '19.97', '63.90'),
(51, '3302038', 'PRATA', 'PING. 2MENINOS E 1 MENINA', 'ASG', '2095', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '20.38', '65.22'),
(52, '3302268', 'PRATA', 'CORAÇÃO C/ CRUZ', 'ASG', '2196', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '22.68', '72.58'),
(53, '3302496', 'PRATA', 'PING.DEUS TE GUIE', 'ASG', '2158', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '24.96', '79.87'),
(54, '3302640', 'PRATA', 'AMOR ETERNO', 'ASG', '2160', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '26.40', '84.48'),
(55, '3304744', 'PRATA', 'PING CORAÇÃO FECHADO', 'ASG', '1692', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '47.44', '151.81'),
(56, '331100', 'PRATA', 'PINGENTE DE CHINELO PP', 'ASG', '90', NULL, 1, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '11.00', '35.20'),
(57, '332200', 'PRATA', 'PING. MINI CORAÇAO CRAVEJADO', 'ASG', '2062', NULL, 2, 'Pç', 'ADRIANO SéRGIO GIOLO - ME - (ALINE)', '220.00', '22.00', '70.40'),
(58, '60818', 'SEMIJOIA', 'ALIANCA FINA', 'BLZ', 'BOELADA', NULL, 10, 'Pç', 'JOAO', '220.00', '7.50', '24.00'),
(59, '60813', 'SEMIJOIA', 'ALIANCA MEDIA', 'BLZ', 'ANATOMICA', NULL, 10, 'Pç', 'JOAO', '219.00', '11.90', '38.00'),
(60, 'pul0001', 'SEMIJOIA', 'PULSEIRA BERLOK CORRENTE', 'NL', '3 CORACOES TRABALHADA VAZADA', NULL, 2, 'Pç', 'LUIS', '220.00', '8.20', '26.20'),
(61, 'pul0002', 'SEMIJOIA', 'PULSEIRA BERLOK CORRENTE', 'NL', '4 FOLHAS VAZADA C/ OU S/ FLOR', NULL, 5, 'Pç', 'LUIS', '208.00', '8.90', '27.45'),
(62, '14771', 'SEMIJOIA', 'GARGANTILHA  3 EM 1', 'NL', 'FOLHEADO', NULL, 11, 'Pç', 'LUIS', '220.00', '36.91', '118.11'),
(63, '14808', 'SEMIJOIA', 'PONTO DE LUZ COT', 'NL', 'CORRENTE TIJOLJINHO', NULL, 11, 'Pç', 'LUIS', '220.00', '15.92', '50.94'),
(64, '14839', 'SEMIJOIA', 'PINGENTE PAI NOSSO', 'AMBAR', 'FOLHEADO', NULL, 10, 'Pç', 'RODOLFO', '220.00', '10.34', '33.09');

-- --------------------------------------------------------

--
-- Table structure for table `estoque_auxes`
--

CREATE TABLE `estoque_auxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_estoque` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estoque` float NOT NULL,
  `tamanho` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estoque_auxes`
--

INSERT INTO `estoque_auxes` (`id`, `codigo_estoque`, `cor`, `estoque`, `tamanho`) VALUES
(4, '0150', 'DOURADO', 4, '20'),
(5, '544', 'BEGE', 2, 'MINI'),
(6, '117', 'VERMELHO', 3, 'MEDIO'),
(7, '516', 'PRETO', 1, 'PEQUENO'),
(8, '1255', 'PRETO', 2, 'GRANDE'),
(9, '1255', 'VERMELHO', 3, 'GRANDE'),
(10, '1171', 'PRETO', 2, 'EXTRA GRANDE'),
(11, '0050', 'DOURADO', 0, 'PEQUENO'),
(12, '0040', 'PRATEADA', 1, '40'),
(13, '0145', 'PRATEADA', 2, '45'),
(14, '0245', 'PRATEADA', 2, '45'),
(15, '11150', 'DOURADO', 1, 'PEQUENO'),
(16, '0038', 'DOURADO', 1, 'MINI'),
(17, '0031', 'PRATEADA', 2, 'MEDIO'),
(18, '0031', 'PRATEADA', 1, 'MEDIO'),
(19, '0031', 'PRATEADA', 1, 'MEDIO'),
(20, '0048', 'PRATEADA', 0, '20'),
(21, '1101069', 'PRATEADA', 1, '0'),
(22, '1101300', 'PRATEADA', 2, '0'),
(23, '1104990', 'PRATEADA', 1, '0'),
(24, '112690', 'PRATEADA', 3, '0'),
(25, '114580', 'PRATEADA', 1, '0'),
(26, 'ar119', 'DOURADO', 9, 'MINI'),
(27, 'ar135', 'DOURADO', 9, 'MEDIO'),
(28, '0138', 'DOURADO', 3, '20'),
(29, '1101970', 'DOURADO', 1, '21'),
(30, '2200820', 'PRATEADA', 2, 'VARIADO'),
(31, '2201140', 'PRATEADA', 3, 'MINI'),
(32, '2201279', 'PRATEADA', 3, 'PEQUENO'),
(33, '2201363', 'PRATEADA', 3, 'PEQUENO'),
(34, '2201722', 'PRATEADA', 2, 'PEQUENO'),
(35, '2203250', 'PRATEADA', 2, 'GRANDE'),
(36, '33002628', 'PRATEADA', 1, 'MEDIO'),
(37, '3300434', 'PRATEADA', 1, 'PEQUENO'),
(38, '33005100', 'PRATEADA', 1, 'MEDIO'),
(39, '3300560', 'PRATEADA', 1, 'PEQUENO'),
(40, '3300589', 'PRATEADA', 1, 'PEQUENO'),
(41, '33006988', 'PRATEADA', 2, 'MEDIO'),
(42, '3300768', 'PRATEADA', 1, 'PEQUENO'),
(43, '3300818', 'PRATEADA', 1, 'PEQUENO'),
(44, '3300940', 'PRATEADA', 3, 'PEQUENO'),
(45, '3300950', 'PRATEADA', 2, 'PEQUENO'),
(46, '3301310', 'PRATEADA', 2, 'PEQUENO'),
(47, '3301460', 'PRATEADA', 2, 'PEQUENO'),
(48, '3301670', 'PRATEADA', 2, 'MEDIO'),
(49, '3301694', 'PRATEADA', 1, 'MEDIO'),
(50, '3301997', 'PRATEADA', 1, 'MEDIO'),
(51, '3302038', 'PRATEADA', 1, 'MEDIO'),
(52, '3302268', 'PRATEADA', 1, 'MEDIO'),
(53, '3302496', 'PRATEADA', 1, 'MEDIO'),
(54, '3302640', 'PRATEADA', 1, 'MEDIO'),
(56, '3304744', 'PRATEADA', 1, 'GRANDE'),
(57, '331100', 'PRATEADA', 1, 'MINI'),
(58, '332200', 'PRATEADA', 2, 'MINI'),
(59, '60818', 'DOURADO', 10, 'GRANDE'),
(60, '60813', 'DOURADO', 10, 'VARIADO'),
(61, 'pul0001', 'DOURADO', 2, '20'),
(62, 'pul0002', 'DOURADO', 5, '20'),
(63, '14771', 'DOURADO', 8, '45'),
(64, '14808', 'DOURADO', 11, '45'),
(65, '14839', 'DOURADO', 10, 'MEDIO');

-- --------------------------------------------------------

--
-- Table structure for table `fornecedors`
--

CREATE TABLE `fornecedors` (
  `id` int(10) UNSIGNED NOT NULL,
  `fornecedor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fornecedors`
--

INSERT INTO `fornecedors` (`id`, `fornecedor`) VALUES
(6, 'ADRIANO SéRGIO GIOLO - ME'),
(7, 'ADRIANO SéRGIO GIOLO - ME - (ALINE)'),
(9, 'AG'),
(5, 'ASG'),
(8, 'AU'),
(2, 'BELATRIZ'),
(3, 'CAETANNA'),
(13, 'CARLAO'),
(12, 'JOAO'),
(11, 'LUIS'),
(4, 'MA EMBALAGENS'),
(10, 'MARCOS JUNIOR'),
(14, 'RODOLFO');

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`id`, `marca`) VALUES
(5, '750K'),
(6, '925'),
(7, '950'),
(11, 'AMBAR'),
(4, 'ASG'),
(10, 'BLZ'),
(2, 'CAETANNA'),
(8, 'IP'),
(3, 'MA EMBALAGENS'),
(9, 'NL');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_15_143939_create_clientes_table', 1),
(4, '2018_02_08_025149_create_categorias_table', 1),
(5, '2018_02_08_030144_create_cors_table', 1),
(6, '2018_02_08_030235_create_tamanhos_table', 1),
(7, '2018_02_08_030324_create_tecidos_table', 1),
(8, '2018_02_08_030325_create_marcas_table', 1),
(9, '2018_02_08_030326_create_fornecedors_table', 1),
(10, '2018_02_08_030327_create_unidades_table', 1),
(11, '2018_02_08_032604_create_estoques_table', 1),
(12, '2018_03_07_191552_create_estoque_auxes_table', 1),
(13, '2018_03_09_165210_create_transacoes_table', 1),
(14, '2018_03_09_165236_create_caixas_table', 1),
(15, '2018_03_09_170013_create_vendas_table', 1),
(16, '2018_03_09_174235_create_sistemas_table', 1),
(17, '2018_03_10_024047_create_sangrias_table', 1),
(18, '2018_04_19_183928_create_entrada_caixas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sangrias`
--

CREATE TABLE `sangrias` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sangrias`
--

INSERT INTO `sangrias` (`id`, `data`, `descricao`, `valor`, `created_at`, `updated_at`) VALUES
(2, '2020-04-01', 'Almoço', '20.00', '2020-04-01 18:46:08', '2020-04-01 18:46:08'),
(3, '2020-04-01', 'Pagamento Lucas', '50.00', '2020-04-01 18:51:31', '2020-04-01 18:51:31'),
(4, '2020-04-01', 'Depósito em Conta L.A Valente - Bradesco', '1350.00', '2020-04-01 18:51:58', '2020-04-01 18:51:58'),
(5, '2020-04-01', 'Saldo com Tereza', '2250.00', '2020-04-01 18:53:58', '2020-04-01 18:53:58'),
(6, '2020-05-29', 'Pagamento Aluguel 11 a 12-2019', '250.00', '2020-05-29 14:24:10', '2020-05-29 14:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `sistemas`
--

CREATE TABLE `sistemas` (
  `id` int(10) UNSIGNED NOT NULL,
  `config` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sistemas`
--

INSERT INTO `sistemas` (`id`, `config`, `value`) VALUES
(1, 'caixa_aberto', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tamanhos`
--

CREATE TABLE `tamanhos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tamanho` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tamanhos`
--

INSERT INTO `tamanhos` (`id`, `tamanho`) VALUES
(11, '0'),
(2, '20'),
(3, '21'),
(1, '40'),
(10, '45'),
(8, 'EXTRA GRANDE'),
(7, 'GRANDE'),
(5, 'MEDIO'),
(4, 'MINI'),
(6, 'PEQUENO'),
(9, 'VARIADO');

-- --------------------------------------------------------

--
-- Table structure for table `tecidos`
--

CREATE TABLE `tecidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tecido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `desconto` int(11) NOT NULL,
  `pagamento` enum('DI','CR','DE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcelas` int(11) NOT NULL,
  `valor_parcelas` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transacoes`
--

INSERT INTO `transacoes` (`id`, `cliente`, `data`, `desconto`, `pagamento`, `parcelas`, `valor_parcelas`, `total`, `created_at`, `updated_at`) VALUES
(3, '000.000.000-00', '2020-04-01', 22, 'DI', 1, '155.00', '155.00', '2020-04-01 19:04:38', '2020-04-01 19:04:38'),
(4, '494.197.223-68', '2020-05-27', 50, 'DI', 1, '115.00', '115.00', '2020-05-27 17:10:05', '2020-05-27 17:10:05'),
(5, '000.000.000-00', '2020-05-27', 0, 'DI', 1, '29.00', '29.00', '2020-05-27 21:19:18', '2020-05-27 21:19:18'),
(6, '000.000.000-00', '2020-05-29', 12, 'CR', 2, '40.04', '80.08', '2020-05-29 17:28:55', '2020-05-29 17:28:55'),
(7, '000.000.000-00', '2020-06-22', 50, 'DI', 1, '60.00', '60.00', '2020-06-22 22:27:42', '2020-06-22 22:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `unidades`
--

CREATE TABLE `unidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unidades`
--

INSERT INTO `unidades` (`id`, `unidade`) VALUES
(1, 'Pç'),
(2, 'GR');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', 'admin', '$2y$10$ijsKRlSKLMZgvadsw6eYbeo.zWBazmXBcBieqQqOnpT9MnAM7tZCG', '60iFSSKuUxDWWhM0KWvWQAaATSCkVd2eumOpbM6pyvs8bSEwQa2h6ubBymmV', '2019-08-29 00:54:34', '2019-08-29 00:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `vendas`
--

CREATE TABLE `vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `transacao` int(10) UNSIGNED NOT NULL,
  `codigo_estoque` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_estoque_aux` int(10) UNSIGNED NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendas`
--

INSERT INTO `vendas` (`id`, `transacao`, `codigo_estoque`, `codigo_estoque_aux`, `quantidade`, `valor_venda`) VALUES
(3, 3, '0050', 11, 1, '200.00'),
(4, 4, '0038', 16, 1, '230.00'),
(5, 5, '0040', 12, 1, '29.00'),
(6, 6, '0048', 20, 1, '91.00'),
(7, 7, '0150', 4, 1, '50.00'),
(8, 7, '0138', 28, 1, '38.00'),
(9, 7, 'ar119', 26, 1, '9.70'),
(10, 7, 'ar135', 27, 1, '15.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caixas_data_unique` (`data`),
  ADD KEY `caixas_data_index` (`data`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorias_categoria_index` (`categoria`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_cpf_unique` (`CPF`),
  ADD KEY `clientes_cpf_index` (`CPF`);

--
-- Indexes for table `cors`
--
ALTER TABLE `cors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cors_cor_index` (`cor`);

--
-- Indexes for table `entrada_caixas`
--
ALTER TABLE `entrada_caixas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estoques`
--
ALTER TABLE `estoques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estoques_codigo_index` (`codigo`),
  ADD KEY `estoques_categoria_foreign` (`categoria`),
  ADD KEY `estoques_tecido_foreign` (`tecido`),
  ADD KEY `estoques_marca_foreign` (`marca`),
  ADD KEY `estoques_fornecedor_foreign` (`fornecedor`);

--
-- Indexes for table `estoque_auxes`
--
ALTER TABLE `estoque_auxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estoque_auxes_codigo_estoque_cor_tamanho_index` (`codigo_estoque`,`cor`,`tamanho`),
  ADD KEY `estoque_auxes_tamanho_foreign` (`tamanho`),
  ADD KEY `estoque_auxes_cor_foreign` (`cor`);

--
-- Indexes for table `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedors_fornecedor_index` (`fornecedor`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marcas_marca_index` (`marca`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sangrias`
--
ALTER TABLE `sangrias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistemas`
--
ALTER TABLE `sistemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sistemas_config_index` (`config`);

--
-- Indexes for table `tamanhos`
--
ALTER TABLE `tamanhos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tamanhos_tamanho_index` (`tamanho`);

--
-- Indexes for table `tecidos`
--
ALTER TABLE `tecidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tecidos_tecido_index` (`tecido`);

--
-- Indexes for table `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transacoes_cliente_foreign` (`cliente`);

--
-- Indexes for table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendas_transacao_foreign` (`transacao`),
  ADD KEY `vendas_codigo_estoque_foreign` (`codigo_estoque`),
  ADD KEY `vendas_codigo_estoque_aux_foreign` (`codigo_estoque_aux`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cors`
--
ALTER TABLE `cors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `entrada_caixas`
--
ALTER TABLE `entrada_caixas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `estoques`
--
ALTER TABLE `estoques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `estoque_auxes`
--
ALTER TABLE `estoque_auxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `fornecedors`
--
ALTER TABLE `fornecedors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sangrias`
--
ALTER TABLE `sangrias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sistemas`
--
ALTER TABLE `sistemas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tamanhos`
--
ALTER TABLE `tamanhos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tecidos`
--
ALTER TABLE `tecidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estoques`
--
ALTER TABLE `estoques`
  ADD CONSTRAINT `estoques_categoria_foreign` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`categoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estoques_fornecedor_foreign` FOREIGN KEY (`fornecedor`) REFERENCES `fornecedors` (`fornecedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estoques_marca_foreign` FOREIGN KEY (`marca`) REFERENCES `marcas` (`marca`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estoques_tecido_foreign` FOREIGN KEY (`tecido`) REFERENCES `tecidos` (`tecido`) ON UPDATE CASCADE;

--
-- Constraints for table `estoque_auxes`
--
ALTER TABLE `estoque_auxes`
  ADD CONSTRAINT `estoque_auxes_codigo_estoque_foreign` FOREIGN KEY (`codigo_estoque`) REFERENCES `estoques` (`codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estoque_auxes_cor_foreign` FOREIGN KEY (`cor`) REFERENCES `cors` (`cor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estoque_auxes_tamanho_foreign` FOREIGN KEY (`tamanho`) REFERENCES `tamanhos` (`tamanho`) ON UPDATE CASCADE;

--
-- Constraints for table `transacoes`
--
ALTER TABLE `transacoes`
  ADD CONSTRAINT `transacoes_cliente_foreign` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`CPF`) ON UPDATE CASCADE;

--
-- Constraints for table `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_codigo_estoque_aux_foreign` FOREIGN KEY (`codigo_estoque_aux`) REFERENCES `estoque_auxes` (`id`),
  ADD CONSTRAINT `vendas_codigo_estoque_foreign` FOREIGN KEY (`codigo_estoque`) REFERENCES `estoques` (`codigo`),
  ADD CONSTRAINT `vendas_transacao_foreign` FOREIGN KEY (`transacao`) REFERENCES `transacoes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
