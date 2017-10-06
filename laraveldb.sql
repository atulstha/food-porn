-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 04:50 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ing_list`
--

CREATE TABLE `ing_list` (
  `ing_id` int(11) NOT NULL,
  `Ing_name` varchar(70) DEFAULT NULL,
  `Ing_type_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ing_list`
--

INSERT INTO `ing_list` (`ing_id`, `Ing_name`, `Ing_type_id`, `updated_at`, `created_at`) VALUES
(1, 'chicken', 3, '2017-04-02 12:09:01', '0000-00-00 00:00:00'),
(2, 'onion', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Garlic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tomato', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'letuce', 1, '2017-03-31 18:15:00', '2017-03-31 18:15:00'),
(6, 'spinach', 1, '2017-04-01 07:38:33', '2017-04-01 07:38:33'),
(7, 'Mutton', 3, '2017-04-01 11:16:10', '2017-04-01 11:16:10'),
(8, 'Cheese', 2, '2017-04-02 11:45:44', '2017-04-01 11:16:35'),
(9, 'Cucumber', 1, '2017-04-03 21:38:43', '2017-04-03 21:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `ing_type`
--

CREATE TABLE `ing_type` (
  `Ing_type_id` int(11) NOT NULL,
  `Ing_type` varchar(30) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ing_type`
--

INSERT INTO `ing_type` (`Ing_type_id`, `Ing_type`, `updated_at`, `created_at`) VALUES
(1, 'Vegetable', '2017-04-03 04:35:14', '0000-00-00 00:00:00'),
(2, 'Dairy', '2017-04-03 04:35:14', '0000-00-00 00:00:00'),
(3, 'Meat', '2017-04-03 04:35:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_13_080401_create_registers_table', 1),
(4, '2017_02_21_070346_create_recipes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(10) UNSIGNED NOT NULL,
  `recipe_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `recipe_ingredients` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `recipe_desc` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `recipe_info` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_name`, `recipe_ingredients`, `recipe_desc`, `recipe_info`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Chicken Curry', 'Chicken, Salt, Chilly, Oil', '"This is a really good recipe for spicy Indian chicken curry. It''s pretty easy to make and tastes really good!"', '', '1487756288.jpg', '2017-02-22 03:53:08', '2017-02-22 03:53:08'),
(2, 'Palak Paneer', 'Spinach, Paneer', 'Palak paneer is a vegetarian dish originating from the Punjab region of the Indian Subcontinent, consisting of paneer in a thick paste made from puréed spinach and seasoned with garlic, garam masala, and other spices.', '', '1487777421.jpg', '2017-02-22 09:45:22', '2017-02-22 09:45:22'),
(3, 'Chicken Choila', '550-650 grams (cut in small pieces) Onion – 2 (chopped) Green onion - 1 cup (chopped) Tomato – 4 (sliced) Green chill – on your need (cut in half or quarters) Garlic and ginger crumbled (shredded) Turmeric powder- half table spoon Red chili powder- 1 tablespoon Fenugreek seeds (Methi) Cooking oil Salt Coriander leaves Lemon juice Cilantro for garnishing', 'One of the popular Newari dish in Nepal, Choila is a famous and desired appetizer served together with Baji (beaten rice). ', '', '1487780153.jpg', '2017-02-22 10:30:54', '2017-03-28 09:04:31'),
(4, 'Selroti', 'Soaked rice (whole night soaked)  Sugar  Ghee', 'Sel roti is Nepali traditional bread. Sel roti are rounded edibles, compared to the shape of round donuts. However, Sel rotis are thin and biger in size. It is made mainly of Rice flour, water, sugar, cooking oil and ghee.People sometime prefer banana and coconut mixed on it', '', '1487833259.jpg', '2017-02-23 01:16:00', '2017-02-23 01:16:00'),
(5, 'Chicken Chatamari', 'For Rice base: 2 cups - Rice flour 3 - eggs (beaten) 1 cup - water 1 cup - Ghee or Butter Salt to taste For Topping: 1/2 lb - chopped/minced Chicken (any other Meat can be used) 1/2 cup - finely chopped Onions 1/2 cup - diced Tomatoes 1 tsp - garlic, minced 1 tsp - ginger, minced 1/2 tsp - freshly ground black pepper Salt to taste 3 tbsps - cooking oil/butter', 'Chatānmari is a kind of rice crepe. It is a traditional specialty of the Newars of the Kathmandu Valley in Nepal and is eaten during festivals and other special occasions', '', '1487833945.jpg', '2017-02-23 01:27:26', '2017-02-23 01:27:26'),
(6, 'Yamari', 'Rice flour- 500 grams Chakku (Molasses)-100 grams Sesame seed Powder – 50 gram Coconut powder/ grated coconut-20 grams Cardamom powder- 5 grams Vegetable oil- 10 gram', 'Yomari is regarded as hot food item and it kills cold. It is believed that longer the tail of Yomari shorter the winter of Poush (December/January). Yomari is famous in Newari Community in Nepal. Some believe, the triangular shape of yamori is derived from one half of "Shadkond" and is the symbol of Goddess Saraswati and wisdom.', '', '1487834333.jpg', '2017-02-23 01:33:53', '2017-02-23 01:33:53');

-- --------------------------------------------------------

--
-- Stand-in structure for view `recipeview`
--
CREATE TABLE `recipeview` (
`recipe_id` int(11)
,`recipe_name` varchar(70)
,`recipe_desc` varchar(1000)
,`duration` varchar(30)
,`recipe_ingredients` text
,`cusine` varchar(50)
,`type` varchar(59)
,`image` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_cusine`
--

CREATE TABLE `recipe_cusine` (
  `cusine_id` int(11) NOT NULL,
  `Cusine_name` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_cusine`
--

INSERT INTO `recipe_cusine` (`cusine_id`, `Cusine_name`, `updated_at`, `created_at`) VALUES
(1, 'Newari', '2017-04-03 04:35:56', '0000-00-00 00:00:00'),
(2, 'Tharu', '2017-04-03 04:35:56', '0000-00-00 00:00:00'),
(3, 'Limbu', '2017-04-03 04:35:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_inglist`
--

CREATE TABLE `recipe_inglist` (
  `Recipe_ing_id` int(11) NOT NULL,
  `Recipe_id` int(11) NOT NULL,
  `Ing_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_inglist`
--

INSERT INTO `recipe_inglist` (`Recipe_ing_id`, `Recipe_id`, `Ing_id`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(2, 1, 2, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(3, 1, 3, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(4, 1, 4, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(5, 2, 3, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(6, 2, 4, '2017-04-03 04:36:36', '0000-00-00 00:00:00'),
(7, 3, 2, '2017-04-03 16:03:07', '2017-04-03 16:03:07'),
(8, 3, 3, '2017-04-03 16:03:07', '2017-04-03 16:03:07'),
(9, 3, 4, '2017-04-03 16:03:07', '2017-04-03 16:03:07'),
(10, 3, 8, '2017-04-03 16:03:07', '2017-04-03 16:03:07'),
(11, 3, 1, '2017-04-03 16:03:07', '2017-04-03 16:03:07'),
(12, 4, 3, '2017-04-03 16:04:36', '2017-04-03 16:04:36'),
(13, 4, 4, '2017-04-03 16:04:36', '2017-04-03 16:04:36'),
(14, 4, 5, '2017-04-03 16:04:36', '2017-04-03 16:04:36'),
(15, 4, 8, '2017-04-03 16:04:36', '2017-04-03 16:04:36'),
(16, 4, 7, '2017-04-03 16:04:36', '2017-04-03 16:04:36'),
(17, 5, 2, '2017-04-03 16:06:16', '2017-04-03 16:06:16'),
(18, 5, 4, '2017-04-03 16:06:16', '2017-04-03 16:06:16'),
(19, 5, 8, '2017-04-03 16:06:16', '2017-04-03 16:06:16'),
(20, 5, 1, '2017-04-03 16:06:16', '2017-04-03 16:06:16'),
(21, 5, 7, '2017-04-03 16:06:16', '2017-04-03 16:06:16'),
(22, 6, 2, '2017-04-04 02:15:59', '2017-04-04 02:15:59'),
(23, 6, 3, '2017-04-04 02:15:59', '2017-04-04 02:15:59'),
(24, 6, 4, '2017-04-04 02:15:59', '2017-04-04 02:15:59'),
(25, 6, 8, '2017-04-04 02:15:59', '2017-04-04 02:15:59'),
(26, 6, 1, '2017-04-04 02:15:59', '2017-04-04 02:15:59'),
(27, 7, 3, '2017-04-04 03:24:26', '2017-04-04 03:24:26'),
(28, 7, 4, '2017-04-04 03:24:26', '2017-04-04 03:24:26'),
(29, 7, 5, '2017-04-04 03:24:26', '2017-04-04 03:24:26'),
(30, 7, 8, '2017-04-04 03:24:26', '2017-04-04 03:24:26'),
(31, 7, 1, '2017-04-04 03:24:26', '2017-04-04 03:24:26'),
(32, 8, 2, '2017-04-05 16:14:27', '2017-04-05 16:14:27'),
(33, 8, 4, '2017-04-05 16:14:27', '2017-04-05 16:14:27'),
(34, 8, 8, '2017-04-05 16:14:27', '2017-04-05 16:14:27'),
(35, 8, 7, '2017-04-05 16:14:27', '2017-04-05 16:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_list`
--

CREATE TABLE `recipe_list` (
  `recipe_id` int(11) NOT NULL,
  `Recipe_name` varchar(70) DEFAULT NULL,
  `Recipe_desc` varchar(1000) DEFAULT NULL,
  `Recipe_duration` varchar(30) DEFAULT NULL,
  `Recipe_cusine_id` int(11) NOT NULL,
  `Recipe_type_id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_list`
--

INSERT INTO `recipe_list` (`recipe_id`, `Recipe_name`, `Recipe_desc`, `Recipe_duration`, `Recipe_cusine_id`, `Recipe_type_id`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Chicken Curry', 'This is a very tasty dish', '30min', 1, 2, '1487756288.jpg', '2017-04-03 04:37:33', '0000-00-00 00:00:00'),
(2, 'Palak Paneer', 'It is palak paneer', '20min', 1, 2, '1487777421.jpg', '2017-04-03 04:37:33', '0000-00-00 00:00:00'),
(3, 'Fresh', 'tics', '3scs', 2, 1, '1491194292.JPG', '2017-04-03 05:18:00', '2017-04-02 22:53:13'),
(4, NULL, 'Sds', '23min', 2, 2, '1491235456.JPG', '2017-04-03 10:19:16', '2017-04-03 10:19:16'),
(5, 'final', 'Final', '30min', 2, 1, '1491235562.JPG', '2017-04-03 10:21:03', '2017-04-03 10:21:03'),
(6, 'Cesar Salad', 'It is a very helthy dish', '20min', 2, 1, '1491272126.JPG', '2017-04-03 20:30:27', '2017-04-03 20:30:27'),
(7, 'salad', 'sald', '30', 1, 2, NULL, '2017-04-03 21:39:11', '2017-04-03 21:39:11'),
(8, 'kamal', 'tori xa', '30min', 2, 3, '1491408850.JPG', '2017-04-05 10:29:11', '2017-04-05 10:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_type`
--

CREATE TABLE `recipe_type` (
  `Recipe_typeID` int(11) NOT NULL,
  `Recipe_type_name` varchar(59) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_type`
--

INSERT INTO `recipe_type` (`Recipe_typeID`, `Recipe_type_name`, `updated_at`, `created_at`) VALUES
(1, 'Lunch', '2017-04-03 04:38:07', '0000-00-00 00:00:00'),
(2, 'Dinner', '2017-04-03 04:38:07', '0000-00-00 00:00:00'),
(3, 'Break Fast', '2017-04-03 04:38:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Atul', 'atul.stha17@gmail.com', '123456', '2017-02-12 22:26:12', '2017-02-13 05:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Role` smallint(6) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Role`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Admin', 'admin@gmail.com', '$2y$10$0GDfztIhSBX93vIkD/Atq.PYyhpllGfvyiQZkVbddYMuFfwEwQ4ge', 1, 'vb5Jj6bR5VBHNDBB3vyG600CPo5nBF2Zqt6hPv9yV32nejplbMDyRBmuf7nm', '2017-02-20 02:00:50', '2017-03-05 23:30:19'),
(7, 'User', 'user@gmail.com', '$2y$10$/2Z6qx7EcwhTH0Az7FprXe4EtIuGej6J4RNLdhB9vwn8ZPj9cmrDa', 0, 'g72Tz4tcq7D8JIMkT33HLpSD9PPEKoOK465LG5kspBj9a34ixaVmAA1Wvcy7', '2017-02-21 01:01:28', '2017-03-05 23:49:51'),
(8, 'Atul Shrestha', 'atul.stha17@gmail.com', '$2y$10$QSY5uUdfvelXKHip8dCbv.f1T/Z8JgC4Z3qbJ4r0Kxn.T4YxKRzBe', 1, 'EDWG8p2AWhi782t0tpYVnwGnxQHUFgmJKBfS3i27BbipRa1mbJuqpTvTOGfu', '2017-02-26 19:51:12', '2017-03-30 01:52:16');

-- --------------------------------------------------------

--
-- Structure for view `recipeview`
--
DROP TABLE IF EXISTS `recipeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recipeview`  AS  select `r`.`recipe_id` AS `recipe_id`,`r`.`Recipe_name` AS `recipe_name`,`r`.`Recipe_desc` AS `recipe_desc`,`r`.`Recipe_duration` AS `duration`,group_concat(`i`.`Ing_name` separator ', ') AS `recipe_ingredients`,`rc`.`Cusine_name` AS `cusine`,`rt`.`Recipe_type_name` AS `type`,`r`.`image` AS `image` from ((((`recipe_list` `r` join `recipe_inglist` `ri` on((`r`.`recipe_id` = `ri`.`Recipe_id`))) join `ing_list` `i` on(((`ri`.`Ing_id` = `i`.`ing_id`) and (`r`.`recipe_id` = `ri`.`Recipe_id`)))) join `recipe_cusine` `rc` on((`r`.`Recipe_cusine_id` = `rc`.`cusine_id`))) join `recipe_type` `rt` on((`r`.`Recipe_type_id` = `rt`.`Recipe_typeID`))) where (`r`.`recipe_id` >= 1) group by `r`.`Recipe_name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ing_list`
--
ALTER TABLE `ing_list`
  ADD PRIMARY KEY (`ing_id`),
  ADD KEY `Ing_list_Ing_type_FK` (`Ing_type_id`);

--
-- Indexes for table `ing_type`
--
ALTER TABLE `ing_type`
  ADD PRIMARY KEY (`Ing_type_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `recipe_cusine`
--
ALTER TABLE `recipe_cusine`
  ADD PRIMARY KEY (`cusine_id`);

--
-- Indexes for table `recipe_inglist`
--
ALTER TABLE `recipe_inglist`
  ADD PRIMARY KEY (`Recipe_ing_id`),
  ADD KEY `Recipe_inglist_Ing_list_FK` (`Ing_id`),
  ADD KEY `Recipe_inglist_Recipe_list_FK` (`Recipe_id`);

--
-- Indexes for table `recipe_list`
--
ALTER TABLE `recipe_list`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `Recipe_list_Recipe_cusine_FK` (`Recipe_cusine_id`),
  ADD KEY `Recipe_list_Recipe_type_FK` (`Recipe_type_id`);

--
-- Indexes for table `recipe_type`
--
ALTER TABLE `recipe_type`
  ADD PRIMARY KEY (`Recipe_typeID`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ing_list`
--
ALTER TABLE `ing_list`
  MODIFY `ing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ing_type`
--
ALTER TABLE `ing_type`
  MODIFY `Ing_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `recipe_cusine`
--
ALTER TABLE `recipe_cusine`
  MODIFY `cusine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `recipe_inglist`
--
ALTER TABLE `recipe_inglist`
  MODIFY `Recipe_ing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `recipe_list`
--
ALTER TABLE `recipe_list`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `recipe_type`
--
ALTER TABLE `recipe_type`
  MODIFY `Recipe_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ing_list`
--
ALTER TABLE `ing_list`
  ADD CONSTRAINT `Ing_list_Ing_type_FK` FOREIGN KEY (`Ing_type_id`) REFERENCES `ing_type` (`Ing_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_inglist`
--
ALTER TABLE `recipe_inglist`
  ADD CONSTRAINT `Recipe_inglist_Ing_list_FK` FOREIGN KEY (`Ing_id`) REFERENCES `ing_list` (`ing_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Recipe_inglist_Recipe_list_FK` FOREIGN KEY (`Recipe_id`) REFERENCES `recipe_list` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_list`
--
ALTER TABLE `recipe_list`
  ADD CONSTRAINT `Recipe_list_Recipe_cusine_FK` FOREIGN KEY (`Recipe_cusine_id`) REFERENCES `recipe_cusine` (`cusine_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Recipe_list_Recipe_type_FK` FOREIGN KEY (`Recipe_type_id`) REFERENCES `recipe_type` (`Recipe_typeID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
