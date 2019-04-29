-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 29, 2019 at 01:54 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'category1', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 'category2', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 'category3', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 'category4', '2019-04-29 13:53:17', '2019-04-29 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(233, '2014_10_12_000000_create_users_table', 1),
(234, '2014_10_12_100000_create_password_resets_table', 1),
(235, '2019_04_04_160113_create_posts_table', 1),
(236, '2019_04_07_143631_create_tags_table', 1),
(237, '2019_04_07_144002_create_post_tags_pivot_table', 1),
(238, '2019_04_07_185704_create_comments_table', 1),
(239, '2019_04_12_121936_create_roles_table', 1),
(240, '2019_04_13_232813_create_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `cover_image`, `preview`, `body`, `views`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2', '1', 'Post #1', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1934, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:23'),
(2, '2', '1', 'Post #2', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1529, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, '3', '3', 'Post #3', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1017, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, '4', '4', 'Post #4', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 622, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:27'),
(5, '4', '1', 'Post #5', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 771, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, '3', '3', 'Post #6', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1456, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:32'),
(7, '3', '2', 'Post #7', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1659, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, '2', '1', 'Post #8', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2387, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, '2', '4', 'Post #9', '9.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2223, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, '2', '4', 'Post #10', '10.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1214, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(11, '2', '3', 'Post #11', '0.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2976, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(12, '4', '3', 'Post #12', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 354, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(13, '3', '4', 'Post #13', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1856, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(14, '2', '2', 'Post #14', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1899, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(15, '3', '4', 'Post #15', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1782, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(16, '3', '3', 'Post #16', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1793, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(17, '2', '1', 'Post #17', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2405, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(18, '3', '3', 'Post #18', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2071, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(19, '2', '1', 'Post #19', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2006, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(20, '4', '3', 'Post #20', '9.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2671, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(21, '3', '4', 'Post #21', '10.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2708, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(22, '3', '1', 'Post #22', '0.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2803, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(23, '2', '4', 'Post #23', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 491, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17');
INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `cover_image`, `preview`, `body`, `views`, `is_active`, `created_at`, `updated_at`) VALUES
(24, '4', '2', 'Post #24', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 21, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(25, '3', '2', 'Post #25', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1731, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(26, '4', '3', 'Post #26', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1785, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(27, '4', '4', 'Post #27', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2671, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(28, '2', '3', 'Post #28', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2246, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(29, '4', '3', 'Post #29', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 37, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(30, '2', '3', 'Post #30', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1991, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(5, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(7, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(11, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(12, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(13, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(14, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(15, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(16, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(17, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(18, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(19, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(20, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(21, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(22, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(23, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(24, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(25, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(26, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(27, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(28, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(29, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(1, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(5, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(7, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(11, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(12, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(13, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(14, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(15, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(16, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(17, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(18, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(19, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(20, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(21, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(22, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(23, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(24, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(25, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(26, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(27, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(28, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(29, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(1, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 3, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(5, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(7, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(11, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(12, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(13, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(14, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(15, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(16, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(17, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(18, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(19, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(20, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(21, 9, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(22, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(23, 6, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(24, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(25, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(26, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(27, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(28, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(29, 8, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(1, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(5, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(7, 4, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, 7, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(11, 5, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(12, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(13, 2, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(14, 10, '2019-04-29 13:53:17', '2019-04-29 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_create_post` tinyint(1) NOT NULL,
  `can_edit_own_post` tinyint(1) NOT NULL,
  `can_delete_own_post` tinyint(1) NOT NULL,
  `can_delete_other_posts` tinyint(1) NOT NULL,
  `can_write_comment` tinyint(1) NOT NULL,
  `can_delete_own_comments` tinyint(1) NOT NULL,
  `can_delete_other_comments` tinyint(1) NOT NULL,
  `can_delete_users` tinyint(1) NOT NULL,
  `can_delete_moderators` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `can_create_post`, `can_edit_own_post`, `can_delete_own_post`, `can_delete_other_posts`, `can_write_comment`, `can_delete_own_comments`, `can_delete_other_comments`, `can_delete_users`, `can_delete_moderators`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 'moderator', 1, 1, 1, 1, 1, 1, 1, 1, 0, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 'user', 1, 1, 1, 0, 1, 1, 0, 0, 0, '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 'not_verified_user', 0, 0, 0, 0, 1, 1, 0, 0, 0, '2019-04-29 13:53:17', '2019-04-29 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tag1', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(2, 'tag2', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(3, 'tag3', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(4, 'tag4', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(5, 'tag5', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(6, 'tag6', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(7, 'tag7', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(8, 'tag8', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(9, 'tag9', '2019-04-29 13:53:17', '2019-04-29 13:53:17'),
(10, 'tag10', '2019-04-29 13:53:17', '2019-04-29 13:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` tinyint(4) NOT NULL DEFAULT '4',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_id`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '79999999999', '$2y$10$KKpfWytDhzC2meMUoIheWe.6TjGE4ugXdI9M94hTFwnOwN1zPaWhC', 1, NULL, NULL, '2019-04-29 13:53:17', '2019-04-29 13:53:17', NULL),
(2, 'user1', 'user1@gmail.com', '79999999991', '$2y$10$BEYG3W/Qft5LktuTtr13CeFSyVom5SVa8VHcT1NtRpMsVnUAA08G.', 3, NULL, NULL, '2019-04-29 13:53:17', '2019-04-29 13:53:17', NULL),
(3, 'user2', 'user2@gmail.com', '79999999992', '$2y$10$WG8NDParXPEdB3Sc7AN7AeF0WPrhML7.sZD7mJmWotYsPRb3Z8Z9m', 3, NULL, NULL, '2019-04-29 13:53:17', '2019-04-29 13:53:17', NULL),
(4, 'user3', 'user3@gmail.com', '79999999993', '$2y$10$RrmAo49ArtiiZb6Ozr8ewOJ.mrvaNh2RG7oTafQlDZwc/s/reV6PC', 3, NULL, NULL, '2019-04-29 13:53:17', '2019-04-29 13:53:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
