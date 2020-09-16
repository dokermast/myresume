-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 10 2020 г., 09:59
-- Версия сервера: 5.7.29
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lavue`
--

-- --------------------------------------------------------

--
-- Структура таблицы `aboutmes`
--

CREATE TABLE `aboutmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `aboutmes`
--

INSERT INTO `aboutmes` (`id`, `name`, `info`, `status`, `created_at`, `updated_at`) VALUES
(1, 'first', 'Hi! I\'m Vitalii Chebotnikov. I\'m a web-developer. I started as a QA Automation tester. I started to learn the JAVA myself and finished the QA Automation courses (got a certificate). Like a freelancer, I had tested two IT-projects. I continued my self web-education and on the courses of the IT Step academy (web-development, 1 year). While I was studying I made my first little commercial project (a little corporate application). <br> My first full-time job was a position in the Managerigs.com. In that company, I was developing admin-panel and background functionality, the main site, and user cabinet. My next full-time job was a position in the Mementia company. My main work was customization and support existing e-commerce projects. I worked with Symfony/Prestashop/Shopify/Magento2/Odoo projects. Almost two years I am working out stuff on a Symfony project <br> Since 12.2019 I work a little part-time in the Mementia on the Symfony project and work as a freelancer. I can\'t show these projects in my portfolio cause NDA. But I can show my little training projects in the \"My APPs\" (complemented by permanently) <br> About stacks that I use. Mainly I use PHP, a little JS/JQuery & sometimes Python. I can execute not difficult tasks on the front-end but I like to work with back-end more. I can work with Rest API, I know Docker a little. I work with Composer / Git / Jira. I can create REST API. <br> This site I created myself on the AWS (Linux / Apache / PHP / MySQL). I used Laravel & Bootstrap & Vue.JS. All content adds through Admin panel. I can solve many tasks on my own.', 1, NULL, '2020-09-08 03:54:34'),
(2, 'second', 'lorem ipsum', 0, NULL, '2020-08-28 12:26:02');

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `avatars`
--

INSERT INTO `avatars` (`id`, `filename`, `path`, `status`, `created_at`, `updated_at`) VALUES
(9, 'data_dude.svg', '/storage/app/public/uploads/avatars/tecH0atQJA6zMhlHggbFhle5zYusvMFF0HkXxBrU.svg', 0, '2020-08-28 13:41:42', '2020-09-08 03:49:30'),
(10, 'jedi_dude.svg', '/storage/app/public/uploads/avatars/XjhRbN6vGTrgKlMeqYQhGZKKt7kAmzLsuq6scIXD.svg', 0, '2020-08-28 13:44:47', '2020-08-28 13:44:47'),
(11, 'smile_dude.svg', '/storage/app/public/uploads/avatars/eqkm1rS0EGkVXol8lWQFKKRmMOqsWh1blHw5dIiM.svg', 1, '2020-08-28 13:44:54', '2020-09-08 03:49:30');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `year`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'book_one_one', 'author_one', '2020', '2', NULL, '2020-08-20 08:13:49'),
(2, 'book_two', 'Bill', '2001', '3', '2020-08-19 13:45:58', '2020-08-19 13:45:58'),
(3, 'Book_6', 'Author_5', '1978', '3', '2020-08-19 10:58:26', '2020-08-19 10:58:26'),
(4, 'mementia', 'admin', '3434', '1', '2020-08-19 11:06:45', '2020-08-19 11:06:45'),
(5, 'Book_999', 'Author_5', '1000', '3', '2020-08-19 11:26:25', '2020-08-20 08:10:53'),
(6, 'Book SUPER', 'solomon', '3434', '2', '2020-08-19 11:29:31', '2020-08-20 07:33:31'),
(7, 'Book_56', 'ASANA', '1978', '3', '2020-08-20 07:45:34', '2020-08-20 07:45:34'),
(8, 'Book_56', 'ASANA', '1978', '3', '2020-08-20 08:03:58', '2020-08-20 08:03:58'),
(9, 'Book_56', 'ASANA', '1978', '3', '2020-08-20 08:16:22', '2020-08-20 08:16:22'),
(10, 'Book_ASANA', 'SUPER_ASANA', '1978', '3', '2020-08-20 08:17:33', '2020-08-20 08:17:33'),
(11, 'VITALII CHEBOTNIKOV', 'феофан', '123213', '1', '2020-08-20 08:30:46', '2020-08-20 08:30:46'),
(12, 'Chebotnikov Vit', 'NameN', '4444', '3', '2020-08-21 02:00:46', '2020-08-21 02:00:57');

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `filename`, `path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bgcode.png', 'uploads/images/HxoyNlNlteKz9DMf0lYAu0UBVWECeNjBhf6Grv8W.png', 1, '2020-08-28 12:10:05', '2020-08-28 12:11:34'),
(2, 'bgcodealt.png', 'uploads/images/LCPMUnUirW7uWYlOlGI9zuugVrwFAtSMw3qI3PjE.png', 0, '2020-08-28 12:11:06', '2020-08-28 12:11:06');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dateRange` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyName` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeJob` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `library` text COLLATE utf8mb4_unicode_ci,
  `langs` text COLLATE utf8mb4_unicode_ci,
  `stack` text COLLATE utf8mb4_unicode_ci,
  `additions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `dateRange`, `companyName`, `typeJob`, `position`, `library`, `langs`, `stack`, `additions`, `companyLink`, `created_at`, `updated_at`) VALUES
(1, '09.2017 - 05.2018', 'Freelance', 'freelance projects', 'QA manual', NULL, NULL, NULL, 'manual testing', NULL, '2020-08-11 15:06:35', '2020-08-11 15:06:35'),
(2, '05.2018 - 11.2018', 'Managerigs.com', 'full-time', 'web developer', 'Bootstrap', 'PHP, JS, Python', 'HTML/ CSS/ Bootstrap/ MySQL', 'Worked with main site, created client cabinet, customized admin panel, created chat bot', 'https://managerigs.com/', '2020-08-06 16:30:59', '2020-09-08 03:56:15'),
(3, '12.2018 - 12.2020', 'Mementia.com', 'full-time!', 'web developer', 'Symfony/ Prestashop/ Shopify/ Magento2/ Odoo', 'PHP, JS, Python', 'HTML/ CSS/ Bootstrap/ MySQL/', 'Support & customization e-commerce projects', 'https://mementia.com/', '2020-08-06 16:34:13', '2020-09-08 03:56:44'),
(4, '12.2019 - current time', 'Mementia.com', 'part-time', 'web developer', 'Symfony', 'PHP, JS', 'HTML/ CSS/ Bootstrap/ MySQL/ JQuery/ Git', 'customization e-commerce Symfony project', 'https://mementia.com/', '2020-08-10 15:35:10', '2020-09-08 03:56:56'),
(5, '12.2019 - current time', 'freelance', 'part-time', 'web developer', 'Laravel/ Vue.JS', 'PHP, JS', 'HTML/ CSS/ Bootstrap/ MySQL/ JQuery/ Git', 'work with small Laravel projects', NULL, '2020-08-10 15:36:39', '2020-09-10 02:53:09');

-- --------------------------------------------------------

--
-- Структура таблицы `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `letters`
--

INSERT INTO `letters` (`id`, `filename`, `path`, `status`, `created_at`, `updated_at`) VALUES
(3, 'CV_Chebotnikovi_2020.rtf', 'uploads/letters/CV_Chebotnikovi_2020.rtf', 0, '2020-09-09 05:31:44', '2020-09-09 05:46:50'),
(4, 'CV_Chebotnikov.rtf', 'uploads/letters/CV_Chebotnikov.rtf', 1, '2020-09-09 05:46:47', '2020-09-09 05:46:50');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_06_144612_create_jobs_table', 2),
(5, '2020_08_08_153211_create_avatars_table', 2),
(6, '2020_08_11_060335_create_aboutmes_table', 2),
(7, '2020_08_11_093250_create_images_table', 2),
(8, '2020_08_11_202042_create_letters_table', 2),
(9, '2020_08_13_091939_create_projects_table', 2),
(10, '2020_08_17_143219_create_cache_table', 2),
(11, '2020_08_17_165411_create_visitors_table', 2),
(12, '2020_09_10_051828_add_location_to_visitors_table', 3);

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
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `git_link` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `name`, `link`, `git_link`, `skills`, `description`, `img_name`, `img_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Calculating the amount of purchases', 'http://www.vitchedev.net/countapi/', 'https://github.com/dokermast/countapi', 'Laravel / PHP / Mysql / JSON', 'This is an API for calculating the total value of goods in different currencies.\r\nIt receives data for each product (currency, price, quantity) and returns the amount in the selected currency.\r\nrequest:  http://www.vitchedev.net/countapi/api/count\r\n\r\nrequest method: POST\r\n\r\ninput data format :\r\n\r\n{\r\n  \"items\": {\r\n    \"product_42\": {\r\n      \"currency\": \"EUR\",\r\n      \"price\": 49.99,\r\n      \"quantity\": 1\r\n    },\r\n    \"product_55\": {\r\n      \"currency\": \"USD\",\r\n      \"price\": 12,\r\n      \"quantity\": 3\r\n    }\r\n  },\r\n  \"checkoutCurrency\": \"EUR\"\r\n}', 'count.jpg', 'uploads/images/i5viW3YmvN8CZ3xGGpy4L4GKDwRMf95LaemwmANo.jpeg', 1, '2020-09-08 04:01:35', '2020-09-08 04:40:58'),
(2, 'Currency exchange app', 'http://www.vitchedev.net/curency/', 'https://github.com/dokermast/curency', 'HTML / CSS / Bootstrap / JS / JQuery / AJAX / MySQL / PHP', 'This app gets currencies rates from free api , and returns exchange result.', 'count.jpeg', 'uploads/images/jQCcdlDSDYOpV7rOmni4v9zUKHEu5f8CZLAUuHB8.jpeg', 1, '2020-09-08 04:03:22', '2020-09-08 04:13:56');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$6x6GyJIJ97g12P/EhMUKyeZ7Qa9.RZ9mRWvIB34vN1c/0vHjIkRH6', NULL, '2020-09-09 04:07:26', '2020-09-09 04:07:26'),
(2, 'doker42', 'DOKER42@GMAIL.COM', NULL, '$2y$10$yV/PkIFR4xrAS6pfgrKiReTYcExhnNDw4iadALjbdCJAHzlpOe7ZS', NULL, '2020-09-09 04:09:27', '2020-09-09 04:09:27');

-- --------------------------------------------------------

--
-- Структура таблицы `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited_date` datetime NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `visited_date`, `hits`, `created_at`, `updated_at`, `location`) VALUES
(1, '127.0.0.1', '2020-09-10 05:12:21', 442, '2020-08-29 17:29:31', '2020-09-10 02:12:21', ''),
(2, '52.114.75.71', '2020-09-10 05:37:17', 7, '2020-09-10 02:28:23', '2020-09-10 02:37:17', 'Netherlands : Diemen'),
(3, '127.0.0.1', '2020-09-10 06:22:20', 6, '2020-09-10 02:42:57', '2020-09-10 03:22:21', ' : ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `aboutmes`
--
ALTER TABLE `aboutmes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `letters`
--
ALTER TABLE `letters`
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
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `aboutmes`
--
ALTER TABLE `aboutmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
