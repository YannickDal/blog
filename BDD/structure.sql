-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 19 Juin 2014 à 13:22
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `role` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déclencheurs `roles`
--
DROP TRIGGER IF EXISTS `RoleNotNullUpdate`;
DELIMITER //
CREATE TRIGGER `RoleNotNullUpdate` BEFORE UPDATE ON `roles`
 FOR EACH ROW IF NEW.`role` = '' THEN
	SET NEW.`role` = NULL;
END IF
//
DELIMITER ;
DROP TRIGGER IF EXISTS `sdfsdf`;
DELIMITER //
CREATE TRIGGER `sdfsdf` BEFORE INSERT ON `roles`
 FOR EACH ROW IF NEW.`role` = '' THEN
	SET NEW.`role` = NULL;
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `texte` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Déclencheurs `test`
--
DROP TRIGGER IF EXISTS `Mon_Declencheur`;
DELIMITER //
CREATE TRIGGER `Mon_Declencheur` BEFORE INSERT ON `test`
 FOR EACH ROW IF NEW.`texte` = '' THEN
	SET NEW.`texte` = NULL;
END IF
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Test_Texte_Not_Null`;
DELIMITER //
CREATE TRIGGER `Test_Texte_Not_Null` BEFORE UPDATE ON `test`
 FOR EACH ROW IF NEW.`texte` = '' THEN
	SET NEW.`texte` = NULL;
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `role` (`role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `ArticlesUserUsersIdUser` FOREIGN KEY (`user`) REFERENCES `users` (`id_user`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `UsersRoleRolesRole` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
