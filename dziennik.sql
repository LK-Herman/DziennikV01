-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 09:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dziennik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dziennik_ocen`
--

CREATE TABLE `dziennik_ocen` (
  `id_dziennik` int(11) NOT NULL,
  `id_uczen` int(11) DEFAULT NULL,
  `id_przedmiot` int(11) DEFAULT NULL,
  `id_semestr` int(11) DEFAULT NULL,
  `ocena01` int(11) DEFAULT NULL,
  `ocena02` int(11) DEFAULT NULL,
  `ocena03` int(11) DEFAULT NULL,
  `ocena04` int(11) DEFAULT NULL,
  `ocena05` int(11) DEFAULT NULL,
  `ocena06` int(11) DEFAULT NULL,
  `ocena07` int(11) DEFAULT NULL,
  `ocena08` int(11) DEFAULT NULL,
  `ocena09` int(11) DEFAULT NULL,
  `ocena10` int(11) DEFAULT NULL,
  `ocena11` int(11) DEFAULT NULL,
  `ocena12` int(11) DEFAULT NULL,
  `ocena13` int(11) DEFAULT NULL,
  `ocena14` int(11) DEFAULT NULL,
  `ocena15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `klasa`
--

CREATE TABLE `klasa` (
  `id_klasa` int(11) NOT NULL,
  `etykieta` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `semestr` int(11) DEFAULT NULL,
  `id_nauczyciel` int(11) NOT NULL,
  `rok_szkolny` year(4) DEFAULT NULL,
  `id_profil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id_kontakt` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `nr_domu` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `nr_tel` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id_kontakt`, `ulica`, `nr_domu`, `miejscowosc`, `kod_pocztowy`, `nr_tel`, `email`) VALUES
('00275cac-f87d-4c9b-a441-4c447c23e5f4', 'Grzymalin', '98/4', 'Miłkowice', '59-222', '608654987', 'doktorandrzej@gmail.com'),
('0c441e94-0d23-4da6-b7f9-1deaca0174e8', 'Grodzka', '17', 'Jawor', '59-280', '801605998', 'ewebak@onet.pl'),
('0fafda47-70dc-445e-96b4-95ccd0b806eb', 'Grodzka', '17', 'Jawor', '59-280', '604958877', 'alabak@o2.pl'),
('186b5d7c-3827-4de5-bc17-ca8be24ad650', 'Grzymalin', '98/4', 'Miłkowice', '59-222', '507928811', 'lkuczma@gmail.com'),
('26c2de43-d341-4e56-8e4b-f441c9c43fd9', 'Grzymalin', '98/4', 'Miłkowice', '59-222', '601111111', 'krysia777@o2.pl'),
('53335c41-49d1-4482-94fc-821c86347038', 'Orląt Lwowskich', '33', 'Gniewomierz', '59-210', '405611341', 'olaola2ia7@o2.pl'),
('6df6cc27-4d72-4e49-bb38-ef209d974831', 'Lotnicza', '18', 'Legnica', '59-220', '601111345', 'moniamonia7@o2.pl'),
('738a099f-58ad-4a30-97b9-e613e081ef53', 'Kosmiczna', '117', 'Legnica', '59-220', '654928810', 'llkia@gmail.com'),
('808b5a85-dd48-4f4b-a724-c08f7e390cc3', 'Spacerowa', '38', 'Legnica', '59-220', '605898745', 'makokia@gmail.com'),
('8109b36f-277c-45da-88c3-e7c353c97e02', 'Pomorska', '17', 'Legnica', '59-220', '604321456', 'antonicarbon@jeep.pl'),
('8d2dc24a-d09c-4409-ab18-8def36b42dd0', 'Grodzka', '17', 'Jawor', '59-280', '607896555', 'pabak@02.pl'),
('918fa2a2-a120-450b-afb4-d5f49849315b', 'Grodzka', '17', 'Jawor', '59-280', '604958860', 'domibak@o2.pl'),
('9e7b938d-55f0-4269-9434-da18e48858a0', 'Orląt Lwowskich', '33', 'Gniewomierz', '59-210', '704652145', 'kkakokia@gmail.com'),
('c2d65893-2bc9-4c0f-b6ca-851a0a8927a5', 'Pomorska', '17', 'Legnica', '59-220', '507889966', 'lucyfer666@pudelek.pl'),
('d5422dff-e87a-4935-8e8b-3f67bfab9b1e', 'Kosmiczna', '117', 'Legnica', '59-220', '458987456', 'hejho@gmail.com'),
('e4502feb-5184-4222-b56b-2f127d11f07e', 'Grodzka', '17', 'Jawor', '59-280', '607896555', 'pabak@02.pl'),
('e4afd416-4121-4399-bd9a-40535b106c50', 'Spacerowa', '38', 'Legnica', '59-220', '604987453', 'automathejho@gmail.com'),
('f1dc7e50-9182-4b75-b377-c89db5015952', 'Grodzka', '17', 'Jawor', '59-280', '801605998', 'ewebak@onet.pl'),
('fce72622-69d1-4b96-a3ae-b2ffdfafbcf0', 'Hutnica', '30', 'Lubin', '59-300', '600444555', '123mathejho@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id_nauczyciel` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opiekun`
--

CREATE TABLE `opiekun` (
  `id_opiekun` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `opiekun`
--

INSERT INTO `opiekun` (`id_opiekun`, `imie`, `nazwisko`) VALUES
('00275cac-f87d-4c9b-a441-4c447c23e5f4', 'Andrzej', 'Kuczma'),
('0c441e94-0d23-4da6-b7f9-1deaca0174e8', 'Ewelina', 'Bąk'),
('26c2de43-d341-4e56-8e4b-f441c9c43fd9', 'Krystyna', 'Kuczma'),
('53335c41-49d1-4482-94fc-821c86347038', 'Aleksandra', 'Nowak-Suska'),
('6df6cc27-4d72-4e49-bb38-ef209d974831', 'Monika', 'Kempa'),
('8109b36f-277c-45da-88c3-e7c353c97e02', 'Antoni', 'Węgiel'),
('8d2dc24a-d09c-4409-ab18-8def36b42dd0', 'Paweł', 'Bąk'),
('d5422dff-e87a-4935-8e8b-3f67bfab9b1e', 'Magdalena', 'Wrona'),
('e4502feb-5184-4222-b56b-2f127d11f07e', 'Paweł', 'Bąk'),
('e4afd416-4121-4399-bd9a-40535b106c50', 'Adam', 'Kowalski'),
('f1dc7e50-9182-4b75-b377-c89db5015952', 'Ewelina', 'Bąk'),
('fce72622-69d1-4b96-a3ae-b2ffdfafbcf0', 'Adam', 'Nowak');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(5) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id_przedmiot` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_nauczyciel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uczen`
--

CREATE TABLE `uczen` (
  `id_uczen` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `id_klasa` int(5) NOT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `id_opiekun1` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_opiekun2` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` (`id_uczen`, `id_klasa`, `imie`, `nazwisko`, `data_urodzenia`, `id_opiekun1`, `id_opiekun2`) VALUES
('0fafda47-70dc-445e-96b4-95ccd0b806eb', 0, 'Alicja', 'Bąk', '2000-07-22', 'e4502feb-5184-4222-b56b-2f127d11f07e', '0c441e94-0d23-4da6-b7f9-1deaca0174e8'),
('186b5d7c-3827-4de5-bc17-ca8be24ad650', 0, 'Łukasz', 'Kuczma', '1982-03-18', '00275cac-f87d-4c9b-a441-4c447c23e5f4', '26c2de43-d341-4e56-8e4b-f441c9c43fd9'),
('738a099f-58ad-4a30-97b9-e613e081ef53', 0, 'Dariusz', 'Wrona', '1983-03-04', 'd5422dff-e87a-4935-8e8b-3f67bfab9b1e', ''),
('808b5a85-dd48-4f4b-a724-c08f7e390cc3', 0, 'Marzena', 'Kowalska', '1983-05-20', 'e4afd416-4121-4399-bd9a-40535b106c50', '6df6cc27-4d72-4e49-bb38-ef209d974831'),
('918fa2a2-a120-450b-afb4-d5f49849315b', 0, 'Dominika', 'Bąk', '2001-12-28', '8d2dc24a-d09c-4409-ab18-8def36b42dd0', 'f1dc7e50-9182-4b75-b377-c89db5015952'),
('9e7b938d-55f0-4269-9434-da18e48858a0', 0, 'Krzysztof', 'Nowak', '1983-05-03', 'fce72622-69d1-4b96-a3ae-b2ffdfafbcf0', '53335c41-49d1-4482-94fc-821c86347038'),
('c2d65893-2bc9-4c0f-b6ca-851a0a8927a5', 0, 'Lucjan', 'Węgiel', '2002-07-11', '8109b36f-277c-45da-88c3-e7c353c97e02', '');

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `haslo` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `grupa` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dziennik_ocen`
--
ALTER TABLE `dziennik_ocen`
  ADD PRIMARY KEY (`id_dziennik`),
  ADD KEY `id_uczen` (`id_uczen`),
  ADD KEY `id_przedmiot` (`id_przedmiot`),
  ADD KEY `id_semestr` (`id_semestr`);

--
-- Indexes for table `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id_klasa`);

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id_kontakt`),
  ADD UNIQUE KEY `id_kontakt` (`id_kontakt`);

--
-- Indexes for table `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id_nauczyciel`),
  ADD UNIQUE KEY `id_nauczyciel` (`id_nauczyciel`);

--
-- Indexes for table `opiekun`
--
ALTER TABLE `opiekun`
  ADD PRIMARY KEY (`id_opiekun`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_przedmiot`);

--
-- Indexes for table `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_uczen`),
  ADD KEY `id_opiekun2` (`id_opiekun2`),
  ADD KEY `id_opiekun1` (`id_opiekun1`);

--
-- Indexes for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id_przedmiot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD CONSTRAINT `id_login_nauczyciel` FOREIGN KEY (`id`) REFERENCES `nauczyciel` (`id_nauczyciel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_login_opiekun` FOREIGN KEY (`id`) REFERENCES `opiekun` (`id_opiekun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_login_uczen` FOREIGN KEY (`id`) REFERENCES `uczen` (`id_uczen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
