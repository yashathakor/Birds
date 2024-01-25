-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2022 at 05:44 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BirdTeamDatabase`
--
CREATE DATABASE IF NOT EXISTS `BirdTeamDatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `BirdTeamDatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `userID` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userID`, `password`) VALUES
('123456789', 'password1');

-- --------------------------------------------------------

--
-- Table structure for table `birds`
--

DROP TABLE IF EXISTS `birds`;
CREATE TABLE IF NOT EXISTS `birds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `colloquial_name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scientific_name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avg_wingspan` float(5,1) NOT NULL,
  `formatted_info` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `birds`
--

INSERT INTO `birds` (`id`, `colloquial_name`, `scientific_name`, `avg_wingspan`, `formatted_info`, `image_path`) VALUES
(1, 'Western Bluebird', 'Sialia mexicana', 31.5, '<p>Native to western North America</p> <p>Habitat: Grasslands</p> <p>Diet: Insects</p>', 'western_bluebird.png'),
(2, 'Eastern Bluebird', 'Sialia sialis', 28.5, '<p>Native to eastern North America</p> <p>Habitat: Grasslands</p> <p>Diet: Insects</p>', 'eastern_bluebird.png'),
(3, 'Mountain Bluebird', 'Sialia currucoides', 32.0, '<p>Native to western North America</p> <p>Habitat: Open Woodlands</p> <p>Diet: Insects</p>', 'mountain_bluebird.png'),
(4, 'Grasshopper Sparrow', 'Ammodramus savannarum', 20.0, '<p>Native to United States, Mexico, and the Caribbean</p> <p>Habitat: Grasslands</p> <p>Diet: Insects</p>', 'grasshopper_sparrow.png'),
(5, 'Baird\'s Sparrow', 'Centronyx bairdii', 22.5, '<p>Native to mid-northern United States and northern Mexico</p> <p>Habitat: Grasslands</p> <p>Diet: Insects</p>', 'bairds_sparrow.png'),
(6, 'Cassin\'s Sparrow', 'Peucaea cassinii', 20.0, '<p>Native to mid-southern United States and northern Mexico</p> <p>Habitat: Grasslands</p> <p>Diet: Insects</p>', 'cassins_sparrow.png'),
(7, 'Chipping Sparrow', 'Spizella passerina', 21.0, '<p>Native to North America</p> <p>Habitat: Open Woodlands</p> <p>Diet: Seeds</p>', 'chipping_sparrow.png'),
(8, 'Northern Cardinal', 'Cardinalis cardinalis', 28.0, '<p>Native to western North America and Mexico</p> <p>Habitat: Open Woodlands</p> <p>Diet: Seeds</p>', 'northern_cardinal.png'),
(9, 'Indian Peafowl', 'Pavo cristatus', 150.0, '<p>Native to India</p> <p>Habitat: Open Woodlands</p> <p>Diet: Omnivore</p>', 'indian_peafowl.png'),
(10, 'Blue Jay', 'Cyanocitta cristata', 38.5, '<p>Native to eastern North America and nothern United States</p> <p>Habitat: Forests</p> <p>Diet: Omnivore</p>', 'blue_jay.png'),
(11, 'Resplendent Quetzal', 'Pharomachrus mocinno', 40.0, '<p>Native to Central America</p> <p>Habitat: Forests</p> <p>Diet: Fruits</p>', 'resplendent_quetzal.png'),
(12, 'Lilac-Breasted Roller', 'Coracias caudatus', 58.0, '<p>Native to southern Africa</p> <p>Habitat: Open Woodlands</p> <p>Diet: Insects</p>', 'lilac_breasted_roller.png'),
(13, 'American Flamingo', 'Phoenicopterus ruber', 150.0, '<p>Native to southeastern North America, northern South America, and the Caribbean</p> <p>Habitat: Lagoons</p> <p>Diet: Omnivore</p>', 'american_flamingo.png'),
(14, 'Long-Tailed Tit', 'Aegithalos caudatus', 14.0, '<p>Native to Europe, southern Russia, and Japan</p> <p>Habitat: Open Woodlands</p> <p>Diet: Insects</p>', 'long_tailed_tit.png'),
(15, 'Bearded Vulture', 'Gypaetus barbatus', 257.5, '<p>Native to eastern North America</p> <p>Habitat: Grasslands</p> <p>Diet: Carrion</p>', 'bearded_vulture.png'),
(16, 'Peregrine Falcon', 'Falco peregrinus', 96.0, '<p>Native to North America</p> <p>Habitat: Shoreline</p> <p>Diet: Birds</p>', 'peregrine_falcon.png'),
(17, 'Great Potoo', 'Nyctibius grandis', 70.0, '<p>Native to northern South America</p> <p>Habitat: Forests</p> <p>Diet: Insects</p>', 'great_potoo.png'),
(18, 'Ringed Kingfisher', 'Megaceryle torquata', 63.5, '<p>Native to Latin America and South America</p> <p>Habitat: Rivers and Streams</p> <p>Diet: Fish</p>', 'ringed_kingfisher.png'),
(19, 'Green Kingfisher', 'Megaceryle torquata', 63.5, '<p>Native to Latin America and South America</p> <p>Habitat: Rivers and Streams</p> <p>Diet: Fish</p>', 'green_kingfisher.png'),
(20, 'Belted Kingfisher', 'Megaceryle alcyon', 53.0, '<p>Native to North America</p> <p>Habitat: Lakes and Ponds</p> <p>Diet: Fish</p>', 'belted_kingfisher.png'),
(21, 'Chihuahuan Raven', 'Corvus cryptoleucus', 107.0, '<p>Native to northern Mexico</p> <p>Habitat: Scrub</p> <p>Diet: Omnivore</p>', 'chihuahuan_raven.png'),
(22, 'Common Raven', 'Corvus corax', 117.0, '<p>Native to western and northern North America</p> <p>Habitat: Forests</p> <p>Diet: Omnivore</p>', 'common_raven.png'),
(23, 'Fish Crow', 'Corvus ossifragus', 84.0, '<p>Native to eastern United States</p> <p>Habitat: Shorelines</p> <p>Diet: Omnivore</p>', 'fish_crow.png'),
(24, 'American Crow', 'Corvus brachyrhynchos', 92.5, '<p>Native to United States and southern Canada</p> <p>Habitat: Open Woodlands</p> <p>Diet: Omnivore</p>', 'american_crow.png'),
(25, 'Barn Owl', 'Tyto alba', 112.5, '<p>Native to United States, Mexico, Latin America, and the Caribbean</p> <p>Habitat: Grasslands</p> <p>Diet: Mammals</p>', 'barn_owl.png'),
(26, 'Snowy Owl', 'Bubo scandiacus', 135.5, '<p>Native to northern North America</p> <p>Habitat: Tundra</p> <p>Diet: Mammals</p>', 'snowy_owl.png'),
(27, 'Barred Owl', 'Strix varia', 104.5, '<p>Native to eastern United States and southern Canada</p> <p>Habitat: Open Forests</p> <p>Diet: Mammals</p>', 'barred_owl.png'),
(28, 'Great Horned Owl', 'Bubo virginianus', 123.0, '<p>Native to North America and southern South America</p> <p>Habitat: Forests</p> <p>Diet: Mammals</p>', 'great_horned_owl.png'),
(29, 'Burrowing Owl', 'Athene cunicularia', 55.0, '<p>Native to western North America and middle South America</p> <p>Habitat: Grasslands</p> <p>Diet: Small Animals</p>', 'burrowing_owl.png'),
(30, 'Aplomado Falcon', 'Falco femoralis', 89.0, '<p>Native to Mexico and South America</p> <p>Habitat: Grasslands</p> <p>Diet: Birds</p>', 'aplomado_falcon.png'),
(31, 'Common Black Hawk', 'Buteogallus anthracinus', 117.0, '<p>Native to Mexico, Latin America, and nortern South America</p> <p>Habitat: Forests</p> <p>Diet: Small Animals</p>', 'common_black_hawk.png'),
(32, 'Red-tailed Hawk', 'Buteo jamaicensis', 123.5, '<p>Native to North America</p> <p>Habitat: Forests</p> <p>Diet: Small Animals</p>', 'red_tailed_hawk.png'),
(33, 'Turkey Vulture', 'Cathartes aura', 174.0, '<p>Native to North America and South America</p> <p>Habitat: Open Woodlands</p> <p>Diet: Carrion</p>', 'turkey_vulture.png'),
(34, 'Black Vulture', 'Coragyps atratus', 143.5, '<p>Native to southern United States and South America</p> <p>Habitat: Grasslands</p> <p>Diet: Carrion</p>', 'black_vulture.png'),
(35, 'Nelson\'s Sparrow', 'Ammospiza nelsoni', 18.5, '<p>Native to eastern and middle United States and mid-northern Canada</p> <p>Habitat: Marshes</p> <p>Diet: Insects</p>', 'nelsons_sparrow.png'),
(36, 'Rock Pigeon', 'Columba livia', 58.5, '<p>Native to entire world</p> <p>Habitat: Caves, Cliffs, Cities, and Farmlands</p> <p>Diet: Seeds</p>', 'rock_pigeon.png'),
(37, 'Spinifex Pigeon', 'Geophaps plumiferas', 32.5, '<p>Native to northern Australia</p> <p>Habitat: Scrub</p> <p>Diet: Seeds</p>', 'spinifex_pigeon.png'),
(38, 'African Green-Pigeon', 'Treron calvus', 50.0, '<p>Native to southern Africa</p> <p>Habitat: Woodlands</p> <p>Diet: Fruits</p>', 'african_green_pigeon.png'),
(39, 'Nicobar Pigeon', 'Caloenas nicobarica', 56.0, '<p>Native to Southeast Asia</p> <p>Habitat: Forests</p> <p>Diet: Seeds</p>', 'nicobar_pigeon.png'),
(40, 'Pink-necked Green-Pigeon', 'Treron vernans', 50.0, '<p>Native to Southeast Asia</p> <p>Habitat: Forests</p> <p>Diet: Fruits</p>', 'pink_necked_green_pigeon.png'),
(41, 'Chinstrap Penguin', 'Pygoscelis antarcticus', 109.0, '<p>Native to northern Antarctica</p> <p>Habitat: Tundra</p> <p>Diet: Fish</p>', 'chinstrap_penguin.png'),
(42, 'African Penguin', 'Spheniscus demersus', 70.0, '<p>Native to southern Africa</p> <p>Habitat: Shorelines</p> <p>Diet: Fish</p>', 'african_penguin.png'),
(43, 'Southern Rockhopper Penguin', 'Eudyptes chrysocome', 74.0, '<p>Native to southern Africa and northern Antarctica</p> <p>Habitat: Shorelines</p> <p>Diet: Fish</p>', 'southern_rockhopper_penguin.png'),
(44, 'Emperor Penguin', 'Aptenodytes forsteri', 82.5, '<p>Native to northern Antarctica</p> <p>Habitat: Shorelines</p> <p>Diet: Fish</p>', 'emperor_penguin.png'),
(45, 'Adelie Penguin', 'Pygoscelis adeliae', 52.5, '<p>Native to northern Antarctica</p> <p>Habitat: Shorelines</p> <p>Diet: Fish</p>', 'adelie_penguin.png'),
(46, 'Long-wattled Umbrellabird', 'Cephalopterus penduliger', 66.0, '<p>Native to Southwestern Colombia</p><p>Habitat: Forests</p><p>Diet: Insects, Lizards, and Fruits</p>', 'long_wattled_umbrellabird.png'),
(47, 'Marabou Stork', 'Leptoptilos crumenifer', 256.0, '<p>Native to Sub-Saharan Africa</p><p>Habitat: Deserts, and Savannas</p><p>Diet: Fish, Lizards, and Frogs</p>', 'marabou_stork.png'),
(48, 'Greater Lophorina', 'Lophorina superba', 30.0, '<p>Native to New Guinea</p><p>Habitat: Rainforests</p><p>Diet: Fruits and Insects</p>', 'greater_lophorina.png'),
(49, 'Secretarybird', 'Sagittarius serpentarius', 200.0, '<p>Native to southern and eastern Africa</p> <p>Habitat: Savannah</p> <p>Diet: Reptiles, Small Mammals, and Insects</p>', 'secretarybird.png'),
(50, 'Baltimore Oriole', 'Icterus galbula', 26.5, '<p>Native to eastern North America, Latin America, and northern South America</p> <p>Habitat: Forests</p> <p>Diet: Insects</p>', 'baltimore_oriole.png'),
(51, 'Grey Catbird', 'Dumetella carolinensis', 26.0, '<p>Native to United States, eastern Latin America, and the Caribbean</p> <p>Habitat: Open Woodlands</p> <p>Diet: Insects</p>', 'grey_catbird.png'),
(52, 'Mallard', 'Anas platyrhynchos', 88.5, '<p>Native to North America, Europe, northern Asia, southern Asia, eastern Africa, and Japan</p> <p>Habitat: Lakes and Ponds</p> <p>Diet: Omnivore</p>', 'mallard.png');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `entry` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- create user to query product database -- 
GRANT SELECT, INSERT, DELETE, UPDATE 
ON BirdTeamDatabase.* 
TO BirdTeam@localhost 
IDENTIFIED BY 'BirdTeamPass'; 
