-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 23 mars 2022 kl 14:27
-- Serverversion: 10.4.20-MariaDB
-- PHP-version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `slutprojekt`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `sluteprojekt`
--

CREATE TABLE `sluteprojekt` (
  `Användare` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `Kategori` varchar(2) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Kommentarer` varchar(3) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Inlägg` varchar(4) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `sluteprojekt`
--
ALTER TABLE `sluteprojekt`
  ADD PRIMARY KEY (`Användare`),
  ADD UNIQUE KEY `Kategori` (`Kategori`),
  ADD UNIQUE KEY `Inlägg` (`Inlägg`);
ALTER TABLE `sluteprojekt` ADD FULLTEXT KEY `Kommentarer` (`Kommentarer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
