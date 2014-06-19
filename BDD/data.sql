-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 19 Juin 2014 à 13:26
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

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id_article`, `title`, `text`, `date`, `user`) VALUES
(1, 'Mon premier article', 'Voila, c''est parti pour les articles.', '2014-06-02 00:00:00', 4),
(13, 'dfgdsfgdfsg', 'dsfgdswfgdsfg', '2014-06-03 00:00:00', 2),
(22, 'ghfjgfhjghf', 'fghjgfhj', '2014-06-01 00:00:00', 1),
(25, 'le titre', 'les texrte', '2014-06-16 00:00:00', 1),
(26, 'tets12', 'sdgfdsgdfg', '2014-06-18 14:32:58', 1);

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`role`) VALUES
('administrateur'),
('auteur'),
('Invité');

--
-- Contenu de la table `test`
--

INSERT INTO `test` (`texte`, `id`) VALUES
('', 1),
('', 2),
('', 3),
('sxdwfcvsdfqsdfqsdfqsdfqsdfqsdf', 4);

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `date`) VALUES
(1, 'Véronique', '3e00a301d58779cb026a320354ab09137c674a1e', 'administrateur', '2014-06-12 00:00:00'),
(2, 'Constant', '0f1a7843e84b40861c586cbc367c10981ad31249', 'administrateur', '0000-00-00 00:00:00'),
(4, 'philippe', '8a8443721fa9abbe65a2e4fd05eff17749a0bbf2', 'administrateur', '0000-00-00 00:00:00'),
(6, 'yannick', 'da556112f104f24c8986c3e87f308e42c35bf515', 'administrateur', '2014-06-19 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
