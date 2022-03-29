-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Lug 14, 2021 alle 21:42
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_shop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `OrdiniDati`
--

CREATE TABLE `OrdiniDati` (
  `IdOrdine` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `Indirizzo` varchar(30) DEFAULT NULL,
  `Citta` varchar(30) DEFAULT NULL,
  `Stato` varchar(30) DEFAULT NULL,
  `CodP` smallint(11) DEFAULT NULL,
  `CCNumero` bigint(20) DEFAULT NULL,
  `CCScadenza` varchar(30) DEFAULT NULL,
  `CCVV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `OrdiniDati`
--
ALTER TABLE `OrdiniDati`
  ADD KEY `IdOrdine` (`IdOrdine`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `OrdiniDati`
--
ALTER TABLE `OrdiniDati`
  ADD CONSTRAINT `Dati` FOREIGN KEY (`IdOrdine`) REFERENCES `Ordini` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
