-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le :  mar. 27 fév. 2018 à 13:08
-- Version du serveur :  5.7.21
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `user_id`, `title`, `content`, `date`) VALUES
(2, 3, 'test', 'test', '2018-02-19 00:00:00'),
(3, 1, 'test temps', 'temps', '2018-02-19 07:06:08'),
(4, 4, 'kronos', 'kronos', '2018-02-19 08:37:51'),
(5, 4, 'hey', 'zoijiojoijio', '2018-02-19 08:38:07'),
(6, 1, 'test 2', 'lorem', '2018-02-19 13:29:33'),
(7, 3, 'mon arti', 'text', '2018-02-19 14:17:39'),
(8, 1, 'ezez', 'yeueeuy', '2018-02-19 14:54:56'),
(9, 1, 'test', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2018-02-20 13:16:12'),
(11, 1, 'rkrklrlkr', 'eklekleklek', '2018-02-20 14:54:05'),
(12, 1, 'rkrklrlkr', 'eklekleklek', '2018-02-20 14:56:23'),
(13, 1, 'lol', '1234', '2018-02-20 14:59:21'),
(14, 1, 'pour mon test', 'Il y a quelques jours, les chercheurs en sÃ©curitÃ© de Google ont publiÃ© les dÃ©tails techniques d\'une faille zero-day dans le navigateur Edge, Microsoft ayant dÃ©passÃ© les dÃ©lais de 90 jours fixÃ©s par le gÃ©ant du web. Aujourd\'hui, c\'est rebelote. Ils viennent de publier une faille zero-day dans Windows 10 pour ...', '2018-02-21 15:01:27'),
(15, 1, 'test', 'zjiozjiodzjdzoizdjio', '2018-02-26 13:54:27');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'lol5', 'lol@gmail.com', '123'),
(2, 'test', 'test@gmail', '12'),
(3, 'lala', 'lala@gmail.com', '1234'),
(4, 'Kronine', 'kronos@gmail.com', '1234'),
(5, 'anthony', 'anthony@gmail.com', 'test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `id_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
