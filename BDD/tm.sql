-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 déc. 2021 à 13:37
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tm`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL,
  `NOM` char(15) DEFAULT NULL,
  `PRENOM` char(15) DEFAULT NULL,
  `LOGIN` char(20) DEFAULT NULL,
  `PASSWD` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID`, `NOM`, `PRENOM`, `LOGIN`, `PASSWD`) VALUES
(1, 'Diakite', 'Oumar', 'admin', 'admin'),
(2, 'Azar', 'afrid', 'admin', 'admin'),
(3, 'Boushabi', 'Souleyman', 'admin', 'admin'),
(4, 'Bouziane', 'Younes', 'Admin', 'Admin'),
(5, 'Bounnit', 'ayman', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `ID` int(2) NOT NULL,
  `NOM` text NOT NULL,
  `PRENOM` text NOT NULL,
  `PHOTO` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `coach`
--

INSERT INTO `coach` (`ID`, `NOM`, `PRENOM`, `PHOTO`) VALUES
(1, 'Yanis', 'Kella', 'None'),
(2, 'Kim ', 'Ji-hwan', 'None'),
(3, 'Kim ', 'Jeong-gyun', 'None'),
(4, 'Yang', 'Ji-Song', 'None'),
(5, 'Go', 'Dong-bin', 'None'),
(6, 'James', 'MacCormack', 'None'),
(7, 'Wong', 'Pak Kan', 'None'),
(8, 'Kim', 'Yeu-jin', 'None'),
(9, 'Son', 'Dae-young', 'None'),
(10, 'Simon', 'Payne', 'None'),
(11, 'Alexander', 'Cartwright', 'None'),
(12, 'Jakob', 'Mebdi', 'None'),
(13, 'Mateusz', 'Borkowski', 'None'),
(14, 'Fabian', 'Lohmann', 'None'),
(15, 'Gonçalo', 'Brandão', 'None'),
(16, 'Adrian', 'Dziadkowiec', 'None'),
(17, 'Romain', 'Melaye', 'None'),
(18, 'Soren', 'Bjerg', 'None'),
(19, 'Bok', 'BjergHan-gyu', 'None'),
(20, 'Gabriel', 'Zoltan-Johan', 'None'),
(21, 'André', 'Guilhoto', 'None'),
(22, 'Peter', 'Dun', 'None'),
(23, 'Bae', 'Ji-hun', 'None'),
(24, 'Wang', 'Liang-Yi', 'None');

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
CREATE TABLE IF NOT EXISTS `equipe` (
  `ID` int(2) NOT NULL,
  `IDmanager` int(2) NOT NULL,
  `IDcoach` int(2) NOT NULL,
  `IDniveau` int(1) NOT NULL,
  `NOM` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `LOGO` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_equipe_manager` (`IDmanager`),
  KEY `fk_equipe_coach` (`IDcoach`),
  KEY `IDniveau` (`IDniveau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`ID`, `IDmanager`, `IDcoach`, `IDniveau`, `NOM`, `DESCRIPTION`, `LOGO`) VALUES
(1, 1, 1, 1, 'Kcorp', 'La Karmine Corp (surnommée KCorp) est une structure française centrée autour d\'une équipe esport immatriculée à Tours1 et basée à Paris2. Elle est formée le 30 mars 2020 sous le nom de Kameto Corp par le duo de streamers francophones Kamel \"Kameto\" Kebir et Zouhair \"Kotei\" Darji', ''),
(2, 2, 2, 1, 'T1', 'T1 (anciennement connue sous le nom de SK Telecom T1 ou SKT T1) est une équipe d\'esports sud-coréenne exploitée par T1 Entertainment & Sports, une coentreprise entre SK Telecom et Comcast Spectacor', ''),
(3, 3, 3, 2, 'DWG', 'DWG KIA, aussi appelée DAMWON KIA, est une organisation esport coréenne. Leur équipe de League of Legends joue en LCK, la plus haute ligue en Corée du Sud', ''),
(4, 4, 4, 2, 'Edward gaming', 'L\'équipe League of Legends d\'EDG participe à la League of Legends Pro League (LPL) et joue des matchs à domicile au parc industriel électrique de Shanghai. C\'est la seule équipe LPL à avoir remporté à la fois le Mid-Season Invitational et le Championnat du monde, respectivement en 2015 et 2021.', ''),
(5, 5, 5, 3, 'Gen.g', 'Gen.G Esports, parfois abrégé en Gen.G, (anciennement connu sous le nom de KSV eSports) est une organisation professionnelle mondiale d\'esports. Ils ont été classés n ° 6 dans la liste Forbes 2020 des entreprises d\'esports les plus précieuses au monde.', ''),
(6, 6, 6, 3, 'Mad lion', 'MAD Lions est une équipe espagnole. Ils étaient auparavant connus sous le nom de Splyce. Pour l\'équipe LVP SLO du même nom, maintenant connue sous le nom de MAD Lions Madrid', ''),
(7, 7, 7, 3, 'Royal never give up', 'Royal Never Give Up est une équipe chinoise, formée par l\'organisation Royal Club après la relégation du Star Horn Royal Club de la LPL', ''),
(8, 8, 8, 1, 'Cloud 9', 'Cloud9 (C9) est une équipe d\'esports nord-américaine formée par l\'ancien roster de Quantic Gaming suite à sa dissolution. Outre League of Legends, l\'organisation possède également des divisions pour DotA 2, COD, Hearthstone, Super Smash Bros, Counter Strike : Global Offensive, Overwatch et Vainglory.', ''),
(9, 9, 9, 3, 'Hanwha life esport', 'Hanwha Life Esports (HLE) est une organisation sud-coréenne d\'esports basée à Séoul, détenue par Hanwha Life Insurance. Il a des équipes en compétition dans League of Legends et Kart Rider, les premières participant à la LCK, la ligue professionnelle de haut niveau de Corée du Sud pour le jeu.', ''),
(10, 10, 10, 1, 'rogue', 'Rogue est une organisation américaine connue pour ses équipes Counter-Strike: Global Offensive et Rainbow Six Siege. En 2018, la rumeur disait que l\'organisation rejoignait les LCS de l\'UE dans le cadre du programme de franchise européen 2019.', ''),
(11, 11, 11, 1, 'Misfits gaming', 'Misfits Gaming est une organisation professionnelle d\'e-sport basée au Royaume-Uni qui possède actuellement des équipes dans les jeux League of Legends, Call of Duty ainsi qu\' Overwatch. Elle a commencé à l\'origine comme une équipe de League of Legends et a été fondée le 18 mai 2016.', ''),
(12, 12, 12, 1, 'fanatic', 'Fnatic est une organisation professionnelle d\'esports composée de joueurs du monde entier à travers une variété de jeux.', ''),
(13, 13, 13, 1, 'Vitality', 'Team Vitality a formé son équipe League of Legends en décembre 2015 en tant que première expansion dans le jeu sur PC, en acquérant la graine EU LCS Spring 2016 de Gambit Gaming.', ''),
(14, 14, 14, 1, 'G2 esport', 'G2 Esports s\'est rebaptisé Gamers2 en octobre 2015, après s\'être qualifié pour les LCS de l\'UE. En plus du changement de marque, l\'équipe a changé plusieurs positions dans sa liste : de Smittyj, Kikis, PerkZ, Jesse et Hybrid comme liste de qualification, G2 Esports a déplacé Kikis sur la voie du haut et a ajouté les joueurs coréens Trick et Emperor.', ''),
(15, 15, 15, 3, 'Ucam esport', 'UCAM Esports Club est le résultat de l\'union de deux projets avec une longue histoire. D\'une part, les Pingouins, l\'un des clubs les plus charismatiques et les plus appréciés de la scène compétitive nationale, qui depuis 2015 marque une tendance à la hausse et d\'autre part, la Chaire internationale UCAM Esports, un programme académique dans lequel Ils développent recherche et formation dans tous les domaines appliqués à l\'esport.', ''),
(16, 16, 16, 3, 'pdw', 'PDW is a Polish team. They were previously known as Pompa Team and 7more7, before rebranding in May 2021. ', ''),
(17, 17, 17, 2, 'solary', 'Solary est une organisation française basée à Tours. Ils sont surtout connus pour leur « Web TV » et pour héberger plusieurs personnalités et streamers français dans leurs rangs. Ils sont l\'équipe principale de Team Eclypse et Lunary.', ''),
(18, 18, 18, 3, 'tsm', 'Résultat de recherche d\'images pour \"tsm lol description\" Team SoloMid (TSM), officiellement Team SoloMid FTX, est une organisation américaine de sport électronique notamment connue pour son équipe de League of Legends. Elle a été créée en septembre 2009 par Andy « Reginald »', ''),
(19, 19, 19, 2, '100 thieves', '100 Thieves, LLC is an American lifestyle brand and gaming organization based in Los Angeles, California. The organization has teams competing in several video games, including Apex Legends, Call of Duty, Call of Duty: Warzone, Fortnite Battle Royale, League of Legends and Valorant. The Thieves\' League of Legends team is a franchise team of the League of Legends Championship Series (LCS) and the Call of Duty team has a franchise team in Call of Duty League branded as the Los Angeles Thieves', ''),
(20, 20, 20, 2, 'immortals', 'Immortals est une organisation professionnelle d\'esports basée aux États-Unis et détenue par Immortals Gaming Club. Elle a été fondée le 7 octobre 2015, après l\'acquisition du spot LCS de Team 8.', ''),
(21, 21, 21, 2, 'Team liquides', 'Team Liquid est une organisation d\'équipe multi-jeux qui a été fondée aux Pays-Bas en 2000 en tant qu\'équipe StarCraft: Brood War. En janvier 2015, ils ont fusionné avec Team Curse (pas l\'organisation Curse Gaming).', ''),
(22, 22, 22, 3, 'Evil geniuses', 'Fondée en 1999, Evil Geniuses est une organisation d\'esports nord-américaine et l\'une des plus anciennes au monde, qui compte une collection de joueurs/équipes sur une multitude de jeux tels que : Counter Strike 1.6, Counter Strike ; Global Offensive, DotA 2, League of Legends, Quake Live, StarCraft II, Super Street Fighter IV et World of Warcraft. À la fin de 2012 et au début de 2013, l\'équipe EG avait commencé à chercher une liste à soutenir sur la scène de League of Legends.', ''),
(23, 23, 23, 2, 'Nongshime redforce', 'Nongshim RedForce  est une équipe coréenne appartenant à l\'entreprise de restauration Nongshim. Ils étaient auparavant connus sous le nom de Team Dynamics.', ''),
(24, 24, 24, 2, 'LNG esport', 'NG Esports, anciennement connu sous le nom de Snake Esports, est une organisation professionnelle chinoise d\'esports basée à Suzhou. Son équipe League of Legends participe à la League of Legends Pro League (LPL), la ligue de haut niveau pour le jeu en Chine, et joue des matchs à domicile au Yangcheng International Esports Center à Suzhou.', '');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `IDequipe` int(2) NOT NULL,
  `PHOTO` text COLLATE utf8_bin,
  `PSEUDO` text COLLATE utf8_bin NOT NULL,
  `NOM` text COLLATE utf8_bin NOT NULL,
  `PRENOM` text COLLATE utf8_bin NOT NULL,
  `POSTE` text COLLATE utf8_bin NOT NULL,
  `LOGIN` text COLLATE utf8_bin NOT NULL,
  `PASSWD` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_joueur_equipe` (`IDequipe`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`ID`, `IDequipe`, `PHOTO`, `PSEUDO`, `NOM`, `PRENOM`, `POSTE`, `LOGIN`, `PASSWD`) VALUES
(1, 1, 'None', 'Cabochard', 'Simon-Meslet', 'Lucas', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(2, 2, 'None', 'Zeus', 'Woo-je', 'Choi', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(3, 3, 'None', 'Burdol', 'Tae-yoon', 'Noh', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(4, 4, 'None', 'Flandre', 'Xuanjun', 'Li', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(5, 5, 'None', 'Doran', 'Hyeon-joon', 'Choi', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(6, 6, 'None', 'Armut', 'İrfan-Berk', 'Tükek', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(7, 7, 'None', 'Xiaohu', 'Yuanhao', 'Li', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(8, 8, 'None', 'Summit', 'Woo-tae', 'Park', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(9, 9, 'None', 'Morgan', 'Dong-ju', 'Lee', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(10, 10, 'None', 'Odoamne', 'Pascul', 'Andrei', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(11, 11, 'None', 'Alphari', 'Morris', 'Barney', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(12, 12, 'None', 'Adam', 'Adam', 'Maanane', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(13, 13, 'None', 'SLT', 'Gonzalez', 'Enzo', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(14, 14, 'None', 'Wunder', 'Hansen', 'Martin', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(15, 15, 'None', 'Dreedy', 'Viceník', 'Jakub', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(16, 16, 'None', 'Color', 'Czyżyk', 'Sebastian', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(17, 17, 'None', 'Eyliph', 'Robert', 'Cédric', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(18, 18, 'None', 'Huni', 'Seung-hoon', 'Heo', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(19, 19, 'None', 'Ssumday', 'Chan-ho', 'Kim', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(20, 20, 'None', 'Revenge', 'Mohamed', 'Kaddoura', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(21, 21, 'None', 'Alphari', 'Morris', 'Barney', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(22, 22, 'None', 'Impact', 'Eon-Young', 'Jeong', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(23, 23, 'None', 'Canna', 'Chang-dong', 'Kim', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(24, 24, 'None', 'BoWen', 'Yuan', 'Zhang', 'TOPLANER', 'JOUEUR', 'JOUEUR'),
(25, 1, 'None', '113', 'Balcı', 'Doğukan', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(26, 2, 'None', 'Oner', 'Hyeon-joon', 'Moon', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(27, 3, 'None', 'Canyon', 'Geon-bu', 'Kim', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(28, 4, 'None', 'Jiejie', 'Lijie', 'Zhao', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(29, 5, 'None', 'Peanut', 'Wang-ho', 'Han', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(30, 6, 'None', 'Ely', 'Javier-Prades', 'alla', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(31, 7, 'None', 'Wei', 'Yangwei', 'Yan', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(32, 8, 'None', 'Blader', 'Robert', 'Huang', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(33, 9, 'None', 'Willer', 'Jeong-hyeon', 'Kim', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(34, 10, 'None', 'Inspired', 'Słoma', 'Kacper', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(35, 11, 'None', 'Wisdom', 'Tae-wan', 'Kim', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(36, 12, 'None', 'Bwipo', 'Gabriël', 'Rau', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(37, 13, 'None', 'Selfmade', 'Boderek', 'Oskar', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(38, 14, 'None', 'Jankos', 'Jankowski', 'Marcin', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(39, 15, 'None', 'Hades', 'Jonker', 'Maik', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(40, 16, 'None', 'Bruness', 'Freund', 'Bruno', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(41, 17, 'None', 'Djoko', 'Guillard', 'Charly', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(42, 18, 'None', 'Spica', 'Mingyi', 'Lu', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(43, 19, 'None', 'Closer', 'Can', 'Çelik', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(44, 20, 'None', 'Xerxe', 'Andrei', 'Dragomir', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(45, 21, 'None', 'Santorin', 'Tao-Kilmer', 'Lucas', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(46, 22, 'None', 'Contractz', 'Arturo-Garcia', 'Juan', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(47, 23, 'None', 'Dread', 'Jin-hyeok', 'Lee', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(48, 24, 'None', 'Beige', 'Long', 'Chen', 'JUNGLER', 'JOUEUR', 'JOUEUR'),
(49, 1, 'None', 'Saken', 'Fayard', 'Lucas', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(50, 2, 'None', 'Faker', 'Sang-hyeok', 'Lee', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(51, 3, 'None', 'ShowMaker', 'Su', 'Heo', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(52, 4, 'None', 'Scout', 'Ye-chan', 'Lee', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(53, 5, 'None', 'Chovy', 'Ji-hoon', 'Jeong', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(54, 6, 'None', 'Humanoid', 'Marek', 'Brázda', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(55, 7, 'None', 'Cryin', 'Chengwei', 'Yuan', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(56, 8, 'None', 'Fudge', 'Ibrahim', 'Allami', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(57, 9, 'None', 'Chovy', 'Ji-hoon', 'Jeong', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(58, 10, 'None', 'Larssen', 'Larsson', 'Emil', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(59, 11, 'None', 'SELFIE', 'Wolski', 'Marcin', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(60, 12, 'None', 'Nisqy', 'Yasin', 'Dinçer', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(61, 13, 'None', 'LIDER', 'Ilyasov', 'Adam', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(62, 14, 'None', 'Caps', 'Winther', 'Rasmus', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(63, 15, 'None', 'Baca', 'Novais-Bigas', 'João-Miguel', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(64, 16, 'None', 'Czajek', 'Czajka', 'Mateusz', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(65, 17, 'None', 'Scarlet', 'Wiederhofer', 'Marcel', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(66, 18, 'None', 'PowerOfEvil', 'Tristan', 'Schrage', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(67, 19, 'None', 'Abbedagge', 'Felix', 'Braun', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(68, 20, 'None', 'Insanity', 'David', 'Challe', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(69, 21, 'None', 'Jensen', 'Jensen', 'Nicolaj', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(70, 22, 'None', 'Jiizuke', 'Di-Mauro', 'Daniele', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(71, 23, 'None', 'Bdd', 'Bo-seong', 'Gwak', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(72, 24, 'None', 'Erha', 'Xu-Ye', 'Shi', 'MIDLANER', 'JOUEUR', 'JOUEUR'),
(73, 1, 'None', 'Rekkles', 'Larsson', 'Martin', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(74, 2, 'None', 'Gumayusi', 'Min-hyeong', 'Lee', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(75, 3, 'None', 'deokdam', 'Dae-gil', 'Seo', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(76, 4, 'None', 'Viper', 'Do-hyeon', 'Park', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(77, 5, 'None', 'Ruler', 'Jae-hyuk', 'Park', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(78, 6, 'None', 'Carzzy', 'Matyáš', 'Orság', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(79, 7, 'None', 'GALA', 'Wei', 'Chen', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(80, 8, 'None', 'Berserker', 'Min-cheol', 'Kim', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(81, 9, 'None', 'Deft', 'Hyuk-kyu', 'Kim', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(82, 10, 'None', 'Hanssama', 'Liv', 'Steven', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(83, 11, 'None', 'Yuuki60', 'Soler', 'Florent', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(84, 12, 'None', 'Bean', 'Louis', 'Schmitz', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(85, 13, 'None', 'Comp', 'Stamkopoulos', 'Markos', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(86, 14, 'None', 'Rekkles', 'Larsson', 'Martin', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(87, 15, 'None', 'Raffita', 'Ayllón-Zapata', 'Rafa', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(88, 16, 'None', 'Odi11', 'Kruk', 'Adrian', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(89, 17, 'None', 'Asza', 'Jacobs', 'Patrick', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(90, 18, 'None', 'Lost', 'Lawrence', 'Hui', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(91, 19, 'None', 'FBI', 'Ian-Victor', 'Huang', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(92, 20, 'None', 'Raes', 'Quin', 'Korebrits', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(93, 21, 'None', 'Tactical', 'Ra', 'Edward', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(94, 22, 'None', 'Danny', 'Sakamaki', 'Kyle', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(95, 23, 'None', 'Ghost', 'Yong-jun', 'Jang', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(96, 24, 'None', 'Uneasy', 'Xu-Chun', 'Liu', 'BOTLANER', 'JOUEUR', 'JOUEUR'),
(97, 1, 'None', 'Hantera', 'Bourgeois', 'Jules', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(98, 2, 'None', 'Keria', 'Min-seok', 'Ryu', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(99, 3, 'None', 'Kellin', 'Hyeong-gyu', 'Kim', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(100, 4, 'None', 'Meiko', 'Ye', 'Tian', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(101, 5, 'None', 'Lehends', 'Si-woo', 'Son', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(102, 6, 'None', 'Kaiser', 'Norman', 'Kaiser', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(103, 7, 'None', 'Ming', 'Senming', 'Shi', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(104, 8, 'None', 'Winsome', 'Dong-keon', 'Kim', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(105, 9, 'None', 'Vsta', 'Hyo-seong', 'Oh', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(106, 10, 'None', 'Trymbi', 'Trybus', 'Adrian', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(107, 11, 'None', 'Dreams', 'Min-kook', 'Han', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(108, 12, 'None', 'Hylissang', 'Zdravets', 'Galabov', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(109, 13, 'None', 'Labrov', 'Papoutsakis', 'Labros', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(110, 14, 'None', 'Mikyx', 'Mehle', 'Mihael', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(111, 15, 'None', 'Hantera', 'Bourgeois', 'Jules', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(112, 16, 'None', 'KubYD', 'Grobelny', 'Jakub', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(113, 17, 'None', 'Steeelback', 'Medjaldi', 'Pierre', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(114, 18, 'None', 'SwordArt', 'Shuo-chieh', 'Hu', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(115, 19, 'None', 'Huhi', 'Jae-hyun', 'Choi', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(116, 20, 'None', 'Destiny', 'Mitchell', 'Shaw', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(117, 21, 'None', 'CoreJJ', 'Yong-in', 'Jo', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(118, 22, 'None', 'IgNar', 'Dong-geun', 'Lee', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(119, 23, 'None', 'Effort', 'Sang-ho', 'Lee', 'SUPPORT', 'JOUEUR', 'JOUEUR'),
(120, 24, 'None', 'feeling', 'Jin-Yuan', 'Lin', 'SUPPORT', 'JOUEUR', 'JOUEUR');

-- --------------------------------------------------------

--
-- Structure de la table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `ID` int(2) NOT NULL,
  `PHOTO` text NOT NULL,
  `NOM` text NOT NULL,
  `PRENOM` text NOT NULL,
  `LOGIN` text NOT NULL,
  `PASSWD` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `manager`
--

INSERT INTO `manager` (`ID`, `PHOTO`, `NOM`, `PRENOM`, `LOGIN`, `PASSWD`) VALUES
(1, 'None', 'Rehareha', 'Ramanana', 'manager', 'manager'),
(2, 'None', 'Choi', 'Seong-hun', 'manager', 'manager'),
(3, 'None', 'Choi', 'Seon-ah', 'manager', 'manager'),
(4, 'None', 'Ji', 'Xing', 'manager', 'manager'),
(5, 'None', 'Lee', 'Seung-hoo', 'manager', 'manager'),
(6, 'None', 'Alexander', 'Spelda', 'manager', 'manager'),
(7, 'None', 'Li', 'Ming-Xiao', 'manager', 'manager'),
(8, 'None', 'Vincent', 'Lewis', 'manager', 'manager'),
(9, 'None', 'Park', 'Chan-hyeok', 'manager', 'manager'),
(10, 'None', 'Alexandra', 'Hehn', 'manager', 'manager'),
(11, 'None', 'Andy', 'Walda', 'manager', 'manager'),
(12, 'None', 'Chris', 'Österreicher', 'manager', 'manager'),
(13, 'None', 'Dennis', 'Hennersdorf', 'manager', 'manager'),
(14, 'None', 'Christopher', 'Duff', 'manager', 'manager'),
(15, 'None', 'Alberto', 'Yañez', 'manager', 'manager'),
(16, 'None', 'Olimpia', 'Cichosz', 'manager', 'manager'),
(17, 'None', 'Diego', 'Mamés Andres', 'manager', 'manager'),
(18, 'None', 'Jack', 'Etienne', 'manager', 'manager'),
(19, 'None', 'Christopher', 'Smith', 'manager', 'manager'),
(20, 'None', 'Mike', 'Schwartz', 'manager', 'manager'),
(21, 'None', 'Kang', 'Jun-hyeok', 'manager', 'manager'),
(22, 'None', 'Andrew', 'Barton', 'manager', 'manager'),
(23, 'None', 'Cha', 'Min-kyu', 'manager', 'manager'),
(24, 'None', 'Wang', 'Miao', 'manager', 'manager');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `ID` int(1) NOT NULL,
  `NOM` varchar(17) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`ID`, `NOM`) VALUES
(1, 'Tournoi Mondial'),
(2, 'Tournoi National'),
(3, 'Tournoi Regional');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_equipe_coach` FOREIGN KEY (`IDcoach`) REFERENCES `coach` (`ID`),
  ADD CONSTRAINT `fk_equipe_manager` FOREIGN KEY (`IDmanager`) REFERENCES `manager` (`ID`),
  ADD CONSTRAINT `fk_equipe_niveau` FOREIGN KEY (`IDniveau`) REFERENCES `niveau` (`ID`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `fk_joueur_equipe` FOREIGN KEY (`IDequipe`) REFERENCES `equipe` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
