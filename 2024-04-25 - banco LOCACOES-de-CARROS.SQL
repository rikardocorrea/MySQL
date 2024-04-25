-- phpMyAdmin SQL Dump

-- version 5.1.1deb5ubuntu1

-- https://www.phpmyadmin.net/

--

-- Host: localhost:3306

-- Tempo de geração: 24/04/2024 às 13:54

-- Versão do servidor: 10.6.16-MariaDB-0ubuntu0.22.04.1

-- Versão do PHP: 8.1.2-1ubuntu2.14



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";





/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;



--

-- Banco de dados: `EXEMPLO_05-LOCACOES`

--



-- --------------------------------------------------------



--

-- Estrutura para tabela `CARROS`

--



CREATE TABLE `CARROS` (

  `CÓDIGO` int(11) NOT NULL,

  `NOME_CARRO` varchar(50) NOT NULL,

  `MARCA` varchar(50) NOT NULL,

  `COR` varchar(50) NOT NULL,

  `COMBUSTÍVEL` varchar(50) NOT NULL,

  `ESTÁ_DISPONIVEL` varchar(50) NOT NULL,

  `KM_ATUAL` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--

-- Despejando dados para a tabela `CARROS`

--



INSERT INTO `CARROS` (`CÓDIGO`, `NOME_CARRO`, `MARCA`, `COR`, `COMBUSTÍVEL`, `ESTÁ_DISPONIVEL`, `KM_ATUAL`) VALUES

(1, 'APOLLO', 'VW', 'CINZA CHUMBO', 'ÁLCOOL', 'SIM', 0),

(2, 'BMW 320i', 'BMW', 'BRANCO', 'GASOLINA', 'SIM', 0),

(3, 'CRUZE', 'GM', 'PRETO', 'FLEX', 'SIM', 0),

(4, 'DAKOTA', 'DODGE', 'VERMELHA', 'GASOLINA', 'SIM', 0),

(5, 'ESCORT XR3', 'FORD', 'BRANCO', 'ÁLCOOL', 'SIM', 0);



-- --------------------------------------------------------



--

-- Estrutura para tabela `CLIENTES`

--



CREATE TABLE `CLIENTES` (

  `CÓDIGO` int(11) NOT NULL,

  `NOME_CLIENTE` varchar(50) NOT NULL,

  `TELEFONE` varchar(50) NOT NULL,

  `SEXO` varchar(15) NOT NULL,

  `IDADE` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--

-- Despejando dados para a tabela `CLIENTES`

--



INSERT INTO `CLIENTES` (`CÓDIGO`, `NOME_CLIENTE`, `TELEFONE`, `SEXO`, `IDADE`) VALUES

(1, 'ADOLFO', '(19)98282-1214', 'M', 22),

(2, 'BÁRBARA', '(19)98282-4455', 'F', 18),

(3, 'CARLOS', '(19)91122-1214', 'M', 16),

(4, 'DÉBORA', '(19)98456-3314', 'F', 25),

(5, 'EVERTON', '(19)98285-5514', 'M', 22);



-- --------------------------------------------------------



--

-- Estrutura para tabela `LOCAÇÕES`

--



CREATE TABLE `LOCAÇÕES` (

  `CÓDIGO` int(11) NOT NULL,

  `DATA_LOC` date NOT NULL DEFAULT current_timestamp(),

  `DATA_DEVOLUÇÃO` date NOT NULL,

  `KM_SAÍDA` int(11) NOT NULL,

  `KM_ENTREGA` int(11) NOT NULL,

  `CODCLIENTE` int(11) NOT NULL,

  `CODCARRO` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--

-- Despejando dados para a tabela `LOCAÇÕES`

--



INSERT INTO `LOCAÇÕES` (`CÓDIGO`, `DATA_LOC`, `DATA_DEVOLUÇÃO`, `KM_SAÍDA`, `KM_ENTREGA`, `CODCLIENTE`, `CODCARRO`) VALUES

(1, '2024-04-24', '2024-05-02', 15000, 16200, 2, 3),

(2, '2024-04-24', '2024-05-02', 15000, 16200, 2, 3),

(3, '2024-04-24', '2024-05-02', 200000, 200099, 1, 1),

(4, '2024-04-24', '2024-05-03', 5500, 7500, 3, 2),

(5, '2024-04-24', '2024-05-03', 150000, 150450, 1, 5),

(6, '2024-04-24', '2024-05-04', 150451, 160001, 2, 5),

(7, '2024-04-24', '2024-05-04', 160002, 17200, 1, 5),

(8, '2024-04-24', '2024-05-05', 150, 3000, 3, 4),

(9, '2024-04-24', '2024-05-08', 3000, 21000, 4, 4);



--

-- Índices para tabelas despejadas

--



--

-- Índices de tabela `CARROS`

--

ALTER TABLE `CARROS`

  ADD PRIMARY KEY (`CÓDIGO`);



--

-- Índices de tabela `CLIENTES`

--

ALTER TABLE `CLIENTES`

  ADD PRIMARY KEY (`CÓDIGO`);



--

-- Índices de tabela `LOCAÇÕES`

--

ALTER TABLE `LOCAÇÕES`

  ADD PRIMARY KEY (`CÓDIGO`);



--

-- AUTO_INCREMENT para tabelas despejadas

--



--

-- AUTO_INCREMENT de tabela `CARROS`

--

ALTER TABLE `CARROS`

  MODIFY `CÓDIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



--

-- AUTO_INCREMENT de tabela `CLIENTES`

--

ALTER TABLE `CLIENTES`

  MODIFY `CÓDIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



--

-- AUTO_INCREMENT de tabela `LOCAÇÕES`

--

ALTER TABLE `LOCAÇÕES`

  MODIFY `CÓDIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;