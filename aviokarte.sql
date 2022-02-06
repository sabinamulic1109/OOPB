-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 08:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aviokarte`
--

-- --------------------------------------------------------

--
-- Table structure for table `departures`
--

CREATE TABLE `departures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kontinent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drzava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aerodrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departures`
--

INSERT INTO `departures` (`id`, `kontinent`, `drzava`, `grad`, `aerodrom`, `gate`) VALUES
(241, 'Europa', 'Francuska', 'Marsej', 'Voujis EX', '3'),
(242, 'Europa', 'Francuska', 'Orleans', 'OmmsejY', '11'),
(243, 'Europa', 'Francuska', 'Lyon', 'Bordeaux', '1'),
(244, 'Europa', 'Francuska', 'Orleans', 'ROX', '9'),
(245, 'Europa', 'Francuska', 'Pariz', 'AM', '7'),
(246, 'Europa', 'Francuska', 'Lyon', 'Ssach-Leauv', '11'),
(247, 'Europa', 'Francuska', 'Strasbourg', 'MGA', '1'),
(248, 'Europa', 'Francuska', 'Marsej', 'YYM', '6'),
(249, 'Europa', 'Francuska', 'Lyon', 'Saint-Ettien', '7'),
(250, 'Europa', 'Francuska', 'Strasbourg', 'Jouis-AW', '5'),
(251, 'Europa', 'Njemačka', 'Hamburg', 'Achn', '2'),
(252, 'Europa', 'Njemačka', 'Dortmund', 'Odis', '7'),
(253, 'Europa', 'Njemačka', 'Stuttgart', 'Ausburg', '4'),
(254, 'Europa', 'Njemačka', 'Stuttgart', 'Offech', '11'),
(255, 'Europa', 'Njemačka', 'Hamburg', 'FeniY', '11'),
(256, 'Europa', 'Njemačka', 'Frankfurt', 'Kex', '4'),
(257, 'Europa', 'Njemačka', 'Stuttgart', 'GSM', '6'),
(258, 'Europa', 'Njemačka', 'Frankfurt', 'Flugx', '7'),
(259, 'Europa', 'Njemačka', 'Hamburg', 'EWR Stadt', '7'),
(260, 'Europa', 'Njemačka', 'Frankfurt', 'IBM-Flug', '11'),
(261, 'Europa', 'Njemačka', 'Stuttgart', 'BaUF', '10'),
(262, 'Europa', 'Njemačka', 'Frankfurt', 'CWK', '3'),
(263, 'Europa', 'Njemačka', 'Minhen', 'FlugHafen AO', '2'),
(264, 'Europa', 'Njemačka', 'Frankfurt', 'SichX', '8'),
(265, 'Europa', 'Njemačka', 'Dortmund', 'Deutschland AE', '5'),
(266, 'Europa', 'Njemačka', 'Minhen', 'Dadray', '3'),
(267, 'Europa', 'Njemačka', 'Stuttgart', 'KKW', '4'),
(268, 'Europa', 'Njemačka', 'Dortmund', 'POT', '8'),
(269, 'Europa', 'Njemačka', 'Minhen', 'GRM', '4'),
(270, 'Europa', 'Njemačka', 'Stuttgart', 'EDKA', '1'),
(271, 'Amerika', 'Kalifornija', 'Oakland', 'Jackon', '10'),
(272, 'Amerika', 'Kalifornija', 'San Francisko', 'MMY', '2'),
(273, 'Amerika', 'Kalifornija', 'Los Angeles', 'LAX', '5'),
(274, 'Amerika', 'Kalifornija', 'San Francisko', 'San Jose', '1'),
(275, 'Amerika', 'Kalifornija', 'San Francisko', 'GRMA', '9'),
(276, 'Amerika', 'Kalifornija', 'San Diego', 'Monterey Regional Airport', '10'),
(277, 'Amerika', 'Kalifornija', 'Oakland', 'AirportXYZ', '6'),
(278, 'Amerika', 'Kalifornija', 'San Diego', 'MMH', '10'),
(279, 'Amerika', 'Kalifornija', 'San Diego', 'OAK', '5'),
(280, 'Amerika', 'Kalifornija', 'Los Angeles', 'Mammoth Yosemite Airport', '7'),
(281, 'Amerika', 'Illinois', 'Evanstone', 'MWD', '5'),
(282, 'Amerika', 'Illinois', 'Springfield', 'Southern Illinois', '1'),
(283, 'Amerika', 'Illinois', 'Chicago', 'Veterans Airport', '11'),
(284, 'Amerika', 'Illinois', 'Chicago', 'ORD', '8'),
(285, 'Amerika', 'Illinois', 'Rockford', 'MWA', '9'),
(286, 'Amerika', 'Illinois', 'Evanstone', 'O Hare International Airport', '11'),
(287, 'Amerika', 'Illinois', 'Chicago', 'MLI', '11'),
(288, 'Amerika', 'Illinois', 'Chicago', 'FAA', '7'),
(289, 'Amerika', 'Illinois', 'Rockford', 'Quad City International Airport', '1'),
(290, 'Amerika', 'Illinois', 'Evanstone', 'Midway International Airport', '7'),
(291, 'Australija', 'Australija', 'Adelaide', 'Albury Airport', '2'),
(292, 'Australija', 'Australija', 'Melbourne', 'Cowra', '5'),
(293, 'Australija', 'Australija', 'Hobart', 'FLY', '3'),
(294, 'Australija', 'Australija', 'Adelaide', 'Coffs Harbour Airport', '6'),
(295, 'Australija', 'Australija', 'Pert', 'Byron Gateway Airport', '8'),
(296, 'Australija', 'Australija', 'Sidney', 'Armidale Airport', '2'),
(297, 'Australija', 'Australija', 'Sidney', 'Ballina', '8'),
(298, 'Australija', 'Australija', 'Sidney', 'Deniliquin Airport', '1'),
(299, 'Australija', 'Australija', 'Pert', 'AAG', '7'),
(300, 'Australija', 'Australija', 'Melbourne', 'DNQ', '9'),
(301, 'Azija', 'Kina', 'Peking', 'BeZong', '8'),
(302, 'Azija', 'Kina', 'Chengdu', 'Chi Fe', '9'),
(303, 'Azija', 'Kina', 'Šangai', 'China International Gate', '7'),
(304, 'Azija', 'Kina', 'Sichuan', 'Hangzhou Airport', '1'),
(305, 'Azija', 'Kina', 'Šangai', 'TQK', '6'),
(306, 'Azija', 'Kina', 'Peking', 'Airport One', '9'),
(307, 'Azija', 'Kina', 'Šangai', 'Son-Ya', '7'),
(308, 'Azija', 'Kina', 'Sichuan', 'ARKA', '11'),
(309, 'Azija', 'Kina', 'Sichuan', 'Xu-Ya', '8'),
(310, 'Azija', 'Kina', 'Chengdu', 'PVG', '9'),
(311, 'Azija', 'Turska', 'Istanbul', 'Airport ve Turkye', '11'),
(312, 'Azija', 'Turska', 'Antalija', 'Turkisch International Airport', '8'),
(313, 'Azija', 'Turska', 'Izmir', 'Ergodan AA', '8'),
(314, 'Azija', 'Turska', 'Mersin', 'Osmanly-bey', '7'),
(315, 'Azija', 'Turska', 'Izmir', 'Kemal-pasa Ataturk', '1'),
(316, 'Azija', 'Turska', 'Mersin', 'Turkish airlines Airport', '1'),
(317, 'Azija', 'Turska', 'Antalija', 'KPA', '9'),
(318, 'Azija', 'Turska', 'Antalija', 'Turkye AA', '9'),
(319, 'Azija', 'Turska', 'Izmir', 'Suleyman The Second', '8'),
(320, 'Azija', 'Turska', 'Mersin', 'Beg-Osmanal', '4'),
(321, 'Afrika', 'Kongo', 'Kinshasa', 'Kindamba Airport', '9'),
(322, 'Afrika', 'Kongo', 'Lubumbashi', 'Kelle Airport', '4'),
(323, 'Afrika', 'Kongo', 'Kinshasa', 'FCOI', '11'),
(324, 'Afrika', 'Kongo', 'Kinshasa', 'Makabana Airport', '5'),
(325, 'Afrika', 'Kongo', 'Lubumbashi', 'ICAO', '8'),
(326, 'Afrika', 'Kongo', 'Lubumbashi', 'OKAA', '2'),
(327, 'Afrika', 'Kongo', 'Kolwezi', 'COIF', '2'),
(328, 'Afrika', 'Kongo', 'Kinshasa', 'Impfondo Airport', '5'),
(329, 'Afrika', 'Kongo', 'Kinshasa', 'FCPA', '2'),
(330, 'Afrika', 'Kongo', 'Kolwezi', 'AABK', '6'),
(331, 'Afrika', 'Egipat', 'Kairo', 'KIA-OFAA', '9'),
(332, 'Afrika', 'Egipat', 'Alexandria', 'St Catherine International Airport', '1'),
(333, 'Afrika', 'Egipat', 'Luxor', 'Aswan Airport', '7'),
(334, 'Afrika', 'Egipat', 'Alexandria', 'SKV', '5'),
(335, 'Afrika', 'Egipat', 'Alexandria', 'HIA', '11'),
(336, 'Afrika', 'Egipat', 'Luxor', 'Sharm El Sheikh International Airport', '3'),
(337, 'Afrika', 'Egipat', 'Luxor', 'Marsa Matrouh International Airport', '4'),
(338, 'Afrika', 'Egipat', 'Hurghada', 'Sheikh AA-El Asad', '11'),
(339, 'Afrika', 'Egipat', 'Luxor', 'International Egypt AA', '3'),
(340, 'Afrika', 'Egipat', 'Kairo', 'Abu Simbel Airport', '4');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kontinent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drzava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aerodrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `kontinent`, `drzava`, `grad`, `aerodrom`, `opis`) VALUES
(201, 'Azija', 'Indija', 'Jodhpur', 'Kjajk', 'The airport was the launch pad of so many fights of fancy.'),
(202, 'Azija', 'Indija', 'Jodhpur', 'Kerala', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(203, 'Azija', 'Indija', 'Nagpur', 'Dadra', 'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.'),
(204, 'Azija', 'Indija', 'Nagpur', 'Guangzhou', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(205, 'Azija', 'Indija', 'Jodhpur', 'Mizoram', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(206, 'Azija', 'Indija', 'Pune', 'Chann', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(207, 'Azija', 'Indija', 'Jaipur', 'Odisha', 'The airport was the modern day portal of those magicians we call engineers.'),
(208, 'Azija', 'Indija', 'Mumbai', 'Baiyun', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(209, 'Azija', 'Indija', 'Jaipur', 'Sikkim', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(210, 'Azija', 'Indija', 'Jaipur', 'Cehngdu', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(211, 'Azija', 'Japan', 'Hiroshima', 'KawaAsha', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(212, 'Azija', 'Japan', 'Nagano', 'Iwami', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(213, 'Azija', 'Japan', 'Kyoto', 'Akita', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(214, 'Azija', 'Japan', 'Nagasaki', 'Iki Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(215, 'Azija', 'Japan', 'Sapporo', 'Fukue', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(216, 'Azija', 'Japan', 'Nara', 'Anami', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(217, 'Azija', 'Japan', 'Nagano', 'Kobe', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(218, 'Azija', 'Japan', 'Sapporo', 'Amakusa', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(219, 'Azija', 'Japan', 'Jokohama', 'GOTO', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(220, 'Azija', 'Japan', 'Jokohama', 'Hakodate', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(221, 'Europa', 'Rusija', 'Saratov', 'IATAA', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(222, 'Europa', 'Rusija', 'Moskva', 'Russia VKO', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(223, 'Europa', 'Rusija', 'Moskva', 'Pulkovo Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(224, 'Europa', 'Rusija', 'Kijev', 'StalinAA', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(225, 'Europa', 'Rusija', 'Sankt Petersburg', 'RSVO', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(226, 'Europa', 'Rusija', 'Kijev', 'Pulkovo Airport', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(227, 'Europa', 'Rusija', 'Sankt Petersburg', 'Sheremetyevo International Airport', 'The airport was the launch pad of so many fights of fancy.'),
(228, 'Europa', 'Rusija', 'Saratov', 'Alexandar EO', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(229, 'Europa', 'Rusija', 'Sankt Petersburg', 'Pulkovo Airport', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(230, 'Europa', 'Rusija', 'Kijev', 'Domodedovo International Airport', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(231, 'Europa', 'Rusija', 'Moskva', 'Domodedovo International Airport', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(232, 'Europa', 'Rusija', 'Saratov', 'Pulkovo Airport', 'The airport was the launch pad of so many fights of fancy.'),
(233, 'Europa', 'Rusija', 'Kijev', 'Pulkovo Airport', 'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.'),
(234, 'Europa', 'Rusija', 'Kijev', 'Domodedovo International Airport', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(235, 'Europa', 'Rusija', 'Moskva', 'Pulkovo Airport', 'The airport was the modern day portal of those magicians we call engineers.'),
(236, 'Europa', 'Bosna i Hercegovina', 'Zenica', 'Aerodrom Grad', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(237, 'Europa', 'Bosna i Hercegovina', 'Mostar', '25.oktobar AA', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(238, 'Europa', 'Bosna i Hercegovina', 'Banja Luka', 'Aerodrom BIH', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(239, 'Europa', 'Bosna i Hercegovina', 'Mostar', 'Zračna luka 1', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(240, 'Europa', 'Bosna i Hercegovina', 'Mostar', 'Bosanska luka', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(241, 'Europa', 'Hrvatska', 'Rijeka', 'Glavna zračna luka', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(242, 'Europa', 'Hrvatska', 'Zagreb', 'AA HR', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(243, 'Europa', 'Hrvatska', 'Split', 'Novi Aerodrom Hrvatska', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(244, 'Europa', 'Hrvatska', 'Split', 'Zračna luka 2', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(245, 'Europa', 'Hrvatska', 'Rijeka', 'FT Aerodrom', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(246, 'Europa', 'Srbija', 'Zrenjanin', 'Pink', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(247, 'Europa', 'Srbija', 'Niš', 'Aerodrom 9', 'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.'),
(248, 'Europa', 'Srbija', 'Sombor', 'Sjenica', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(249, 'Europa', 'Srbija', 'Niš', 'NT Aerodrom', 'The airport was the modern day portal of those magicians we call engineers.'),
(250, 'Europa', 'Srbija', 'Beograd', 'Konstantin', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(251, 'Australija', 'Australija', 'Melbourne', 'Baniyala Airport', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(252, 'Australija', 'Australija', 'Sydney', 'Alpha Airport', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(253, 'Australija', 'Australija', 'Melbourne', 'Kulgera Airport', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(254, 'Australija', 'Australija', 'Melbourne', 'Yuendumu Airport', 'The airport was the modern day portal of those magicians we call engineers.'),
(255, 'Australija', 'Australija', 'Sydney', 'Cresswell Downs Airport', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(256, 'Australija', 'Australija', 'Melbourne', 'Temora Airport', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(257, 'Australija', 'Australija', 'Melbourne', 'Maningrida Airport', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(258, 'Australija', 'Australija', 'Melbourne', 'Mittiebah Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(259, 'Australija', 'Australija', 'Melbourne', 'Pooncarie Airport', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(260, 'Australija', 'Australija', 'Melbourne', 'Lightning Ridge Airport', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(261, 'Australija', 'Australija', 'Melbourne', 'Kempsey Airport', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(262, 'Australija', 'Australija', 'Melbourne', 'Narrabri Airport', 'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.'),
(263, 'Australija', 'Australija', 'Melbourne', 'Orange Airport', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(264, 'Australija', 'Australija', 'Sydney', 'Timber Creek Airport', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(265, 'Australija', 'Australija', 'Sydney', 'Delissaville Airport', 'The airport was the launch pad of so many fights of fancy.'),
(266, 'Amerika', 'Bahami', 'Freeport', 'Leonard M Thompson International Airport', 'The airport was the modern day portal of those magicians we call engineers.'),
(267, 'Amerika', 'Bahami', 'San Salvador', 'BAH Airport', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(268, 'Amerika', 'Bahami', 'George Town', 'Inagua Airport', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(269, 'Amerika', 'Bahami', 'George Town', 'Treasure Cay Airport', 'The airport was the launch pad of so many fights of fancy.'),
(270, 'Amerika', 'Bahami', 'Nassau', 'Colonel Hill Airport', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(271, 'Amerika', 'Bahami', 'Freeport', 'North Eleuthera Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(272, 'Amerika', 'Bahami', 'Nassau', 'Grand Bahama International Airport', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(273, 'Amerika', 'Bahami', 'San Salvador', 'Stella Maris Airport', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(274, 'Amerika', 'Bahami', 'San Salvador', 'SSA', 'The airport was the modern day portal of those magicians we call engineers.'),
(275, 'Amerika', 'Bahami', 'Nassau', '	Mayaguana Airport', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(276, 'Amerika', 'Bahami', 'George Town', 'Governors Harbour Airport', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(277, 'Amerika', 'Bahami', 'Alice Town', 'GoverAA', 'The airport, those times of travel, became to my soul the start of new chapters or perhaps forms of punctuation in the long expanse of a well-lived memory.'),
(278, 'Amerika', 'Bahami', 'Freeport', 'Exuma International Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(279, 'Amerika', 'Bahami', 'Alice Town', 'Spring Port', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(280, 'Amerika', 'Bahami', 'Alice Town', 'Lynden Pindling International Airport', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(281, 'Amerika', 'Havaji', 'Hilo', 'Pearl Gate', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(282, 'Amerika', 'Havaji', 'Pearl City', 'KOA', 'The airport was the launch pad of so many fights of fancy.'),
(283, 'Amerika', 'Havaji', 'Pearl City', 'Hawaii AA', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(284, 'Amerika', 'Havaji', 'Waimea', 'HNL', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(285, 'Amerika', 'Havaji', 'Pearl City', 'Hawaii Airport', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(286, 'Amerika', 'Havaji', 'Hilo', 'International HAW', 'They flowed from the check-in desks to the cafes and through the gates, each one of them heading for a destination of their own making.'),
(287, 'Amerika', 'Havaji', 'Honoluli', 'OGG', 'At this early hour the airport is as serene as it ever is. The people move with ease, quiet rivers of humanity freshly roused from their slumber.'),
(288, 'Amerika', 'Havaji', 'Kapolei', 'ITO', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(289, 'Amerika', 'Havaji', 'Honoluli', 'CC Airport', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(290, 'Amerika', 'Havaji', 'Pearl City', 'Kailua-Kona Airport', 'The airport was the modern day portal of those magicians we call engineers.'),
(291, 'Afrika', 'Maroko', 'Tanger', 'Marocco International Airport', 'And the beams supported so many windows, let in so much light, that in the daytime it is as bright as any summers day.'),
(292, 'Afrika', 'Maroko', 'Fes', 'Oujda Airport', 'The airport, the runway, the metal birds, it was a place of transience that marked times of hope and adventure.'),
(293, 'Afrika', 'Maroko', 'Casablanca', 'Essaouria Airport', 'The airport was the modern day portal of those magicians we call engineers.'),
(294, 'Afrika', 'Maroko', 'Casablanca', 'AGA', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(295, 'Afrika', 'Maroko', 'Casablanca', 'Nador Airport', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.'),
(296, 'Afrika', 'Maroko', 'Casablanca', 'ESU', 'The airport was such a splendid canvas for the twins of anxiety and glorious expectation, usually felt all at once in a confusing bubble of exhilaration.'),
(297, 'Afrika', 'Maroko', 'Agadir', 'CMN', 'The floors are clean and white, reflecting the early rays and the manmade light the same.'),
(298, 'Afrika', 'Maroko', 'Agadir', 'FEZ', 'The airport was a cocoon of steel, the walls so elegantly curved and wrapping around to create this inner space.'),
(299, 'Afrika', 'Maroko', 'Fes', 'Rabat Airport ', 'The airport was the modern day portal of those magicians we call engineers.'),
(300, 'Afrika', 'Maroko', 'Agadir', 'RAK', 'We arrived at noon, when the people moved as chaotic rainbows, so brilliant were the colours.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `klasas`
--

CREATE TABLE `klasas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `klasas`
--

INSERT INTO `klasas` (`id`, `naziv`) VALUES
(1, 'Prva klasa'),
(2, 'Biznis klasa '),
(3, 'Ekonomska klasa');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_12_134511_create_sessions_table', 1),
(7, '2022_01_12_141940_create_tickets_table', 1),
(8, '2022_01_12_150717_create_starts_table', 1),
(9, '2022_01_12_152806_create_departures_table', 1),
(10, '2022_01_12_160652_create_destinations_table', 1),
(11, '2022_01_12_212632_create_types_table', 1),
(12, '2022_01_12_214515_create_klasas_table', 1),
(13, '2022_01_12_220638_create_payments_table', 1),
(14, '2022_01_14_095107_create_passangers_table', 1),
(15, '2022_01_17_164501_create_reservations_table', 1),
(16, '2022_01_18_165925_create_locations_table', 2),
(17, '2022_01_18_204514_create_upits_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `passangers`
--

CREATE TABLE `passangers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passangers`
--

INSERT INTO `passangers` (`id`, `ime`, `prezime`, `email`, `mob`, `adresa`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Antoinette Doyle II', 'Schuppe', 'KkBSdnTWzk@gmail.com', '3876651315', '506 State Road, North Dartmouth MA 2747', NULL, NULL),
(2, 'Cristian Borer MD', 'Wunsch', 'v2LObqXKmw@gmail.com', '3876059495', '295 Plymouth Street, Halifax MA 2338', NULL, NULL),
(3, 'Prof. Chauncey Robel', 'Gorczany', '67aasXQVxg@gmail.com', '3876691049', '830 Curran Memorial Hwy, North Adams MA 1247', NULL, NULL),
(4, 'Aniya McCullough II', 'Brekke', 'Czc6A21gS6@gmail.com', '3876830558', '301 Falls Blvd, Quincy MA 2169', NULL, NULL),
(5, 'Joe Fadel', 'Brakus', 'yQDbgArBOJ@gmail.com', '3876497653', '1775 Washington St, Hanover MA 2339', NULL, NULL),
(6, 'Lavinia Lesch MD', 'Spinka', 'idfcdOxnqQ@gmail.com', '3876320977', '121 Worcester Rd, Framingham MA 1701', NULL, NULL),
(7, 'Mrs. Sarai Moore', 'Upton', 'XnLjxDwFow@gmail.com', '3876855487', '30 Memorial Drive, Avon MA 2322', NULL, NULL),
(8, 'Jaylen Wisozk', 'Sauer', 'yygSbQSR2g@gmail.com', '3876018840', '301 Massachusetts Ave, Lunenburg MA 1462', NULL, NULL),
(9, 'Dr. Bailey Zemlak', 'McGlynn', 'ISXgYcUr34@gmail.com', '3876006323', '677 Timpany Blvd, Gardner MA 1440', NULL, NULL),
(10, 'Ed Shields V', 'Tillman', 'clkm7f7JeX@gmail.com', '3876193821', '300 Colony Place, Plymouth MA 2360', NULL, NULL),
(11, 'Maverick Becker', 'Mayert', 'E6j1HYwCMz@gmail.com', '3876682647', '780 Lynnway, Lynn MA 1905', NULL, NULL),
(12, 'Prof. Dusty Waelchi III', 'Schmidt', 'oC6JluaSNC@gmail.com', '3876852883', '11 Jungle Road, Leominster MA 1453', NULL, NULL),
(13, 'Prof. Makenna Greenholt', 'Bednar', 'zXmrOFhkq4@gmail.com', '3876398008', '280 Washington Street, Hudson MA 1749', NULL, NULL),
(14, 'Zetta Gerlach', 'Cormier', 'm6UIveRyto@gmail.com', '3876188466', '742 Main Street, North Oxford MA 1537', NULL, NULL),
(15, 'Mr. Benton Crooks III', 'Hauck', 'RyWKfl5lqX@gmail.com', '3876989379', '180 North King Street, Northhampton MA 1060', NULL, NULL),
(16, 'Ford Legros', 'Homenick', 'ZMC7ZJpvPn@gmail.com', '3876763912', '555 East Main St, Orange MA 1364', NULL, NULL),
(17, 'Mr. Dwight Hamill', 'Tremblay', '6n1rfdG5Fs@gmail.com', '3876427477', '55 Brooksby Village Way, Danvers MA 1923', NULL, NULL),
(18, 'Flossie Ward', 'Parisian', 'L0szMnUM1F@gmail.com', '3876906260', '137 Teaticket Hwy, East Falmouth MA 2536', NULL, NULL),
(19, 'David Jones', 'Shanahan', 'u0Hgq7VuPd@gmail.com', '3876721266', '700 Oak Street, Brockton MA 2301', NULL, NULL),
(20, 'London Shanahan Jr.', 'Schmidt', 'k98DIsxP6m@gmail.com', '3876202183', '374 William S Canning Blvd, Fall River MA 2721', NULL, NULL),
(21, 'Jaycee Hermann', 'Upton', 'wRwKOngYJL@gmail.com', '3876589502', '591 Memorial Dr, Chicopee MA 1020', NULL, NULL),
(22, 'Miss Maddison Rohan PhD', 'Jacobson', 'm6jVSoEmIj@gmail.com', '3876105731', '777 Brockton Avenue, Abington MA 2351', NULL, NULL),
(23, 'Winnifred Cole', 'Fisher', 'cGl3WZUb1o@gmail.com', '3876900342', '70 Pleasant Valley Street, Methuen MA 1844', NULL, NULL),
(24, 'Prof. Cordia Abbott', 'Hane', 'f90FoXM1pL@gmail.com', '3876478646', '200 Otis Street, Northborough MA 1532', NULL, NULL),
(25, 'Mrs. Claudia Conn', 'Tromp', 'vByFsolG4g@gmail.com', '3876708871', '337 Russell St, Hadley MA 1035', NULL, NULL),
(26, 'Alexa Klocko', 'Herman', 'Ra6dtJ0S03@gmail.com', '3876598986', '42 Fairhaven Commons Way, Fairhaven MA 2719', NULL, NULL),
(27, 'Mrs. Martine Mertz', 'Stokes', 'U25DR9x8i8@gmail.com', '3876834085', '555 Hubbard Ave-Suite 12, Pittsfield MA 1201', NULL, NULL),
(28, 'Mr. Josue Lang I', 'Keeling', 'R1HFcCd0YC@gmail.com', '3876568222', '20 Soojian Dr, Leicester MA 1524', NULL, NULL),
(29, 'Arvid Lesch', 'Nader', '2VO44TOAmD@gmail.com', '3876192454', '1470 S Washington St, North Attleboro MA 2760', NULL, NULL),
(30, 'Wilfred Padberg', 'Kessler', 'P38pQgH67J@gmail.com', '3876543641', '250 Hartford Avenue, Bellingham MA 2019', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sabina.mulic@hotmail.com', '$2y$10$AiXMjxYaa9umR4iSpnflqOuea62ZKJVQq6SBReoPpGYqOQ6aaph/W', '2022-01-18 11:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vrsta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `vrsta`) VALUES
(1, 'Gotovinsko'),
(2, 'Kartično');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `šifra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `karta` int(11) NOT NULL,
  `putnik` int(11) NOT NULL,
  `mjesto` int(11) NOT NULL,
  `plaćanje` int(11) NOT NULL,
  `datum` date NOT NULL,
  `vrijeme` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `šifra`, `karta`, `putnik`, `mjesto`, `plaćanje`, `datum`, `vrijeme`) VALUES
(1, '998', 132, 26, 11, 2, '2022-01-30', '09:51:10'),
(2, '192', 86, 24, 42, 2, '2022-02-03', '05:08:33'),
(3, '893', 39, 21, 5, 2, '2022-02-08', '06:33:52'),
(4, '533', 106, 20, 24, 2, '2022-02-03', '05:08:00'),
(5, '571', 35, 10, 37, 1, '2022-02-09', '02:18:00'),
(6, '370', 122, 21, 9, 1, '2022-02-11', '03:15:50'),
(7, '520', 121, 16, 26, 2, '2022-02-08', '09:32:02'),
(8, '253', 68, 28, 27, 2, '2022-01-29', '14:45:59'),
(9, '472', 28, 7, 41, 1, '2022-02-17', '23:21:27'),
(10, '288', 71, 9, 4, 1, '2022-02-08', '06:15:50'),
(11, '208', 33, 21, 16, 2, '2022-02-02', '07:42:02'),
(12, '768', 122, 7, 37, 1, '2022-02-08', '18:16:42'),
(13, '110', 272, 19, 3, 1, '2022-02-11', '19:16:36'),
(14, '343', 257, 15, 12, 1, '2022-02-16', '23:12:04'),
(15, '234', 149, 6, 41, 2, '2022-02-08', '10:19:07'),
(16, '623', 223, 27, 31, 2, '2022-02-15', '22:04:22'),
(17, '381', 293, 16, 5, 2, '2022-02-09', '07:33:54'),
(18, '560', 84, 1, 30, 2, '2022-02-11', '09:58:38'),
(19, '607', 241, 11, 14, 1, '2022-02-20', '17:53:53'),
(20, '687', 52, 17, 32, 1, '2022-01-30', '11:28:29'),
(21, '597', 185, 27, 36, 2, '2022-02-03', '21:36:03'),
(22, '947', 212, 31, 12, 2, '2022-02-20', '15:18:56'),
(23, '511', 38, 24, 33, 2, '2022-01-29', '17:31:46'),
(24, '198', 143, 31, 18, 2, '2022-02-05', '09:20:09'),
(25, '236', 154, 24, 45, 2, '2022-01-31', '14:34:13'),
(26, '683', 294, 22, 35, 2, '2022-02-08', '08:32:14'),
(27, '45', 245, 23, 31, 2, '2022-02-05', '04:54:32'),
(28, '318', 109, 20, 41, 2, '2022-02-01', '08:53:32'),
(29, '402', 256, 7, 4, 2, '2022-02-17', '19:21:29'),
(30, '344', 160, 20, 22, 1, '2022-02-17', '13:42:53'),
(31, '494', 280, 15, 38, 2, '2022-01-30', '18:22:58'),
(32, '78', 294, 21, 2, 1, '2022-02-04', '20:46:51'),
(33, '264', 96, 14, 1, 2, '2022-02-15', '05:14:37'),
(34, '387', 58, 5, 28, 1, '2022-02-10', '05:02:36'),
(35, '302', 200, 12, 1, 2, '2022-02-03', '22:23:01'),
(36, '446', 268, 21, 47, 2, '2022-02-11', '06:38:45'),
(37, '869', 85, 7, 36, 1, '2022-02-10', '05:53:55'),
(38, '319', 199, 17, 9, 2, '2022-02-20', '06:54:36'),
(39, '406', 148, 27, 25, 1, '2022-02-10', '07:01:39'),
(40, '664', 118, 29, 8, 2, '2022-02-16', '17:46:10'),
(41, '822', 139, 3, 15, 2, '2022-02-15', '06:12:03'),
(42, '581', 119, 19, 41, 1, '2022-02-03', '11:45:03'),
(43, '793', 296, 16, 50, 2, '2022-02-15', '08:37:28'),
(44, '231', 236, 11, 1, 1, '2022-02-15', '00:29:36'),
(45, '164', 272, 26, 2, 2, '2022-02-16', '01:42:40'),
(46, '570', 191, 6, 20, 1, '2022-01-29', '03:58:00'),
(47, '589', 286, 23, 42, 1, '2022-02-04', '23:31:37'),
(48, '521', 285, 3, 43, 2, '2022-02-20', '05:29:52'),
(49, '80', 161, 30, 19, 2, '2022-02-07', '19:55:28'),
(50, '845', 157, 30, 9, 1, '2022-02-14', '00:07:23'),
(52, '55', 72, 28, 35, 2, '2022-02-05', '04:20:13'),
(53, '988', 125, 1, 42, 1, '2012-08-29', '01:00:06'),
(54, '707', 165, 13, 34, 1, '1994-11-18', '04:10:39'),
(55, '964', 135, 13, 9, 1, '1995-04-17', '02:25:15'),
(56, '800', 33, 8, 47, 1, '1981-08-15', '21:39:48'),
(57, '91', 131, 6, 13, 2, '1974-10-31', '20:16:09'),
(58, '62', 301, 20, 12, 2, '1996-12-14', '20:12:31'),
(59, '703', 72, 21, 35, 2, '1970-06-06', '21:00:09'),
(60, '548', 137, 26, 7, 1, '1999-06-11', '08:28:57'),
(61, '726', 273, 9, 11, 2, '2001-06-27', '01:17:17'),
(62, '356', 221, 23, 48, 2, '2017-01-29', '08:55:26'),
(63, '287', 79, 4, 40, 2, '2016-11-14', '04:38:55'),
(64, '930', 108, 25, 8, 1, '2009-09-09', '11:19:33'),
(65, '952', 36, 7, 46, 1, '1979-02-04', '18:10:18'),
(66, '881', 31, 23, 5, 1, '2004-07-20', '05:02:23'),
(67, '971', 125, 18, 41, 2, '2005-08-27', '09:53:24'),
(68, '668', 147, 6, 37, 1, '1990-12-05', '09:24:23'),
(69, '335', 92, 11, 1, 2, '1987-12-02', '14:01:44'),
(70, '413', 114, 16, 28, 2, '1988-12-18', '08:41:56'),
(71, '695', 40, 30, 23, 1, '2006-11-26', '15:55:31'),
(72, '107', 243, 7, 43, 1, '1974-06-04', '08:48:17'),
(73, '563', 139, 12, 50, 2, '1992-09-25', '00:15:54'),
(74, '212', 250, 2, 42, 1, '2004-11-14', '10:41:42'),
(75, '217', 108, 30, 48, 1, '1971-03-16', '08:43:42'),
(76, '159', 73, 5, 14, 2, '2007-11-03', '14:05:00'),
(77, '128', 270, 9, 23, 2, '1985-12-05', '22:58:58'),
(78, '141', 169, 15, 32, 2, '1981-09-03', '18:29:43'),
(80, '639', 77, 31, 4, 2, '2013-06-24', '03:49:19'),
(81, '240', 158, 2, 11, 2, '1980-08-19', '00:12:05'),
(82, '690', 42, 21, 6, 2, '2009-02-15', '23:14:16'),
(83, '975', 91, 3, 11, 2, '2004-03-09', '05:46:50'),
(84, '910', 272, 11, 32, 1, '1995-10-21', '18:18:05'),
(86, '543', 92, 31, 9, 2, '2017-03-14', '00:27:13'),
(87, '601', 210, 10, 11, 1, '2017-08-11', '12:23:28'),
(88, '797', 293, 2, 17, 2, '2004-09-11', '13:30:38'),
(89, '184', 223, 11, 22, 2, '1983-06-28', '09:23:26'),
(91, '546', 71, 15, 19, 1, '2009-01-12', '02:34:05'),
(92, '773', 100, 19, 35, 2, '2016-05-15', '15:30:16'),
(95, '26014', 290, 22, 41, 2, '1992-09-01', '12:33:46'),
(96, '47119', 124, 28, 3, 1, '1995-10-11', '22:00:30'),
(97, '92557', 121, 21, 29, 1, '2002-07-26', '18:47:58'),
(98, '54609', 129, 18, 13, 1, '2017-09-16', '09:42:22'),
(99, '92226', 58, 8, 40, 1, '2009-05-24', '01:29:56'),
(100, '93707', 189, 27, 46, 2, '2002-01-03', '18:29:41'),
(101, '15571', 244, 16, 7, 1, '2010-09-15', '20:58:38'),
(102, '3988', 286, 14, 36, 1, '1972-01-14', '17:56:13'),
(103, '59496', 210, 24, 24, 1, '2019-04-02', '10:46:24'),
(104, '24456', 77, 7, 36, 1, '2007-06-06', '23:22:12'),
(105, '23101', 200, 20, 47, 1, '1982-05-09', '17:46:38'),
(106, '69697', 99, 2, 19, 2, '2001-02-24', '20:09:53'),
(107, '79752', 62, 20, 4, 1, '2016-01-26', '13:45:52'),
(108, '73568', 252, 19, 27, 1, '2000-04-29', '09:27:07'),
(109, '56270', 27, 9, 18, 2, '2015-10-22', '04:18:07'),
(110, '59145', 90, 20, 45, 1, '1989-08-11', '03:30:16'),
(111, '94282', 248, 13, 37, 1, '1973-08-18', '08:25:20'),
(112, '80868', 139, 22, 21, 2, '1975-01-08', '06:41:28'),
(113, '66973', 237, 9, 29, 2, '2005-06-01', '00:36:46'),
(114, '40947', 165, 2, 5, 1, '2008-10-25', '06:35:22'),
(115, '53312', 144, 22, 44, 2, '2018-12-27', '18:52:20'),
(116, '1929', 104, 24, 27, 1, '1977-02-27', '10:19:38'),
(117, '84993', 48, 15, 13, 2, '2003-10-07', '02:41:50'),
(118, '11425', 174, 30, 44, 2, '1982-09-16', '21:47:22'),
(119, '83897', 279, 6, 42, 2, '2006-07-10', '15:39:39'),
(120, '15511', 89, 3, 35, 2, '1981-08-03', '13:15:00'),
(121, '29350', 116, 18, 21, 1, '1993-09-25', '02:07:27'),
(122, '32734', 293, 9, 30, 2, '2006-10-27', '02:53:13'),
(123, '10971', 175, 22, 37, 1, '1997-10-28', '10:22:28'),
(124, '79838', 130, 23, 13, 1, '2015-03-20', '11:19:44'),
(125, '44197', 146, 28, 3, 2, '1970-08-22', '03:35:34'),
(126, '24593', 77, 4, 3, 2, '1992-01-01', '10:36:34'),
(127, '15782', 190, 32, 14, 2, '1978-10-02', '18:07:56'),
(128, '12077', 167, 15, 45, 2, '2003-04-26', '04:00:33'),
(129, '19206', 61, 24, 42, 2, '1979-06-01', '04:36:58'),
(130, '77238', 110, 25, 9, 1, '1975-04-16', '10:58:36'),
(131, '84080', 241, 24, 39, 2, '1976-06-20', '09:41:46'),
(132, '1639', 167, 22, 22, 2, '2012-04-12', '12:50:05'),
(133, '74374', 247, 4, 11, 1, '1980-01-09', '22:09:21'),
(134, '63560', 177, 28, 31, 2, '2015-06-16', '17:45:54'),
(135, '61697', 90, 20, 31, 2, '1974-09-14', '23:16:29'),
(136, '74852', 100, 2, 40, 2, '2002-11-08', '01:07:46'),
(137, '36415', 39, 16, 14, 1, '1971-05-07', '08:26:50'),
(138, '19220', 85, 28, 23, 2, '1976-06-27', '05:42:12'),
(139, '9633', 57, 28, 42, 1, '1974-01-11', '00:11:34'),
(140, '17590', 226, 29, 16, 2, '1996-06-01', '18:42:05'),
(141, '72764', 130, 7, 36, 2, '1981-05-09', '10:28:01'),
(142, '16212', 253, 2, 11, 2, '1991-12-19', '10:57:53'),
(143, '23618', 59, 3, 34, 1, '1984-08-26', '15:14:03'),
(144, '44703', 41, 20, 20, 1, '1998-09-12', '16:02:51'),
(145, '54451', 252, 5, 3, 2, '1978-01-05', '13:28:09'),
(146, '21675', 38, 20, 15, 2, '1988-01-12', '14:07:00'),
(147, '97354', 234, 32, 10, 1, '2020-12-31', '18:21:45'),
(148, '49333', 126, 10, 22, 2, '1981-10-13', '15:26:21'),
(149, '545', 44, 18, 48, 2, '2010-11-08', '06:59:54'),
(150, '19128', 273, 8, 35, 2, '1999-03-14', '07:35:55'),
(151, '64410', 277, 17, 17, 2, '1991-12-19', '17:10:00'),
(152, '18657', 267, 2, 4, 2, '1976-02-26', '13:18:47'),
(153, '1358', 51, 9, 38, 2, '2004-05-09', '02:21:55'),
(154, '93611', 297, 32, 4, 2, '1990-11-02', '13:44:16'),
(155, '32449', 252, 12, 8, 1, '1975-11-06', '22:31:04'),
(156, '59173', 165, 17, 44, 1, '1976-12-23', '11:03:56'),
(157, '5467', 93, 25, 24, 2, '2009-03-20', '19:46:53'),
(158, '33135', 63, 4, 17, 2, '1987-03-22', '00:48:46'),
(159, '93345', 176, 20, 5, 1, '1992-08-03', '13:10:23'),
(160, '16966', 52, 2, 5, 2, '1982-03-02', '15:09:15'),
(161, '20447', 155, 9, 37, 1, '2003-02-15', '17:15:23'),
(162, '42289', 185, 18, 21, 2, '1973-07-17', '21:56:45'),
(163, '60828', 145, 3, 31, 1, '1993-01-09', '21:47:50'),
(164, '88998', 68, 21, 28, 2, '2006-08-26', '12:17:16'),
(165, '57201', 228, 8, 38, 1, '1985-05-23', '21:49:27'),
(166, '29150', 256, 11, 12, 2, '1998-01-18', '04:10:41'),
(167, '50928', 172, 32, 29, 2, '1983-08-18', '10:08:09'),
(168, '20511', 299, 12, 34, 1, '1977-10-23', '12:45:25'),
(169, '4814', 299, 20, 1, 1, '1989-09-14', '02:04:28'),
(170, '18128', 217, 30, 27, 2, '1977-01-13', '18:22:48'),
(171, '83945', 61, 30, 26, 1, '1986-10-17', '19:03:26'),
(172, '68880', 262, 15, 22, 1, '1990-05-23', '06:16:57'),
(173, '56015', 245, 15, 9, 1, '1995-07-23', '01:09:41'),
(174, '25259', 186, 13, 32, 2, '1970-10-20', '10:10:50'),
(175, '2816', 278, 5, 45, 2, '2007-12-14', '07:45:58'),
(176, '39108', 296, 18, 26, 2, '1985-12-23', '14:49:49'),
(177, '77809', 150, 18, 6, 1, '1987-08-05', '21:54:06'),
(178, '27553', 108, 28, 38, 2, '2016-10-25', '07:16:50'),
(179, '68300', 275, 25, 50, 1, '1977-03-17', '22:36:50'),
(180, '68481', 227, 11, 37, 1, '2010-02-16', '12:21:27'),
(181, '21137', 149, 31, 45, 2, '1993-05-28', '14:25:50'),
(182, '71452', 196, 19, 30, 1, '2011-05-24', '07:59:47'),
(183, '71001', 155, 30, 32, 2, '1987-06-13', '20:00:21'),
(184, '29778', 262, 3, 7, 2, '1999-12-02', '18:07:14'),
(185, '39612', 33, 31, 34, 1, '1984-10-24', '16:39:21'),
(186, '59967', 216, 30, 9, 1, '2000-12-15', '10:26:08'),
(187, '45344', 150, 3, 35, 1, '1999-09-23', '09:53:18'),
(188, '32737', 225, 31, 50, 1, '2011-05-08', '21:59:42'),
(189, '66346', 262, 22, 33, 2, '1996-08-28', '04:18:05'),
(190, '57552', 206, 13, 46, 2, '1983-11-18', '13:47:46'),
(191, '58272', 222, 17, 32, 1, '1971-03-17', '23:16:55'),
(192, '80264', 228, 13, 14, 2, '1970-08-12', '02:27:40'),
(193, '51922', 117, 8, 2, 2, '2021-03-13', '11:00:57'),
(194, '74746', 248, 8, 26, 2, '2003-08-26', '05:23:33'),
(195, '34035', 62, 7, 7, 1, '1981-11-09', '10:47:24'),
(196, '23677', 74, 27, 17, 2, '1986-12-04', '04:53:23'),
(197, '41522', 261, 3, 50, 1, '2018-06-27', '00:05:46'),
(198, '96705', 279, 8, 30, 2, '2019-08-06', '14:12:11'),
(199, '10262', 69, 16, 44, 2, '2020-03-09', '14:55:54'),
(200, '59630', 233, 4, 1, 2, '2000-10-19', '10:09:41'),
(201, '25518', 108, 11, 4, 2, '1983-04-28', '15:37:07'),
(202, '9814', 253, 19, 39, 1, '2000-06-05', '20:35:14'),
(203, '65296', 235, 7, 27, 1, '2003-08-27', '08:55:59'),
(204, '13254', 73, 9, 17, 2, '1986-06-16', '09:03:18'),
(205, '41609', 79, 1, 50, 2, '1979-09-22', '17:54:15'),
(206, '48592', 273, 5, 21, 1, '1979-09-08', '18:55:29'),
(207, '11789', 177, 11, 30, 2, '2012-08-12', '11:01:00'),
(208, '38395', 247, 5, 17, 1, '2021-01-21', '10:45:30'),
(209, '13763', 61, 2, 33, 1, '2016-10-17', '05:09:17'),
(210, '76515', 298, 18, 13, 2, '2020-10-15', '08:06:53'),
(211, '26832', 108, 23, 30, 2, '1980-08-18', '18:11:09'),
(212, '80248', 242, 17, 5, 2, '1990-03-14', '14:46:54'),
(213, '27770', 244, 17, 31, 1, '1995-07-17', '11:33:20'),
(214, '51391', 156, 26, 36, 1, '1998-08-29', '10:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('itUQeUpM7vdth8eGIzA70F16sxsWJQlbanHE6jfy', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiR3VaU1E4cGlRM2VkRWhnejRPaVZCMzNMNTdlWFhWVGQ4c3VlaDF1TyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvdXBpdHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMFFDS09MaWkuc3ZndlVhSi5Udks1dXVIclloZ0ZiVmF1eE90QmZmL0xsM011SXNLSlEuRzYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDBRQ0tPTGlpLnN2Z3ZVYUouVHZLNXV1SHJZaGdGYlZhdXhPdEJmZi9MbDNNdUlzS0pRLkc2Ijt9', 1644061248),
('L5vdRD702pSk2f94gdgJCvM0yTrToJucictZbYA5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVllOGpRSXV2MnFTdXhpQVJDUDF2RThpUnlvdEJQZENReXZhYmNhMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644060551);

-- --------------------------------------------------------

--
-- Table structure for table `starts`
--

CREATE TABLE `starts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kontinent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drzava` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aerodrom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bar_kod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polaziste` int(11) NOT NULL,
  `odrediste` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `klasa` int(11) NOT NULL,
  `cijena` double NOT NULL,
  `datum` date NOT NULL,
  `vrijeme` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `bar_kod`, `polaziste`, `odrediste`, `tip`, `klasa`, `cijena`, `datum`, `vrijeme`) VALUES
(27, 'Schmidt-Kuvalis', 9, 154, 1, 2, 709, '2022-01-31', '04:56:16'),
(28, 'Braun, Gerlach and Luettgen', 109, 59, 2, 3, 366, '2022-01-28', '23:39:23'),
(29, 'Bednar-Lynch', 152, 186, 1, 3, 267, '2022-01-29', '20:07:48'),
(30, 'O\'Connell-King', 144, 13, 1, 1, 636, '2022-02-05', '22:44:30'),
(31, 'Gleason, Bashirian and Bashirian', 28, 208, 1, 2, 683, '2022-02-15', '06:10:02'),
(32, 'Anderson, Rice and Schaden', 411, 192, 1, 3, 559, '2022-02-09', '13:12:12'),
(33, 'Harber-Haag', 473, 87, 2, 3, 183, '2022-02-10', '11:25:40'),
(34, 'Russel, VonRueden and Kulas', 302, 169, 2, 2, 770, '2022-02-06', '08:52:32'),
(35, 'Klein, Harris and Howe', 61, 48, 1, 3, 503, '2022-02-17', '19:43:28'),
(36, 'Luettgen, Buckridge and Ward', 124, 25, 1, 1, 360, '2022-01-29', '21:05:58'),
(37, 'Klein, Bosco and Corwin', 442, 123, 2, 3, 668, '2022-02-10', '10:35:47'),
(38, 'Wolf, Tremblay and Kautzer', 162, 171, 2, 1, 773, '2022-02-17', '07:51:22'),
(39, 'Bartoletti-Lindgren', 396, 191, 2, 1, 648, '2022-02-11', '22:17:02'),
(40, 'Larkin PLC', 47, 94, 1, 3, 430, '2022-01-27', '06:52:18'),
(41, 'Hermann, Crona and Greenholt', 281, 185, 2, 2, 300, '2022-02-01', '01:07:16'),
(42, 'Hammes-Trantow', 458, 42, 2, 3, 300, '2022-02-18', '16:33:54'),
(43, 'Fritsch Inc', 111, 65, 1, 3, 446, '2022-01-31', '22:58:17'),
(44, 'Doyle-Beahan', 415, 19, 2, 2, 165, '2022-02-16', '10:08:21'),
(45, 'Parisian LLC', 211, 32, 1, 2, 328, '2022-01-29', '06:10:08'),
(46, 'Breitenberg PLC', 249, 186, 2, 3, 716, '2022-02-14', '20:20:14'),
(47, 'Hegmann, Green and Cummings', 302, 204, 2, 1, 677, '2022-02-01', '05:18:09'),
(48, 'Quitzon Group', 246, 129, 1, 1, 360, '2022-02-09', '13:39:49'),
(49, 'Mueller, VonRueden and Morissette', 219, 12, 1, 1, 428, '2022-02-06', '19:16:25'),
(50, 'Feil-Lakin', 451, 194, 2, 1, 547, '2022-02-16', '05:21:51'),
(51, 'Brakus Group', 302, 132, 1, 1, 643, '2022-02-03', '21:59:15'),
(52, 'Torp Ltd', 233, 174, 1, 2, 722, '2022-02-16', '04:00:29'),
(53, 'Price PLC', 136, 172, 1, 3, 375, '2022-02-05', '16:20:25'),
(54, 'Hudson Ltd', 5, 37, 1, 3, 503, '2022-02-14', '18:06:17'),
(55, 'Hessel, Wilkinson and Bode', 128, 183, 1, 1, 285, '2022-02-12', '11:16:57'),
(56, 'Weber-Pouros', 327, 21, 1, 3, 409, '2022-01-29', '17:17:52'),
(57, 'Wuckert Ltd', 430, 71, 2, 3, 278, '2022-02-09', '07:18:36'),
(58, 'Renner LLC', 464, 32, 1, 2, 623, '2022-02-15', '06:38:18'),
(59, 'Kulas, Veum and Walker', 477, 99, 1, 2, 751, '2022-02-15', '17:20:03'),
(60, 'Marvin-Wisoky', 316, 18, 1, 2, 521, '2022-02-15', '17:23:31'),
(61, 'Olson LLC', 423, 19, 2, 3, 757, '2022-02-16', '17:24:06'),
(62, 'Toy, Koelpin and Waters', 473, 56, 2, 2, 466, '2022-02-18', '03:53:59'),
(63, 'Schneider, Medhurst and Romaguera', 363, 48, 2, 1, 363, '2022-01-27', '05:08:59'),
(64, 'Bosco LLC', 19, 90, 1, 2, 660, '2022-01-31', '04:13:23'),
(65, 'Koch-Ziemann', 430, 136, 2, 3, 223, '2022-02-04', '18:46:46'),
(66, 'Will, Anderson and Williamson', 172, 127, 2, 3, 417, '2022-02-09', '17:35:46'),
(67, 'Pfannerstill-McClure', 433, 32, 1, 3, 381, '2022-02-05', '16:29:55'),
(68, 'Hilpert Inc', 314, 23, 2, 3, 176, '2022-02-06', '11:11:27'),
(69, 'Frami-Gleichner', 267, 87, 1, 1, 567, '2022-02-04', '04:10:49'),
(70, 'Rutherford PLC', 180, 21, 1, 1, 697, '2022-02-08', '00:40:11'),
(71, 'Daugherty-Farrell', 366, 77, 2, 1, 340, '2022-02-12', '23:18:14'),
(72, 'Gorczany, Erdman and Pollich', 436, 185, 1, 1, 302, '2022-02-14', '00:33:19'),
(73, 'McLaughlin, O\'Reilly and Rohan', 159, 163, 2, 1, 733, '2022-02-08', '19:57:55'),
(74, 'Heller-Doyle', 42, 144, 1, 3, 594, '2022-02-15', '14:12:20'),
(75, 'Pfannerstill Group', 186, 209, 2, 3, 380, '2022-02-01', '04:51:37'),
(76, 'Casper, Hartmann and Emmerich', 93, 65, 2, 2, 424, '2022-02-13', '00:42:13'),
(77, 'Rodriguez Ltd', 8, 18, 1, 2, 334, '2022-02-11', '02:21:38'),
(78, 'Streich-Mohr', 420, 123, 1, 1, 464, '2022-02-01', '22:31:01'),
(79, 'Champlin PLC', 469, 82, 1, 3, 132, '2022-02-04', '19:29:41'),
(80, 'Hane-Hirthe', 251, 17, 1, 2, 719, '2022-01-29', '05:36:22'),
(81, 'DuBuque-Pfannerstill', 205, 129, 2, 1, 217, '2022-02-04', '22:08:45'),
(82, 'Pouros PLC', 148, 118, 2, 3, 733, '2022-02-10', '21:58:27'),
(83, 'Berge, Larson and Schowalter', 237, 160, 1, 2, 421, '2022-01-26', '17:25:49'),
(84, 'Weimann, Dickinson and O\'Keefe', 297, 161, 2, 2, 531, '2022-02-08', '19:32:27'),
(85, 'Lebsack LLC', 57, 201, 2, 3, 258, '2022-02-15', '05:00:41'),
(86, 'Hudson-Rogahn', 327, 106, 2, 3, 417, '2022-02-09', '03:03:46'),
(87, 'Torp-Gleichner', 18, 131, 1, 2, 626, '2022-02-06', '19:45:46'),
(88, 'Gerlach Ltd', 220, 206, 1, 3, 140, '2022-01-26', '07:49:47'),
(89, 'Kreiger Ltd', 440, 180, 2, 1, 654, '2022-02-04', '08:54:06'),
(90, 'Pacocha-Miller', 488, 140, 2, 2, 228, '2022-02-16', '21:45:58'),
(91, 'Frami, Rempel and Fadel', 141, 154, 1, 3, 262, '2022-02-05', '14:54:39'),
(92, 'Schneider PLC', 58, 38, 2, 3, 199, '2022-02-12', '20:20:42'),
(93, 'Gerlach, Wolff and Kutch', 132, 45, 1, 2, 226, '2022-01-27', '18:49:32'),
(94, 'Anderson and Sons', 480, 135, 1, 2, 209, '2022-02-18', '02:36:47'),
(95, 'Stamm-Christiansen', 359, 129, 2, 1, 399, '2022-01-25', '15:30:54'),
(96, 'Stoltenberg, Welch and Gusikowski', 296, 139, 2, 2, 612, '2022-01-28', '21:40:10'),
(97, 'Moen-Bashirian', 240, 201, 2, 3, 405, '2022-01-31', '21:10:46'),
(98, 'Kuhic, Murazik and Muller', 143, 27, 2, 3, 603, '2022-02-08', '03:23:40'),
(99, 'Mertz-Adams', 376, 12, 2, 3, 603, '2022-02-03', '14:41:53'),
(100, 'Kling-Carroll', 248, 162, 2, 1, 540, '2022-01-26', '08:37:24'),
(101, 'Moen, Grimes and Donnelly', 223, 125, 1, 2, 507, '2022-02-03', '12:19:50'),
(102, 'Bashirian PLC', 10, 186, 1, 2, 645, '2022-02-11', '19:52:30'),
(103, 'Nolan, Walker and Aufderhar', 34, 132, 2, 3, 158, '2022-02-16', '04:22:05'),
(104, 'Ernser-Haley', 436, 21, 2, 3, 289, '2022-01-29', '23:18:50'),
(105, 'Stracke-Legros', 155, 21, 1, 1, 559, '2022-02-08', '19:22:45'),
(106, 'Hettinger LLC', 349, 150, 1, 3, 244, '2022-02-12', '03:03:40'),
(107, 'Schneider Inc', 271, 59, 1, 3, 580, '2022-02-08', '17:45:05'),
(108, 'O\'Keefe-Lakin', 250, 75, 1, 2, 716, '2022-02-15', '14:00:20'),
(109, 'Block, Rohan and Dooley', 95, 104, 1, 2, 728, '2022-02-16', '09:33:28'),
(110, 'Koepp-Keebler', 339, 123, 1, 3, 314, '2022-02-09', '22:45:19'),
(111, 'Labadie and Sons', 126, 83, 2, 1, 576, '2022-01-29', '06:24:01'),
(112, 'Rohan Ltd', 156, 60, 1, 2, 652, '2022-02-02', '08:28:12'),
(113, 'Macejkovic-Heathcote', 338, 32, 2, 1, 402, '2022-02-05', '10:53:01'),
(114, 'Wyman Ltd', 423, 22, 1, 2, 407, '2022-02-13', '02:42:01'),
(115, 'Swaniawski, Dietrich and O\'Hara', 417, 140, 1, 2, 761, '2022-02-07', '05:46:48'),
(116, 'Hayes, Schiller and Ward', 186, 85, 2, 3, 319, '2022-02-15', '01:13:05'),
(117, 'Turcotte-Ritchie', 438, 54, 2, 1, 120, '2022-02-13', '18:51:01'),
(118, 'Green, Weissnat and Rodriguez', 488, 194, 2, 3, 642, '2022-02-11', '01:11:01'),
(119, 'Halvorson, Pfeffer and Leuschke', 129, 80, 2, 3, 459, '2022-02-02', '22:44:39'),
(120, 'Bernhard, Roob and Larkin', 274, 119, 2, 2, 153, '2022-01-28', '01:39:59'),
(121, 'King Inc', 65, 68, 1, 2, 207, '2022-02-11', '01:11:49'),
(122, 'Hermann-Daniel', 192, 67, 2, 2, 629, '2022-01-31', '21:52:33'),
(123, 'Weissnat-Fadel', 211, 94, 1, 2, 217, '2022-02-09', '10:09:44'),
(124, 'Mayer-Goodwin', 406, 80, 1, 2, 489, '2022-02-16', '16:50:44'),
(125, 'Kuhic-Langworth', 88, 157, 1, 3, 672, '2022-02-14', '05:16:50'),
(126, 'Herzog-Langosh', 481, 208, 2, 2, 662, '2022-02-03', '12:24:01'),
(127, 'Crona, Marquardt and Graham', 13, 21, 2, 1, 317, '2022-01-31', '10:47:54'),
(128, 'O\'Keefe and Sons', 319, 202, 1, 1, 703, '2022-02-09', '23:01:14'),
(129, 'Crona PLC', 325, 192, 1, 2, 148, '2022-01-31', '16:58:34'),
(130, 'Robel, McDermott and Wiza', 157, 159, 2, 2, 241, '2022-01-27', '05:36:19'),
(131, 'Hartmann-Fadel', 182, 65, 1, 2, 263, '2022-02-17', '07:36:05'),
(132, 'Conroy, Sipes and Schroeder', 381, 177, 1, 3, 266, '2022-01-28', '13:31:32'),
(133, 'Kessler Group', 421, 50, 1, 1, 486, '2022-02-07', '17:57:31'),
(134, 'Mitchell-Kub', 476, 145, 2, 3, 392, '2022-02-12', '04:52:55'),
(135, 'Ortiz LLC', 40, 163, 1, 3, 775, '2022-02-04', '05:58:15'),
(136, 'Hill, Bechtelar and Kertzmann', 471, 74, 2, 2, 658, '2022-02-05', '11:50:38'),
(137, 'Cronin, Kozey and Strosin', 227, 31, 2, 1, 303, '2022-02-18', '14:22:14'),
(138, 'Pollich-Flatley', 459, 79, 2, 1, 514, '2022-02-05', '01:57:28'),
(139, 'Schamberger, Funk and Quitzon', 439, 7, 2, 1, 333, '2022-01-30', '15:11:32'),
(140, 'Walker PLC', 200, 104, 2, 1, 548, '2022-02-05', '16:05:05'),
(141, 'Lind PLC', 75, 7, 1, 1, 559, '2022-02-05', '18:09:52'),
(142, 'Barrows-Dickens', 250, 68, 2, 1, 710, '2022-02-08', '12:17:29'),
(143, 'Douglas, Cronin and Hansen', 476, 8, 1, 2, 214, '2022-01-28', '18:27:44'),
(144, 'Quitzon, Hagenes and Metz', 236, 66, 2, 3, 724, '2022-02-10', '16:27:56'),
(145, 'VonRueden, Kreiger and Ankunding', 207, 82, 2, 2, 205, '2022-02-11', '01:13:45'),
(146, 'Rempel PLC', 90, 207, 1, 1, 234, '2022-02-12', '19:13:33'),
(147, 'Stroman, Conroy and Nitzsche', 112, 2, 1, 2, 332, '2022-02-02', '01:50:34'),
(148, 'Gutkowski, Schaefer and Schaden', 72, 208, 2, 3, 529, '2022-02-10', '20:32:32'),
(149, 'Dibbert and Sons', 357, 69, 2, 1, 696, '2022-02-02', '10:09:08'),
(150, 'Donnelly, Bruen and Gorczany', 184, 70, 1, 2, 359, '2022-02-03', '19:38:22'),
(151, 'Turkish Airlines', 11, 12, 2, 2, 568, '2022-01-29', '17:10:00'),
(152, 'Hammes-Gibson', 296, 217, 2, 3, 270, '2022-02-16', '18:18:47'),
(153, 'Stehr-Stracke', 339, 263, 1, 1, 341, '2022-02-22', '20:22:29'),
(154, 'Rolfson, Bailey and Huels', 317, 268, 1, 1, 417, '2022-02-01', '19:55:42'),
(155, 'Walter and Sons', 268, 239, 2, 3, 422, '2022-02-14', '10:02:32'),
(156, 'Reilly, Lynch and Gusikowski', 340, 232, 2, 2, 772, '2022-01-31', '23:34:13'),
(157, 'Lockman PLC', 294, 253, 2, 3, 390, '2022-02-17', '12:38:52'),
(158, 'Marks Inc', 241, 272, 2, 2, 144, '2022-02-09', '14:29:30'),
(159, 'Bahringer PLC', 305, 233, 2, 1, 251, '2022-02-18', '14:28:29'),
(160, 'Botsford, Buckridge and McKenzie', 252, 216, 2, 3, 381, '2022-02-14', '23:09:57'),
(161, 'Senger Group', 312, 293, 1, 1, 283, '2022-02-03', '02:59:46'),
(162, 'Glover-Wunsch', 313, 253, 2, 3, 729, '2022-02-11', '01:40:54'),
(163, 'Hettinger-Gutmann', 324, 228, 1, 2, 251, '2022-02-01', '03:05:13'),
(164, 'Watsica LLC', 298, 258, 1, 2, 255, '2022-02-12', '15:38:19'),
(165, 'Bogisich LLC', 267, 282, 1, 2, 140, '2022-02-06', '03:43:59'),
(166, 'Auer Ltd', 333, 264, 2, 2, 637, '2022-02-20', '17:45:27'),
(167, 'Mueller, Watsica and Hahn', 277, 287, 1, 2, 784, '2022-02-15', '17:37:24'),
(168, 'Greenholt, Brekke and Stokes', 303, 299, 2, 2, 474, '2022-01-30', '06:03:46'),
(169, 'Heller Ltd', 305, 282, 2, 2, 549, '2022-02-14', '09:08:01'),
(170, 'Bosco-Kuphal', 324, 234, 2, 3, 351, '2022-02-05', '17:17:50'),
(171, 'Reinger, Becker and Daugherty', 333, 221, 1, 1, 189, '2022-02-13', '07:57:02'),
(172, 'Gaylord, Wisozk and Bergnaum', 268, 212, 2, 3, 460, '2022-02-01', '21:02:36'),
(173, 'Stokes LLC', 314, 263, 2, 2, 709, '2022-02-03', '05:59:11'),
(174, 'Haag Group', 302, 292, 1, 2, 214, '2022-02-10', '00:54:09'),
(175, 'Schamberger, Cormier and Rogahn', 308, 294, 2, 2, 718, '2022-02-13', '00:16:25'),
(176, 'Crona-Kassulke', 333, 291, 2, 1, 573, '2022-02-12', '21:45:13'),
(177, 'Fay, Skiles and Weber', 268, 258, 1, 2, 379, '2022-02-02', '22:49:50'),
(178, 'Labadie-Heaney', 307, 280, 1, 1, 729, '2022-02-17', '19:41:06'),
(179, 'West Ltd', 338, 203, 1, 2, 553, '2022-02-17', '11:14:11'),
(180, 'Yost-Casper', 310, 264, 2, 2, 625, '2022-02-17', '17:32:45'),
(181, 'Langosh PLC', 279, 267, 2, 2, 362, '2022-02-07', '01:20:45'),
(182, 'Ritchie, Beatty and Conroy', 246, 298, 2, 1, 709, '2022-02-01', '02:02:29'),
(183, 'Kunde, Will and Mayer', 323, 295, 2, 1, 276, '2022-02-03', '22:46:18'),
(184, 'Glover-Brown', 304, 293, 2, 2, 607, '2022-02-18', '14:04:31'),
(185, 'Bruen-Daniel', 271, 269, 2, 1, 598, '2022-02-16', '01:06:48'),
(186, 'Harvey-Bechtelar', 267, 283, 2, 2, 402, '2022-02-04', '05:02:11'),
(187, 'Ruecker, Hayes and Grady', 302, 299, 2, 1, 352, '2022-02-15', '21:13:23'),
(188, 'Lebsack, Treutel and Pfannerstill', 327, 218, 1, 2, 685, '2022-02-01', '15:25:28'),
(189, 'Runolfsdottir, Gutkowski and Kihn', 289, 274, 2, 3, 367, '2022-01-31', '10:08:32'),
(190, 'Gulgowski-Connelly', 337, 275, 2, 3, 694, '2022-02-13', '21:35:30'),
(191, 'Kassulke LLC', 324, 227, 2, 1, 402, '2022-02-12', '12:43:22'),
(192, 'Ferry-Williamson', 305, 297, 1, 2, 223, '2022-02-05', '10:41:08'),
(193, 'Hauck, Emard and Schroeder', 247, 276, 1, 3, 349, '2022-02-04', '13:14:13'),
(194, 'Howe, Wiegand and Turner', 270, 293, 1, 2, 185, '2022-02-02', '22:56:58'),
(195, 'Kirlin PLC', 262, 260, 1, 1, 740, '2022-02-06', '09:07:57'),
(196, 'Eichmann LLC', 267, 283, 2, 2, 469, '2022-02-03', '18:21:50'),
(197, 'Bednar, Little and Bruen', 314, 281, 1, 3, 701, '2022-02-04', '12:46:43'),
(198, 'Heidenreich Ltd', 253, 207, 2, 1, 638, '2022-02-13', '08:05:58'),
(199, 'Mertz and Sons', 339, 222, 2, 1, 149, '2022-02-07', '08:02:08'),
(200, 'Gaylord and Sons', 272, 274, 1, 1, 713, '2022-02-17', '19:28:11'),
(201, 'Leannon PLC', 302, 260, 2, 2, 248, '2022-02-07', '12:11:39'),
(202, 'Hudson, Considine and O\'Kon', 248, 274, 1, 1, 281, '2022-02-17', '17:39:07'),
(203, 'Witting LLC', 242, 250, 1, 3, 479, '2022-02-11', '02:51:16'),
(204, 'Block, Casper and Purdy', 302, 240, 1, 1, 641, '2022-02-02', '07:18:53'),
(205, 'Mueller-Goyette', 299, 262, 2, 1, 219, '2022-02-15', '00:18:21'),
(206, 'Konopelski-McCullough', 319, 246, 1, 2, 393, '2022-02-16', '11:09:24'),
(207, 'Keebler Ltd', 281, 272, 1, 1, 280, '2022-02-21', '04:08:57'),
(208, 'Windler Ltd', 329, 248, 2, 3, 244, '2022-01-29', '04:36:16'),
(209, 'Gerlach, Sporer and Turner', 333, 275, 1, 2, 157, '2022-02-13', '17:41:33'),
(210, 'Hermiston, Cormier and Mann', 323, 298, 1, 3, 191, '2022-02-02', '03:17:24'),
(211, 'Johnson-Schoen', 295, 222, 1, 3, 719, '2022-02-02', '17:10:40'),
(212, 'Gorczany and Sons', 308, 212, 1, 1, 527, '2022-01-31', '19:36:52'),
(213, 'Ankunding-Bashirian', 301, 256, 2, 1, 194, '2022-02-18', '07:11:32'),
(214, 'Kassulke, Bode and Trantow', 310, 267, 1, 3, 339, '2022-02-02', '18:22:35'),
(215, 'Wilkinson and Sons', 279, 258, 2, 1, 507, '2022-02-14', '16:42:19'),
(216, 'Hegmann LLC', 313, 249, 1, 2, 143, '2022-02-12', '12:15:58'),
(217, 'Schoen-Huels', 258, 289, 2, 1, 612, '2022-02-21', '11:47:42'),
(218, 'Muller, Paucek and Jakubowski', 242, 270, 1, 1, 703, '2022-02-01', '12:02:52'),
(219, 'Schultz-McCullough', 337, 248, 1, 2, 775, '2022-02-18', '17:16:59'),
(220, 'Hackett PLC', 241, 245, 2, 1, 391, '2022-02-08', '23:03:04'),
(221, 'Ernser-Crooks', 299, 203, 1, 2, 526, '2022-02-01', '05:50:00'),
(222, 'Kessler Inc', 301, 254, 1, 1, 571, '2022-02-07', '13:20:16'),
(223, 'Haag, Cassin and Johnston', 282, 213, 2, 3, 613, '2022-02-10', '07:59:19'),
(224, 'Abshire, Hamill and Nikolaus', 262, 295, 2, 3, 257, '2022-02-04', '12:29:59'),
(225, 'Mills-Bartell', 272, 297, 2, 3, 120, '2022-01-31', '12:43:22'),
(226, 'Bruen, Emmerich and Smitham', 269, 282, 1, 2, 465, '2022-02-09', '21:35:38'),
(227, 'Dickinson-Kshlerin', 272, 257, 2, 3, 508, '2022-02-16', '04:34:01'),
(228, 'Cronin Inc', 296, 216, 1, 3, 612, '2022-02-21', '21:56:11'),
(229, 'Kessler, Klocko and Schamberger', 336, 215, 2, 2, 341, '2022-02-21', '07:43:11'),
(230, 'Schoen-Weissnat', 308, 282, 1, 1, 262, '2022-02-19', '15:20:29'),
(231, 'Reichert-Nicolas', 265, 289, 1, 2, 424, '2022-02-06', '07:38:11'),
(232, 'Quitzon LLC', 249, 296, 1, 2, 720, '2022-02-06', '14:52:59'),
(233, 'Kuhlman-Lebsack', 288, 293, 2, 3, 371, '2022-02-21', '17:48:58'),
(234, 'Ortiz, Boyer and Yost', 295, 279, 1, 3, 433, '2022-01-31', '21:37:53'),
(235, 'Weimann LLC', 275, 240, 1, 2, 348, '2022-02-04', '12:22:06'),
(236, 'Rodriguez Inc', 305, 262, 2, 1, 298, '2022-02-17', '17:48:07'),
(237, 'McGlynn, Roob and Schmidt', 319, 297, 2, 3, 196, '2022-02-22', '02:24:25'),
(238, 'Bode-Quigley', 259, 258, 2, 2, 778, '2022-02-14', '19:54:22'),
(239, 'Kuhlman Ltd', 262, 259, 2, 3, 203, '2022-01-31', '03:58:17'),
(240, 'Cole, Wunsch and Schuppe', 340, 230, 2, 2, 315, '2022-02-17', '07:56:17'),
(241, 'Heaney-Bins', 298, 233, 2, 3, 481, '2022-02-14', '06:49:27'),
(242, 'Prosacco, Ritchie and Hermann', 334, 247, 2, 1, 689, '2022-02-19', '04:55:17'),
(243, 'Okuneva-Wehner', 245, 202, 1, 3, 483, '2022-02-03', '08:20:12'),
(244, 'Stamm, Kassulke and Jakubowski', 250, 223, 2, 2, 611, '2022-02-18', '22:01:27'),
(245, 'Kuphal-Frami', 259, 214, 2, 3, 675, '2022-02-07', '02:09:18'),
(246, 'Zemlak-Nienow', 330, 213, 1, 1, 738, '2022-02-08', '11:10:52'),
(247, 'Sawayn-Jacobi', 306, 235, 1, 1, 356, '2022-02-17', '08:47:40'),
(248, 'Jacobson, Tromp and Mayert', 320, 231, 1, 1, 408, '2022-02-06', '07:40:57'),
(249, 'Schultz-Gleichner', 309, 298, 2, 2, 660, '2022-02-17', '19:01:07'),
(250, 'Adams-Swift', 330, 278, 1, 2, 474, '2022-02-18', '17:47:23'),
(251, 'Predovic-Connelly', 251, 273, 2, 2, 339, '2022-02-13', '09:03:57'),
(252, 'Eichmann-Weimann', 334, 241, 1, 1, 456, '2022-02-07', '06:07:59'),
(253, 'Schmeler-Larkin', 246, 298, 1, 3, 259, '2022-01-31', '16:44:56'),
(254, 'Auer, Hoppe and Stoltenberg', 290, 221, 1, 2, 776, '2022-02-08', '21:33:34'),
(255, 'Turner, Harber and Hills', 276, 270, 1, 2, 455, '2022-02-21', '22:26:51'),
(256, 'Shanahan-O\'Kon', 297, 229, 1, 2, 367, '2022-02-19', '12:39:45'),
(257, 'Klein-Hettinger', 305, 206, 1, 1, 457, '2022-02-21', '13:39:12'),
(258, 'Effertz, Grant and Berge', 322, 288, 2, 2, 704, '2022-02-06', '03:27:03'),
(259, 'Bernhard PLC', 308, 247, 2, 1, 520, '2022-02-22', '16:48:38'),
(260, 'Howell LLC', 248, 268, 2, 2, 212, '2022-02-22', '10:15:00'),
(261, 'Kohler LLC', 242, 256, 2, 3, 488, '2022-02-20', '02:37:22'),
(262, 'Roob Ltd', 304, 289, 2, 3, 110, '2022-01-31', '21:29:01'),
(263, 'Mills Ltd', 259, 268, 1, 3, 523, '2022-02-07', '00:18:44'),
(264, 'Cormier-Walsh', 323, 294, 2, 1, 465, '2022-02-14', '18:37:08'),
(265, 'VonRueden-Hill', 268, 260, 2, 2, 677, '2022-02-18', '10:51:22'),
(266, 'Kuhn, Lehner and Hahn', 338, 299, 1, 2, 423, '2022-02-17', '22:01:13'),
(267, 'Walter PLC', 262, 286, 1, 1, 720, '2022-01-30', '04:21:05'),
(268, 'Howell Group', 288, 214, 1, 1, 736, '2022-02-16', '10:33:32'),
(269, 'Casper, Beahan and Halvorson', 275, 272, 2, 3, 479, '2022-02-14', '06:19:53'),
(270, 'Walsh, Friesen and Hegmann', 276, 283, 2, 2, 385, '2022-02-14', '06:20:37'),
(271, 'Murphy-Parisian', 245, 276, 2, 3, 172, '2022-02-17', '07:04:26'),
(272, 'Schmidt, Kilback and Murphy', 306, 220, 2, 2, 282, '2022-01-31', '01:56:06'),
(273, 'Torp, Harvey and Bogisich', 308, 240, 1, 1, 717, '2022-02-11', '23:18:10'),
(274, 'Oberbrunner, Schowalter and Stokes', 247, 292, 2, 2, 376, '2022-02-09', '19:03:02'),
(275, 'Haag, Yundt and Roberts', 283, 216, 1, 1, 409, '2022-02-20', '13:12:13'),
(276, 'Kilback, Kiehn and Smitham', 275, 257, 2, 3, 284, '2022-02-09', '22:33:26'),
(277, 'Leffler and Sons', 279, 235, 2, 1, 638, '2022-02-07', '11:47:18'),
(278, 'Eichmann, Leffler and O\'Conner', 248, 292, 2, 1, 421, '2022-01-30', '23:27:31'),
(279, 'Hartmann-Beahan', 318, 256, 2, 2, 735, '2022-02-10', '14:18:56'),
(280, 'Schuppe LLC', 281, 210, 1, 3, 673, '2022-02-01', '10:09:16'),
(281, 'Conroy, Schaden and Gulgowski', 264, 223, 2, 1, 684, '2022-01-31', '10:39:51'),
(282, 'Hartmann, Dooley and Blick', 261, 231, 1, 2, 597, '2022-02-05', '15:17:51'),
(283, 'Marvin Ltd', 322, 275, 1, 1, 448, '2022-02-19', '18:39:14'),
(284, 'Dicki Ltd', 244, 236, 2, 2, 651, '2022-02-15', '11:40:10'),
(285, 'Lebsack PLC', 330, 201, 1, 1, 237, '2022-02-09', '11:21:32'),
(286, 'Welch, Towne and Jacobi', 272, 220, 2, 2, 509, '2022-02-10', '07:37:19'),
(287, 'Jones-Rippin', 267, 252, 2, 1, 354, '2022-02-20', '04:44:51'),
(288, 'Runte Inc', 297, 211, 1, 3, 696, '2022-02-10', '08:27:45'),
(289, 'Donnelly PLC', 246, 248, 2, 3, 490, '2022-01-29', '05:41:12'),
(290, 'Boehm Inc', 278, 255, 2, 1, 464, '2022-02-18', '01:32:16'),
(291, 'Torp and Sons', 327, 253, 2, 3, 151, '2022-02-01', '13:20:16'),
(292, 'Rath-McGlynn', 257, 293, 1, 1, 365, '2022-02-10', '16:13:35'),
(293, 'Mosciski-Lemke', 320, 282, 1, 2, 180, '2022-02-02', '22:49:07'),
(294, 'Bogisich-Mertz', 334, 236, 2, 2, 110, '2022-02-07', '05:12:22'),
(295, 'Fritsch, Hegmann and Reilly', 251, 232, 1, 1, 697, '2022-02-19', '23:05:51'),
(296, 'Howe PLC', 336, 285, 2, 2, 178, '2022-02-02', '02:34:47'),
(297, 'Willms, Ratke and Nader', 280, 218, 1, 1, 759, '2022-01-29', '02:10:40'),
(298, 'Lueilwitz-Armstrong', 251, 299, 1, 1, 684, '2022-02-19', '15:49:19'),
(299, 'Sanford-Bashirian', 317, 234, 2, 3, 190, '2022-02-10', '07:30:31'),
(300, 'Robel-Haag', 259, 263, 1, 3, 553, '2022-02-19', '05:30:30'),
(301, 'Schumm and Sons', 250, 206, 1, 1, 498, '2022-02-07', '03:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `tip`) VALUES
(1, 'Jednosmjerna'),
(2, 'Povratna');

-- --------------------------------------------------------

--
-- Table structure for table `upits`
--

CREATE TABLE `upits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Sabina', 'sabina.mulic@hotmail.com', NULL, '$2y$10$0QCKOLii.svgvUaJ.TvK5uuHrYhgFbVauxOtBff/Ll3MuIsKJQ.G6', NULL, NULL, NULL, NULL, NULL, '2022-01-18 10:57:10', '2022-01-18 10:57:10'),
(2, 'Ajdin Vojić', 'ajdinvojic39@gmail.com', NULL, '$2y$10$hTj.gk07Q0ZF3jWQR92wP.ftuR01bw3nuA6X1Xe2M3vZKP0Wxk.bu', NULL, NULL, NULL, NULL, NULL, '2022-01-24 00:13:27', '2022-01-24 00:13:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departures`
--
ALTER TABLE `departures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `klasas`
--
ALTER TABLE `klasas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passangers`
--
ALTER TABLE `passangers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_šifra_unique` (`šifra`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `starts`
--
ALTER TABLE `starts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_bar_kod_unique` (`bar_kod`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upits`
--
ALTER TABLE `upits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departures`
--
ALTER TABLE `departures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klasas`
--
ALTER TABLE `klasas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `passangers`
--
ALTER TABLE `passangers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `starts`
--
ALTER TABLE `starts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upits`
--
ALTER TABLE `upits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
