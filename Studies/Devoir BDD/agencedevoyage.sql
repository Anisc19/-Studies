-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 mai 2023 à 17:06
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agencedevoyage`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `IdClient` int(6) NOT NULL,
  `Nom` char(14) NOT NULL,
  `Prenom` char(15) NOT NULL,
  `Adresse` varchar(21) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Sexe` int(6) NOT NULL,
  `Nom Utilisateur` varchar(10) NOT NULL,
  `Mot de Passe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `idHot` int(6) NOT NULL,
  `Nom` int(14) NOT NULL,
  `Catégorie` int(5) NOT NULL,
  `Adresse` int(21) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Nb de Places` int(6) NOT NULL,
  `Ville` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reserver`
--

CREATE TABLE `reserver` (
  `IdClient` int(6) NOT NULL,
  `numVol` int(5) NOT NULL,
  `idHot` int(6) NOT NULL,
  `Designation` varchar(12) NOT NULL,
  `Date` date NOT NULL,
  `Nb de Personne` int(2) NOT NULL,
  `Etat` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `numVol` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time(6) NOT NULL,
  `Ville de Départ` varchar(20) NOT NULL,
  `Ville d'Arrivée` varchar(20) NOT NULL,
  `Nb de Places` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `Designation` varchar(12) NOT NULL,
  `Prix` float NOT NULL,
  `Durée` int(7) NOT NULL,
  `Nb de Places` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`IdClient`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHot`);

--
-- Index pour la table `reserver`
--
ALTER TABLE `reserver`
  ADD KEY `IdClient` (`IdClient`),
  ADD KEY `numVol` (`numVol`),
  ADD KEY `Designation` (`Designation`),
  ADD KEY `idHot` (`idHot`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`numVol`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`Designation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reserver`
--
ALTER TABLE `reserver`
  ADD CONSTRAINT `reserver_ibfk_1` FOREIGN KEY (`IdClient`) REFERENCES `client` (`IdClient`),
  ADD CONSTRAINT `reserver_ibfk_2` FOREIGN KEY (`numVol`) REFERENCES `vol` (`numVol`),
  ADD CONSTRAINT `reserver_ibfk_3` FOREIGN KEY (`Designation`) REFERENCES `voyage` (`Designation`),
  ADD CONSTRAINT `reserver_ibfk_4` FOREIGN KEY (`idHot`) REFERENCES `hotel` (`idHot`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
