-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 26 fév. 2018 à 11:22
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `smartforms`
--

-- --------------------------------------------------------

--
-- Structure de la table `campagne`
--

CREATE TABLE `campagne` (
  `ID_Camp` int(11) NOT NULL,
  `Nom` varchar(200) NOT NULL,
  `Desc` text NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `experimentateur/campagne`
--

CREATE TABLE `experimentateur/campagne` (
  `ID_Ut` int(11) NOT NULL,
  `ID_Camp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire/campagne`
--

CREATE TABLE `questionnaire/campagne` (
  `ID_Camp` int(11) NOT NULL,
  `ID_Quest_AD` int(11) NOT NULL,
  `ID_Quest_SUS` int(11) NOT NULL,
  `ID_Quest_N-TLX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire ad`
--

CREATE TABLE `questionnaire ad` (
  `ID_Quest_AD` int(11) NOT NULL,
  `AD_Question 1` int(11) NOT NULL,
  `AD_Question 2` int(11) NOT NULL,
  `AD_Question 3` int(11) NOT NULL,
  `AD_Question 4` int(11) NOT NULL,
  `AD_Question 5` int(11) NOT NULL,
  `AD_Question 6` int(11) NOT NULL,
  `AD_Question 7` int(11) NOT NULL,
  `AD_Question 8` int(11) NOT NULL,
  `AD_Question 9` int(11) NOT NULL,
  `AD_Question 10` int(11) NOT NULL,
  `AD_Question 11` int(11) NOT NULL,
  `AD_Question 12` int(11) NOT NULL,
  `AD_Question 13` int(11) NOT NULL,
  `AD_Question 14` int(11) NOT NULL,
  `AD_Question 15` int(11) NOT NULL,
  `AD_Question 16` int(11) NOT NULL,
  `AD_Question 17` int(11) NOT NULL,
  `AD_Question 18` int(11) NOT NULL,
  `AD_Question 19` int(11) NOT NULL,
  `AD_Question 20` int(11) NOT NULL,
  `AD_Question 21` int(11) NOT NULL,
  `AD_Question 22` int(11) NOT NULL,
  `AD_Question 23` int(11) NOT NULL,
  `AD_Question 24` int(11) NOT NULL,
  `AD_Question 25` int(11) NOT NULL,
  `AD_Question 26` int(11) NOT NULL,
  `AD_Question 27` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire n-tlx`
--

CREATE TABLE `questionnaire n-tlx` (
  `ID_Quest_N-TLX` int(11) NOT NULL,
  `N-TLX_Question 1` int(11) NOT NULL,
  `N-TLX_Question 2` int(11) NOT NULL,
  `N-TLX_Question 3` int(11) NOT NULL,
  `N-TLX_Question 4` int(11) NOT NULL,
  `N-TLX_Question 5` int(11) NOT NULL,
  `N-TLX_Question 6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire sus`
--

CREATE TABLE `questionnaire sus` (
  `ID_Quest_SUS` int(11) NOT NULL,
  `SUS_Question 1` int(11) NOT NULL,
  `SUS_Question 2` int(11) NOT NULL,
  `SUS_Question 3` int(11) NOT NULL,
  `SUS_Question 4` int(11) NOT NULL,
  `SUS_Question 5` int(11) NOT NULL,
  `SUS_Question 6` int(11) NOT NULL,
  `SUS_Question 7` int(11) NOT NULL,
  `SUS_Question 8` int(11) NOT NULL,
  `SUS_Question 9` int(11) NOT NULL,
  `SUS_Question 10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_Ut` int(11) NOT NULL,
  `Mail_Ut` varchar(50) NOT NULL,
  `MDP_Ut` varchar(50) NOT NULL,
  `Droits` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur/campagne`
--

CREATE TABLE `utilisateur/campagne` (
  `ID_Ut` int(11) NOT NULL,
  `ID_Quest_AD` int(11) NOT NULL,
  `ID_Quest_SUS` int(11) NOT NULL,
  `ID_Quest_N-TLX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `campagne`
--
ALTER TABLE `campagne`
  ADD PRIMARY KEY (`ID_Camp`);

--
-- Index pour la table `experimentateur/campagne`
--
ALTER TABLE `experimentateur/campagne`
  ADD KEY `ClefUt` (`ID_Ut`),
  ADD KEY `ClefCamp` (`ID_Camp`);

--
-- Index pour la table `questionnaire/campagne`
--
ALTER TABLE `questionnaire/campagne`
  ADD KEY `Clef_Camp` (`ID_Camp`),
  ADD KEY `ClefQuestAD` (`ID_Quest_AD`),
  ADD KEY `ClefQuestSUS` (`ID_Quest_SUS`),
  ADD KEY `ClefQuestNTLX` (`ID_Quest_N-TLX`);

--
-- Index pour la table `questionnaire ad`
--
ALTER TABLE `questionnaire ad`
  ADD PRIMARY KEY (`ID_Quest_AD`);

--
-- Index pour la table `questionnaire n-tlx`
--
ALTER TABLE `questionnaire n-tlx`
  ADD PRIMARY KEY (`ID_Quest_N-TLX`);

--
-- Index pour la table `questionnaire sus`
--
ALTER TABLE `questionnaire sus`
  ADD PRIMARY KEY (`ID_Quest_SUS`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_Ut`);

--
-- Index pour la table `utilisateur/campagne`
--
ALTER TABLE `utilisateur/campagne`
  ADD KEY `Clef_Ut` (`ID_Ut`),
  ADD KEY `Clef_Quest_AD` (`ID_Quest_AD`),
  ADD KEY `Clef_Quest_SUS` (`ID_Quest_SUS`),
  ADD KEY `Clef_Quest_N-TLX` (`ID_Quest_N-TLX`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `experimentateur/campagne`
--
ALTER TABLE `experimentateur/campagne`
  ADD CONSTRAINT `ClefCamp` FOREIGN KEY (`ID_Camp`) REFERENCES `campagne` (`ID_Camp`),
  ADD CONSTRAINT `ClefUt` FOREIGN KEY (`ID_Ut`) REFERENCES `utilisateur` (`ID_Ut`);

--
-- Contraintes pour la table `questionnaire/campagne`
--
ALTER TABLE `questionnaire/campagne`
  ADD CONSTRAINT `ClefQuestAD` FOREIGN KEY (`ID_Quest_AD`) REFERENCES `questionnaire ad` (`ID_Quest_AD`),
  ADD CONSTRAINT `ClefQuestNTLX` FOREIGN KEY (`ID_Quest_N-TLX`) REFERENCES `questionnaire n-tlx` (`ID_Quest_N-TLX`),
  ADD CONSTRAINT `ClefQuestSUS` FOREIGN KEY (`ID_Quest_SUS`) REFERENCES `questionnaire sus` (`ID_Quest_SUS`),
  ADD CONSTRAINT `Clef_Camp` FOREIGN KEY (`ID_Camp`) REFERENCES `campagne` (`ID_Camp`);

--
-- Contraintes pour la table `utilisateur/campagne`
--
ALTER TABLE `utilisateur/campagne`
  ADD CONSTRAINT `Clef_Quest_AD` FOREIGN KEY (`ID_Quest_AD`) REFERENCES `questionnaire ad` (`ID_Quest_AD`),
  ADD CONSTRAINT `Clef_Quest_N-TLX` FOREIGN KEY (`ID_Quest_N-TLX`) REFERENCES `questionnaire n-tlx` (`ID_Quest_N-TLX`),
  ADD CONSTRAINT `Clef_Quest_SUS` FOREIGN KEY (`ID_Quest_SUS`) REFERENCES `questionnaire sus` (`ID_Quest_SUS`),
  ADD CONSTRAINT `Clef_Ut` FOREIGN KEY (`ID_Ut`) REFERENCES `utilisateur` (`ID_Ut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
