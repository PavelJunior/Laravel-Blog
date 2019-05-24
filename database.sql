-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Май 23 2019 г., 22:29
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'category1', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 'category2', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 'category3', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 'category4', '2019-05-23 22:28:40', '2019-05-23 22:28:40');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `like` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(419, '2014_10_12_000000_create_users_table', 1),
(420, '2014_10_12_100000_create_password_resets_table', 1),
(421, '2019_04_04_160113_create_posts_table', 1),
(422, '2019_04_07_143631_create_tags_table', 1),
(423, '2019_04_07_144002_create_post_tags_pivot_table', 1),
(424, '2019_04_07_185704_create_comments_table', 1),
(425, '2019_04_12_121936_create_roles_table', 1),
(426, '2019_04_13_232813_create_category_table', 1),
(427, '2019_05_16_105410_create_likes_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
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
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `cover_image`, `preview`, `body`, `views`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '2', '3', 'Post #1', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 279, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, '3', '2', 'Post #2', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2425, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, '2', '2', 'Post #3', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1705, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, '3', '4', 'Post #4', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 94, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, '4', '1', 'Post #5', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 548, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, '3', '2', 'Post #6', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1249, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, '4', '3', 'Post #7', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 182, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, '3', '3', 'Post #8', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 488, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, '4', '1', 'Post #9', '9.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2157, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, '3', '4', 'Post #10', '10.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1080, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(11, '4', '2', 'Post #11', '0.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 162, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(12, '3', '4', 'Post #12', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 241, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(13, '2', '4', 'Post #13', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1427, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(14, '3', '1', 'Post #14', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2375, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(15, '3', '2', 'Post #15', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1623, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(16, '4', '2', 'Post #16', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 262, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(17, '4', '2', 'Post #17', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1447, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(18, '2', '4', 'Post #18', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1631, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(19, '4', '2', 'Post #19', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 482, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(20, '2', '1', 'Post #20', '9.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 976, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(21, '2', '3', 'Post #21', '10.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2043, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(22, '3', '2', 'Post #22', '0.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 637, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(23, '4', '4', 'Post #23', '1.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1779, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40');
INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `cover_image`, `preview`, `body`, `views`, `is_active`, `created_at`, `updated_at`) VALUES
(24, '3', '2', 'Post #24', '2.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 400, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(25, '3', '1', 'Post #25', '3.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 747, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(26, '3', '4', 'Post #26', '4.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1293, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(27, '4', '2', 'Post #27', '5.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1615, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(28, '3', '3', 'Post #28', '6.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 1096, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(29, '3', '3', 'Post #29', '7.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 132, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(30, '3', '2', 'Post #30', '8.jpg', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.', 'Ten years ago, laborers hammering away at Prague’s cobblestone streets would probably break for lunch with bag of fluffy rohliky bread rolls and some sliced ham, if they couldn’t make it to a pub for goulash and dumplings. Flash-forward to 2018 and the same stonemasons — as well as local shopkeepers, students and chief executives — are likely to prefer bun bo nam bo or pho soup for lunch at one of the city’s fast and cheap Vietnamese noodle restaurants, which have app of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by the of the city’s fast and cheap Vietnamese noodle restaurants, which have appeared by theeared by the dozens in the Czech capital over the past decade. What hadn’t shown up, however, was the idea that Vietnamese cuisine can be taken seriously, with complex techniques and in a fancier setting. That changed with last December’s opening of Taro, a surprisingly chic bistro in the forever up-and-coming Smichov neighborhood southwest of Old Town. Run by two brothers, Khanh and Giang Ta, Taro has no evening à la carte menu (there is one at lunch), instead offering just two options for dinner: a four-course tasting menu at 890 koruna (about $40) or a seven-course menu at 1,290 koruna per person, not including drinks. Cheap noodles this ain’t.', 2101, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, 9, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(11, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(12, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(13, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(14, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(15, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(16, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(17, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(18, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(19, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(20, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(21, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(22, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(23, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(24, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(25, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(26, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(27, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(28, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(29, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(1, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(11, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(12, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(13, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(14, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(15, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(16, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(17, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(18, 9, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(19, 9, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(20, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(21, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(22, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(23, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(24, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(25, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(26, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(27, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(28, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(29, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(1, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, 5, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(11, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(12, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(13, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(14, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(15, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(16, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(17, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(18, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(19, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(20, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(21, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(22, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(23, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(24, 9, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(25, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(26, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(27, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(28, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(29, 9, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(1, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 6, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, 10, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, 8, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, 4, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(11, 2, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(12, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(13, 7, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(14, 3, '2019-05-23 22:28:40', '2019-05-23 22:28:40');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
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
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `can_create_post`, `can_edit_own_post`, `can_delete_own_post`, `can_delete_other_posts`, `can_write_comment`, `can_delete_own_comments`, `can_delete_other_comments`, `can_delete_users`, `can_delete_moderators`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 'moderator', 1, 1, 1, 1, 1, 1, 1, 1, 0, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 'user', 1, 1, 1, 0, 1, 1, 0, 0, 0, '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 'not_verified_user', 0, 0, 0, 0, 1, 1, 0, 0, 0, '2019-05-23 22:28:40', '2019-05-23 22:28:40');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tag1', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(2, 'tag2', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(3, 'tag3', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(4, 'tag4', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(5, 'tag5', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(6, 'tag6', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(7, 'tag7', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(8, 'tag8', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(9, 'tag9', '2019-05-23 22:28:40', '2019-05-23 22:28:40'),
(10, 'tag10', '2019-05-23 22:28:40', '2019-05-23 22:28:40');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` tinyint(4) NOT NULL DEFAULT '4',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_id`, `provider`, `provider_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '79999999999', '$2y$10$KMBoYlGWTxMg6/3ENUb2j.F4K/O6d9GyFPo8jNanPFglTsDnlNAq2', 1, NULL, NULL, NULL, NULL, '2019-05-23 22:28:40', '2019-05-23 22:28:40', NULL),
(2, 'user1', 'user1@gmail.com', '79999999991', '$2y$10$WtGOJA3E4TNkf7lMJrnGuuWDMm3b131LcUkuU0mBfaxjyvLLl3JUC', 3, NULL, NULL, NULL, NULL, '2019-05-23 22:28:40', '2019-05-23 22:28:40', NULL),
(3, 'user2', 'user2@gmail.com', '79999999992', '$2y$10$AsBopHLsRxxdKRJC10q4jOOgxe.xDr62Zx3xw.barKA4xrNuJeOg2', 3, NULL, NULL, NULL, NULL, '2019-05-23 22:28:40', '2019-05-23 22:28:40', NULL),
(4, 'user3', 'user3@gmail.com', '79999999993', '$2y$10$BAoPYsqM2meDWGZRlMrJWOaSxDmcu5qdFt70ihhGSzQRu4tCaXgbq', 3, NULL, NULL, NULL, NULL, '2019-05-23 22:28:40', '2019-05-23 22:28:40', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;