-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lip 2023, 11:43
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `root`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `Nick` varchar(24) COLLATE utf8mb4_polish_ci NOT NULL,
  `IP` varchar(16) COLLATE utf8mb4_polish_ci NOT NULL,
  `UUID` varchar(36) COLLATE utf8mb4_polish_ci NOT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Last_Log_Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rangi`
--

CREATE TABLE `rangi` (
  `ID` int(11) NOT NULL,
  `Nick` varchar(24) COLLATE utf8mb4_polish_ci NOT NULL,
  `ID_rangi` int(11) NOT NULL,
  `Data_zakupu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Data_ważności` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupy`
--

CREATE TABLE `zakupy` (
  `ID` int(11) NOT NULL,
  `Nick` varchar(24) COLLATE utf8mb4_polish_ci NOT NULL,
  `Co_Zakupil` varchar(32) COLLATE utf8mb4_polish_ci NOT NULL,
  `kwota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Nick` (`Nick`);

--
-- Indeksy dla tabeli `rangi`
--
ALTER TABLE `rangi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nick` (`Nick`);

--
-- Indeksy dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nick2` (`Nick`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `rangi`
--
ALTER TABLE `rangi`
  ADD CONSTRAINT `Nick` FOREIGN KEY (`Nick`) REFERENCES `login` (`Nick`);

--
-- Ograniczenia dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  ADD CONSTRAINT `Nick2` FOREIGN KEY (`Nick`) REFERENCES `login` (`Nick`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
