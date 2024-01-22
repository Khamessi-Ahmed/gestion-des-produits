-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 déc. 2023 à 11:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelier6_dsi2_g2`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'pc'),
(2, 'imprimante'),
(3, 'smartphone'),
(4, 'tablette');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `qte` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `promo` tinyint(1) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prix`, `qte`, `description`, `image`, `promo`, `id_categorie`) VALUES
(106, 'Produit n°1', 681, 98, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=1', 1, 4),
(107, 'Produit n°2', 2079, 73, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=2', 1, 3),
(108, 'Produit n°3', 1655, 75, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=3', 1, 4),
(109, 'Produit n°4', 319, 18, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=4', 0, 2),
(110, 'Produit n°5', 2944, 8, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=5', 0, 3),
(111, 'Produit n°6', 2128, 29, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=6', 1, 4),
(112, 'Produit n°7', 2995, 33, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=7', 0, 3),
(113, 'Produit n°8', 773, 54, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=8', 0, 2),
(114, 'Produit n°9', 2471, 93, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=9', 1, 1),
(115, 'Produit n°10', 2831, 89, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=10', 0, 4),
(116, 'Produit n°11', 2299, 90, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=11', 1, 3),
(117, 'Produit n°12', 688, 61, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=12', 1, 4),
(118, 'Produit n°13', 2461, 75, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=13', 1, 4),
(119, 'Produit n°14', 398, 53, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=14', 1, 2),
(120, 'Produit n°15', 368, 83, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=15', 1, 4),
(121, 'Produit n°16', 1136, 2, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=16', 1, 1),
(122, 'Produit n°17', 1870, 71, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=17', 0, 2),
(123, 'Produit n°18', 2600, 35, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=18', 0, 2),
(124, 'Produit n°19', 2652, 72, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=19', 0, 3),
(125, 'Produit n°20', 2544, 63, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=20', 1, 2),
(126, 'Produit n°21', 1723, 74, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=21', 0, 3),
(127, 'Produit n°22', 2374, 31, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=22', 0, 1),
(128, 'Produit n°23', 2376, 17, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=23', 1, 4),
(129, 'Produit n°24', 1398, 65, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=24', 0, 2),
(130, 'Produit n°25', 2157, 52, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=25', 0, 3),
(131, 'Produit n°26', 2603, 47, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=26', 0, 2),
(132, 'Produit n°27', 1374, 89, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=27', 0, 3),
(133, 'Produit n°28', 1499, 71, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=28', 0, 2),
(134, 'Produit n°29', 1577, 84, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=29', 0, 1),
(135, 'Produit n°30', 2512, 66, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=30', 1, 4),
(136, 'Produit n°31', 1533, 50, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=31', 1, 3),
(137, 'Produit n°32', 1691, 33, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=32', 0, 3),
(138, 'Produit n°33', 471, 89, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=33', 1, 4),
(139, 'Produit n°34', 2025, 17, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=34', 0, 3),
(140, 'Produit n°35', 168, 31, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=35', 1, 2),
(141, 'Produit n°36', 349, 77, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=36', 1, 4),
(142, 'Produit n°37', 1836, 41, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=37', 1, 1),
(143, 'Produit n°38', 704, 19, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=38', 1, 3),
(144, 'Produit n°39', 1158, 46, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=39', 1, 4),
(145, 'Produit n°40', 354, 83, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=40', 0, 1),
(146, 'Produit n°41', 1778, 61, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=41', 0, 3),
(147, 'Produit n°42', 178, 85, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=42', 0, 3),
(148, 'Produit n°43', 1495, 4, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=43', 1, 4),
(149, 'Produit n°44', 278, 16, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=44', 1, 1),
(150, 'Produit n°45', 2738, 90, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=45', 1, 2),
(151, 'Produit n°46', 2618, 37, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=46', 1, 2),
(152, 'Produit n°47', 1105, 32, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=47', 0, 2),
(153, 'Produit n°48', 2129, 8, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=48', 0, 2),
(154, 'Produit n°49', 1030, 36, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=49', 1, 2),
(155, 'Produit n°50', 2790, 99, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=50', 1, 2),
(156, 'Produit n°51', 2277, 15, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=51', 0, 3),
(157, 'Produit n°52', 2165, 97, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=52', 0, 1),
(158, 'Produit n°53', 463, 13, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=53', 0, 2),
(159, 'Produit n°54', 2081, 36, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=54', 0, 1),
(160, 'Produit n°55', 856, 64, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=55', 0, 4),
(161, 'Produit n°56', 1025, 70, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=56', 0, 1),
(162, 'Produit n°57', 2467, 13, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=57', 1, 1),
(163, 'Produit n°58', 2092, 18, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=58', 0, 4),
(164, 'Produit n°59', 197, 23, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=59', 1, 1),
(165, 'Produit n°60', 2300, 78, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=60', 0, 2),
(166, 'Produit n°61', 1766, 76, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=61', 1, 1),
(167, 'Produit n°62', 1215, 67, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=62', 0, 2),
(168, 'Produit n°63', 1015, 100, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=63', 0, 1),
(169, 'Produit n°64', 2455, 28, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=64', 0, 4),
(170, 'Produit n°65', 2432, 42, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=65', 0, 1),
(171, 'Produit n°66', 1311, 4, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=66', 1, 3),
(172, 'Produit n°67', 1739, 23, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=67', 1, 4),
(173, 'Produit n°68', 1047, 99, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=68', 0, 4),
(174, 'Produit n°69', 1163, 89, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=69', 0, 4),
(175, 'Produit n°70', 2713, 70, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=70', 1, 3),
(176, 'Produit n°71', 1762, 76, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=71', 0, 3),
(177, 'Produit n°72', 1815, 43, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=72', 0, 2),
(178, 'Produit n°73', 2245, 53, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=73', 0, 3),
(179, 'Produit n°74', 1293, 4, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=74', 1, 1),
(180, 'Produit n°75', 2162, 38, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=75', 0, 4),
(181, 'Produit n°76', 1842, 78, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=76', 1, 1),
(182, 'Produit n°77', 675, 18, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=77', 1, 3),
(183, 'Produit n°78', 165, 84, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=78', 1, 4),
(184, 'Produit n°79', 1539, 98, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=79', 1, 4),
(185, 'Produit n°80', 1894, 85, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=80', 0, 2),
(186, 'Produit n°81', 213, 67, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=81', 0, 4),
(187, 'Produit n°82', 2755, 77, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=82', 1, 3),
(188, 'Produit n°83', 1502, 23, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=83', 1, 4),
(189, 'Produit n°84', 2854, 36, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=84', 0, 4),
(190, 'Produit n°85', 2279, 63, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=85', 1, 4),
(191, 'Produit n°86', 1734, 26, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=86', 0, 3),
(192, 'Produit n°87', 842, 75, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=87', 1, 4),
(193, 'Produit n°88', 101, 95, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=88', 0, 3),
(194, 'Produit n°89', 598, 98, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=89', 1, 1),
(195, 'Produit n°90', 2934, 31, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=90', 0, 3),
(196, 'Produit n°91', 1432, 71, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=91', 1, 4),
(197, 'Produit n°92', 1112, 12, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=92', 0, 2),
(198, 'Produit n°93', 1129, 61, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=93', 0, 4),
(199, 'Produit n°94', 1070, 67, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=94', 0, 3),
(200, 'Produit n°95', 2699, 67, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=95', 1, 2),
(201, 'Produit n°96', 521, 33, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=96', 0, 4),
(202, 'Produit n°97', 2712, 63, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=97', 1, 2),
(203, 'Produit n°98', 1961, 57, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=98', 0, 2),
(204, 'Produit n°99', 1196, 24, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=99', 0, 1),
(205, 'Produit n°100', 960, 87, 'Lorem ipsum \r\n        dolor sit, amet consectetur adipisicing elit. \r\n        Consequatur fugiat id, officiis illo quaerat magnam sit \r\n        unde obcaecati explicabo. Aliquam exercitationem molestias\r\n        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.', 'https://picsum.photos/300/?random=100', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
