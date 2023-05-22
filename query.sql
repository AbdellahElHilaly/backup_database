-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 mai 2023 à 10:08
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
-- Base de données : `restocode`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'main-meal', 'block 2 get from shef ,  only for 1 choise', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, 'bread', 'block 0 , 1 choise', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(3, 'salad', 'block 1 ,  only for 1 choise', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(4, 'appetizer', 'block 1 ,  only for 1 choise', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(5, 'dessert', 'block 3 ,  2 choise ,  3 choise if dont have water', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(6, 'water', 'block 3 , 1 choise ,  0 choise if 3 choise dessert', '2023-05-19 06:57:02', '2023-05-19 06:57:02');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Magni consequatur itaque harum dolor.', 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(2, 'Quae quisquam sit necessitatibus veniam neque eveniet animi.', 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(3, 'Blanditiis voluptas omnis et molestiae suscipit odio.', 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(4, 'Adipisci quasi dolores nam esse ad ut.', 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(5, 'Rerum sint ullam voluptas odio fugit non ipsum assumenda.', 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(6, 'Autem cumque est magni magni corporis id vel.', 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(7, 'Ab rerum est aut officia recusandae accusamus quasi itaque.', 3, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(8, 'Aut ipsa sint numquam corporis debitis totam esse blanditiis.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(9, 'Sunt sunt quod numquam ut laudantium blanditiis animi.', 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(10, 'Error distinctio perferendis est nihil voluptatem.', 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(11, 'Eum explicabo ex sed minus reprehenderit est.', 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(12, 'Veritatis natus enim et enim et.', 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(13, 'Minus molestiae asperiores ea aperiam velit.', 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(14, 'Rerum deleniti natus voluptatem distinctio dolor earum.', 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(15, 'Corporis dolorem quo ut quibusdam cupiditate est.', 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(16, 'Ducimus nesciunt quaerat quam aut eius harum exercitationem.', 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(17, 'Voluptatem molestiae id et.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(18, 'Est veniam delectus neque reiciendis.', 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(19, 'Rem exercitationem minus at reprehenderit placeat minus rerum.', 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(20, 'Omnis et saepe accusamus corrupti.', 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(21, 'Ipsam molestiae eaque assumenda corrupti.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(22, 'Et dolor a quia id sunt.', 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(23, 'Ut qui rerum nostrum non eum.', 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(24, 'Consectetur assumenda quis suscipit et quam placeat amet alias.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(25, 'Quis distinctio sint rerum omnis.', 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(26, 'Et laboriosam aspernatur illo.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(27, 'Numquam delectus saepe commodi ipsa tempora mollitia modi.', 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(28, 'Tenetur hic quasi odit velit dolor quis ipsam.', 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(29, 'Adipisci qui provident laudantium animi consequatur aut velit.', 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(30, 'Fugiat natus sapiente error eveniet dolor dolores.', 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(31, 'Corrupti hic neque quidem dignissimos laudantium a sit.', 1, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(32, 'Sunt libero aut vel ut aut et.', 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(33, 'Vitae repellendus iure et amet vel voluptate.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(34, 'Labore eos iusto sit.', 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(35, 'Sed deleniti dolorem vero voluptas enim illum.', 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(36, 'Porro voluptatum id eius totam.', 1, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05');

-- --------------------------------------------------------

--
-- Structure de la table `feed_backs`
--

CREATE TABLE `feed_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `feed_backs`
--

INSERT INTO `feed_backs` (`id`, `body`, `user_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(2, 5, 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(3, 2, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(4, 3, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(5, 5, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(6, 4, 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(7, 1, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(8, 4, 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(9, 1, 4, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(10, 3, 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(11, 3, 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(12, 1, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(13, 1, 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(14, 5, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(15, 3, 3, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(16, 2, 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(17, 2, 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(18, 4, 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(19, 4, 2, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(20, 5, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(21, 2, 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(22, 5, 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(23, 2, 5, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(24, 3, 1, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(25, 5, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(26, 4, 3, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(27, 1, 2, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(28, 3, 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(29, 5, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(30, 3, 1, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(31, 2, 4, 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(32, 5, 1, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(33, 2, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(34, 3, 5, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(35, 2, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(36, 5, 3, 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `meals`
--

INSERT INTO `meals` (`id`, `name`, `description`, `user_id`, `quantity`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ducimus', 'Et eum distinctio ea numquam sequi odio.', 1, 96, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 4, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(2, 'amet', 'Illo eligendi necessitatibus eos eligendi qui ex velit.', 1, 57, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 3, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(3, 'quis', 'Numquam sed inventore quia eius animi qui modi.', 1, 85, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(4, 'hic', 'Consequatur at laborum perferendis odit.', 1, 26, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 2, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(5, 'molestiae', 'Cum aut doloremque dolorem quaerat unde consequatur et iste.', 1, 48, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 5, '2023-05-19 06:57:05', '2023-05-19 06:57:05');

-- --------------------------------------------------------

--
-- Structure de la table `meal_menu`
--

CREATE TABLE `meal_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `meal_menu`
--

INSERT INTO `meal_menu` (`id`, `menu_id`, `meal_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 2, 1, 1, NULL, NULL),
(3, 1, 2, 1, NULL, NULL),
(4, 2, 2, 1, NULL, NULL),
(5, 1, 3, 1, NULL, NULL),
(6, 2, 3, 1, NULL, NULL),
(7, 1, 4, 1, NULL, NULL),
(8, 2, 4, 1, NULL, NULL),
(9, 1, 5, 1, NULL, NULL),
(10, 2, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `date`, `description`, `quantity`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'quia', '2009-01-14', 'Ut facere ipsum ratione enim.', 10, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05'),
(2, 'dolor', '1973-08-28', 'Cum rerum nulla eum fugiat.', 96, 'http://127.0.0.1:8000/media/images/64357e22b2552.jpg', 1, '2023-05-19 06:57:05', '2023-05-19 06:57:05');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_10_091942_create_categories_table', 1),
(3, '2023_03_16_210123_create_pcontrollers_table', 1),
(4, '2023_03_16_210200_create_pmethodes_table', 1),
(5, '2023_03_17_101644_create_rules_table', 1),
(6, '2023_03_21_124540_create_tokens_table', 1),
(7, '2023_10_15_000000_create_users_table', 1),
(8, '2023_11_16_163441_create_games_table', 1),
(9, '2023_12_07_142714_create_meals_table', 1),
(10, '2023_12_11_231624_create_menus_table', 1),
(11, '2023_13_12_113116_create_comments_table', 1),
(12, '2023_13_12_113133_create_feed_backs_table', 1),
(13, '2023_13_12_213852_create_meal_menu_table', 1),
(14, '2023_13_16_220340_create_permissions_table', 1),
(15, '2023_14_23_151734_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pcontrollers`
--

CREATE TABLE `pcontrollers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pcontrollers`
--

INSERT INTO `pcontrollers` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'CategoryController', 'CategoryController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, 'CommentController', 'CommentController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(3, 'FeedBackController', 'FeedBackController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(4, 'MealController', 'MealController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(5, 'MealMenuController', 'MealMenuController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(6, 'MenuController', 'MenuController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(7, 'PermissionController', 'PermissionController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(8, 'ReservationController', 'ReservationController description', '2023-05-19 06:57:02', '2023-05-19 06:57:02');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pcontroller_id` bigint(20) UNSIGNED NOT NULL,
  `pmethode_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `pcontroller_id`, `pmethode_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 1, 1, 2, NULL, NULL),
(3, 2, 1, 1, NULL, NULL),
(4, 2, 1, 2, NULL, NULL),
(5, 2, 1, 3, NULL, NULL),
(6, 2, 1, 4, NULL, NULL),
(7, 2, 1, 5, NULL, NULL),
(8, 3, 1, 1, NULL, NULL),
(9, 3, 1, 2, NULL, NULL),
(10, 3, 1, 3, NULL, NULL),
(11, 3, 1, 4, NULL, NULL),
(12, 3, 1, 5, NULL, NULL),
(13, 4, 1, 1, NULL, NULL),
(14, 4, 1, 2, NULL, NULL),
(15, 4, 1, 5, NULL, NULL),
(16, 4, 2, 1, NULL, NULL),
(17, 4, 2, 2, NULL, NULL),
(18, 4, 2, 3, NULL, NULL),
(19, 4, 2, 4, NULL, NULL),
(20, 4, 2, 5, NULL, NULL),
(21, 5, 1, 1, NULL, NULL),
(22, 5, 1, 2, NULL, NULL),
(23, 5, 1, 5, NULL, NULL),
(24, 5, 2, 1, NULL, NULL),
(25, 5, 2, 2, NULL, NULL),
(26, 5, 2, 3, NULL, NULL),
(27, 5, 2, 4, NULL, NULL),
(28, 5, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pmethodes`
--

CREATE TABLE `pmethodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pmethodes`
--

INSERT INTO `pmethodes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'index', 'this is a index methode the user can use it to read all models', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, 'show', 'this is a show methode the user can use it to read one model', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(3, 'store', 'this is a store methode the user can use it to create a model', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(4, 'update', 'this is a update methode the user can use it to update a model', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(5, 'destroy', 'this is a destroy methode the user can use it to delete a model', '2023-05-19 06:57:02', '2023-05-19 06:57:02');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rules`
--

INSERT INTO `rules` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'geust', 'this is a geust rule the geust can use it to read all models', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, 'shef', 'this is a developer rule the developer can use it to CRUD his models and read all models', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(3, 'admin', 'this is a admin rule the admin can use it to CRUD all categories and CRUD all permissions', '2023-05-19 06:57:02', '2023-05-19 06:57:02');

-- --------------------------------------------------------

--
-- Structure de la table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `device` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `expires_at` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tokens`
--

INSERT INTO `tokens` (`id`, `ip`, `device`, `platform`, `browser`, `expires_at`, `location`, `network`, `code`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '', 'UNK', 'Postman Desktop', '2028-05-01 00:00:00', 'ZZ -  - ', 'no data', '12345', '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, '197.230.213.189', 'desktop', 'Windows', 'Chrome', '2023-05-19 08:09:19', 'Africa - Morocco - Casablanca-Settat - Casablanca', '36925 - orange.ma - MEDITELECOM - 197.230.192.0/18 - isp', '92500', '2023-05-19 06:57:03', '2023-05-19 06:59:19');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rule_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `token_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `rule_id`, `token_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sybluse', 'syb@gmail.com', 1, NULL, NULL, '$2y$10$.Sd6nYV6aVD8V.JKT1w27uS1G1oyhafI0sTfQK/YzoyuJ.zcgdBz6', NULL, '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(2, 'garena free fire', 'garena@gmail.com', 2, NULL, NULL, '$2y$10$GTMSmpWN4jCsnlBIj2q4uu1xn/kgKzlkUhky8.p.3L7vjZUFyjq6.', NULL, '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(3, 'Konami', 'Konami@gmail.com', 2, NULL, NULL, '$2y$10$3q8loVOJcKmBZcXM6HA/W.kut1C47ngYIsaVnnssGLjQEV3JwuiaC', NULL, '2023-05-19 06:57:02', '2023-05-19 06:57:02'),
(4, 'abdellah', 'admin@gmail.com', 3, 1, '2021-04-30 23:00:00', '$2y$10$sXbKSWWBU/Tc4SJaLgFevO//xfMy5oOxYA19tP/9ajXmJ.TGYhq/6', NULL, '2023-05-19 06:57:03', '2023-05-19 06:57:03'),
(5, 'abdellah', 'admin2@gmail.com', 3, 2, '2021-04-30 23:00:00', '$2y$10$M3LWDGiqUMM6If/DmIkpGePHkZbdRfFFSDsiQVYxI7p/PTm8rtLOC', NULL, '2023-05-19 06:57:03', '2023-05-19 06:57:03');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `feed_backs`
--
ALTER TABLE `feed_backs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_backs_user_id_foreign` (`user_id`),
  ADD KEY `feed_backs_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_category_id_foreign` (`category_id`),
  ADD KEY `games_user_id_foreign` (`user_id`);

--
-- Index pour la table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_category_id_foreign` (`category_id`),
  ADD KEY `meals_user_id_foreign` (`user_id`);

--
-- Index pour la table `meal_menu`
--
ALTER TABLE `meal_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meal_menu_menu_id_meal_id_unique` (`menu_id`,`meal_id`),
  ADD KEY `meal_menu_meal_id_foreign` (`meal_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_user_id_foreign` (`user_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pcontrollers`
--
ALTER TABLE `pcontrollers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_user_id_pcontroller_id_pmethode_id_unique` (`user_id`,`pcontroller_id`,`pmethode_id`),
  ADD KEY `permissions_pcontroller_id_foreign` (`pcontroller_id`),
  ADD KEY `permissions_pmethode_id_foreign` (`pmethode_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `pmethodes`
--
ALTER TABLE `pmethodes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_menu_id_user_id_date_unique` (`menu_id`,`user_id`,`date`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Index pour la table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rule_id_foreign` (`rule_id`),
  ADD KEY `users_token_id_foreign` (`token_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `feed_backs`
--
ALTER TABLE `feed_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `meal_menu`
--
ALTER TABLE `meal_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `pcontrollers`
--
ALTER TABLE `pcontrollers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pmethodes`
--
ALTER TABLE `pmethodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `feed_backs`
--
ALTER TABLE `feed_backs`
  ADD CONSTRAINT `feed_backs_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `feed_backs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `games_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `meals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `meal_menu`
--
ALTER TABLE `meal_menu`
  ADD CONSTRAINT `meal_menu_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_pcontroller_id_foreign` FOREIGN KEY (`pcontroller_id`) REFERENCES `pcontrollers` (`id`),
  ADD CONSTRAINT `permissions_pmethode_id_foreign` FOREIGN KEY (`pmethode_id`) REFERENCES `pmethodes` (`id`),
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rule_id_foreign` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`),
  ADD CONSTRAINT `users_token_id_foreign` FOREIGN KEY (`token_id`) REFERENCES `tokens` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

