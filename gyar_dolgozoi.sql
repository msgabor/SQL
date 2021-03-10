CREATE DATABASE gyar_dolgozoi;
USE gyar_dolgozoi;


-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Jan 27. 16:35
-- Szerver verzió: 5.6.21
-- PHP verzió: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `gyar_dolgozoi`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auto`
--

CREATE TABLE IF NOT EXISTS `auto` (
  `rendszam` varchar(6) NOT NULL,
  `tipus` varchar(20) NOT NULL,
  `szin` varchar(10) NOT NULL,
  `ajtok_szama` int(11) NOT NULL,
  `gyartas_datuma` date NOT NULL,
  `eladas_datuma` date NOT NULL,
  `utalo_fel_neve` varchar(41) NOT NULL,
  `utalo_fel_szamlaszama` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `auto`
--

INSERT INTO `auto` (`rendszam`, `tipus`, `szin`, `ajtok_szama`, `gyartas_datuma`, `eladas_datuma`, `utalo_fel_neve`, `utalo_fel_szamlaszama`) VALUES
('ABC321', 'Trabant', 'piros', 2, '1985-04-05', '1987-05-05', 'Trab Antal', 'HU987654321'),
('CDA111', 'Mazda', 'szürke', 2, '2005-10-14', '2005-10-14', 'Alka Ida', 'HU911911911'),
('FGH167', 'Citroen', 'kék', 5, '2007-04-11', '2009-06-03', 'Fá Zoltán', 'HU987789987'),
('GHJ456', 'Murcialago', 'fehér', 2, '2011-05-05', '2012-01-01', 'Békés Csaba', 'HU123123710'),
('HNF567', 'BMW', 'fekete', 2, '2012-06-07', '2012-06-07', 'Fül Elek', 'HU123321123'),
('LKI154', 'Lamborgini', 'rózsaszín', 2, '2010-11-14', '2011-10-10', 'Csecs Emoke', 'HU123412340'),
('LNK425', 'Mercedes', 'szürke', 4, '2004-03-02', '2005-06-07', 'Elv Erik', 'HU523828274'),
('NFS111', 'BMW', 'fekete', 2, '2012-06-07', '2012-06-07', 'Bármi Áron', 'HU987656789'),
('NFS222', 'Ferrari', 'fehér', 2, '2014-08-10', '2015-02-11', 'Citad Ella', 'HU161616161'),
('TSR123', 'Opel', 'zöld', 4, '2001-02-04', '2004-05-07', 'Víz Elek', 'HU896987669'),
('XYZ123', 'Opel', 'ezüst', 4, '2009-03-15', '2010-04-21', 'Kis Pista', 'HU123456789'),
('ZSE456', 'BMW', 'piros', 4, '2004-02-01', '2004-02-01', 'Dil Emma', 'HU989777666');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`id` int(11) NOT NULL,
  `vezeteknev` varchar(20) NOT NULL,
  `keresztnev` varchar(20) NOT NULL,
  `varos` varchar(30) NOT NULL,
  `iranyitoszam` int(4) NOT NULL,
  `lakcim` varchar(40) NOT NULL,
  `e_bank_felhasznalonev` varchar(20) NOT NULL,
  `e_bank_jelszo` varchar(20) NOT NULL,
  `szamlaszam` varchar(11) NOT NULL,
  `egyenleg` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `bank`
--

INSERT INTO `bank` (`id`, `vezeteknev`, `keresztnev`, `varos`, `iranyitoszam`, `lakcim`, `e_bank_felhasznalonev`, `e_bank_jelszo`, `szamlaszam`, `egyenleg`) VALUES
(1, 'Kis', 'Pista', 'Budapest', 1173, '500. utca/3', 'kpista', 'kpista', 'HU123456789', 54000),
(2, 'Trab', 'Antal', 'Veszprém', 8200, 'Loczy Lajos utca 23/2', 'tantal', 'latnat', 'HU111111111', 1300),
(3, 'Dia', 'Dóra', 'Veszprém', 8200, 'Ady Endre utca 72/A 3/15', 'dorcs', 'valamijelszo', 'HU987654321', 2143695),
(4, 'Alka', 'Ida', 'Karacsi', 1234, '', 'alkaida', 'USA<3', 'HU911911911', -4500),
(5, 'Aloe', 'Vera', 'Kaposvár', 5112, 'Szt. István utca 21', 'aloe12', 'aloe12', 'HU555444333', 512345),
(6, 'Csokoló', 'Zoltán', 'Veszprém', 8200, 'Akácfa utca 23', 'szintenzoltan12', 'vakond', 'HU111222323', 112000),
(7, 'Dil', 'Emma', 'Budapest', 1152, 'Blaha..tér', 'dilemma', 'dilemma', 'HU989777666', 10000000),
(8, 'Fá', 'Zoltán', 'Budapest', 1212, 'Mátyásföldi utca 12', 'faszen', 'jelszo', 'HU987789987', 1234567),
(9, 'Fül', 'Elek', 'Sopron', 9760, 'Mátyás király utca 15', 'radar', 'radar', 'HU123321123', 123456),
(10, 'Bármi', 'Áron', 'Szeged', 8765, 'Valami szegedi utca 12', 'bari', 'nemszeretemakrumplit', 'HU987656789', 14000),
(11, 'Citad', 'Ella', 'Adorjánháza', 8497, 'Petofi Sándor utca 14', 'citadella1', 'citadella', 'HU161616161', 3200),
(12, 'Bubo', 'Réka', 'Adorjánháza', 8497, 'Ady Endre utca 12', 'boborék', 'buborék', 'HU989898123', 5675675),
(13, 'Dekk', 'Elek', 'Nyíregyháza', 7654, 'Adorján utca 13', 'rampant', '123456789', 'HU123123456', 564),
(14, 'Csizma', 'Dia', 'Veszprém', 8200, 'Kossuth Lajos utca 14', 'csizma', 'dia', 'HU956894374', 5545),
(15, 'Vak', 'Ond', 'Érd', 6732, 'Damjanics utca 21/B 1/3', 'vakondok', 'vakond', 'HU563858274', 5469870),
(16, 'Víz', 'Elek', 'Várpalota', 8115, 'Andrásy út 13', 'elekvagyok12', 'valamjels', 'HU896987669', 9876543),
(17, 'Citad', 'Ella', 'Adorjánháza', 8497, 'Petofi Sándor utca 14', 'citadella2', 'citadella', 'HU171717171', 3200),
(18, 'Pum', 'Pál', 'Solt', 7623, 'Valami solti utca 13', 'Timon', 'éspumba', 'HU012345678', 987654),
(19, 'Riz', 'Ottó', 'Szentes', 6432, '', 'rizotto', 'ottozir', 'HU876543210', 5743),
(20, 'Rúgka', 'Pál', 'Kecskemét', 6752, 'Puzsér utca 32', 'rugkapal', 'nemmondommeg', 'HU023456789', 564665),
(21, 'Roz', 'Márta', 'Eger', 5454, 'Valami egri utca 15', 'rozmár', 'rozmártavagyook11', 'HU034567891', 0),
(22, 'Pál', 'Inka', 'Paks', 3200, 'Aradi utca 14/2', 'részegvagyok', 'nemis', 'HU123450089', 96785),
(23, 'Mor', 'Zsolt', 'Mór', 6549, 'Mór Zsolt utca 56/B 3/14', 'morzsolti13', '74benszulettem', 'HU123450088', 1234569),
(24, 'Pop', 'Simon', 'Békéscsaba', 1322, 'Valami békéscsabai utca 16', 'simonmondja', 'forogjkörbekörbe', 'HU001100116', 5432),
(25, 'Negye', 'Dóra', 'Zalaegerszeg', 7654, 'Dugovics utca 14', 'negyedóra', 'vanvissza', 'HU100456789', 54235),
(26, 'Para', 'Zita', 'Gyor', 9854, 'Petofi Sándor utca 54', 'virus12', 'virus34', 'HU987654001', 100000),
(27, 'Bac', 'Ilus', 'Siófok', 8300, 'Valami Siófoki utca 11', 'virus13', 'virus35', 'HU987654300', 60500),
(28, 'Tra', 'Pista', 'Hódmezovásárhely', 7650, 'Petofi Sándor út 9', 'trapista', 'sajt', 'HU765432198', 255005),
(29, 'Terp', 'Eszti', 'Zalaegerszeg', 9812, 'Valami zalaegreszegi út 5', 'terpeszt', 'ugysemmondommeg', 'HU006600991', 12500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
 ADD PRIMARY KEY (`rendszam`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
