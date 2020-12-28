-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 28 déc. 2020 à 18:50
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
-- Base de données : `e_commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id_Commande` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  KEY `f_id_client` (`id_client`),
  KEY `f_id_product` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id_Commande`, `id_client`, `id_produit`, `quantite`) VALUES
(0, 6, 2, 1),
(0, 6, 3, 1),
(0, 6, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) CHARACTER SET latin1 NOT NULL,
  `prix` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `categorie` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pathImg` varchar(128) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `nom`, `prix`, `type`, `categorie`, `pathImg`, `description`) VALUES
(1, 'Lampe led bande 5M', 20, 'Design', 'Lampe', 'assets/img/lampeLed.jpg', 'Lampe led bande 5M'),
(2, 'Lampe de table', 10, 'Design', 'Lampe', 'assets/img/lampeDeTable.jpg', 'Lampe de table'),
(3, 'Horloge led', 10, 'Design', 'Horloge', 'assets/img/horlogeLed.jpg', 'Horloge led'),
(4, 'Horloge originale', 25, 'Design', 'Horloge', 'assets/img/horlogeOriginale.jpg', 'Horloge originale'),
(5, 'Scanner 3D', 350, 'Office', 'Scanner', 'assets/img/scanner3D.jpg', 'Scanner 3D'),
(6, 'Scanner classique', 40, 'Office', 'Scanner', 'assets/img/scannerEpson.jpg', 'Scanner classique'),
(7, 'Imprimante 3D', 320, 'Office', 'Imprimante', 'assets/img/imprimante3D.jpg', 'Imprimante 3D'),
(8, 'Imprimante Multifonction', 80, 'Office', 'Imprimante', 'assets/img/imprimanteMultifonctionHP.jpg', 'Imprimante Multifonction'),
(9, 'Jbl Charge 2+ Noir', 140, 'Multimedia', 'Enceinte portable', 'assets/img/jblCharge2+.jpg', 'Jbl Charge 2+ Noir'),
(10, 'Jbl Xtreme noir', 300, 'Multimedia', 'Enceinte portable', 'assets/img/jblXtreme.jpg', 'Jbl Xtreme noir'),
(11, 'Playstation 4 PRO', 450, 'Multimedia', 'Console de jeu', 'assets/img/ps4Pro.jpg', 'Playstation 4 PRO'),
(12, 'Xbox One', 250, 'Multimedia', 'Console de jeu', 'assets/img/xboxOne.jpg', 'Xbox One');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `motDePasse` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `codePostal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `civilite`, `nom`, `prenom`, `login`, `email`, `motDePasse`, `adresse`, `ville`, `codePostal`, `pays`, `telephone`) VALUES
(6, 'Mr.', 'Zigha', 'Hugo', 'Hugo57', 'test@test.test', 'test', 'nulle part', 'Stras', '67000', 'France', '+33123456789');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `f_id_client` FOREIGN KEY (`id_client`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `f_id_product` FOREIGN KEY (`id_produit`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
