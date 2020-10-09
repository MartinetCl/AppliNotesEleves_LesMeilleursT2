-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : stadjutodmbd01.mysql.db
-- Généré le :  ven. 09 oct. 2020 à 11:30
-- Version du serveur :  5.6.48-log
-- Version de PHP :  7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stadjutodmbd01`
--

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Note`
--

CREATE TABLE `EcoolDirect_Note` (
  `idNote` int(11) NOT NULL,
  `codeMatNote` varchar(5) COLLATE latin1_general_cs NOT NULL,
  `noteNumerateur` int(11) NOT NULL,
  `noteDenominateur` int(11) NOT NULL,
  `coeffNote` float DEFAULT NULL,
  `idTriNote` int(11) NOT NULL,
  `idAnneeNote` int(11) NOT NULL,
  `idUtiNote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Note`
--

INSERT INTO `EcoolDirect_Note` (`idNote`, `codeMatNote`, `noteNumerateur`, `noteDenominateur`, `coeffNote`, `idTriNote`, `idAnneeNote`, `idUtiNote`) VALUES
(1, 'AG', 7, 10, 0.5, 1, 1, 1),
(1, 'EM', 12, 20, 2, 1, 1, 1),
(1, 'EMC', 8, 20, 2, 1, 1, 1),
(1, 'EPS', 8, 10, 1, 1, 1, 1),
(1, 'FR', 9, 12, 0.5, 1, 1, 1),
(1, 'HG', 15, 20, 2, 1, 1, 1),
(1, 'LT', 20, 20, 0.5, 1, 1, 1),
(1, 'MT', 3, 5, 0.5, 1, 1, 1),
(1, 'PC', 6, 10, 1, 1, 1, 1),
(1, 'SES', 14, 20, 2, 1, 1, 1),
(1, 'SNT', 5, 20, 2, 1, 1, 1),
(1, 'SP', 10, 20, 2, 1, 1, 1),
(1, 'SVT', 8, 15, 0.75, 1, 1, 1),
(1, 'TC', 14, 20, 2, 1, 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `EcoolDirect_Note`
--
ALTER TABLE `EcoolDirect_Note`
  ADD PRIMARY KEY (`idNote`,`codeMatNote`),
  ADD KEY `codeMatNote` (`codeMatNote`),
  ADD KEY `idTriNote` (`idTriNote`),
  ADD KEY `idAnneeNote` (`idAnneeNote`),
  ADD KEY `idUtiNote` (`idUtiNote`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `EcoolDirect_Note`
--
ALTER TABLE `EcoolDirect_Note`
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_1` FOREIGN KEY (`codeMatNote`) REFERENCES `EcoolDirect_Matiere` (`codeMat`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_2` FOREIGN KEY (`idTriNote`) REFERENCES `EcoolDirect_Trimestre` (`idTri`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_3` FOREIGN KEY (`idAnneeNote`) REFERENCES `EcoolDirect_Annee` (`idAnnee`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_4` FOREIGN KEY (`idUtiNote`) REFERENCES `EcoolDirect_Utilisateur` (`idUt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
