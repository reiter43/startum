-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2019 г., 13:16
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `smartum`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(69, 317, 'a:2:{s:12:\"cfdb7_status\";s:6:\"unread\";s:5:\"phone\";s:17:\"+7 (222) 222 2222\";}', '2019-12-18 16:29:53'),
(70, 317, 'a:2:{s:12:\"cfdb7_status\";s:6:\"unread\";s:5:\"phone\";s:17:\"+7 (444) 444 4444\";}', '2019-12-18 16:30:37');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://smartum', 'yes'),
(2, 'home', 'http://smartum', 'yes'),
(3, 'blogname', 'Smartum', 'yes'),
(4, 'blogdescription', 'Главная', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '43reiter@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:214:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"programs/?$\";s:28:\"index.php?post_type=programs\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=programs&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=programs&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=programs&paged=$matches[1]\";s:10:\"reviews/?$\";s:27:\"index.php?post_type=reviews\";s:40:\"reviews/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=reviews&feed=$matches[1]\";s:35:\"reviews/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=reviews&feed=$matches[1]\";s:27:\"reviews/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=reviews&paged=$matches[1]\";s:10:\"centers/?$\";s:27:\"index.php?post_type=centers\";s:40:\"centers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=centers&feed=$matches[1]\";s:35:\"centers/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=centers&feed=$matches[1]\";s:27:\"centers/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=centers&paged=$matches[1]\";s:9:\"quests/?$\";s:26:\"index.php?post_type=quests\";s:39:\"quests/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=quests&feed=$matches[1]\";s:34:\"quests/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=quests&feed=$matches[1]\";s:26:\"quests/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=quests&paged=$matches[1]\";s:11:\"articles/?$\";s:28:\"index.php?post_type=articles\";s:41:\"articles/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:36:\"articles/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:28:\"articles/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=articles&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:41:\"index.php?programs=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:35:\"index.php?programs=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?programs=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?programs=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?programs=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?programs=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?programs=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"reviews/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"reviews/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"reviews/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"reviews/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"reviews/([^/]+)/embed/?$\";s:40:\"index.php?reviews=$matches[1]&embed=true\";s:28:\"reviews/([^/]+)/trackback/?$\";s:34:\"index.php?reviews=$matches[1]&tb=1\";s:48:\"reviews/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?reviews=$matches[1]&feed=$matches[2]\";s:43:\"reviews/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?reviews=$matches[1]&feed=$matches[2]\";s:36:\"reviews/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&paged=$matches[2]\";s:43:\"reviews/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&cpage=$matches[2]\";s:32:\"reviews/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?reviews=$matches[1]&page=$matches[2]\";s:24:\"reviews/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"reviews/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"reviews/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"reviews/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"centers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"centers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"centers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"centers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"centers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"centers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"centers/([^/]+)/embed/?$\";s:40:\"index.php?centers=$matches[1]&embed=true\";s:28:\"centers/([^/]+)/trackback/?$\";s:34:\"index.php?centers=$matches[1]&tb=1\";s:48:\"centers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?centers=$matches[1]&feed=$matches[2]\";s:43:\"centers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?centers=$matches[1]&feed=$matches[2]\";s:36:\"centers/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?centers=$matches[1]&paged=$matches[2]\";s:43:\"centers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?centers=$matches[1]&cpage=$matches[2]\";s:32:\"centers/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?centers=$matches[1]&page=$matches[2]\";s:24:\"centers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"centers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"centers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"centers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"centers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"centers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"program/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:43:\"program/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:24:\"program/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:36:\"program/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:18:\"program/([^/]+)/?$\";s:29:\"index.php?program=$matches[1]\";s:34:\"quests/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"quests/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"quests/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"quests/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"quests/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"quests/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"quests/([^/]+)/embed/?$\";s:39:\"index.php?quests=$matches[1]&embed=true\";s:27:\"quests/([^/]+)/trackback/?$\";s:33:\"index.php?quests=$matches[1]&tb=1\";s:47:\"quests/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?quests=$matches[1]&feed=$matches[2]\";s:42:\"quests/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?quests=$matches[1]&feed=$matches[2]\";s:35:\"quests/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?quests=$matches[1]&paged=$matches[2]\";s:42:\"quests/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?quests=$matches[1]&cpage=$matches[2]\";s:31:\"quests/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?quests=$matches[1]&page=$matches[2]\";s:23:\"quests/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"quests/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"quests/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"quests/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"quests/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"quests/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"articles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articles/([^/]+)/embed/?$\";s:41:\"index.php?articles=$matches[1]&embed=true\";s:29:\"articles/([^/]+)/trackback/?$\";s:35:\"index.php?articles=$matches[1]&tb=1\";s:49:\"articles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:44:\"articles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:37:\"articles/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&paged=$matches[2]\";s:44:\"articles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&cpage=$matches[2]\";s:33:\"articles/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articles=$matches[1]&page=$matches[2]\";s:25:\"articles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"admin-menu-editor/menu-editor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:21:\"translit-it/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'smartum', 'yes'),
(41, 'stylesheet', 'smartum', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1589203906', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1576751483;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576762308;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576762309;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576762353;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576762355;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"E2EqwGuQPgOcWYIzYgpfhp\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BktsE4JBFxqiO6LvjBy5U0o5UV7M1O1\";s:10:\"created_at\";i:1576683880;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573653465;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(149, 'ws_menu_editor', 'a:24:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";a:6:{s:4:\"tree\";a:26:{s:9:\"index.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"index.php>index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Главная\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"index.php>update-core.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:100:\"Обновления <span class=\'update-plugins count-1\'><span class=\'update-count\'>1</span></span>\";s:12:\"access_level\";s:11:\"update_core\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"update-core.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"update-core.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Консоль\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:43:\"menu-top menu-top-first menu-icon-dashboard\";s:8:\"hookname\";s:14:\"menu-dashboard\";s:8:\"icon_url\";s:19:\"dashicons-dashboard\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"separator_DbtnC\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";s:17:\"custom_item_dkuWs\";s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"separator_DbtnC\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:23:\"edit.php?post_type=page\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\">edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:47:\"edit.php?post_type=page>edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:23:\"Все страницы\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:51:\"edit.php?post_type=page>post-new.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новую\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"post-new.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"post-new.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:16:\"Страницы\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:23:\"menu-top menu-icon-page\";s:8:\"hookname\";s:10:\"menu-pages\";s:8:\"icon_url\";s:20:\"dashicons-admin-page\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_6\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_6\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_6\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:8:\"edit.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:9:\">edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:17:\"edit.php>edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:19:\"Все записи\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"edit.php>post-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новую\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"post-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"post-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=category\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Рубрики\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=category\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=category\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=post_tag\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Метки\";s:12:\"access_level\";s:16:\"manage_post_tags\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Записи\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:37:\"menu-top menu-icon-post open-if-no-js\";s:8:\"hookname\";s:10:\"menu-posts\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:27:\"edit.php?post_type=programs\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:28:\">edit.php?post_type=programs\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:55:\"edit.php?post_type=programs>edit.php?post_type=programs\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Программы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"edit.php?post_type=programs\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=programs\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"edit.php?post_type=programs\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:59:\"edit.php?post_type=programs>post-new.php?post_type=programs\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новую\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"post-new.php?post_type=programs\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=programs\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"post-new.php?post_type=programs\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:82:\"edit.php?post_type=programs>edit-tags.php?taxonomy=category&amp;post_type=programs\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Рубрики\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:54:\"edit-tags.php?taxonomy=category&amp;post_type=programs\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=programs\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:50:\"edit-tags.php?taxonomy=category&post_type=programs\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Программы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"edit.php?post_type=programs\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-programs\";s:8:\"hookname\";s:19:\"menu-posts-programs\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"edit.php?post_type=programs\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:26:\"edit.php?post_type=reviews\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:27:\">edit.php?post_type=reviews\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:53:\"edit.php?post_type=reviews>edit.php?post_type=reviews\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Отзывы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=reviews\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=reviews\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=reviews\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:57:\"edit.php?post_type=reviews>post-new.php?post_type=reviews\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новый\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:30:\"post-new.php?post_type=reviews\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=reviews\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"post-new.php?post_type=reviews\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Отзывы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=reviews\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-reviews\";s:8:\"hookname\";s:18:\"menu-posts-reviews\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=reviews\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:26:\"edit.php?post_type=centers\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:27:\">edit.php?post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:5:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:53:\"edit.php?post_type=centers>edit.php?post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Центры\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=centers\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:57:\"edit.php?post_type=centers>post-new.php?post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новый\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:30:\"post-new.php?post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=centers\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"post-new.php?post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:78:\"edit.php?post_type=centers>edit-tags.php?taxonomy=social&amp;post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:29:\"Соцсети центров\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:51:\"edit-tags.php?taxonomy=social&amp;post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=centers\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:47:\"edit-tags.php?taxonomy=social&post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:79:\"edit.php?post_type=centers>edit-tags.php?taxonomy=program&amp;post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:31:\"Программы центра\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:52:\"edit-tags.php?taxonomy=program&amp;post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=centers\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:48:\"edit-tags.php?taxonomy=program&post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:80:\"edit.php?post_type=centers>edit-tags.php?taxonomy=teachers&amp;post_type=centers\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:41:\"Преподаватели центров\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:53:\"edit-tags.php?taxonomy=teachers&amp;post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=centers\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:49:\"edit-tags.php?taxonomy=teachers&post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Центры\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=centers\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-centers\";s:8:\"hookname\";s:18:\"menu-posts-centers\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=centers\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}s:25:\"edit.php?post_type=quests\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:26:\">edit.php?post_type=quests\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:51:\"edit.php?post_type=quests>edit.php?post_type=quests\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Вопросы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:25:\"edit.php?post_type=quests\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:25:\"edit.php?post_type=quests\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"edit.php?post_type=quests\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:55:\"edit.php?post_type=quests>post-new.php?post_type=quests\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новый\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:29:\"post-new.php?post_type=quests\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:25:\"edit.php?post_type=quests\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"post-new.php?post_type=quests\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Вопросы\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:25:\"edit.php?post_type=quests\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:25:\"menu-top menu-icon-quests\";s:8:\"hookname\";s:17:\"menu-posts-quests\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"edit.php?post_type=quests\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:27:\"edit.php?post_type=articles\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:28:\">edit.php?post_type=articles\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:55:\"edit.php?post_type=articles>edit.php?post_type=articles\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Статьи\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"edit.php?post_type=articles\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=articles\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"edit.php?post_type=articles\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:59:\"edit.php?post_type=articles>post-new.php?post_type=articles\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новую\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"post-new.php?post_type=articles\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=articles\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"post-new.php?post_type=articles\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:82:\"edit.php?post_type=articles>edit-tags.php?taxonomy=category&amp;post_type=articles\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Рубрики\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:54:\"edit-tags.php?taxonomy=category&amp;post_type=articles\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:27:\"edit.php?post_type=articles\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:50:\"edit-tags.php?taxonomy=category&post_type=articles\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Статьи\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"edit.php?post_type=articles\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-articles\";s:8:\"hookname\";s:19:\"menu-posts-articles\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"edit.php?post_type=articles\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_7\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:10;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"upload.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:11;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"upload.php>upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Библиотека\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"upload.php>media-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новый\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"media-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"media-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Медиафайлы\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-media\";s:8:\"hookname\";s:10:\"menu-media\";s:8:\"icon_url\";s:21:\"dashicons-admin-media\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_8\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:12;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_8\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_8\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:5:\"wpcf7\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:13;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:6:\">wpcf7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\"wpcf7>wpcf7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:58:\"Редактировать контактную форму\";s:10:\"menu_title\";s:31:\"Контактные формы\";s:12:\"access_level\";s:24:\"wpcf7_read_contact_forms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:5:\"wpcf7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:5:\"wpcf7\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:20:\"admin.php?page=wpcf7\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:15:\"wpcf7>wpcf7-new\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:48:\"Добавить контактную форму\";s:10:\"menu_title\";s:27:\"Добавить новую\";s:12:\"access_level\";s:24:\"wpcf7_edit_contact_forms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"wpcf7-new\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:5:\"wpcf7\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"admin.php?page=wpcf7-new\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:23:\"wpcf7>wpcf7-integration\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:57:\"Интеграция с другими сервисами\";s:10:\"menu_title\";s:20:\"Интеграция\";s:12:\"access_level\";s:24:\"wpcf7_manage_integration\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"wpcf7-integration\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:5:\"wpcf7\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:32:\"admin.php?page=wpcf7-integration\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:14:\"Contact Form 7\";s:10:\"menu_title\";s:14:\"Contact Form 7\";s:12:\"access_level\";s:24:\"wpcf7_read_contact_forms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:5:\"wpcf7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:28:\"menu-top toplevel_page_wpcf7\";s:8:\"hookname\";s:19:\"toplevel_page_wpcf7\";s:8:\"icon_url\";s:15:\"dashicons-email\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:20:\"admin.php?page=wpcf7\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:14:\"cfdb7-list.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:14;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:15:\">cfdb7-list.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:29:\"cfdb7-list.php>cfdb7-list.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:13:\"Contact Forms\";s:10:\"menu_title\";s:13:\"Contact Forms\";s:12:\"access_level\";s:12:\"cfdb7_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"cfdb7-list.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:14:\"cfdb7-list.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"admin.php?page=cfdb7-list.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"cfdb7-list.php>cfdb7-extensions\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:10:\"Extensions\";s:10:\"menu_title\";s:10:\"Extensions\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"cfdb7-extensions\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:14:\"cfdb7-list.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"admin.php?page=cfdb7-extensions\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:13:\"Contact Forms\";s:10:\"menu_title\";s:13:\"Contact Forms\";s:12:\"access_level\";s:12:\"cfdb7_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"cfdb7-list.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:33:\"menu-top toplevel_page_cfdb7-list\";s:8:\"hookname\";s:24:\"toplevel_page_cfdb7-list\";s:8:\"icon_url\";s:19:\"dashicons-list-view\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"admin.php?page=cfdb7-list.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"separator_I4zvw\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:15;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";s:17:\"custom_item_SdMKU\";s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"separator_I4zvw\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:34:\"edit.php?post_type=acf-field-group\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:16;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\">edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:69:\"edit.php?post_type=acf-field-group>edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"Группы полей\";s:10:\"menu_title\";s:23:\"Группы полей\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:73:\"edit.php?post_type=acf-field-group>post-new.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:16:\"Добавить\";s:10:\"menu_title\";s:16:\"Добавить\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:38:\"post-new.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"post-new.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:44:\"edit.php?post_type=acf-field-group>acf-tools\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:22:\"Инструменты\";s:10:\"menu_title\";s:22:\"Инструменты\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"acf-tools\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:49:\"edit.php?post_type=acf-field-group&page=acf-tools\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"Группы полей\";s:10:\"menu_title\";s:23:\"Группы полей\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:53:\"menu-top toplevel_page_edit?post_type=acf-field-group\";s:8:\"hookname\";s:44:\"toplevel_page_edit?post_type=acf-field-group\";s:8:\"icon_url\";s:31:\"dashicons-welcome-widgets-menus\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"separator_Wbebp\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:17;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";s:17:\"custom_item_cqoam\";s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"separator_Wbebp\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:19:\"options-general.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:18;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\">options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:9:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Общие\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-writing.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Написание\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-writing.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-writing.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-reading.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Чтение\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-reading.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-reading.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:42:\"options-general.php>options-discussion.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Обсуждение\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:22:\"options-discussion.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:22:\"options-discussion.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:37:\"options-general.php>options-media.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Медиафайлы\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"options-media.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"options-media.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:41:\"options-general.php>options-permalink.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:33:\"Постоянные ссылки\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:21:\"options-permalink.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:21:\"options-permalink.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"options-general.php>privacy.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:36:\"Конфиденциальность\";s:12:\"access_level\";s:22:\"manage_privacy_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"privacy.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"privacy.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:41:\"options-general.php>translit-it/index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:36:\"Транслитерируй это!\";s:10:\"menu_title\";s:36:\"Транслитерируй это!\";s:12:\"access_level\";s:7:\"level_8\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:21:\"translit-it/index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:48:\"options-general.php?page=translit-it%2Findex.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:8;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"options-general.php>menu_editor\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:11:\"Menu Editor\";s:10:\"menu_title\";s:11:\"Menu Editor\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"menu_editor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"options-general.php?page=menu_editor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Настройки\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-settings\";s:8:\"hookname\";s:13:\"menu-settings\";s:8:\"icon_url\";s:24:\"dashicons-admin-settings\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"themes.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:19;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"themes.php>themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Темы\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>customize.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Настроить\";s:12:\"access_level\";s:9:\"customize\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:98:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:98:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>nav-menus.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Меню\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"nav-menus.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"nav-menus.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:27:\"themes.php>theme-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"Редактор тем\";s:10:\"menu_title\";s:23:\"Редактор тем\";s:12:\"access_level\";s:11:\"edit_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"theme-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:16:\"theme-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:21:\"Внешний вид\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"menu-top menu-icon-appearance\";s:8:\"hookname\";s:15:\"menu-appearance\";s:8:\"icon_url\";s:26:\"dashicons-admin-appearance\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"plugins.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:20;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:23:\"plugins.php>plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:26:\"Установленные\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"plugins.php>plugin-install.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Добавить новый\";s:12:\"access_level\";s:15:\"install_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"plugin-install.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:18:\"plugin-install.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:29:\"plugins.php>plugin-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:33:\"Редактор плагинов\";s:12:\"access_level\";s:12:\"edit_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"plugin-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"plugin-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:94:\"Плагины <span class=\'update-plugins count-0\'><span class=\'plugin-count\'>0</span></span>\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-plugins\";s:8:\"hookname\";s:12:\"menu-plugins\";s:8:\"icon_url\";s:23:\"dashicons-admin-plugins\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"separator_xBhdH\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:21;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";s:17:\"custom_item_Keys2\";s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"separator_xBhdH\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"users.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:22;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"users.php>users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:31:\"Все пользователи\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:22:\"users.php>user-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:29:\"Добавить нового\";s:12:\"access_level\";s:12:\"create_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"user-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"user-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"users.php>profile.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:21:\"Ваш профиль\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"profile.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"profile.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:24:\"Пользователи\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-users\";s:8:\"hookname\";s:10:\"menu-users\";s:8:\"icon_url\";s:21:\"dashicons-admin-users\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:17:\"edit-comments.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:23;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:18:\">edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:1:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\"edit-comments.php>edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:29:\"Все комментарии\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"edit-comments.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:242:\"Комментарии <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 комментариев ждут одобрения</span></span>\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-comments\";s:8:\"hookname\";s:13:\"menu-comments\";s:8:\"icon_url\";s:24:\"dashicons-admin-comments\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"tools.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:24;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:6:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"tools.php>tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:29:\"Все инструменты\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>import.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Импорт\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"import.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"import.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>export.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:14:\"Экспорт\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"export.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"export.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"tools.php>site-health.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:27:\"Здоровье сайта\";s:12:\"access_level\";s:23:\"view_site_health_checks\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"site-health.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"site-health.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"tools.php>export_personal_data\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:52:\"Экспорт персональных данных\";s:10:\"menu_title\";s:52:\"Экспорт персональных данных\";s:12:\"access_level\";s:27:\"export_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:20:\"export_personal_data\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:35:\"tools.php?page=export_personal_data\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"tools.php>remove_personal_data\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:54:\"Удаление персональных данных\";s:10:\"menu_title\";s:54:\"Удаление персональных данных\";s:12:\"access_level\";s:26:\"erase_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:20:\"remove_personal_data\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:35:\"tools.php?page=remove_personal_data\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:22:\"Инструменты\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-tools\";s:8:\"hookname\";s:10:\"menu-tools\";s:8:\"icon_url\";s:21:\"dashicons-admin-tools\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"separator_6k38k\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:25;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";s:17:\"custom_item_VmwKr\";s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"separator_6k38k\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:6:\"format\";a:3:{s:4:\"name\";s:22:\"Admin Menu Editor menu\";s:7:\"version\";s:3:\"7.0\";s:13:\"is_normalized\";b:1;}s:13:\"color_presets\";a:0:{}s:20:\"component_visibility\";a:0:{}s:22:\"has_modified_dashicons\";b:0;s:21:\"prebuilt_virtual_caps\";a:2:{i:2;a:0:{}i:3;a:0:{}}}s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1573652068;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:0;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(150, 'acf_version', '5.8.7', 'yes'),
(153, 'rtl_standard', 'yandex', 'yes'),
(154, 'rtl_translate', '', 'yes'),
(155, 'ya_api_key', '', 'yes'),
(158, 'current_theme', 'smartum', 'yes'),
(159, 'theme_mods_smartum', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:9:\"top-inner\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:95;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(226, 'recovery_mode_email_last_sent', '1576683880', 'yes'),
(332, 'new_admin_email', '43reiter@gmail.com', 'yes'),
(365, 'db_upgraded', '', 'yes'),
(367, 'can_compress_scripts', '1', 'no'),
(380, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"43reiter@gmail.com\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1576236290;}', 'no'),
(493, 'a3_lazy_load_version', '2.0.0', 'yes'),
(495, 'a3_lazy_load_global_settings', 'a:22:{s:20:\"a3l_apply_lazyloadxt\";b:1;s:19:\"a3l_apply_to_images\";b:0;s:26:\"a3l_apply_image_to_content\";b:0;s:29:\"a3l_apply_image_to_textwidget\";b:1;s:33:\"a3l_apply_image_to_postthumbnails\";b:1;s:28:\"a3l_apply_image_to_gravatars\";b:1;s:25:\"a3l_skip_image_with_class\";s:0:\"\";s:26:\"a3l_image_include_noscript\";b:1;s:19:\"a3l_apply_to_videos\";b:0;s:26:\"a3l_apply_video_to_content\";b:1;s:29:\"a3l_apply_video_to_textwidget\";b:1;s:25:\"a3l_skip_video_with_class\";s:0:\"\";s:26:\"a3l_video_include_noscript\";b:1;s:16:\"a3l_uris_exclude\";s:0:\"\";s:19:\"a3l_objects_exclude\";a:12:{s:4:\"home\";i:0;s:5:\"front\";i:0;s:4:\"post\";i:0;s:4:\"page\";i:0;s:8:\"category\";i:0;s:3:\"tag\";i:0;s:6:\"search\";i:0;s:6:\"author\";i:0;s:7:\"archive\";i:0;s:8:\"services\";i:0;s:8:\"programs\";i:0;s:7:\"reviews\";i:0;}s:16:\"a3l_theme_loader\";s:9:\"wp_footer\";s:27:\"a3l_load_disable_on_wptouch\";b:1;s:31:\"a3l_load_disable_on_mobilepress\";b:1;s:10:\"a3l_effect\";s:7:\"spinner\";s:21:\"a3l_effect_background\";s:7:\"#ffffff\";s:9:\"a3l_edgeY\";s:1:\"0\";s:42:\"a3l_jetpack_site_accelerator_compatibility\";b:0;}', 'yes'),
(496, 'a3_lazy_load_clean_on_deletion', '0', 'yes'),
(499, 'a3_lazy_load_toggle_box_open', '0', 'yes'),
(500, 'a3_lazy_load_style_version', '1574242997', 'yes'),
(833, 'fw_active_extensions', 'a:12:{s:4:\"blog\";a:0:{}s:6:\"update\";a:0:{}s:16:\"bitbucket-update\";a:0:{}s:13:\"custom-update\";a:0:{}s:13:\"github-update\";a:0:{}s:10:\"shortcodes\";a:0:{}s:12:\"page-builder\";a:0:{}s:17:\"editor-shortcodes\";a:0:{}s:7:\"builder\";a:0:{}s:5:\"forms\";a:0:{}s:13:\"contact-forms\";a:0:{}s:6:\"mailer\";a:0:{}}', 'yes'),
(843, 'fw_ext_settings_options:page-builder', 'a:1:{s:10:\"post_types\";a:6:{s:4:\"post\";b:1;s:4:\"page\";b:1;s:8:\"programs\";b:1;s:7:\"reviews\";b:1;s:7:\"centers\";b:1;s:8:\"articles\";b:1;}}', 'no'),
(870, 'category_children', 'a:2:{i:6;a:1:{i:0;i:7;}i:13;a:5:{i:0;i:8;i:1;i:9;i:2;i:10;i:3;i:11;i:4;i:12;}}', 'yes'),
(922, 'social_children', 'a:0:{}', 'yes'),
(926, 'teachers_children', 'a:0:{}', 'yes'),
(950, 'program_children', 'a:0:{}', 'yes'),
(1088, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1576719128;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(1090, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576719126;s:7:\"checked\";a:2:{s:7:\"smartum\";s:5:\"1.0.0\";s:15:\"twentyseventeen\";s:3:\"2.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1091, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1576594578;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1097, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576719128;s:7:\"checked\";a:6:{s:33:\"admin-menu-editor/menu-editor.php\";s:5:\"1.9.3\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.4.8\";s:21:\"translit-it/index.php\";s:4:\"1.5b\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:33:\"admin-menu-editor/menu-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/admin-menu-editor\";s:4:\"slug\";s:17:\"admin-menu-editor\";s:6:\"plugin\";s:33:\"admin-menu-editor/menu-editor.php\";s:11:\"new_version\";s:5:\"1.9.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/admin-menu-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/admin-menu-editor.1.9.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.4.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"translit-it/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/translit-it\";s:4:\"slug\";s:11:\"translit-it\";s:6:\"plugin\";s:21:\"translit-it/index.php\";s:11:\"new_version\";s:4:\"1.5b\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/translit-it/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/translit-it.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:55:\"https://s.w.org/plugins/geopattern-icon/translit-it.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1098, 'cfdb7_view_install_date', '2019-12-17 13:30:47', 'yes'),
(1128, '_site_transient_timeout_theme_roots', '1576720925', 'no'),
(1129, '_site_transient_theme_roots', 'a:2:{s:7:\"smartum\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1575129122:1'),
(8, 6, '_wp_page_template', 'page-home.php'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1573671424:1'),
(14, 9, '_wp_page_template', 'page-articles.php'),
(15, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1575128352:1'),
(17, 11, '_wp_page_template', 'page-centers.php'),
(18, 13, '_menu_item_type', 'post_type'),
(19, 13, '_menu_item_menu_item_parent', '0'),
(20, 13, '_menu_item_object_id', '6'),
(21, 13, '_menu_item_object', 'page'),
(22, 13, '_menu_item_target', ''),
(23, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 13, '_menu_item_xfn', ''),
(25, 13, '_menu_item_url', ''),
(27, 14, '_menu_item_type', 'post_type'),
(28, 14, '_menu_item_menu_item_parent', '0'),
(29, 14, '_menu_item_object_id', '9'),
(30, 14, '_menu_item_object', 'page'),
(31, 14, '_menu_item_target', ''),
(32, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 14, '_menu_item_xfn', ''),
(34, 14, '_menu_item_url', ''),
(36, 15, '_menu_item_type', 'post_type'),
(37, 15, '_menu_item_menu_item_parent', '0'),
(38, 15, '_menu_item_object_id', '11'),
(39, 15, '_menu_item_object', 'page'),
(40, 15, '_menu_item_target', ''),
(41, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 15, '_menu_item_xfn', ''),
(43, 15, '_menu_item_url', ''),
(45, 16, '_menu_item_type', 'custom'),
(46, 16, '_menu_item_menu_item_parent', '0'),
(47, 16, '_menu_item_object_id', '16'),
(48, 16, '_menu_item_object', 'custom'),
(49, 16, '_menu_item_target', ''),
(50, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 16, '_menu_item_xfn', ''),
(52, 16, '_menu_item_url', '#anchor1'),
(54, 17, '_menu_item_type', 'custom'),
(55, 17, '_menu_item_menu_item_parent', '0'),
(56, 17, '_menu_item_object_id', '17'),
(57, 17, '_menu_item_object', 'custom'),
(58, 17, '_menu_item_target', ''),
(59, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 17, '_menu_item_xfn', ''),
(61, 17, '_menu_item_url', '#anchor2'),
(63, 18, '_menu_item_type', 'custom'),
(64, 18, '_menu_item_menu_item_parent', '0'),
(65, 18, '_menu_item_object_id', '18'),
(66, 18, '_menu_item_object', 'custom'),
(67, 18, '_menu_item_target', ''),
(68, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 18, '_menu_item_xfn', ''),
(70, 18, '_menu_item_url', '#anchor3'),
(72, 19, '_menu_item_type', 'custom'),
(73, 19, '_menu_item_menu_item_parent', '0'),
(74, 19, '_menu_item_object_id', '19'),
(75, 19, '_menu_item_object', 'custom'),
(76, 19, '_menu_item_target', ''),
(77, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 19, '_menu_item_xfn', ''),
(79, 19, '_menu_item_url', '#anchor4'),
(81, 20, '_menu_item_type', 'custom'),
(82, 20, '_menu_item_menu_item_parent', '0'),
(83, 20, '_menu_item_object_id', '20'),
(84, 20, '_menu_item_object', 'custom'),
(85, 20, '_menu_item_target', ''),
(86, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 20, '_menu_item_xfn', ''),
(88, 20, '_menu_item_url', '#anchor5'),
(90, 21, '_menu_item_type', 'custom'),
(91, 21, '_menu_item_menu_item_parent', '0'),
(92, 21, '_menu_item_object_id', '21'),
(93, 21, '_menu_item_object', 'custom'),
(94, 21, '_menu_item_target', ''),
(95, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 21, '_menu_item_xfn', ''),
(97, 21, '_menu_item_url', '#anchor6'),
(99, 22, '_menu_item_type', 'custom'),
(100, 22, '_menu_item_menu_item_parent', '0'),
(101, 22, '_menu_item_object_id', '22'),
(102, 22, '_menu_item_object', 'custom'),
(103, 22, '_menu_item_target', ''),
(104, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 22, '_menu_item_xfn', ''),
(106, 22, '_menu_item_url', '#anchor7'),
(108, 23, '_menu_item_type', 'post_type'),
(109, 23, '_menu_item_menu_item_parent', '0'),
(110, 23, '_menu_item_object_id', '11'),
(111, 23, '_menu_item_object', 'page'),
(112, 23, '_menu_item_target', ''),
(113, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 23, '_menu_item_xfn', ''),
(115, 23, '_menu_item_url', ''),
(117, 24, '_menu_item_type', 'post_type'),
(118, 24, '_menu_item_menu_item_parent', '0'),
(119, 24, '_menu_item_object_id', '9'),
(120, 24, '_menu_item_object', 'page'),
(121, 24, '_menu_item_target', ''),
(122, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 24, '_menu_item_xfn', ''),
(124, 24, '_menu_item_url', ''),
(126, 25, '_menu_item_type', 'post_type'),
(127, 25, '_menu_item_menu_item_parent', '0'),
(128, 25, '_menu_item_object_id', '6'),
(129, 25, '_menu_item_object', 'page'),
(130, 25, '_menu_item_target', ''),
(131, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 25, '_menu_item_xfn', ''),
(133, 25, '_menu_item_url', ''),
(244, 70, '_edit_last', '1'),
(245, 70, '_edit_lock', '1573913328:1'),
(251, 76, '_edit_last', '1'),
(252, 76, '_edit_lock', '1574777177:1'),
(255, 78, '_edit_last', '1'),
(256, 78, '_edit_lock', '1573912954:1'),
(275, 87, '_edit_lock', '1574022633:1'),
(282, 95, '_wp_attached_file', '2019/11/logo.png'),
(283, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:298;s:6:\"height\";i:84;s:4:\"file\";s:16:\"2019/11/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 95, '_wp_attachment_image_alt', 'Логотип'),
(288, 95, '_edit_lock', '1573934272:1'),
(289, 95, '_wp_attachment_backup_sizes', 'a:4:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:298;s:6:\"height\";i:84;s:4:\"file\";s:8:\"logo.png\";}s:18:\"full-1573934331324\";a:3:{s:5:\"width\";i:177;s:6:\"height\";i:50;s:4:\"file\";s:23:\"logo-e1573934179193.png\";}s:18:\"full-1573934359416\";a:3:{s:5:\"width\";i:177;s:6:\"height\";i:50;s:4:\"file\";s:23:\"logo-e1573934331324.png\";}s:18:\"full-1573934366901\";a:3:{s:5:\"width\";i:177;s:6:\"height\";i:50;s:4:\"file\";s:23:\"logo-e1573934359416.png\";}}'),
(290, 95, '_edit_last', '1'),
(295, 99, '_wp_attached_file', '2019/11/teacher.png'),
(296, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2019/11/teacher.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"teacher-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 101, '_wp_attached_file', '2019/11/poster.jpg'),
(299, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1424;s:6:\"height\";i:770;s:4:\"file\";s:18:\"2019/11/poster.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"poster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"poster-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:18:\"poster-740x400.jpg\";s:5:\"width\";i:740;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"true-fullwd1\";a:4:{s:4:\"file\";s:18:\"poster-688x372.jpg\";s:5:\"width\";i:688;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 106, '_edit_last', '1'),
(309, 106, '_edit_lock', '1574025336:1'),
(310, 108, '_edit_lock', '1574025375:1'),
(312, 110, '_edit_lock', '1574777126:1'),
(314, 112, '_edit_lock', '1574025290:1'),
(316, 108, '_edit_last', '1'),
(321, 108, 'indicators_value', '43'),
(322, 108, '_indicators_value', 'field_5dd1a52527807'),
(323, 116, 'indicators_value', '43'),
(324, 116, '_indicators_value', 'field_5dd1a52527807'),
(326, 110, '_edit_last', '1'),
(328, 110, 'indicators_value', '245'),
(329, 110, '_indicators_value', 'field_5dd1a52527807'),
(330, 118, 'indicators_value', '245'),
(331, 118, '_indicators_value', 'field_5dd1a52527807'),
(333, 112, '_edit_last', '1'),
(335, 112, 'indicators_value', '3000'),
(336, 112, '_indicators_value', 'field_5dd1a52527807'),
(337, 120, 'indicators_value', '3000'),
(338, 120, '_indicators_value', 'field_5dd1a52527807'),
(340, 122, '_edit_last', '1'),
(341, 122, '_edit_lock', '1575208737:1'),
(342, 127, '_edit_lock', '1574079774:1'),
(344, 129, '_wp_attached_file', '2019/11/programIcon1.svg'),
(345, 129, '_wp_attachment_image_alt', 'Иконка программы'),
(346, 130, '_wp_attached_file', '2019/11/programImg1.png'),
(347, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 130, '_wp_attachment_image_alt', 'Фото ребенка-ученика, автора цитаты'),
(349, 127, '_thumbnail_id', '129'),
(350, 127, '_edit_last', '1'),
(351, 127, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне на уроках!'),
(352, 127, '_bloquote_program', 'field_5dd26b7d022f2'),
(353, 127, 'photo_avtor_program', '130'),
(354, 127, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(355, 127, 'fio_avtor_program', 'Даша Иванова'),
(356, 127, '_fio_avtor_program', 'field_5dd26df0022f4'),
(357, 127, 'location_avtor_program', 'Рязань, 7 лет'),
(358, 127, '_location_avtor_program', 'field_5dd27017022f5'),
(359, 131, '_edit_lock', '1574079929:1'),
(360, 132, '_wp_attached_file', '2019/11/programIcon2.svg'),
(361, 133, '_wp_attached_file', '2019/11/programImg2.png'),
(362, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 133, '_wp_attachment_image_alt', 'Фото ребенка-ученика, автора цитаты'),
(364, 131, '_thumbnail_id', '132'),
(365, 131, '_edit_last', '1'),
(366, 131, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне  на уроках!'),
(367, 131, '_bloquote_program', 'field_5dd26b7d022f2'),
(368, 131, 'photo_avtor_program', '133'),
(369, 131, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(370, 131, 'fio_avtor_program', 'Даша Иванова'),
(371, 131, '_fio_avtor_program', 'field_5dd26df0022f4'),
(372, 131, 'location_avtor_program', 'Рязань, 7 лет'),
(373, 131, '_location_avtor_program', 'field_5dd27017022f5'),
(375, 135, '_edit_lock', '1574080262:1'),
(376, 136, '_wp_attached_file', '2019/11/programIcon3.svg'),
(377, 137, '_wp_attached_file', '2019/11/programImg3.png'),
(378, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 137, '_wp_attachment_image_alt', ''),
(380, 135, '_thumbnail_id', '136'),
(381, 135, '_edit_last', '1'),
(382, 135, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне  на уроках!.'),
(383, 135, '_bloquote_program', 'field_5dd26b7d022f2'),
(384, 135, 'photo_avtor_program', '137'),
(385, 135, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(386, 135, 'fio_avtor_program', 'Даша Иванова'),
(387, 135, '_fio_avtor_program', 'field_5dd26df0022f4'),
(388, 135, 'location_avtor_program', 'Рязань, 7 лет'),
(389, 135, '_location_avtor_program', 'field_5dd27017022f5'),
(390, 138, '_edit_lock', '1574080296:1'),
(391, 139, '_wp_attached_file', '2019/11/programIcon4.svg'),
(392, 140, '_wp_attached_file', '2019/11/programImg4.png'),
(393, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(394, 140, '_wp_attachment_image_alt', ''),
(395, 138, '_thumbnail_id', '139'),
(396, 138, '_edit_last', '1'),
(397, 138, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне  на уроках!'),
(398, 138, '_bloquote_program', 'field_5dd26b7d022f2'),
(399, 138, 'photo_avtor_program', '140'),
(400, 138, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(401, 138, 'fio_avtor_program', 'Даша Иванова'),
(402, 138, '_fio_avtor_program', 'field_5dd26df0022f4'),
(403, 138, 'location_avtor_program', 'Рязань, 7 лет'),
(404, 138, '_location_avtor_program', 'field_5dd27017022f5'),
(405, 141, '_edit_lock', '1574080315:1'),
(406, 142, '_wp_attached_file', '2019/11/programIcon5.svg'),
(407, 143, '_wp_attached_file', '2019/11/programImg5.png'),
(408, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 141, '_thumbnail_id', '142'),
(410, 141, '_edit_last', '1'),
(411, 141, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне  на уроках!'),
(412, 141, '_bloquote_program', 'field_5dd26b7d022f2'),
(413, 141, 'photo_avtor_program', '143'),
(414, 141, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(415, 141, 'fio_avtor_program', 'Даша Иванова'),
(416, 141, '_fio_avtor_program', 'field_5dd26df0022f4'),
(417, 141, 'location_avtor_program', 'Рязань, 7 лет'),
(418, 141, '_location_avtor_program', 'field_5dd27017022f5'),
(419, 144, '_edit_lock', '1574080351:1'),
(420, 145, '_wp_attached_file', '2019/11/programIcon6.svg'),
(421, 146, '_wp_attached_file', '2019/11/programImg6.png'),
(422, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 144, '_thumbnail_id', '145'),
(424, 144, '_edit_last', '1'),
(425, 144, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне на уроках!.'),
(426, 144, '_bloquote_program', 'field_5dd26b7d022f2'),
(427, 144, 'photo_avtor_program', '146'),
(428, 144, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(429, 144, 'fio_avtor_program', 'Даша Иванова'),
(430, 144, '_fio_avtor_program', 'field_5dd26df0022f4'),
(431, 144, 'location_avtor_program', 'Рязань, 7 лет'),
(432, 144, '_location_avtor_program', 'field_5dd27017022f5'),
(433, 147, '_edit_lock', '1574080378:1'),
(434, 148, '_wp_attached_file', '2019/11/programIcon7.svg'),
(435, 149, '_wp_attached_file', '2019/11/programImg7.png'),
(436, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(437, 147, '_thumbnail_id', '148'),
(438, 147, '_edit_last', '1'),
(439, 147, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне на уроках!'),
(440, 147, '_bloquote_program', 'field_5dd26b7d022f2'),
(441, 147, 'photo_avtor_program', '149'),
(442, 147, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(443, 147, 'fio_avtor_program', 'Даша Иванова'),
(444, 147, '_fio_avtor_program', 'field_5dd26df0022f4'),
(445, 147, 'location_avtor_program', 'Рязань, 7 лет'),
(446, 147, '_location_avtor_program', 'field_5dd27017022f5'),
(447, 150, '_edit_lock', '1574080413:1'),
(448, 151, '_wp_attached_file', '2019/11/programIcon8.svg'),
(449, 152, '_wp_attached_file', '2019/11/programImg8.png'),
(450, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2019/11/programImg8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 150, '_thumbnail_id', '151'),
(452, 150, '_edit_last', '1'),
(453, 150, 'bloquote_program', 'На занятиях я научилась быстрее считать и представлять счет в уме, это помогает мне на уроках!'),
(454, 150, '_bloquote_program', 'field_5dd26b7d022f2'),
(455, 150, 'photo_avtor_program', '152'),
(456, 150, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(457, 150, 'fio_avtor_program', 'Даша Иванова'),
(458, 150, '_fio_avtor_program', 'field_5dd26df0022f4'),
(459, 150, 'location_avtor_program', 'Рязань, 7 лет'),
(460, 150, '_location_avtor_program', 'field_5dd27017022f5'),
(461, 153, '_edit_lock', '1576688152:1'),
(462, 153, '_thumbnail_id', '129'),
(463, 153, '_edit_last', '1'),
(464, 153, 'bloquote_program', 'На занятиях я начилась быстрее считать и представлять счет в уме, это помогает мне на уроках!.'),
(465, 153, '_bloquote_program', 'field_5dd26b7d022f2'),
(466, 153, 'photo_avtor_program', '133'),
(467, 153, '_photo_avtor_program', 'field_5dd26c6a022f3'),
(468, 153, 'fio_avtor_program', 'Даша Иванова'),
(469, 153, '_fio_avtor_program', 'field_5dd26df0022f4'),
(470, 153, 'location_avtor_program', 'Рязань, 7 лет'),
(471, 153, '_location_avtor_program', 'field_5dd27017022f5'),
(473, 155, '_edit_lock', '1574263788:1'),
(474, 156, '_wp_attached_file', '2019/11/fhotoSliderReviews1.png'),
(475, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:216;s:4:\"file\";s:31:\"2019/11/fhotoSliderReviews1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"fhotoSliderReviews1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(476, 155, '_thumbnail_id', '156'),
(477, 157, '_edit_last', '1'),
(478, 157, '_edit_lock', '1574266014:1'),
(479, 155, '_edit_last', '1'),
(480, 155, 'slogan_review', 'Это то, что было нужно!'),
(481, 155, '_slogan_review', 'field_5dd40b6b84681'),
(482, 155, 'begin_review', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.\r\n\r\nНа этапе запуска оказывалась постоянная поддержка и в плане подбора помещения, доставки мебели и оборудования...'),
(483, 155, '_begin_review', 'field_5dd40aa684680'),
(484, 155, 'ler_review', 'Папа Василия, 8 лет'),
(485, 155, '_ler_review', 'field_5dd40ba684682'),
(486, 155, 'term_review', ' 4 месяца'),
(487, 155, '_term_review', 'field_5dd40c6384683'),
(488, 155, 'video_review', 'https://youtu.be/6SYsv0Cx_5c'),
(489, 155, '_video_review', 'field_5dd40ce584684'),
(490, 155, 'program_review', 'a:2:{i:0;s:26:\"Робототехника\";i:1;s:34:\"Подготовка к школе\";}'),
(491, 155, '_program_review', 'field_5dd4149fa8855'),
(492, 164, '_edit_lock', '1574190721:1'),
(493, 164, '_thumbnail_id', '156'),
(494, 164, '_edit_last', '1'),
(495, 164, 'slogan_review', 'Оооооооооо, да у вас контора!'),
(496, 164, '_slogan_review', 'field_5dd40b6b84681'),
(497, 164, 'begin_review', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.\r\n\r\nНа этапе запуска оказывалась постоянная поддержка и в плане подбора помещения, доставки мебели и оборудования...'),
(498, 164, '_begin_review', 'field_5dd40aa684680'),
(499, 164, 'ler_review', 'Бабушка Олеси, 10 лет'),
(500, 164, '_ler_review', 'field_5dd40ba684682'),
(501, 164, 'term_review', '1 год'),
(502, 164, '_term_review', 'field_5dd40c6384683'),
(503, 164, 'video_review', 'https://youtu.be/VO5ey1KK2Ew'),
(504, 164, '_video_review', 'field_5dd40ce584684'),
(505, 164, 'program_review', 'a:4:{i:0;s:41:\"Ментальная арифметика\";i:1;s:22:\"Скорочтение\";i:2;s:29:\"Обучение чтению\";i:3;s:29:\"Английский язык\";}'),
(506, 164, '_program_review', 'field_5dd4149fa8855'),
(507, 165, '_edit_lock', '1574190984:1'),
(508, 165, '_thumbnail_id', '156'),
(509, 165, '_edit_last', '1'),
(510, 165, 'slogan_review', 'Есть выхлоп'),
(511, 165, '_slogan_review', 'field_5dd40b6b84681'),
(512, 165, 'begin_review', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.\r\n\r\nНа этапе запуска оказывалась постоянная поддержка и в плане подбора помещения, доставки мебели и оборудования...'),
(513, 165, '_begin_review', 'field_5dd40aa684680'),
(514, 165, 'ler_review', 'Папа Маши, 7 лет'),
(515, 165, '_ler_review', 'field_5dd40ba684682'),
(516, 165, 'term_review', '3 месяца'),
(517, 165, '_term_review', 'field_5dd40c6384683'),
(518, 165, 'video_review', 'https://youtu.be/L2vRNd3vhYI'),
(519, 165, '_video_review', 'field_5dd40ce584684'),
(520, 165, 'program_review', 'a:3:{i:0;s:26:\"Робототехника\";i:1;s:39:\"Актерское мастерство\";i:2;s:27:\"Школа блогинга\";}'),
(521, 165, '_program_review', 'field_5dd4149fa8855'),
(522, 166, '_edit_lock', '1574242651:1'),
(523, 166, '_thumbnail_id', '156'),
(524, 166, '_edit_last', '1'),
(525, 166, 'slogan_review', 'Всем рекомендую...'),
(526, 166, '_slogan_review', 'field_5dd40b6b84681'),
(527, 166, 'begin_review', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.\r\n\r\nНа этапе запуска оказывалась постоянная поддержка и в плане подбора помещения, доставки мебели и оборудования...'),
(528, 166, '_begin_review', 'field_5dd40aa684680'),
(529, 166, 'ler_review', 'Мама Феди, 9 лет'),
(530, 166, '_ler_review', 'field_5dd40ba684682'),
(531, 166, 'term_review', '6 мес'),
(532, 166, '_term_review', 'field_5dd40c6384683'),
(533, 166, 'video_review', 'https://youtu.be/L2vRNd3vhYI'),
(534, 166, '_video_review', 'field_5dd40ce584684'),
(535, 166, 'program_review', 'a:2:{i:0;s:22:\"Скорочтение\";i:1;s:29:\"Английский язык\";}'),
(536, 166, '_program_review', 'field_5dd4149fa8855'),
(537, 167, '_edit_lock', '1574329422:1'),
(539, 169, '_edit_lock', '1574964161:1'),
(541, 169, '_edit_last', '1'),
(543, 167, '_edit_last', '1'),
(545, 171, '_edit_lock', '1574329035:1'),
(547, 173, '_edit_last', '1'),
(548, 173, '_edit_lock', '1575401553:1'),
(550, 176, '_wp_attached_file', '2019/11/facebook.svg'),
(552, 171, '_edit_last', '1'),
(554, 171, 'link_soc', '#'),
(555, 171, '_link_soc', 'field_5dd65203ae714'),
(556, 171, 'icon_soc', '176'),
(557, 171, '_icon_soc', 'field_5dd65283ae715'),
(558, 177, 'link_soc', '#'),
(559, 177, '_link_soc', 'field_5dd65203ae714'),
(560, 177, 'icon_soc', '176'),
(561, 177, '_icon_soc', 'field_5dd65283ae715'),
(562, 178, '_edit_lock', '1574329025:1'),
(564, 180, '_wp_attached_file', '2019/11/vk.svg'),
(566, 178, '_edit_last', '1'),
(568, 178, 'link_soc', 'https://vk.com/startum.kirov'),
(569, 178, '_link_soc', 'field_5dd65203ae714'),
(570, 178, 'icon_soc', '180'),
(571, 178, '_icon_soc', 'field_5dd65283ae715'),
(572, 181, 'link_soc', 'https://vk.com/startum.kirov'),
(573, 181, '_link_soc', 'field_5dd65203ae714'),
(574, 181, 'icon_soc', '180'),
(575, 181, '_icon_soc', 'field_5dd65283ae715'),
(578, 182, 'link_soc', 'https://vk.com/startum.kirov'),
(579, 182, '_link_soc', 'field_5dd65203ae714'),
(580, 182, 'icon_soc', '180'),
(581, 182, '_icon_soc', 'field_5dd65283ae715'),
(582, 183, '_edit_lock', '1575129149:1'),
(584, 185, '_wp_attached_file', '2019/11/noname.svg'),
(586, 183, '_edit_last', '1'),
(588, 183, 'link_soc', '#'),
(589, 183, '_link_soc', 'field_5dd65203ae714'),
(590, 183, 'icon_soc', '185'),
(591, 183, '_icon_soc', 'field_5dd65283ae715'),
(592, 186, 'link_soc', '#'),
(593, 186, '_link_soc', 'field_5dd65203ae714'),
(594, 186, 'icon_soc', '185'),
(595, 186, '_icon_soc', 'field_5dd65283ae715'),
(596, 187, '_edit_lock', '1575128286:1'),
(598, 189, '_wp_attached_file', '2019/11/youtube.svg'),
(600, 187, '_edit_last', '1'),
(602, 187, 'link_soc', 'https://www.youtube.com/channel/UCGha0-Uq9dRZbNPjsiMGHEw'),
(603, 187, '_link_soc', 'field_5dd65203ae714'),
(604, 187, 'icon_soc', '189'),
(605, 187, '_icon_soc', 'field_5dd65283ae715'),
(606, 190, 'link_soc', 'https://www.youtube.com/channel/UCGha0-Uq9dRZbNPjsiMGHEw'),
(607, 190, '_link_soc', 'field_5dd65203ae714'),
(608, 190, 'icon_soc', '189'),
(609, 190, '_icon_soc', 'field_5dd65283ae715'),
(610, 191, '_edit_lock', '1574971205:1'),
(612, 193, '_wp_attached_file', '2019/11/twitter.svg'),
(614, 191, '_edit_last', '1'),
(616, 191, 'link_soc', '#'),
(617, 191, '_link_soc', 'field_5dd65203ae714'),
(618, 191, 'icon_soc', '193'),
(619, 191, '_icon_soc', 'field_5dd65283ae715'),
(620, 194, 'link_soc', '#'),
(621, 194, '_link_soc', 'field_5dd65203ae714'),
(622, 194, 'icon_soc', '193'),
(623, 194, '_icon_soc', 'field_5dd65283ae715'),
(627, 195, '_edit_lock', '1576673704:1'),
(628, 196, '_wp_attached_file', '2019/11/centerMoskau.jpg'),
(629, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1184;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2019/11/centerMoskau.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"centerMoskau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"centerMoskau-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:24:\"centerMoskau-806x340.jpg\";s:5:\"width\";i:806;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"true-fullwd1\";a:4:{s:4:\"file\";s:24:\"centerMoskau-881x372.jpg\";s:5:\"width\";i:881;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 195, '_thumbnail_id', '196'),
(631, 197, '_edit_lock', '1576678872:1'),
(632, 197, '_thumbnail_id', '196'),
(633, 198, '_edit_lock', '1576674837:1'),
(634, 198, '_thumbnail_id', '196'),
(635, 199, '_edit_last', '1'),
(636, 199, '_edit_lock', '1576673496:1'),
(637, 195, '_edit_last', '1'),
(638, 195, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2244.784785897021!2d37.7845623154232!3d55.762240698732214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x414acac71eec8931%3A0x9a0bbaf9e922193b!2zMy3RjyDQktC70LDQtNC40LzQuNGA0YHQutCw0Y8g0YPQuy4sIDUsINCc0L7RgdC60LLQsCwgMTExMTIz!5e0!3m2!1sru!2sru!4v1574353989249!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(639, 195, '_map_center', 'field_5dd6ba66f4c8b'),
(640, 197, '_edit_last', '1'),
(641, 197, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1998.0016903960009!2d30.361351815618903!3d59.948706168249075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4696319d0e2cd5df%3A0x8d38878f7015454e!2z0KjQv9Cw0LvQtdGA0L3QsNGPINGD0LsuLCA0MSwg0KHQsNC90LrRgi3Qn9C10YLQtdGA0LHRg9GA0LMsIDE5MTEyMw!5e0!3m2!1sru!2sru!4v1574354121488!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(642, 197, '_map_center', 'field_5dd6ba66f4c8b'),
(643, 198, '_edit_last', '1'),
(644, 198, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2304.9066336124624!2d20.505527215375757!3d54.711265779299566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46e3161ab2b6e57b%3A0x16cbc0ff65734f56!2z0JrQsNC70LjQvdC40L3Qs9GA0LDQtCDQn9C70LDQt9Cw!5e0!3m2!1sru!2sru!4v1574354209395!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(645, 198, '_map_center', 'field_5dd6ba66f4c8b'),
(646, 201, '_edit_lock', '1576674880:1'),
(647, 201, '_thumbnail_id', '196'),
(648, 201, '_edit_last', '1'),
(649, 201, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d70261.5923585219!2d57.69644619715608!3d56.61106630081113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43c2c60966c52c93%3A0x58c35fe69faf20cb!2z0JrRgNCw0YHQvdC-0YPRhNC40LzRgdC6LCDQodCy0LXRgNC00LvQvtCy0YHQutCw0Y8g0L7QsdC7Lg!5e0!3m2!1sru!2sru!4v1574355162513!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(650, 201, '_map_center', 'field_5dd6ba66f4c8b'),
(653, 204, '_edit_lock', '1576690276:1'),
(654, 204, '_thumbnail_id', '196'),
(655, 204, '_edit_last', '1'),
(656, 204, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d92772.69257445596!2d132.07770359241584!3d43.39486429355201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fb3ae3992bc4ef7%3A0x16ef936697c688cf!2z0JzQtdC20LTRg9C90LDRgNC-0LTQvdGL0Lkg0LDRjdGA0L7Qv9C-0YDRgiDQktC70LDQtNC40LLQvtGB0YLQvtC6!5e0!3m2!1sru!2sru!4v1574355364731!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(657, 204, '_map_center', 'field_5dd6ba66f4c8b'),
(658, 205, '_edit_lock', '1576675196:1'),
(659, 205, '_thumbnail_id', '196'),
(660, 205, '_edit_last', '1'),
(661, 205, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2232.658680598582!2d92.77346881543276!3d55.97261678248511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5cd7b369fde42eaf%3A0x84fc4892aa679f6c!2z0JrRgNCw0YHQvdC-0Y_RgNGB0LrQuNC1INGB0YLQvtC70LHRiw!5e0!3m2!1sru!2sru!4v1574355473880!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(662, 205, '_map_center', 'field_5dd6ba66f4c8b'),
(663, 206, '_edit_lock', '1575460157:1'),
(664, 206, '_thumbnail_id', '196'),
(665, 206, '_edit_last', '1'),
(666, 206, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2303.3060073391985!2d55.95490731537694!3d54.73942107715433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43d93a14def14c2d%3A0x9f5a883253e781ea!2z0KPRhNCwLdCQ0YDQtdC90LA!5e0!3m2!1sru!2sru!4v1574355564319!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(667, 206, '_map_center', 'field_5dd6ba66f4c8b'),
(668, 207, '_edit_lock', '1574365140:1'),
(669, 207, '_thumbnail_id', '196'),
(670, 207, '_edit_last', '1'),
(671, 207, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2182.7439431630987!2d60.618851115472324!3d56.83318211561659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43c16e90119b6181%3A0x626e1e2546c3b6e5!2z0JXQutCw0YLQtdGA0LjQvdCx0YPRgNCz0YHQutC40Lkg0JfQvtC-0L_QsNGA0Lo!5e0!3m2!1sru!2sru!4v1574365118978!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(672, 207, '_map_center', 'field_5dd6ba66f4c8b'),
(673, 208, '_edit_lock', '1574365230:1'),
(674, 208, '_thumbnail_id', '196'),
(675, 208, '_edit_last', '1'),
(676, 208, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d291808.587257299!2d61.128386696847436!3d55.152573141290496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43c592bbe5e46a97%3A0x20949770b941ed78!2z0LMuINCn0LXQu9GP0LHQuNC90YHQuiwg0KfQtdC70Y_QsdC40L3RgdC60LDRjyDQvtCx0Lsu!5e0!3m2!1sru!2sru!4v1574365214516!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(677, 208, '_map_center', 'field_5dd6ba66f4c8b'),
(678, 209, '_edit_lock', '1574365348:1'),
(679, 209, '_thumbnail_id', '196'),
(680, 209, '_edit_last', '1'),
(681, 209, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d146330.7171595579!2d73.27632832209483!3d55.035901053635364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43aaff038b17111b%3A0xcce5c4f94406ea2d!2z0JvQtdC90YLQsA!5e0!3m2!1sru!2sru!4v1574365322897!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(682, 209, '_map_center', 'field_5dd6ba66f4c8b'),
(683, 210, '_edit_lock', '1575128806:1'),
(684, 210, '_thumbnail_id', '196'),
(685, 210, '_edit_last', '1'),
(686, 210, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d38170.38576466318!2d50.20244119422519!3d53.27790645091514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4166184dbd004203%3A0xed8086b3ea6f9942!2z0KHQsNC80LDRgNCwINCQ0YDQtdC90LA!5e0!3m2!1sru!2sru!4v1574365412292!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(687, 210, '_map_center', 'field_5dd6ba66f4c8b'),
(688, 211, '_edit_lock', '1574365517:1'),
(689, 211, '_thumbnail_id', '196'),
(690, 211, '_edit_last', '1'),
(691, 211, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d173294.15233579197!2d39.487914585663866!3d47.26115615588458!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40e3c777c3b4b6ef%3A0x8248b451e48b4d04!2z0KDQvtGB0YLQvtCyLdC90LAt0JTQvtC90YMsINCg0L7RgdGC0L7QstGB0LrQsNGPINC-0LHQuy4!5e0!3m2!1sru!2sru!4v1574365493518!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(692, 211, '_map_center', 'field_5dd6ba66f4c8b'),
(693, 212, '_edit_lock', '1574365589:1'),
(694, 212, '_thumbnail_id', '196'),
(695, 212, '_edit_last', '1'),
(696, 212, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d141705.12532385887!2d43.7866614359637!3d56.29285148058397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4151d5f9ee033251%3A0x28d3c0cf849657aa!2z0J3QuNC20L3QuNC5INCd0L7QstCz0L7RgNC-0LQsINCd0LjQttC10LPQvtGA0L7QtNGB0LrQsNGPINC-0LHQuy4!5e0!3m2!1sru!2sru!4v1574365569875!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(697, 212, '_map_center', 'field_5dd6ba66f4c8b'),
(698, 213, '_edit_lock', '1576691453:1'),
(699, 213, '_thumbnail_id', '196'),
(700, 213, '_edit_last', '1'),
(701, 213, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.6474649383035!2d49.10381021542486!3d55.79935919586843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x415ead219941ae53%3A0x5b0126a895b9ce7d!2z0JrQsNC30LDQvdGB0LrQuNC5INC60YDQtdC80LvRjA!5e0!3m2!1sru!2sru!4v1574365647972!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(702, 213, '_map_center', 'field_5dd6ba66f4c8b'),
(703, 214, '_edit_lock', '1575040344:1'),
(704, 214, '_thumbnail_id', '196'),
(705, 214, '_edit_last', '1'),
(706, 214, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d316560.47003178234!2d39.0510679593414!3d51.69409039544379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x413b2f5ce874e813%3A0x48d94c0efba762bd!2z0JLQvtGA0L7QvdC10LYsINCS0L7RgNC-0L3QtdC20YHQutCw0Y8g0L7QsdC7Lg!5e0!3m2!1sru!2sru!4v1574365724283!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(707, 214, '_map_center', 'field_5dd6ba66f4c8b'),
(708, 215, '_edit_lock', '1574451841:1'),
(709, 216, '_edit_last', '1'),
(710, 216, '_edit_lock', '1574623889:1'),
(711, 215, '_edit_last', '1'),
(712, 215, 'answer', 'Дорогие друзья, консультация с профессионалами из IT напрямую зависит от позиций, занимаемых участниками в отношении поставленных задач!\r\n\r\nСоображения высшего порядка, а также начало повседневной работы по формированию позиции в значительной степени обуславливает создание новых предложений?\r\n\r\nТаким образом, курс на социально-ориентированный национальный проект обеспечивает широкому кругу специалистов участие в формировании ключевых'),
(713, 215, '_answer', 'field_5dd8350731bee'),
(714, 218, '_edit_lock', '1574451868:1'),
(715, 218, '_edit_last', '1'),
(716, 218, 'answer', 'Разнообразный и богатый опыт рамки и место обучения кадров требует от нас анализа экономической целесообразности принимаемых решений.\r\n\r\nС другой стороны социально-экономическое развитие способствует подготовке и реализации дальнейших направлений развитая системы массового участия! Задача организации, в особенности же социально-экономическое развитие в значительной степени обуславливает создание существующих финансовых и административных условий!\r\n\r\nЗадача организации, в особенности же начало повседневной работы по формированию позиции в значительной степени обуславливает создание новых предложений. Не следует, однако, забывать о том, что начало повседневной работы по формированию позиции позволяет выполнить важнейшие задания по разработке форм воздействия.\r\n\r\nРавным образом консультация с профессионалами из IT способствует подготовке и реализации системы.'),
(717, 218, '_answer', 'field_5dd8350731bee'),
(718, 219, '_edit_lock', '1574452180:1'),
(719, 219, '_edit_last', '1'),
(720, 219, 'answer', 'Для этого у нас есть специальные пятиминутки — мы никогда не работаем монотонно, постоянно происходит смена деятельности, чтобы ребенок не успел утомиться.\r\n\r\nКурсы разработаны на основе эффективных методик, которые придумали и протестировали в Китае — поверьте, мы справимся с самым гиперактивным учеником. Деликатно и педагогично. Кстати, ментальная арифметика развивает концентрацию и усидчивость — через 3 месяца Вы не узнаете своего сорванца — он станет заметно более уравновешенным. Мы планируем открытие новых центров по всем городу в этом году.\r\n\r\nТак как сейчас мы запустили первый поток по сниженной цене – можно начать обучение и зафиксировать за собой данную стоимость по договору, а как только появится центр в непосредственной близости от Вашего дома, Вы переведётесь туда.\r\n\r\nКурсы разработаны на основе эффективных методик, которые придумали и протестировали в Китае — поверьте, мы справимся с самым гиперактивным учеником. Деликатно и педагогично. Кстати, ментальная арифметика развивает концентрацию и усидчивость — через 3 месяца Вы не узнаете своего сорванца — он станет заметно более уравновешенным. Мы планируем открытие новых центров по всем городу в этом году.'),
(721, 219, '_answer', 'field_5dd8350731bee'),
(722, 220, '_edit_lock', '1574452129:1'),
(723, 220, '_edit_last', '1'),
(724, 220, 'answer', 'Задача организации, в особенности же постоянное информационно-техническое обеспечение нашей деятельности позволяет выполнить важнейшие задания по разработке ключевых компонентов планируемого обновления!\r\n\r\nРазнообразный и богатый опыт сложившаяся структура организации требует от нас анализа соответствующих условий активизации!\r\n\r\nСоображения высшего порядка, а также начало повседневной работы по формированию позиции играет важную роль в формировании'),
(725, 220, '_answer', 'field_5dd8350731bee'),
(726, 221, '_edit_lock', '1574624637:1'),
(727, 221, '_edit_last', '1'),
(728, 221, 'answer', 'Дорогие друзья, социально-экономическое развитие обеспечивает широкому кругу специалистов участие в формировании экономической целесообразности принимаемых решений? С другой стороны социально-экономическое развитие позволяет оценить значение соответствующих условий активизации! С другой стороны начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки системы обучения кадров, соответствующей насущным потребностям.\r\n\r\nРазнообразный и богатый опыт'),
(729, 221, '_answer', 'field_5dd8350731bee'),
(730, 222, '_edit_lock', '1574451957:1'),
(731, 222, '_edit_last', '1'),
(732, 222, 'answer', 'Задача организации, в особенности же постоянный количественный рост и сфера нашей активности играет важную роль в формировании всесторонне сбалансированных нововведений! Таким образом, дальнейшее развитие различных форм деятельности обеспечивает широкому кругу специалистов участие в формировании существующих финансовых и административных условий?\r\n\r\nЗначимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности'),
(733, 222, '_answer', 'field_5dd8350731bee'),
(734, 215, 'quest', 'Почему STARTUM, ведь центров развития очень много? '),
(735, 215, '_quest', 'field_5dd839d5a789e'),
(736, 218, 'quest', 'Есть ли у преподавателей специализированное образование? '),
(737, 218, '_quest', 'field_5dd839d5a789e'),
(738, 219, 'quest', ' Мой ребенок неусидчивый, вы с ним справитесь? '),
(739, 219, '_quest', 'field_5dd839d5a789e'),
(740, 220, 'quest', 'Есть ли центр в другом районе? '),
(741, 220, '_quest', 'field_5dd839d5a789e'),
(742, 221, 'quest', ' Сколько занятий в месяц за такую стоимость? '),
(743, 221, '_quest', 'field_5dd839d5a789e'),
(744, 222, 'quest', ' Чем обусловлена цена? '),
(745, 222, '_quest', 'field_5dd839d5a789e'),
(746, 224, '_edit_last', '1'),
(747, 224, '_edit_lock', '1575203748:1'),
(748, 227, '_edit_lock', '1575483326:1'),
(749, 228, '_wp_attached_file', '2019/11/article1.jpg'),
(750, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article1-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(751, 227, '_thumbnail_id', '228'),
(752, 229, '_edit_lock', '1574802363:1'),
(753, 230, '_wp_attached_file', '2019/11/article2.jpg'),
(754, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(755, 229, '_thumbnail_id', '230'),
(756, 231, '_edit_lock', '1574797476:1'),
(757, 232, '_wp_attached_file', '2019/11/article3.jpg'),
(758, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(759, 231, '_thumbnail_id', '232'),
(760, 233, '_edit_lock', '1574797487:1'),
(761, 234, '_wp_attached_file', '2019/11/article4.jpg'),
(762, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article4-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 233, '_thumbnail_id', '234'),
(765, 227, '_edit_last', '1'),
(766, 229, '_edit_last', '1'),
(767, 236, '_edit_lock', '1575540680:1'),
(768, 237, '_wp_attached_file', '2019/11/article5.jpg'),
(769, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article5-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 236, '_thumbnail_id', '237'),
(773, 240, '_edit_lock', '1574784900:1'),
(774, 241, '_wp_attached_file', '2019/11/article6.jpg'),
(775, 241, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article6-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(776, 240, '_thumbnail_id', '241'),
(777, 242, '_edit_lock', '1574784650:1'),
(778, 243, '_wp_attached_file', '2019/11/article7.jpg'),
(779, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article7-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(780, 242, '_thumbnail_id', '243'),
(781, 244, '_edit_lock', '1575482964:1'),
(782, 245, '_wp_attached_file', '2019/11/article8.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(783, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:428;s:6:\"height\";i:297;s:4:\"file\";s:20:\"2019/11/article8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"article8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"article8-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 244, '_thumbnail_id', '245'),
(785, 246, '_edit_last', '1'),
(786, 246, '_edit_lock', '1574951906:1'),
(787, 236, '_edit_last', '1'),
(788, 250, '_edit_last', '1'),
(789, 250, '_edit_lock', '1575483478:1'),
(790, 252, '_wp_attached_file', '2019/11/ar1.jpg'),
(791, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1184;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/11/ar1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ar1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ar1-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:15:\"ar1-806x340.jpg\";s:5:\"width\";i:806;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"true-fullwd1\";a:4:{s:4:\"file\";s:15:\"ar1-881x372.jpg\";s:5:\"width\";i:881;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(792, 227, 'base_photo', '252'),
(793, 227, '_base_photo', 'field_5ddd4a0675ce6'),
(794, 240, '_edit_last', '1'),
(795, 255, '_edit_lock', '1575483193:1'),
(796, 255, '_edit_last', '1'),
(797, 255, 'base_photo', '252'),
(798, 255, '_base_photo', 'field_5ddd4a0675ce6'),
(799, 229, 'base_photo', '252'),
(800, 229, '_base_photo', 'field_5ddd4a0675ce6'),
(801, 229, '_wp_old_slug', 'kak-deystvitelno-pravilno-vospitat-rebenka-2-statya'),
(802, 227, '_wp_old_slug', 'kak-deystvitelno-pravilno-vospitat-rebenka'),
(803, 231, '_edit_last', '1'),
(804, 231, '_wp_old_slug', 'vzaimodeystvie-detey-v-sociume'),
(805, 233, '_edit_last', '1'),
(806, 233, '_wp_old_slug', 'vzaimodeystvie-detey-v-sociume-2-statya'),
(807, 244, '_edit_last', '1'),
(808, 244, '_wp_old_slug', 'stoit-zavodit-dlya-rebenka-domashnih-jivotnyh'),
(809, 244, '_wp_old_slug', 'stoit-zavodit-dlya-rebenka'),
(810, 246, '_wp_trash_meta_status', 'publish'),
(811, 246, '_wp_trash_meta_time', '1574952059'),
(812, 246, '_wp_desired_post_slug', 'group_5ddcf50203807'),
(813, 247, '_wp_trash_meta_status', 'publish'),
(814, 247, '_wp_trash_meta_time', '1574952059'),
(815, 247, '_wp_desired_post_slug', 'field_5ddcf513adfe4'),
(816, 195, 'center_phone', '8 (800) 222-48-61 М'),
(817, 195, '_center_phone', 'field_5de00c181f2fa'),
(818, 195, 'email_center', 'info@start24.com'),
(819, 195, '_email_center', 'field_5de00c921f2fb'),
(820, 195, 'center_email', 'info24@start.ru'),
(821, 195, '_center_email', 'field_5de00c921f2fb'),
(822, 195, 'center_soc_center_soc_icon', '176'),
(823, 195, '_center_soc_center_soc_icon', 'field_5de0f858f37e3'),
(824, 195, 'center_soc_center_soc_link', '#фб'),
(825, 195, '_center_soc_center_soc_link', 'field_5de0f888f37e4'),
(826, 195, 'center_soc', ''),
(827, 195, '_center_soc', 'field_5de02586cc52a'),
(828, 195, 'center_soc__', '0'),
(829, 195, '_center_soc__', 'field_5de0fb84f2ddd'),
(830, 195, 'center_soc_', ''),
(831, 195, '_center_soc_', 'field_5de0dfd603d50'),
(832, 214, 'center_phone', ''),
(833, 214, '_center_phone', 'field_5de00c181f2fa'),
(834, 214, 'center_email', ''),
(835, 214, '_center_email', 'field_5de00c921f2fb'),
(836, 214, 'center_soc__', '0'),
(837, 214, '_center_soc__', 'field_5de0fb84f2ddd'),
(838, 214, 'center_soc_', ''),
(839, 214, '_center_soc_', 'field_5de0dfd603d50'),
(840, 214, 'center_soc_center_soc_icon', '180'),
(841, 214, '_center_soc_center_soc_icon', 'field_5de0f613af099'),
(842, 214, 'center_soc_center_soc_link', 'rrrrrrrrrrrrr'),
(843, 214, '_center_soc_center_soc_link', 'field_5de0f6b0f7e61'),
(844, 214, 'center_soc', ''),
(845, 214, '_center_soc', 'field_5de02586cc52a'),
(846, 197, 'center_phone', '(812) 555-47-66'),
(847, 197, '_center_phone', 'field_5de00c181f2fa'),
(848, 197, 'center_email', 'spb@startum.ru'),
(849, 197, '_center_email', 'field_5de00c921f2fb'),
(850, 197, 'center_soc__', '0'),
(851, 197, '_center_soc__', 'field_5de0fb84f2ddd'),
(852, 197, 'center_soc_', ''),
(853, 197, '_center_soc_', 'field_5de0dfd603d50'),
(854, 197, 'center_soc_center_soc_icon', '189'),
(855, 197, '_center_soc_center_soc_icon', 'field_5de0fa59f3b29'),
(856, 197, 'center_soc_center_soc_LINK', 'ууу'),
(857, 197, '_center_soc_center_soc_LINK', 'field_5de0fa8df3b2a'),
(858, 197, 'center_soc', ''),
(859, 197, '_center_soc', 'field_5de02586cc52a'),
(860, 195, 'center_soc_center_soc_select_', '0'),
(861, 195, '_center_soc_center_soc_select_', 'field_5de0fb84f2ddd'),
(862, 195, 'center_soc_center_soc_select', ''),
(863, 195, '_center_soc_center_soc_select', 'field_5de0dfd603d50'),
(864, 197, 'center_soc_center_soc_select_', '0'),
(865, 197, '_center_soc_center_soc_select_', 'field_5de0fb84f2ddd'),
(866, 197, 'center_soc_center_soc_select', ''),
(867, 197, '_center_soc_center_soc_select', 'field_5de0dfd603d50'),
(868, 210, 'center_phone', ''),
(869, 210, '_center_phone', 'field_5de00c181f2fa'),
(870, 210, 'center_email', ''),
(871, 210, '_center_email', 'field_5de00c921f2fb'),
(872, 210, 'center_soc_center_soc_select_', '0'),
(873, 210, '_center_soc_center_soc_select_', 'field_5de0fb84f2ddd'),
(874, 210, 'center_soc_center_soc_select', ''),
(875, 210, '_center_soc_center_soc_select', 'field_5de0dfd603d50'),
(876, 210, 'center_soc_center_soc_icon', '234'),
(877, 210, '_center_soc_center_soc_icon', 'field_5de0fa59f3b29'),
(878, 210, 'center_soc_center_soc_link', 'wwwwwwwwwww'),
(879, 210, '_center_soc_center_soc_link', 'field_5de0fa8df3b2a'),
(880, 210, 'center_soc', ''),
(881, 210, '_center_soc', 'field_5de02586cc52a'),
(882, 287, 'fw_options', 'a:0:{}'),
(883, 195, 'fw:opt:ext:pb:page-builder:json', '[{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<h2>\\u0426\\u0435\\u043d\\u0442\\u0440 \\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435 \\u043d\\u0430 \\u0443\\u043b. \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430 45<\\/h2>\",\"custom_class\":\"titleSection\"}},{\"type\":\"simple\",\"shortcode\":\"text_block\",\"atts\":{\"text\":\"<p>\\u0415\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e \\u0441 9:00 \\u0434\\u043e 18:00<\\/p>\",\"custom_class\":\"descSection\"}}]'),
(884, 195, 'fw_options', 'a:1:{s:12:\"page-builder\";a:2:{s:4:\"json\";s:2:\"[]\";s:14:\"builder_active\";b:1;}}'),
(890, 292, '_edit_last', '1'),
(891, 292, '_edit_lock', '1575401492:1'),
(892, 295, '_wp_attached_file', '2019/12/iconMask.svg'),
(893, 296, '_wp_attached_file', '2019/12/iconaLang.svg'),
(894, 297, '_wp_attached_file', '2019/12/iconBoock.svg'),
(899, 176, 'img_term', '22'),
(900, 185, 'img_term', '23'),
(901, 180, 'img_term', '24'),
(902, 189, 'img_term', '25'),
(903, 195, 'center_photo', '196'),
(904, 195, '_center_photo', 'field_5de50be4959b2'),
(905, 193, 'img_term', '26'),
(906, 303, '_wp_attached_file', '2019/12/teacher.png'),
(907, 303, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2019/12/teacher.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"teacher-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(908, 303, 'img_term', '30'),
(909, 197, 'center_photo', '196'),
(910, 197, '_center_photo', 'field_5de50be4959b2'),
(911, 198, 'center_phone', '8(800) 554 33 22'),
(912, 198, '_center_phone', 'field_5de00c181f2fa'),
(913, 198, 'center_email', '234kalin@startum.ru'),
(914, 198, '_center_email', 'field_5de00c921f2fb'),
(915, 198, 'center_photo', '196'),
(916, 198, '_center_photo', 'field_5de50be4959b2'),
(917, 197, 'center_title', 'Центр в г. Санкт-Петербург на ул. Кораблестроителей,160'),
(918, 197, '_center_title', 'field_5dfa20fd304cd'),
(919, 197, 'center_rezim', 'Ежедневно с 9:00 до 18:00'),
(920, 197, '_center_rezim', 'field_5de63cd0526e7'),
(921, 195, 'center_rezim', 'Ежедневно с 9:00 до 18:00'),
(922, 195, '_center_rezim', 'field_5de63cd0526e7'),
(923, 198, 'center_rezim', 'Ежедневно с 7:00 до 18:00'),
(924, 198, '_center_rezim', 'field_5de63cd0526e7'),
(925, 201, 'center_phone', '8(800) 666 55 99'),
(926, 201, '_center_phone', 'field_5de00c181f2fa'),
(927, 201, 'center_email', 'kruf@info.ru'),
(928, 201, '_center_email', 'field_5de00c921f2fb'),
(929, 201, 'center_photo', '196'),
(930, 201, '_center_photo', 'field_5de50be4959b2'),
(931, 201, 'center_rezim', 'Ежедневно с 9:00 до 18:00'),
(932, 201, '_center_rezim', 'field_5de63cd0526e7'),
(933, 204, 'center_rezim', 'Ежедневно с 9:00 до 18:00'),
(934, 204, '_center_rezim', 'field_5de63cd0526e7'),
(935, 204, 'center_phone', '8(800)999 99 99'),
(936, 204, '_center_phone', 'field_5de00c181f2fa'),
(937, 204, 'center_email', 'vlad@inf024.ru'),
(938, 204, '_center_email', 'field_5de00c921f2fb'),
(939, 204, 'center_photo', '196'),
(940, 204, '_center_photo', 'field_5de50be4959b2'),
(941, 312, '_wp_attached_file', '2019/11/krasKlass.jpg'),
(942, 312, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:700;s:4:\"file\";s:21:\"2019/11/krasKlass.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"krasKlass-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"krasKlass-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:22:\"krasKlass-1071x500.jpg\";s:5:\"width\";i:1071;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(943, 205, 'center_rezim', 'Ежедневно с 9:00 до 18:00'),
(944, 205, '_center_rezim', 'field_5de63cd0526e7'),
(945, 205, 'center_phone', '8(800) 800 80 80'),
(946, 205, '_center_phone', 'field_5de00c181f2fa'),
(947, 205, 'center_email', 'kras@info24.ru'),
(948, 205, '_center_email', 'field_5de00c921f2fb'),
(949, 205, 'center_photo', '313'),
(950, 205, '_center_photo', 'field_5de50be4959b2'),
(951, 313, '_wp_attached_file', '2019/11/krasKlass-1.jpg'),
(952, 313, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:700;s:4:\"file\";s:23:\"2019/11/krasKlass-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"krasKlass-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"krasKlass-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:24:\"krasKlass-1-1071x500.jpg\";s:5:\"width\";i:1071;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(953, 295, 'img_term', '18'),
(954, 296, 'img_term', '17'),
(955, 129, 'img_term', '15'),
(956, 297, 'img_term', '16'),
(957, 139, 'img_term', '21'),
(958, 136, 'img_term', '20'),
(959, 132, 'img_term', '19'),
(960, 151, 'img_term', '31'),
(961, 292, '_wp_trash_meta_status', 'publish'),
(962, 292, '_wp_trash_meta_time', '1575401642'),
(963, 292, '_wp_desired_post_slug', 'group_5de3c7b928608'),
(964, 293, '_wp_trash_meta_status', 'publish'),
(965, 293, '_wp_trash_meta_time', '1575401642'),
(966, 293, '_wp_desired_post_slug', 'field_5de3c7c99141b'),
(967, 314, '_wp_attached_file', '2019/12/sprite.svg'),
(968, 303, '_edit_lock', '1575460060:1'),
(969, 315, '_wp_attached_file', '2019/11/krasKlass.jpg'),
(970, 315, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:700;s:4:\"file\";s:21:\"2019/11/krasKlass.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"krasKlass-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"krasKlass-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"true-fullwd\";a:4:{s:4:\"file\";s:22:\"krasKlass-1071x500.jpg\";s:5:\"width\";i:1071;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(971, 255, '_thumbnail_id', '241'),
(972, 236, 'base_photo', '312'),
(973, 236, '_base_photo', 'field_5ddd4a0675ce6'),
(990, 317, '_form', '<div id=\"formQuest\" class=\"formAll formQuest__form\">\n<div class=\"input__wrapper\">\n<label><svg><use xlink:href=\"http://smartum/wp-content/themes/smartum/img/svg/sprite.svg#phone\"></use></svg></label>\n[text* phone class:form__phone placeholder \"Номер телефона\"]\n </div>\n\n<button class=\"form__button\">                        \n<span>[submit class:form__submit \"Отправить\" ]</span>\n<svg><use xlink:href=\"http://smartum/wp-content/themes/smartum/img/svg/sprite.svg#btnArrow\"></use></svg>\n</button></div>'),
(991, 317, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:50:\"Smartum Форма захвата телефона\";s:6:\"sender\";s:31:\"Smartum <info@f0315577.xsph.ru>\";s:9:\"recipient\";s:18:\"43reiter@gmail.com\";s:4:\"body\";s:217:\"От: Smartum <info@f0315577.xsph.ru>\nТема: Smartum Форма захвата телефона\nСообщение:\n[phone]\n\n-- \nЭто сообщение отправлено с сайта Smartum (http://smartum)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(992, 317, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Smartum \"[your-subject]\"\";s:6:\"sender\";s:27:\"Smartum <wordpress@smartum>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:125:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Smartum (http://smartum)\";s:18:\"additional_headers\";s:28:\"Reply-To: 43reiter@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(993, 317, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(994, 317, '_additional_settings', ''),
(995, 317, '_locale', 'ru_RU'),
(1005, 317, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(1006, 195, 'center_title', 'Центр в Москве на ул. Ленина 45'),
(1007, 195, '_center_title', 'field_5dfa20fd304cd'),
(1008, 198, 'center_title', 'Центр в Калининграде на ул. Цветочной,3'),
(1009, 198, '_center_title', 'field_5dfa20fd304cd'),
(1010, 201, 'center_title', 'Центр в Красноуфимске на ул. Новаторов,30'),
(1011, 201, '_center_title', 'field_5dfa20fd304cd'),
(1012, 204, 'center_title', 'Центр во Владивостоке на ул. Крылова,33'),
(1013, 204, '_center_title', 'field_5dfa20fd304cd'),
(1014, 205, 'center_title', 'Центр в Красноярске на ул. Мопра,1'),
(1015, 205, '_center_title', 'field_5dfa20fd304cd'),
(1016, 213, 'center_title', 'Центр в Казани на ул. Вахитова, 100'),
(1017, 213, '_center_title', 'field_5dfa20fd304cd'),
(1018, 213, 'center_rezim', 'Ежедневно с 11.00 до 20.00'),
(1019, 213, '_center_rezim', 'field_5de63cd0526e7'),
(1020, 213, 'center_phone', '8999999999994'),
(1021, 213, '_center_phone', 'field_5de00c181f2fa'),
(1022, 213, 'center_email', 'kaz@info24.ru'),
(1023, 213, '_center_email', 'field_5de00c921f2fb'),
(1024, 213, 'center_photo', '312'),
(1025, 213, '_center_photo', 'field_5de50be4959b2'),
(1026, 322, '_edit_lock', '1576691827:1'),
(1027, 322, '_thumbnail_id', '196'),
(1028, 322, '_edit_last', '1'),
(1029, 322, 'map_center', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2078.7120690181277!2d49.590996215554746!3d58.60036517629638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43fcf66cc8f90acf%3A0x9529193ebb3a987c!2z0L_RgC4g0KHRgtGA0L7QuNGC0LXQu9C10LksIDI2LCDQmtC40YDQvtCyLCDQmtC40YDQvtCy0YHQutCw0Y8g0L7QsdC7LiwgNjEwMDQ4!5e0!3m2!1sru!2sru!4v1576691708721!5m2!1sru!2sru\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(1030, 322, '_map_center', 'field_5dd6ba66f4c8b'),
(1031, 322, 'center_title', ''),
(1032, 322, '_center_title', 'field_5dfa20fd304cd'),
(1033, 322, 'center_rezim', ''),
(1034, 322, '_center_rezim', 'field_5de63cd0526e7'),
(1035, 322, 'center_phone', ''),
(1036, 322, '_center_phone', 'field_5de00c181f2fa'),
(1037, 322, 'center_email', ''),
(1038, 322, '_center_email', 'field_5de00c921f2fb'),
(1039, 322, 'center_photo', ''),
(1040, 322, '_center_photo', 'field_5de50be4959b2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2019-11-13 18:17:00', '2019-11-13 15:17:00', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2019-11-13 18:17:00', '2019-11-13 15:17:00', '', 0, 'http://smartum/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-11-13 18:17:00', '2019-11-13 15:17:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-11-13 18:17:00', '2019-11-13 15:17:00', '', 6, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-11-13 21:50:26', '2019-11-13 18:50:26', '', 'Все статьи', '', 'publish', 'closed', 'closed', '', 'vse-stati', '', '', '2019-11-13 21:52:42', '2019-11-13 18:52:42', '', 0, 'http://smartum/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-11-13 21:50:26', '2019-11-13 18:50:26', '', 'Все статьи', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-11-13 21:50:26', '2019-11-13 18:50:26', '', 9, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-11-13 21:50:55', '2019-11-13 18:50:55', '', 'Все центры', '', 'publish', 'closed', 'closed', '', 'vse-centry', '', '', '2019-11-13 21:50:55', '2019-11-13 18:50:55', '', 0, 'http://smartum/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-11-13 21:50:55', '2019-11-13 18:50:55', '', 'Все центры', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-11-13 21:50:55', '2019-11-13 18:50:55', '', 11, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'stati', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=14', 9, 'nav_menu_item', '', 0),
(15, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Центры', '', 'publish', 'closed', 'closed', '', 'centry', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'География', '', 'publish', 'closed', 'closed', '', 'geografiya', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Программы', '', 'publish', 'closed', 'closed', '', 'programmy', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'otzyvy', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=20', 7, 'nav_menu_item', '', 0),
(21, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', 'Вопросы', '', 'publish', 'closed', 'closed', '', 'voprosy', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=21', 8, 'nav_menu_item', '', 0),
(22, 1, '2019-11-13 22:39:15', '2019-11-13 19:39:15', '', '3D Тур', '', 'publish', 'closed', 'closed', '', '3d-tur', '', '', '2019-11-13 22:52:59', '2019-11-13 19:52:59', '', 0, 'http://smartum/?p=22', 10, 'nav_menu_item', '', 0),
(23, 1, '2019-11-13 23:40:18', '2019-11-13 20:40:18', '', 'Центры', '', 'publish', 'closed', 'closed', '', 'centry-2', '', '', '2019-11-13 23:40:40', '2019-11-13 20:40:40', '', 0, 'http://smartum/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2019-11-13 23:40:18', '2019-11-13 20:40:18', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'stati-2', '', '', '2019-11-13 23:40:40', '2019-11-13 20:40:40', '', 0, 'http://smartum/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2019-11-13 23:40:36', '2019-11-13 20:40:36', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-11-13 23:40:40', '2019-11-13 20:40:40', '', 0, 'http://smartum/?p=25', 1, 'nav_menu_item', '', 0),
(70, 1, '2019-11-16 14:06:43', '2019-11-16 11:06:43', '<!-- wp:paragraph -->\n<p><strong>Авторские методики</strong><br>с которыми работают ведущие <br>развитые страны</p>\n<!-- /wp:paragraph -->', '01', '', 'publish', 'open', 'open', '', '01', '', '', '2019-11-16 17:10:23', '2019-11-16 14:10:23', '', 0, 'http://smartum/?p=70', 0, 'post', '', 0),
(71, 1, '2019-11-16 14:06:43', '2019-11-16 11:06:43', '<div>\r\n<div><strong>Авторские методики </strong></div>\r\n<div>с которыми работают ведущие</div>\r\n<div>развитые страны</div>\r\n</div>', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 14:06:43', '2019-11-16 11:06:43', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-11-16 14:08:20', '2019-11-16 11:08:20', '<strong>Авторские методики</strong>\r\nс которыми работают ведущие\r\nразвитые страны', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 14:08:20', '2019-11-16 11:08:20', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-11-16 14:11:03', '2019-11-16 11:11:03', '<strong>Авторские методики</strong><br>\r\nс которыми работают ведущие\r\nразвитые страны', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 14:11:03', '2019-11-16 11:11:03', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-11-16 14:12:18', '2019-11-16 11:12:18', '<strong>Авторские методики</strong>\r\nс которыми работают ведущие\r\nразвитые страны', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 14:12:18', '2019-11-16 11:12:18', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-11-16 14:14:47', '2019-11-16 11:14:47', '<!-- wp:paragraph -->\n<p><strong>Квалифицированные педагоги</strong><br>которые ориентированы на <br>качество преподавания</p>\n<!-- /wp:paragraph -->', '02', '', 'publish', 'open', 'open', '', '02', '', '', '2019-11-16 17:07:25', '2019-11-16 14:07:25', '', 0, 'http://smartum/?p=76', 0, 'post', '', 0),
(77, 1, '2019-11-16 14:14:47', '2019-11-16 11:14:47', '<div>\r\n<div><strong>Квалифицированные педагоги</strong></div>\r\n<div>которые ориентированы на</div>\r\n<div>качество преподавания</div>\r\n</div>', '02', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-11-16 14:14:47', '2019-11-16 11:14:47', '', 76, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-11-16 14:19:16', '2019-11-16 11:19:16', '<!-- wp:paragraph -->\n<p><strong>Большой выбор направлений</strong> <br>обучения для всестороннего <br>развития личности</p>\n<!-- /wp:paragraph -->', '03', '', 'publish', 'open', 'open', '', '03', '', '', '2019-11-16 17:04:17', '2019-11-16 14:04:17', '', 0, 'http://smartum/?p=78', 0, 'post', '', 0),
(79, 1, '2019-11-16 14:19:16', '2019-11-16 11:19:16', '<div>\r\n<div><strong>Большой выбор направлений</strong></div>\r\n<div>обучения для всестороннего</div>\r\n<div>развития личности</div>\r\n</div>', '03', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-11-16 14:19:16', '2019-11-16 11:19:16', '', 78, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-11-16 15:52:11', '2019-11-16 12:52:11', '<div>\r\n<div><strong>Большой выбор направлений</strong>\r\nобучения для всестороннего\r\nразвития личности</div>\r\n</div>', '03', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-11-16 15:52:11', '2019-11-16 12:52:11', '', 78, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/78-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-11-16 16:32:28', '2019-11-16 13:32:28', '<div>\r\n<div><strong>Авторские методики</strong></div>\r\n<div>с которыми работают ведущие</div>\r\n<div>развитые страны</div>\r\n</div>', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 16:32:28', '2019-11-16 13:32:28', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-11-16 16:42:22', '2019-11-16 13:42:22', '<!-- wp:paragraph -->\n<p><strong>Собственная IT-платформа </strong><br>для обучения детей по <br>индивидуальным технологиям</p>\n<!-- /wp:paragraph -->', '04', '', 'publish', 'open', 'open', '', '04', '', '', '2019-11-16 16:47:36', '2019-11-16 13:47:36', '', 0, 'http://smartum/?p=87', 0, 'post', '', 0),
(88, 1, '2019-11-16 16:42:22', '2019-11-16 13:42:22', '<!-- wp:paragraph -->\n<p><strong>Собственная IT-платформа </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>для обучения детей по </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>индивидуальным технологиям</p>\n<!-- /wp:paragraph -->', '04', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-11-16 16:42:22', '2019-11-16 13:42:22', '', 87, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-11-16 16:47:36', '2019-11-16 13:47:36', '<!-- wp:paragraph -->\n<p><strong>Собственная IT-платформа </strong><br>для обучения детей по <br>индивидуальным технологиям</p>\n<!-- /wp:paragraph -->', '04', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-11-16 16:47:36', '2019-11-16 13:47:36', '', 87, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-11-16 16:54:12', '2019-11-16 13:54:12', '<div>\n<div><strong>Большой выбор направлений</strong><br />обучения для всестороннего<br />развития личности</div>\n</div>\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\"></p>\n<!-- /wp:paragraph -->', '03', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2019-11-16 16:54:12', '2019-11-16 13:54:12', '', 78, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/78-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2019-11-16 17:04:17', '2019-11-16 14:04:17', '<!-- wp:paragraph -->\n<p><strong>Большой выбор направлений</strong> <br>обучения для всестороннего <br>развития личности</p>\n<!-- /wp:paragraph -->', '03', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-11-16 17:04:17', '2019-11-16 14:04:17', '', 78, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/78-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-11-16 17:07:25', '2019-11-16 14:07:25', '<!-- wp:paragraph -->\n<p><strong>Квалифицированные педагоги</strong><br>которые ориентированы на <br>качество преподавания</p>\n<!-- /wp:paragraph -->', '02', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-11-16 17:07:25', '2019-11-16 14:07:25', '', 76, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/76-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-11-16 17:10:23', '2019-11-16 14:10:23', '<!-- wp:paragraph -->\n<p><strong>Авторские методики</strong><br>с которыми работают ведущие <br>развитые страны</p>\n<!-- /wp:paragraph -->', '01', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-11-16 17:10:23', '2019-11-16 14:10:23', '', 70, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/70-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-11-16 22:47:12', '2019-11-16 19:47:12', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-11-16 23:00:10', '2019-11-16 20:00:10', '', 0, 'http://smartum/wp-content/uploads/2019/11/logo.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2019-11-16 23:53:31', '2019-11-16 20:53:31', '', 'teacher', '', 'inherit', 'open', 'closed', '', 'teacher', '', '', '2019-11-16 23:53:31', '2019-11-16 20:53:31', '', 0, 'http://smartum/wp-content/uploads/2019/11/teacher.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2019-11-16 23:54:22', '2019-11-16 20:54:22', '', 'poster', '', 'inherit', 'open', 'closed', '', 'poster', '', '', '2019-11-16 23:54:22', '2019-11-16 20:54:22', '', 0, 'http://smartum/wp-content/uploads/2019/11/poster.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-11-17 22:57:03', '2019-11-17 19:57:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"category:pokazateli\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Показатели', 'pokazateli', 'publish', 'closed', 'closed', '', 'group_5dd1a518369a3', '', '', '2019-11-18 00:17:54', '2019-11-17 21:17:54', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(107, 1, '2019-11-17 22:57:03', '2019-11-17 19:57:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:85:\"Введите значение соответствующего показателя\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Количество', 'indicators_value', 'publish', 'closed', 'closed', '', 'field_5dd1a52527807', '', '', '2019-11-17 23:12:46', '2019-11-17 20:12:46', '', 106, 'http://smartum/?post_type=acf-field&#038;p=107', 0, 'acf-field', '', 0),
(108, 1, '2019-11-17 23:00:03', '2019-11-17 20:00:03', '<!-- wp:paragraph -->\n<p> открытыx&nbsp;центра<br>по&nbsp;всей&nbsp;России&nbsp;и<br>странам&nbsp;СНГ </p>\n<!-- /wp:paragraph -->', 'Количество открытых центров', '', 'publish', 'open', 'open', '', 'kolichestvo-otkrytyh-centrov', '', '', '2019-11-18 00:14:19', '2019-11-17 21:14:19', '', 0, 'http://smartum/?p=108', 0, 'post', '', 0),
(109, 1, '2019-11-17 23:00:03', '2019-11-17 20:00:03', '<!-- wp:paragraph -->\n<p> открытыx центра<br>по всей России и<br>странам СНГ </p>\n<!-- /wp:paragraph -->', 'Количество открытых центров', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-17 23:00:03', '2019-11-17 20:00:03', '', 108, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-11-17 23:03:27', '2019-11-17 20:03:27', '<!-- wp:paragraph -->\n<p> опытных&nbsp;<br>педагогов&nbsp;<br>центрах </p>\n<!-- /wp:paragraph -->', 'Количество педагогов', '', 'publish', 'open', 'open', '', 'kolichestvo-pedagogov', '', '', '2019-11-18 00:14:40', '2019-11-17 21:14:40', '', 0, 'http://smartum/?p=110', 0, 'post', '', 0),
(111, 1, '2019-11-17 23:03:03', '2019-11-17 20:03:03', '<!-- wp:paragraph -->\n<p> опытных <br>педагогов <br>центрах </p>\n<!-- /wp:paragraph -->', 'Количество педагогов', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-11-17 23:03:03', '2019-11-17 20:03:03', '', 110, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-11-17 23:05:11', '2019-11-17 20:05:11', '<!-- wp:paragraph -->\n<p> детей&nbsp;каждый&nbsp;месяц<br>учатся&nbsp;с&nbsp;большим<br>&nbsp;удовольствием </p>\n<!-- /wp:paragraph -->', 'Количество учеников', '', 'publish', 'open', 'open', '', 'kolichestvo-uchenikov', '', '', '2019-11-18 00:15:04', '2019-11-17 21:15:04', '', 0, 'http://smartum/?p=112', 0, 'post', '', 0),
(113, 1, '2019-11-17 23:05:11', '2019-11-17 20:05:11', '<!-- wp:paragraph -->\n<p> детей каждый месяц<br>учатся с большим<br> удовольствием </p>\n<!-- /wp:paragraph -->', 'Количество учеников', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-11-17 23:05:11', '2019-11-17 20:05:11', '', 112, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-11-17 23:14:17', '2019-11-17 20:14:17', '<!-- wp:paragraph -->\n<p> открытыx&nbsp;центра<br>по&nbsp;всей&nbsp;России&nbsp;и<br>странам&nbsp;СНГ </p>\n<!-- /wp:paragraph -->', 'Количество открытых центров', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-17 23:14:17', '2019-11-17 20:14:17', '', 108, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/108-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-11-18 00:14:19', '2019-11-17 21:14:19', '<!-- wp:paragraph -->\n<p> открытыx&nbsp;центра<br>по&nbsp;всей&nbsp;России&nbsp;и<br>странам&nbsp;СНГ </p>\n<!-- /wp:paragraph -->', 'Количество открытых центров', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-11-18 00:14:19', '2019-11-17 21:14:19', '', 108, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/108-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-11-18 00:14:38', '2019-11-17 21:14:38', '<!-- wp:paragraph -->\n<p> опытных&nbsp;<br>педагогов&nbsp;<br>центрах </p>\n<!-- /wp:paragraph -->', 'Количество педагогов', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-11-18 00:14:38', '2019-11-17 21:14:38', '', 110, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/110-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-11-18 00:14:40', '2019-11-17 21:14:40', '<!-- wp:paragraph -->\n<p> опытных&nbsp;<br>педагогов&nbsp;<br>центрах </p>\n<!-- /wp:paragraph -->', 'Количество педагогов', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-11-18 00:14:40', '2019-11-17 21:14:40', '', 110, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/110-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-11-18 00:15:02', '2019-11-17 21:15:02', '<!-- wp:paragraph -->\n<p> детей&nbsp;каждый&nbsp;месяц<br>учатся&nbsp;с&nbsp;большим<br>&nbsp;удовольствием </p>\n<!-- /wp:paragraph -->', 'Количество учеников', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-11-18 00:15:02', '2019-11-17 21:15:02', '', 112, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/112-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-11-18 00:15:04', '2019-11-17 21:15:04', '<!-- wp:paragraph -->\n<p> детей&nbsp;каждый&nbsp;месяц<br>учатся&nbsp;с&nbsp;большим<br>&nbsp;удовольствием </p>\n<!-- /wp:paragraph -->', 'Количество учеников', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-11-18 00:15:04', '2019-11-17 21:15:04', '', 112, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/112-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-11-18 13:21:07', '2019-11-18 10:21:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"programs\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Программы', 'programmy', 'publish', 'closed', 'closed', '', 'group_5dd26b7325eca', '', '', '2019-11-18 14:12:16', '2019-11-18 11:12:16', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=122', 0, 'acf-field-group', '', 0),
(123, 1, '2019-11-18 13:21:07', '2019-11-18 10:21:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:49:\"Добавьте цитату от ученика\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Отзыв ученика', 'bloquote_program', 'publish', 'closed', 'closed', '', 'field_5dd26b7d022f2', '', '', '2019-11-18 13:21:21', '2019-11-18 10:21:21', '', 122, 'http://smartum/?post_type=acf-field&#038;p=123', 0, 'acf-field', '', 0),
(124, 1, '2019-11-18 13:21:07', '2019-11-18 10:21:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:79:\"Добавьте фотографию автора(ученика) цитаты\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото автора отзыва', 'photo_avtor_program', 'publish', 'closed', 'closed', '', 'field_5dd26c6a022f3', '', '', '2019-11-18 13:21:07', '2019-11-18 10:21:07', '', 122, 'http://smartum/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2019-11-18 13:21:07', '2019-11-18 10:21:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:64:\"Введите имя автора (ученика) цитаты\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ФИО ученика', 'fio_avtor_program', 'publish', 'closed', 'closed', '', 'field_5dd26df0022f4', '', '', '2019-11-18 13:21:07', '2019-11-18 10:21:07', '', 122, 'http://smartum/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2019-11-18 13:21:07', '2019-11-18 10:21:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:107:\"Введите город автора(ученика) и его возраст (через запятую)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес автора, возраст', 'location_avtor_program', 'publish', 'closed', 'closed', '', 'field_5dd27017022f5', '', '', '2019-11-18 13:21:07', '2019-11-18 10:21:07', '', 122, 'http://smartum/?post_type=acf-field&p=126', 3, 'acf-field', '', 0),
(127, 0, '2019-11-18 13:34:40', '2019-11-18 10:34:40', '<!-- wp:paragraph -->\n<p>Интерактивная методика подготовки к школе, где ваш ребенок выступает в роли главного героя сказки и познает мир, ведущий в школу </p>\n<!-- /wp:paragraph -->', 'Ментальная арифметика', '', 'publish', 'closed', 'closed', '', 'mentalnaya-arifmetika', '', '', '2019-11-18 13:34:48', '2019-11-18 10:34:48', '', 0, 'http://smartum/?post_type=programs&#038;p=127', 0, 'programs', '', 0),
(129, 1, '2019-11-18 13:30:33', '2019-11-18 10:30:33', '', 'programIcon1', '', 'inherit', 'open', 'closed', '', 'programicon1', '', '', '2019-11-18 13:31:09', '2019-11-18 10:31:09', '', 127, 'http://smartum/wp-content/uploads/2019/11/programIcon1.svg', 0, 'attachment', 'image/svg+xml', 0),
(130, 1, '2019-11-18 13:33:18', '2019-11-18 10:33:18', '', 'programImg1', '', 'inherit', 'open', 'closed', '', 'programimg1', '', '', '2019-11-18 13:33:45', '2019-11-18 10:33:45', '', 127, 'http://smartum/wp-content/uploads/2019/11/programImg1.png', 0, 'attachment', 'image/png', 0),
(131, 0, '2019-11-18 13:39:02', '2019-11-18 10:39:02', '<!-- wp:paragraph -->\n<p> Интерактивная методика подготовки к школе, где ваш ребенок выступает в роли главного героя сказки и познает мир, ведущий в школу  </p>\n<!-- /wp:paragraph -->', 'Скорочтение', '', 'publish', 'closed', 'closed', '', 'skorochtenie', '', '', '2019-11-18 15:25:39', '2019-11-18 12:25:39', '', 0, 'http://smartum/?post_type=programs&#038;p=131', 0, 'programs', '', 0),
(132, 1, '2019-11-18 13:36:08', '2019-11-18 10:36:08', '', 'programIcon2', '', 'inherit', 'open', 'closed', '', 'programicon2', '', '', '2019-11-18 13:36:08', '2019-11-18 10:36:08', '', 131, 'http://smartum/wp-content/uploads/2019/11/programIcon2.svg', 0, 'attachment', 'image/svg+xml', 0),
(133, 1, '2019-11-18 13:38:00', '2019-11-18 10:38:00', '', 'programImg2', '', 'inherit', 'open', 'closed', '', 'programimg2', '', '', '2019-11-18 13:38:32', '2019-11-18 10:38:32', '', 131, 'http://smartum/wp-content/uploads/2019/11/programImg2.png', 0, 'attachment', 'image/png', 0),
(135, 0, '2019-11-18 13:48:30', '2019-11-18 10:48:30', '<!-- wp:paragraph -->\n<p> Курс помогает детям в игре разобраться в основах физики, программирования, информатики и других предметов, которые так скучно преподаются в школе. </p>\n<!-- /wp:paragraph -->', 'Робототехника', '', 'publish', 'closed', 'closed', '', 'robototehnika', '', '', '2019-11-18 15:31:00', '2019-11-18 12:31:00', '', 0, 'http://smartum/?post_type=programs&#038;p=135', 0, 'programs', '', 0),
(136, 1, '2019-11-18 13:46:08', '2019-11-18 10:46:08', '', 'programIcon3', '', 'inherit', 'open', 'closed', '', 'programicon3', '', '', '2019-11-18 13:46:08', '2019-11-18 10:46:08', '', 135, 'http://smartum/wp-content/uploads/2019/11/programIcon3.svg', 0, 'attachment', 'image/svg+xml', 0),
(137, 1, '2019-11-18 13:47:34', '2019-11-18 10:47:34', '', 'programImg3', '', 'inherit', 'open', 'closed', '', 'programimg3', '', '', '2019-11-18 13:48:02', '2019-11-18 10:48:02', '', 135, 'http://smartum/wp-content/uploads/2019/11/programImg3.png', 0, 'attachment', 'image/png', 0),
(138, 0, '2019-11-18 13:52:28', '2019-11-18 10:52:28', '<!-- wp:paragraph -->\n<p>К Курс помогает детям в игре разобраться в основах физики, программирования, информатики и других предметов, которые так скучно преподаются в школе. </p>\n<!-- /wp:paragraph -->', 'Подготовка к школе', '', 'publish', 'closed', 'closed', '', 'podgotovka-k-shkole', '', '', '2019-11-18 15:31:35', '2019-11-18 12:31:35', '', 0, 'http://smartum/?post_type=programs&#038;p=138', 0, 'programs', '', 0),
(139, 1, '2019-11-18 13:50:20', '2019-11-18 10:50:20', '', 'programIcon4', '', 'inherit', 'open', 'closed', '', 'programicon4', '', '', '2019-11-18 13:50:20', '2019-11-18 10:50:20', '', 138, 'http://smartum/wp-content/uploads/2019/11/programIcon4.svg', 0, 'attachment', 'image/svg+xml', 0),
(140, 1, '2019-11-18 13:51:36', '2019-11-18 10:51:36', '', 'programImg4', '', 'inherit', 'open', 'closed', '', 'programimg4', '', '', '2019-11-18 13:51:57', '2019-11-18 10:51:57', '', 138, 'http://smartum/wp-content/uploads/2019/11/programImg4.png', 0, 'attachment', 'image/png', 0),
(141, 0, '2019-11-18 13:55:32', '2019-11-18 10:55:32', '<!-- wp:paragraph -->\n<p> Курс помогает детям в игре разобраться в основах физики, программирования, информатики и других предметов, которые так скучно преподаются в школе. </p>\n<!-- /wp:paragraph -->', 'Обучение чтению', '', 'publish', 'closed', 'closed', '', 'obuchenie-chteniyu', '', '', '2019-11-18 15:31:54', '2019-11-18 12:31:54', '', 0, 'http://smartum/?post_type=programs&#038;p=141', 0, 'programs', '', 0),
(142, 1, '2019-11-18 13:53:37', '2019-11-18 10:53:37', '', 'programIcon5', '', 'inherit', 'open', 'closed', '', 'programicon5', '', '', '2019-11-18 13:53:37', '2019-11-18 10:53:37', '', 141, 'http://smartum/wp-content/uploads/2019/11/programIcon5.svg', 0, 'attachment', 'image/svg+xml', 0),
(143, 1, '2019-11-18 13:54:39', '2019-11-18 10:54:39', '', 'programImg5', '', 'inherit', 'open', 'closed', '', 'programimg5', '', '', '2019-11-18 13:54:39', '2019-11-18 10:54:39', '', 141, 'http://smartum/wp-content/uploads/2019/11/programImg5.png', 0, 'attachment', 'image/png', 0),
(144, 0, '2019-11-18 13:57:46', '2019-11-18 10:57:46', '<!-- wp:paragraph -->\n<p> За основу взяты Кембреджиские учебники по английскому языку и дополнены уникальным ридером, разработанным для StartUmи охватывающим все аспекты. </p>\n<!-- /wp:paragraph -->', 'Английский язык', '', 'publish', 'closed', 'closed', '', 'angliyskiy-yazyk', '', '', '2019-11-18 15:32:30', '2019-11-18 12:32:30', '', 0, 'http://smartum/?post_type=programs&#038;p=144', 0, 'programs', '', 0),
(145, 1, '2019-11-18 13:56:32', '2019-11-18 10:56:32', '', 'programIcon6', '', 'inherit', 'open', 'closed', '', 'programicon6', '', '', '2019-11-18 13:56:32', '2019-11-18 10:56:32', '', 144, 'http://smartum/wp-content/uploads/2019/11/programIcon6.svg', 0, 'attachment', 'image/svg+xml', 0),
(146, 1, '2019-11-18 13:57:18', '2019-11-18 10:57:18', '', 'programImg6', '', 'inherit', 'open', 'closed', '', 'programimg6', '', '', '2019-11-18 13:57:18', '2019-11-18 10:57:18', '', 144, 'http://smartum/wp-content/uploads/2019/11/programImg6.png', 0, 'attachment', 'image/png', 0),
(147, 0, '2019-11-18 14:01:03', '2019-11-18 11:01:03', '<!-- wp:paragraph -->\n<p> Интерактивная методика подготовки к школе, где ваш ребенок выступает в роли главного героя сказки и познает мир, ведущий в школу </p>\n<!-- /wp:paragraph -->', 'Актерское мастерство', '', 'publish', 'closed', 'closed', '', 'akterskoe-masterstvo', '', '', '2019-11-18 15:32:56', '2019-11-18 12:32:56', '', 0, 'http://smartum/?post_type=programs&#038;p=147', 0, 'programs', '', 0),
(148, 1, '2019-11-18 13:59:43', '2019-11-18 10:59:43', '', 'programIcon7', '', 'inherit', 'open', 'closed', '', 'programicon7', '', '', '2019-11-18 13:59:43', '2019-11-18 10:59:43', '', 147, 'http://smartum/wp-content/uploads/2019/11/programIcon7.svg', 0, 'attachment', 'image/svg+xml', 0),
(149, 1, '2019-11-18 14:00:31', '2019-11-18 11:00:31', '', 'programImg7', '', 'inherit', 'open', 'closed', '', 'programimg7', '', '', '2019-11-18 14:00:31', '2019-11-18 11:00:31', '', 147, 'http://smartum/wp-content/uploads/2019/11/programImg7.png', 0, 'attachment', 'image/png', 0),
(150, 0, '2019-11-18 14:03:51', '2019-11-18 11:03:51', '<!-- wp:paragraph -->\n<p>Со Создание интернет-блога с нуля для детей может стать возможностью творчества, самовыражения, развития и понимание основ информационной безопасности. </p>\n<!-- /wp:paragraph -->', 'Школа блогинга', '', 'publish', 'closed', 'closed', '', 'shkola-bloginga', '', '', '2019-11-18 15:33:32', '2019-11-18 12:33:32', '', 0, 'http://smartum/?post_type=programs&#038;p=150', 0, 'programs', '', 0),
(151, 1, '2019-11-18 14:02:41', '2019-11-18 11:02:41', '', 'programIcon8', '', 'inherit', 'open', 'closed', '', 'programicon8', '', '', '2019-11-18 14:02:41', '2019-11-18 11:02:41', '', 150, 'http://smartum/wp-content/uploads/2019/11/programIcon8.svg', 0, 'attachment', 'image/svg+xml', 0),
(152, 1, '2019-11-18 14:03:20', '2019-11-18 11:03:20', '', 'programImg8', '', 'inherit', 'open', 'closed', '', 'programimg8', '', '', '2019-11-18 14:03:20', '2019-11-18 11:03:20', '', 150, 'http://smartum/wp-content/uploads/2019/11/programImg8.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2019-11-18 22:42:17', '2019-11-18 19:42:17', '<!-- wp:paragraph -->\n<p>\n\nКурс помогает детям в игре разобраться в основах физики, программирования, информатики и других предметов, которые так скучно преподаются в школе.\n\n</p>\n<!-- /wp:paragraph -->', 'Тестовая карточка', '', 'pending', 'closed', 'closed', '', 'testovaya-kartochka', '', '', '2019-12-18 19:55:52', '2019-12-18 16:55:52', '', 0, 'http://smartum/?post_type=programs&#038;p=153', 0, 'programs', '', 0),
(155, 0, '2019-11-19 17:39:43', '2019-11-19 14:39:43', '', 'Евгений Кичигин', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. На этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, все сомнения отпали.', 'publish', 'closed', 'closed', '', 'evgeniy-kichigin', '', '', '2019-11-20 18:22:19', '2019-11-20 15:22:19', '', 0, 'http://smartum/?post_type=reviews&#038;p=155', 0, 'reviews', '', 0),
(156, 1, '2019-11-19 17:36:06', '2019-11-19 14:36:06', '', 'fhotoSliderReviews1', '', 'inherit', 'open', 'closed', '', 'fhotosliderreviews1', '', '', '2019-11-19 17:36:06', '2019-11-19 14:36:06', '', 155, 'http://smartum/wp-content/uploads/2019/11/fhotoSliderReviews1.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Отзывы', 'otzyvy', 'publish', 'closed', 'closed', '', 'group_5dd40a9c75fd2', '', '', '2019-11-20 18:21:36', '2019-11-20 15:21:36', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=157', 0, 'acf-field-group', '', 0),
(158, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:57:\"Введите начальную часть отзыва\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Начало отзыва', 'begin_review', 'publish', 'closed', 'closed', '', 'field_5dd40aa684680', '', '', '2019-11-19 18:46:45', '2019-11-19 15:46:45', '', 157, 'http://smartum/?post_type=acf-field&#038;p=158', 1, 'acf-field', '', 0),
(159, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Слоган отзыва', 'slogan_review', 'publish', 'closed', 'closed', '', 'field_5dd40b6b84681', '', '', '2019-11-19 18:46:45', '2019-11-19 15:46:45', '', 157, 'http://smartum/?post_type=acf-field&#038;p=159', 0, 'acf-field', '', 0),
(160, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:88:\"Введите имя ученика и его возраст(через запятую)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Родитель какого ученика и его возраст', 'ler_review', 'publish', 'closed', 'closed', '', 'field_5dd40ba684682', '', '', '2019-11-19 18:46:17', '2019-11-19 15:46:17', '', 157, 'http://smartum/?post_type=acf-field&p=160', 2, 'acf-field', '', 0),
(161, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:88:\"Введите период времени, который ученик обучался\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Срок обучения', 'term_review', 'publish', 'closed', 'closed', '', 'field_5dd40c6384683', '', '', '2019-11-19 18:46:17', '2019-11-19 15:46:17', '', 157, 'http://smartum/?post_type=acf-field&p=161', 3, 'acf-field', '', 0),
(162, 1, '2019-11-19 18:46:17', '2019-11-19 15:46:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ссылка на видеоролик', 'video_review', 'publish', 'closed', 'closed', '', 'field_5dd40ce584684', '', '', '2019-11-20 18:21:36', '2019-11-20 15:21:36', '', 157, 'http://smartum/?post_type=acf-field&#038;p=162', 5, 'acf-field', '', 0),
(163, 1, '2019-11-19 21:22:30', '2019-11-19 18:22:30', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:88:\"Отметьте программы, на которых обучается ученик\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:8:{s:41:\"Ментальная арифметика\";s:41:\"Ментальная арифметика\";s:22:\"Скорочтение\";s:22:\"Скорочтение\";s:26:\"Робототехника\";s:26:\"Робототехника\";s:34:\"Подготовка к школе\";s:34:\"Подготовка к школе\";s:29:\"Обучение чтению\";s:29:\"Обучение чтению\";s:29:\"Английский язык\";s:29:\"Английский язык\";s:39:\"Актерское мастерство\";s:39:\"Актерское мастерство\";s:27:\"Школа блогинга\";s:27:\"Школа блогинга\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"array\";s:11:\"save_custom\";i:0;}', 'Программы обучения', 'program_review', 'publish', 'closed', 'closed', '', 'field_5dd4149fa8855', '', '', '2019-11-20 18:21:36', '2019-11-20 15:21:36', '', 157, 'http://smartum/?post_type=acf-field&#038;p=163', 4, 'acf-field', '', 0),
(164, 0, '2019-11-19 22:11:36', '2019-11-19 19:11:36', '', 'Майя Алексеенко', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.', 'publish', 'closed', 'closed', '', 'mayya-alekseenko', '', '', '2019-11-19 22:11:38', '2019-11-19 19:11:38', '', 0, 'http://smartum/?post_type=reviews&#038;p=164', 0, 'reviews', '', 0),
(165, 0, '2019-11-19 22:18:25', '2019-11-19 19:18:25', '', 'Геннадий Сухомлинский', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.', 'publish', 'closed', 'closed', '', 'gennadiy-suhomlinskiy', '', '', '2019-11-19 22:18:26', '2019-11-19 19:18:26', '', 0, 'http://smartum/?post_type=reviews&#038;p=165', 0, 'reviews', '', 0),
(166, 0, '2019-11-19 22:21:28', '2019-11-19 19:21:28', '', 'Татьяна Фролова', 'Startum для нас – это семейный бизнес, ведем его совместно с супругой. Признаюсь, на этапе принятия решения о сотрудничестве с данной франшизой было много сомнений. Но после общения с основателем проекта, когда мы поняли его видение, его цели, все сомнения отпали.', 'publish', 'closed', 'closed', '', 'tatyana-frolova', '', '', '2019-11-19 22:21:29', '2019-11-19 19:21:29', '', 0, 'http://smartum/?post_type=reviews&#038;p=166', 0, 'reviews', '', 0),
(167, 1, '2019-11-20 21:06:17', '2019-11-20 18:06:17', '<!-- wp:paragraph -->\n<p>\n\n8&nbsp;(800)&nbsp;222-48-61\n\n</p>\n<!-- /wp:paragraph -->', 'Телефон', '', 'publish', 'open', 'open', '', 'telefon', '', '', '2019-11-21 11:45:09', '2019-11-21 08:45:09', '', 0, 'http://smartum/?p=167', 0, 'post', '', 0),
(168, 1, '2019-11-20 21:06:17', '2019-11-20 18:06:17', '<!-- wp:paragraph -->\n<p>\n\n8&nbsp;(800)&nbsp;222-48-61\n\n</p>\n<!-- /wp:paragraph -->', 'Телефон', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-11-20 21:06:17', '2019-11-20 18:06:17', '', 167, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-11-20 21:49:08', '2019-11-20 18:49:08', '<!-- wp:paragraph -->\n<p>info@startum24.com</p>\n<!-- /wp:paragraph -->', 'Электронная почта', '', 'publish', 'open', 'open', '', 'elektronnaya-pochta', '', '', '2019-11-21 11:44:59', '2019-11-21 08:44:59', '', 0, 'http://smartum/?p=169', 0, 'post', '', 0),
(170, 1, '2019-11-20 21:49:08', '2019-11-20 18:49:08', '<!-- wp:paragraph -->\n<p>info@startum24.com</p>\n<!-- /wp:paragraph -->', 'Электронная почта', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-11-20 21:49:08', '2019-11-20 18:49:08', '', 169, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-11-21 11:59:13', '2019-11-21 08:59:13', '', 'Фэйсбук', '', 'publish', 'open', 'open', '', 'feysbuk', '', '', '2019-11-21 12:37:15', '2019-11-21 09:37:15', '', 0, 'http://smartum/?p=171', 0, 'post', '', 0),
(172, 1, '2019-11-21 11:59:13', '2019-11-21 08:59:13', '', 'Фэйсбук', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-11-21 11:59:13', '2019-11-21 08:59:13', '', 171, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-11-21 12:04:07', '2019-11-21 09:04:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"category:socialnye-seti\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Соцсети', 'socseti', 'publish', 'closed', 'closed', '', 'group_5dd651f757e29', '', '', '2019-11-21 12:04:07', '2019-11-21 09:04:07', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=173', 0, 'acf-field-group', '', 0),
(174, 1, '2019-11-21 12:04:07', '2019-11-21 09:04:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ссылка на соцсеть', 'link_soc', 'publish', 'closed', 'closed', '', 'field_5dd65203ae714', '', '', '2019-11-21 12:04:07', '2019-11-21 09:04:07', '', 173, 'http://smartum/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2019-11-21 12:04:07', '2019-11-21 09:04:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:44:\"Выберите иконку соцсети\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Иконка соцсети', 'icon_soc', 'publish', 'closed', 'closed', '', 'field_5dd65283ae715', '', '', '2019-11-21 12:04:07', '2019-11-21 09:04:07', '', 173, 'http://smartum/?post_type=acf-field&p=175', 1, 'acf-field', '', 0),
(176, 1, '2019-11-21 12:06:15', '2019-11-21 09:06:15', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2019-11-21 12:06:15', '2019-11-21 09:06:15', '', 171, 'http://smartum/wp-content/uploads/2019/11/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(177, 1, '2019-11-21 12:06:51', '2019-11-21 09:06:51', '', 'Фэйсбук', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-11-21 12:06:51', '2019-11-21 09:06:51', '', 171, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/171-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-11-21 12:07:41', '2019-11-21 09:07:41', '', 'Вконтакте', '', 'publish', 'open', 'open', '', 'vkontakte', '', '', '2019-11-21 12:37:05', '2019-11-21 09:37:05', '', 0, 'http://smartum/?p=178', 0, 'post', '', 0),
(179, 1, '2019-11-21 12:07:41', '2019-11-21 09:07:41', '', 'Вконтакте', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2019-11-21 12:07:41', '2019-11-21 09:07:41', '', 178, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/178-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-11-21 12:10:53', '2019-11-21 09:10:53', '', 'vk', '', 'inherit', 'open', 'closed', '', 'vk', '', '', '2019-11-21 12:10:53', '2019-11-21 09:10:53', '', 178, 'http://smartum/wp-content/uploads/2019/11/vk.svg', 0, 'attachment', 'image/svg+xml', 0),
(181, 1, '2019-11-21 12:11:02', '2019-11-21 09:11:02', '', 'Вконтакте', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2019-11-21 12:11:02', '2019-11-21 09:11:02', '', 178, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/178-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-11-21 12:11:09', '2019-11-21 09:11:09', '', 'Вконтакте', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2019-11-21 12:11:09', '2019-11-21 09:11:09', '', 178, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/178-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-11-21 12:12:01', '2019-11-21 09:12:01', '', 'Нонэйм', '', 'publish', 'open', 'open', '', 'noneym', '', '', '2019-11-21 12:36:53', '2019-11-21 09:36:53', '', 0, 'http://smartum/?p=183', 0, 'post', '', 0),
(184, 1, '2019-11-21 12:12:01', '2019-11-21 09:12:01', '', 'Нонэйм', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-21 12:12:01', '2019-11-21 09:12:01', '', 183, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/183-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-11-21 12:12:36', '2019-11-21 09:12:36', '', 'noname', '', 'inherit', 'open', 'closed', '', 'noname', '', '', '2019-11-21 12:12:36', '2019-11-21 09:12:36', '', 183, 'http://smartum/wp-content/uploads/2019/11/noname.svg', 0, 'attachment', 'image/svg+xml', 0),
(186, 1, '2019-11-21 12:12:42', '2019-11-21 09:12:42', '', 'Нонэйм', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-11-21 12:12:42', '2019-11-21 09:12:42', '', 183, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/183-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2019-11-21 12:13:12', '2019-11-21 09:13:12', '', 'Ю-туб', '', 'publish', 'open', 'open', '', 'yu-tub', '', '', '2019-11-21 12:14:14', '2019-11-21 09:14:14', '', 0, 'http://smartum/?p=187', 0, 'post', '', 0),
(188, 1, '2019-11-21 12:13:12', '2019-11-21 09:13:12', '', 'Ю-туб', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2019-11-21 12:13:12', '2019-11-21 09:13:12', '', 187, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-11-21 12:14:07', '2019-11-21 09:14:07', '', 'youtube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2019-11-21 12:14:07', '2019-11-21 09:14:07', '', 187, 'http://smartum/wp-content/uploads/2019/11/youtube.svg', 0, 'attachment', 'image/svg+xml', 0),
(190, 1, '2019-11-21 12:14:14', '2019-11-21 09:14:14', '', 'Ю-туб', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2019-11-21 12:14:14', '2019-11-21 09:14:14', '', 187, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/187-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-11-21 12:14:40', '2019-11-21 09:14:40', '', 'Твиттер', '', 'pending', 'open', 'open', '', 'tvitter', '', '', '2019-11-21 12:40:08', '2019-11-21 09:40:08', '', 0, 'http://smartum/?p=191', 0, 'post', '', 0),
(192, 1, '2019-11-21 12:14:40', '2019-11-21 09:14:40', '', 'Твиттер', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-11-21 12:14:40', '2019-11-21 09:14:40', '', 191, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2019-11-21 12:15:21', '2019-11-21 09:15:21', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2019-11-21 12:15:21', '2019-11-21 09:15:21', '', 191, 'http://smartum/wp-content/uploads/2019/11/twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(194, 1, '2019-11-21 12:15:29', '2019-11-21 09:15:29', '', 'Твиттер', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-11-21 12:15:29', '2019-11-21 09:15:29', '', 191, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/191-revision-v1/', 0, 'revision', '', 0),
(195, 0, '2019-11-21 17:37:32', '2019-11-21 14:37:32', '', 'Москва', 'Центр в г. Москваааа', 'publish', 'closed', 'closed', '', 'moskva', '', '', '2019-12-18 15:55:12', '2019-12-18 12:55:12', '', 0, 'http://smartum/?post_type=centers&#038;p=195', 0, 'centers', '', 0),
(196, 1, '2019-11-21 17:36:51', '2019-11-21 14:36:51', '', 'centerMoskau', '', 'inherit', 'open', 'closed', '', 'centermoskau', '', '', '2019-11-21 17:36:51', '2019-11-21 14:36:51', '', 195, 'http://smartum/wp-content/uploads/2019/11/centerMoskau.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(197, 0, '2019-11-21 17:38:44', '2019-11-21 14:38:44', '<!-- wp:paragraph -->\n<p>   Этот центр находится в очень удобном районе с точки зрения транспортной доступности. Здесь используются самые современные методики и собраны очень профессиональные преподаватели.<br>Хорошие показатели и положительные отзывы создают учреждению прекрасную репутацию .<br><br> Приглашаем всех! </p>\n<!-- /wp:paragraph -->', 'Санкт-Петербург', 'Центр в г. Санкт-Петербург', 'publish', 'closed', 'closed', '', 'sankt-peterburg', '', '', '2019-12-18 16:22:42', '2019-12-18 13:22:42', '', 0, 'http://smartum/?post_type=centers&#038;p=197', 0, 'centers', '', 0),
(198, 0, '2019-11-21 17:40:40', '2019-11-21 14:40:40', '', 'Калининград', 'Центр в г. Калининград', 'publish', 'closed', 'closed', '', 'kaliningrad', '', '', '2019-12-18 16:13:54', '2019-12-18 13:13:54', '', 0, 'http://smartum/?post_type=centers&#038;p=198', 0, 'centers', '', 0),
(199, 1, '2019-11-21 19:29:29', '2019-11-21 16:29:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"centers\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Центры', 'centry', 'publish', 'closed', 'closed', '', 'group_5dd6a3afa4edf', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=199', 0, 'acf-field-group', '', 0),
(200, 1, '2019-11-21 19:29:29', '2019-11-21 16:29:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:297:\"Найдите на сервисе https://www.google.ru/maps нужный адрес, затем в меню пройдите в пункт код и ссылка. Там во вкладке \"встраивание карт\" скопируйте код html и вставьте в это поле\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Карта', 'map_center', 'publish', 'closed', 'closed', '', 'field_5dd6ba66f4c8b', '', '', '2019-11-21 19:29:29', '2019-11-21 16:29:29', '', 199, 'http://smartum/?post_type=acf-field&p=200', 0, 'acf-field', '', 0),
(201, 0, '2019-11-21 19:53:13', '2019-11-21 16:53:13', '', 'Красноуфимск', ' Центр в г. Красноуфимск', 'publish', 'closed', 'closed', '', 'krasnoufimsk', '', '', '2019-12-18 16:14:39', '2019-12-18 13:14:39', '', 0, 'http://smartum/?post_type=centers&#038;p=201', 0, 'centers', '', 0),
(204, 0, '2019-11-21 19:56:23', '2019-11-21 16:56:23', '', 'Владивосток', 'Центр в г. Владивосток', 'publish', 'closed', 'closed', '', 'vladivostok', '', '', '2019-12-18 20:31:15', '2019-12-18 17:31:15', '', 0, 'http://smartum/?post_type=centers&#038;p=204', 0, 'centers', '', 0),
(205, 0, '2019-11-21 19:58:10', '2019-11-21 16:58:10', '', 'Красноярск', 'Центр в г. Красноярск', 'publish', 'closed', 'closed', '', 'krasnoyarsk', '', '', '2019-12-18 16:16:20', '2019-12-18 13:16:20', '', 0, 'http://smartum/?post_type=centers&#038;p=205', 0, 'centers', '', 0),
(206, 0, '2019-11-21 19:59:40', '2019-11-21 16:59:40', '<!-- wp:paragraph -->\n<p>Центр в г. Уфа</p>\n<!-- /wp:paragraph -->', 'Уфа', '', 'publish', 'closed', 'closed', '', 'ufa', '', '', '2019-11-21 19:59:41', '2019-11-21 16:59:41', '', 0, 'http://smartum/?post_type=centers&#038;p=206', 0, 'centers', '', 0),
(207, 0, '2019-11-21 22:38:58', '2019-11-21 19:38:58', '<!-- wp:paragraph -->\n<p>Центр в г. Екатеринбург</p>\n<!-- /wp:paragraph -->', 'Екатеринбург', '', 'publish', 'closed', 'closed', '', 'ekaterinburg', '', '', '2019-11-21 22:38:59', '2019-11-21 19:38:59', '', 0, 'http://smartum/?post_type=centers&#038;p=207', 0, 'centers', '', 0),
(208, 0, '2019-11-21 22:40:27', '2019-11-21 19:40:27', '<!-- wp:paragraph -->\n<p>Центр в г. Челябинск</p>\n<!-- /wp:paragraph -->', 'Челябинск', '', 'publish', 'closed', 'closed', '', 'chelyabinsk', '', '', '2019-11-21 22:40:28', '2019-11-21 19:40:28', '', 0, 'http://smartum/?post_type=centers&#038;p=208', 0, 'centers', '', 0),
(209, 0, '2019-11-21 22:42:25', '2019-11-21 19:42:25', '<!-- wp:paragraph -->\n<p>Центр в г. Омск</p>\n<!-- /wp:paragraph -->', 'Омск', '', 'publish', 'closed', 'closed', '', 'omsk', '', '', '2019-11-21 22:42:26', '2019-11-21 19:42:26', '', 0, 'http://smartum/?post_type=centers&#038;p=209', 0, 'centers', '', 0),
(210, 0, '2019-11-21 22:43:45', '2019-11-21 19:43:45', '<!-- wp:paragraph -->\n<p>Центр в г. Самара</p>\n<!-- /wp:paragraph -->', 'Самара', '', 'publish', 'closed', 'closed', '', 'samara', '', '', '2019-11-30 18:32:21', '2019-11-30 15:32:21', '', 0, 'http://smartum/?post_type=centers&#038;p=210', 0, 'centers', '', 0),
(211, 0, '2019-11-21 22:45:15', '2019-11-21 19:45:15', '<!-- wp:paragraph -->\n<p>Центр в г Ростов-на-Дону</p>\n<!-- /wp:paragraph -->', 'Ростов-на-Дону', '', 'publish', 'closed', 'closed', '', 'rostov-na-donu', '', '', '2019-11-21 22:45:16', '2019-11-21 19:45:16', '', 0, 'http://smartum/?post_type=centers&#038;p=211', 0, 'centers', '', 0),
(212, 0, '2019-11-21 22:46:26', '2019-11-21 19:46:26', '<!-- wp:paragraph -->\n<p>Центр в г. Нижний Новгород</p>\n<!-- /wp:paragraph -->', 'Нижний Новгород', '', 'publish', 'closed', 'closed', '', 'nijniy-novgorod', '', '', '2019-11-21 22:46:28', '2019-11-21 19:46:28', '', 0, 'http://smartum/?post_type=centers&#038;p=212', 0, 'centers', '', 0),
(213, 0, '2019-11-21 22:47:41', '2019-11-21 19:47:41', '<!-- wp:paragraph -->\n<p>Центр в г. Казань</p>\n<!-- /wp:paragraph -->', 'Казань', 'Центр в г. Казань', 'publish', 'closed', 'closed', '', 'kazan', '', '', '2019-12-18 20:34:56', '2019-12-18 17:34:56', '', 0, 'http://smartum/?post_type=centers&#038;p=213', 0, 'centers', '', 0),
(214, 0, '2019-11-21 22:48:57', '2019-11-21 19:48:57', '<!-- wp:paragraph -->\n<p>Центр в г. Воронеж</p>\n<!-- /wp:paragraph -->', 'Воронеж', '', 'publish', 'closed', 'closed', '', 'voronej', '', '', '2019-11-29 18:12:23', '2019-11-29 15:12:23', '', 0, 'http://smartum/?post_type=centers&#038;p=214', 0, 'centers', '', 0),
(215, 0, '2019-11-22 22:20:15', '2019-11-22 19:20:15', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2019-11-22 22:43:59', '2019-11-22 19:43:59', '', 0, 'http://smartum/?post_type=quests&#038;p=215', 0, 'quests', '', 0),
(216, 1, '2019-11-22 22:22:04', '2019-11-22 19:22:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"quests\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Вопросы', 'voprosy', 'publish', 'closed', 'closed', '', 'group_5dd834fab1d6f', '', '', '2019-11-22 22:50:35', '2019-11-22 19:50:35', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=216', 0, 'acf-field-group', '', 0),
(217, 1, '2019-11-22 22:22:04', '2019-11-22 19:22:04', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:43:\"Введите ответ на вопрос\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:24;s:9:\"new_lines\";s:2:\"br\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_5dd8350731bee', '', '', '2019-11-22 22:49:46', '2019-11-22 19:49:46', '', 216, 'http://smartum/?post_type=acf-field&#038;p=217', 1, 'acf-field', '', 0),
(218, 0, '2019-11-22 22:24:11', '2019-11-22 19:24:11', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2019-11-22 22:44:27', '2019-11-22 19:44:27', '', 0, 'http://smartum/?post_type=quests&#038;p=218', 0, 'quests', '', 0),
(219, 0, '2019-11-22 22:25:15', '2019-11-22 19:25:15', '', '3', '', 'publish', 'closed', 'closed', '', '3', '', '', '2019-11-22 22:44:49', '2019-11-22 19:44:49', '', 0, 'http://smartum/?post_type=quests&#038;p=219', 0, 'quests', '', 0),
(220, 0, '2019-11-22 22:25:49', '2019-11-22 19:25:49', '<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', '4', '', 'publish', 'closed', 'closed', '', '4', '', '', '2019-11-22 22:45:17', '2019-11-22 19:45:17', '', 0, 'http://smartum/?post_type=quests&#038;p=220', 0, 'quests', '', 0),
(221, 0, '2019-11-22 22:26:28', '2019-11-22 19:26:28', '', '5', '', 'publish', 'closed', 'closed', '', '5', '', '', '2019-11-22 22:45:45', '2019-11-22 19:45:45', '', 0, 'http://smartum/?post_type=quests&#038;p=221', 0, 'quests', '', 0),
(222, 0, '2019-11-22 22:27:06', '2019-11-22 19:27:06', '', '6', '', 'publish', 'closed', 'closed', '', '6', '', '', '2019-11-22 22:46:13', '2019-11-22 19:46:13', '', 0, 'http://smartum/?post_type=quests&#038;p=222', 0, 'quests', '', 0),
(223, 1, '2019-11-22 22:43:12', '2019-11-22 19:43:12', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:27:\"Введите вопрос\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Вопрос', 'quest', 'publish', 'closed', 'closed', '', 'field_5dd839d5a789e', '', '', '2019-11-22 22:49:16', '2019-11-22 19:49:16', '', 216, 'http://smartum/?post_type=acf-field&#038;p=223', 0, 'acf-field', '', 0),
(224, 1, '2019-11-23 23:06:59', '2019-11-23 20:06:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"category_id\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"4\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Шапка', 'shapka', 'publish', 'closed', 'closed', '', 'group_5dd990d55009a', '', '', '2019-11-23 23:29:38', '2019-11-23 20:29:38', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=224', 0, 'acf-field-group', '', 0),
(225, 1, '2019-11-23 23:06:59', '2019-11-23 20:06:59', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:59:\"Введите главный заголовок сайта\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Описание сайта', 'desc_site', 'publish', 'closed', 'closed', '', 'field_5dd990ea1dadd', '', '', '2019-11-23 23:15:20', '2019-11-23 20:15:20', '', 224, 'http://smartum/?post_type=acf-field&#038;p=225', 0, 'acf-field', '', 0),
(226, 1, '2019-11-23 23:29:38', '2019-11-23 20:29:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:55:\"Вставьте ссылку на ю-туб ролик\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заглавный видеоролик', 'video_header', 'publish', 'closed', 'closed', '', 'field_5dd9960c04ae0', '', '', '2019-11-23 23:29:38', '2019-11-23 20:29:38', '', 224, 'http://smartum/?post_type=acf-field&p=226', 1, 'acf-field', '', 0),
(227, 0, '2019-11-24 22:48:09', '2019-11-24 19:48:09', '<!-- wp:paragraph -->\n<p>\n\nАлександр Сергеевич Пушкин сказал: «Научить человека быть счастливым нельзя, но его можно воспитать так, чтобы он был счастливым». Хорошие родители стараются вырастить успешных, счастливых детей, но далеко не все знают, как это правильно делать. Некоторые полагаются на собственные знания и умения, другие ориентируются на пример своего воспитания.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"ссс\"> 5 заповедей для родителей </h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li> Запрет, значит, запрет. Типичная ситуация: ребенок просит конфету, мама отвечает «Нет», но, как только слышит крик и плач, твердое «Нет» превращается в «Хорошо, только + реви». Это распространенная грубая ошибка многих родителей. В подобной ситуации дитя понимает, что слово мамы или папы не «закон», желаемого легко достичь. Это подрывает авторитет родителей в глазах малыша и провоцирует последующие капризы и непослушание. Советуем изменить формулировку: «Не сейчас», «Позже, потому что…». </li><li> Единое мнение взрослых в семье. Папа запрещает, но мама разрешает. Еще одна частая ошибка родителей. Дети быстро адаптируют свое поведение по отношению к взрослым и этим пользуются. Между родителями должно быть полное согласие в моделях и правилах воспитания. </li><li> Табу на выяснение отношений при детях. Разногласия бывают у всех, но важно научиться не спорить в присутствии детей. И уж тем более если это касается их воспитания. Решать, как воспитывать ребенка, родители должны наедине. </li><li> Гармония в семье. Ребенок, как лакмусовая бумажка, отражает внутреннюю ситуацию в семье. Раздоры между родителями, напряженная обстановка отражаются на психическом состоянии детей. </li><li>Отказ от сравнения с другими, особенно в период взросления. «Вот посмотри, какой Петя молодец», — ошибка, которая влечет недоверие, провоцирует комплексы и чувство неполноценности. Принимайте и любите детей такими, какими они есть.</li></ul>\n<!-- /wp:list -->', 'Как действительно правильно воспитать ребенка?', '', 'publish', 'closed', 'closed', '', 'kak-deystvitelno-pravilno-vospitat', '', '', '2019-11-26 23:03:39', '2019-11-26 20:03:39', '', 0, 'http://smartum/?post_type=articles&#038;p=227', 0, 'articles', '', 0),
(228, 1, '2019-11-24 22:47:57', '2019-11-24 19:47:57', '', 'article1', '', 'inherit', 'open', 'closed', '', 'article1', '', '', '2019-11-24 22:47:57', '2019-11-24 19:47:57', '', 227, 'http://smartum/wp-content/uploads/2019/11/article1.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 0, '2019-11-24 22:50:49', '2019-11-24 19:50:49', '<!-- wp:paragraph -->\n<p>\n\n Александр Сергеевич Пушкин сказал: «Научить человека быть счастливым нельзя, но его можно воспитать так, чтобы он был счастливым». Хорошие родители стараются вырастить успешных, счастливых детей, но далеко не все знают, как это правильно делать. Некоторые полагаются на собственные знания и умения, другие ориентируются на пример своего воспитания. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Еще один абзац.<br>Для теста.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Заголовок второго уровня</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Заголовок третьего уровня</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Первый пункт</li><li>Второй пункт</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Еще один заголовок третьего уровня</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Еще один первый пункт</li><li>Еще один второй пункт</li><li>Третий пункт</li></ul>\n<!-- /wp:list -->', 'Как действительно правильно воспитать ребенка (2 статья)', '', 'publish', 'closed', 'closed', '', 'kak-deystvitelno', '', '', '2019-11-26 23:42:19', '2019-11-26 20:42:19', '', 0, 'http://smartum/?post_type=articles&#038;p=229', 0, 'articles', '', 0),
(230, 1, '2019-11-24 22:50:44', '2019-11-24 19:50:44', '', 'article2', '', 'inherit', 'open', 'closed', '', 'article2', '', '', '2019-11-24 22:50:44', '2019-11-24 19:50:44', '', 229, 'http://smartum/wp-content/uploads/2019/11/article2.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2019-11-24 22:52:34', '2019-11-24 19:52:34', '', 'Взаимодействие детей в социуме', '', 'publish', 'closed', 'closed', '', 'vzaimodeystvie-detey', '', '', '2019-11-26 22:44:36', '2019-11-26 19:44:36', '', 0, 'http://smartum/?post_type=articles&#038;p=231', 0, 'articles', '', 0),
(232, 1, '2019-11-24 22:52:10', '2019-11-24 19:52:10', '', 'article3', '', 'inherit', 'open', 'closed', '', 'article3', '', '', '2019-11-24 22:52:10', '2019-11-24 19:52:10', '', 231, 'http://smartum/wp-content/uploads/2019/11/article3.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2019-11-24 22:53:46', '2019-11-24 19:53:46', '', 'Взаимодействие детей в социуме ( 2 статья )', '', 'publish', 'closed', 'closed', '', 'vzaimodeystvie-detey-2', '', '', '2019-11-26 22:44:47', '2019-11-26 19:44:47', '', 0, 'http://smartum/?post_type=articles&#038;p=233', 0, 'articles', '', 0),
(234, 1, '2019-11-24 22:53:37', '2019-11-24 19:53:37', '', 'article4', '', 'inherit', 'open', 'closed', '', 'article4', '', '', '2019-11-24 22:53:37', '2019-11-24 19:53:37', '', 233, 'http://smartum/wp-content/uploads/2019/11/article4.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 0, '2019-11-24 22:57:51', '2019-11-24 19:57:51', '', 'Возрастные сложности', '', 'publish', 'closed', 'closed', '', 'vozrastnye-slojnosti', '', '', '2019-12-04 21:21:11', '2019-12-04 18:21:11', '', 0, 'http://smartum/?post_type=articles&#038;p=236', 0, 'articles', '', 0),
(237, 1, '2019-11-24 22:57:45', '2019-11-24 19:57:45', '', 'article5', '', 'inherit', 'open', 'closed', '', 'article5', '', '', '2019-11-24 22:57:45', '2019-11-24 19:57:45', '', 236, 'http://smartum/wp-content/uploads/2019/11/article5.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2019-11-24 22:58:48', '2019-11-24 19:58:48', '', 'Возрастные сложности (2 статья)', '', 'publish', 'closed', 'closed', '', 'vozrastnye-slojnosti-2-statya', '', '', '2019-11-26 19:15:00', '2019-11-26 16:15:00', '', 0, 'http://smartum/?post_type=articles&#038;p=240', 0, 'articles', '', 0),
(241, 1, '2019-11-24 22:58:45', '2019-11-24 19:58:45', '', 'article6', '', 'inherit', 'open', 'closed', '', 'article6', '', '', '2019-11-24 22:58:45', '2019-11-24 19:58:45', '', 240, 'http://smartum/wp-content/uploads/2019/11/article6.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2019-11-24 22:59:47', '2019-11-24 19:59:47', '', 'Подготовка к школе', '', 'publish', 'closed', 'closed', '', 'podgotovka-k-shkole', '', '', '2019-11-24 22:59:47', '2019-11-24 19:59:47', '', 0, 'http://smartum/?post_type=articles&#038;p=242', 0, 'articles', '', 0),
(243, 1, '2019-11-24 22:59:39', '2019-11-24 19:59:39', '', 'article7', '', 'inherit', 'open', 'closed', '', 'article7', '', '', '2019-11-24 22:59:39', '2019-11-24 19:59:39', '', 242, 'http://smartum/wp-content/uploads/2019/11/article7.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2019-11-24 23:01:10', '2019-11-24 20:01:10', '', 'Стоит заводить для ребенка домашних животных', '', 'publish', 'closed', 'closed', '', 'stoit-zavodit', '', '', '2019-11-26 22:46:23', '2019-11-26 19:46:23', '', 0, 'http://smartum/?post_type=articles&#038;p=244', 0, 'articles', '', 0),
(245, 1, '2019-11-24 23:01:05', '2019-11-24 20:01:05', '', 'article8', '', 'inherit', 'open', 'closed', '', 'article8', '', '', '2019-11-24 23:01:05', '2019-11-24 20:01:05', '', 244, 'http://smartum/wp-content/uploads/2019/11/article8.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2019-11-26 12:52:00', '2019-11-26 09:52:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"category_id\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Статьи', 'stati', 'trash', 'closed', 'closed', '', 'group_5ddcf50203807__trashed', '', '', '2019-11-28 17:40:59', '2019-11-28 14:40:59', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=246', 0, 'acf-field-group', '', 0),
(247, 1, '2019-11-26 12:52:00', '2019-11-26 09:52:00', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Заголовок страницы со всеми статьями', 'title_all_article', 'trash', 'closed', 'closed', '', 'field_5ddcf513adfe4__trashed', '', '', '2019-11-28 17:40:59', '2019-11-28 14:40:59', '', 246, 'http://smartum/?post_type=acf-field&#038;p=247', 0, 'acf-field', '', 0),
(250, 1, '2019-11-26 18:52:13', '2019-11-26 15:52:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"articles\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Статья одиночная', 'statya-odinochnaya', 'publish', 'closed', 'closed', '', 'group_5ddd49f6b6ef4', '', '', '2019-12-04 21:20:05', '2019-12-04 18:20:05', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=250', 0, 'acf-field-group', '', 0),
(251, 1, '2019-11-26 18:52:13', '2019-11-26 15:52:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:66:\"Введите фото размером не менее 1184х500\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:11:\"true-fullwd\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Основное фото', 'base_photo', 'publish', 'closed', 'closed', '', 'field_5ddd4a0675ce6', '', '', '2019-12-04 21:20:05', '2019-12-04 18:20:05', '', 250, 'http://smartum/?post_type=acf-field&#038;p=251', 0, 'acf-field', '', 0),
(252, 1, '2019-11-26 18:53:40', '2019-11-26 15:53:40', '', 'ar1', '', 'inherit', 'open', 'closed', '', 'ar1', '', '', '2019-11-26 18:53:40', '2019-11-26 15:53:40', '', 227, 'http://smartum/wp-content/uploads/2019/11/ar1.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 0, '2019-11-26 19:18:20', '2019-11-26 16:18:20', '', 'Тестовая', '', 'publish', 'closed', 'closed', '', 'testovaya', '', '', '2019-12-04 21:14:42', '2019-12-04 18:14:42', '', 0, 'http://smartum/?post_type=articles&#038;p=255', 0, 'articles', '', 0),
(257, 1, '2019-11-26 23:05:30', '2019-11-26 20:05:30', '<!-- wp:paragraph -->\n<p>\n\nАлександр Сергеевич Пушкин сказал: «Научить человека быть счастливым нельзя, но его можно воспитать так, чтобы он был счастливым». Хорошие родители стараются вырастить успешных, счастливых детей, но далеко не все знают, как это правильно делать. Некоторые полагаются на собственные знания и умения, другие ориентируются на пример своего воспитания.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2> 5 заповедей для родителей </h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li> Запрет, значит, запрет. Типичная ситуация: ребенок просит конфету, мама отвечает «Нет», но, как только слышит крик и плач, твердое «Нет» превращается в «Хорошо, только + реви». Это распространенная грубая ошибка многих родителей. В подобной ситуации дитя понимает, что слово мамы или папы не «закон», желаемого легко достичь. Это подрывает авторитет родителей в глазах малыша и провоцирует последующие капризы и непослушание. Советуем изменить формулировку: «Не сейчас», «Позже, потому что…». </li><li> Единое мнение взрослых в семье. Папа запрещает, но мама разрешает. Еще одна частая ошибка родителей. Дети быстро адаптируют свое поведение по отношению к взрослым и этим пользуются. Между родителями должно быть полное согласие в моделях и правилах воспитания. </li><li> Табу на выяснение отношений при детях. Разногласия бывают у всех, но важно научиться не спорить в присутствии детей. И уж тем более если это касается их воспитания. Решать, как воспитывать ребенка, родители должны наедине. </li><li> Гармония в семье. Ребенок, как лакмусовая бумажка, отражает внутреннюю ситуацию в семье. Раздоры между родителями, напряженная обстановка отражаются на психическом состоянии детей. </li><li>Отказ от сравнения с другими, особенно в период взросления. «Вот посмотри, какой Петя молодец», — ошибка, которая влечет недоверие, провоцирует комплексы и чувство неполноценности. Принимайте и любите детей такими, какими они есть.</li></ul>\n<!-- /wp:list -->', 'Как действительно правильно воспитать ребенка?', '', 'inherit', 'closed', 'closed', '', '227-autosave-v1', '', '', '2019-11-26 23:05:30', '2019-11-26 20:05:30', '', 227, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/227-autosave-v1/', 0, 'revision', '', 0),
(258, 1, '2019-11-28 21:07:21', '2019-11-28 18:07:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Введите контактный телефон центра\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:3:\"123\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'center_phone', 'publish', 'closed', 'closed', '', 'field_5de00c181f2fa', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 199, 'http://smartum/?post_type=acf-field&#038;p=258', 3, 'acf-field', '', 0),
(259, 1, '2019-11-28 21:07:21', '2019-11-28 18:07:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Введите адрес электронной почты центра\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Электронная почта', 'center_email', 'publish', 'closed', 'closed', '', 'field_5de00c921f2fb', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 199, 'http://smartum/?post_type=acf-field&#038;p=259', 4, 'acf-field', '', 0),
(287, 1, '2019-11-30 18:51:20', '2019-11-30 15:51:20', '', 'Нонэйм', '', 'inherit', 'closed', 'closed', '', '183-autosave-v1', '', '', '2019-11-30 18:51:20', '2019-11-30 15:51:20', '', 183, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/183-autosave-v1/', 0, 'revision', '', 0),
(292, 1, '2019-12-01 17:07:06', '2019-12-01 14:07:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Программы центра', 'programmy-centra', 'trash', 'closed', 'closed', '', 'group_5de3c7b928608__trashed', '', '', '2019-12-03 22:34:02', '2019-12-03 19:34:02', '', 0, 'http://smartum/?post_type=acf-field-group&#038;p=292', 0, 'acf-field-group', '', 0),
(293, 1, '2019-12-01 17:07:06', '2019-12-01 14:07:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Иконка программы', 'center_program_icon', 'trash', 'closed', 'closed', '', 'field_5de3c7c99141b__trashed', '', '', '2019-12-03 22:34:02', '2019-12-03 19:34:02', '', 292, 'http://smartum/?post_type=acf-field&#038;p=293', 0, 'acf-field', '', 0),
(295, 1, '2019-12-01 17:11:08', '2019-12-01 14:11:08', '', 'iconMask', '', 'inherit', 'open', 'closed', '', 'iconmask', '', '', '2019-12-01 17:11:08', '2019-12-01 14:11:08', '', 0, 'http://smartum/wp-content/uploads/2019/12/iconMask.svg', 0, 'attachment', 'image/svg+xml', 0),
(296, 1, '2019-12-01 20:47:51', '2019-12-01 17:47:51', '', 'iconaLang', '', 'inherit', 'open', 'closed', '', 'iconalang', '', '', '2019-12-01 20:47:51', '2019-12-01 17:47:51', '', 0, 'http://smartum/wp-content/uploads/2019/12/iconaLang.svg', 0, 'attachment', 'image/svg+xml', 0),
(297, 1, '2019-12-01 20:48:27', '2019-12-01 17:48:27', '', 'iconBoock', '', 'inherit', 'open', 'closed', '', 'iconboock', '', '', '2019-12-01 20:48:27', '2019-12-01 17:48:27', '', 0, 'http://smartum/wp-content/uploads/2019/12/iconBoock.svg', 0, 'attachment', 'image/svg+xml', 0),
(302, 1, '2019-12-02 16:05:32', '2019-12-02 13:05:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:11:\"true-fullwd\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Основное фото центра', 'center_photo', 'publish', 'closed', 'closed', '', 'field_5de50be4959b2', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 199, 'http://smartum/?post_type=acf-field&#038;p=302', 5, 'acf-field', '', 0),
(303, 1, '2019-12-02 18:16:31', '2019-12-02 15:16:31', '', 'teacher', '', 'inherit', 'open', 'closed', '', 'teacher-2', '', '', '2019-12-02 18:16:31', '2019-12-02 15:16:31', '', 0, 'http://smartum/wp-content/uploads/2019/12/teacher.png', 0, 'attachment', 'image/png', 0),
(306, 1, '2019-12-03 13:46:39', '2019-12-03 10:46:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Режим работы', 'center_rezim', 'publish', 'closed', 'closed', '', 'field_5de63cd0526e7', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 199, 'http://smartum/?post_type=acf-field&#038;p=306', 2, 'acf-field', '', 0),
(308, 1, '2019-12-03 18:11:55', '2019-12-03 15:11:55', '<!-- wp:paragraph -->\n<p>   Этот центр находится в очень удобном районе с точки зрения транспортной доступности. Здесь используются самые современные методики и собраны очень профессиональные преподаватели.<br>Хорошие показатели и положительные отзывы создают учреждению прекрасную репутацию .</p>\n<!-- /wp:paragraph -->', 'Мой блок без названия', '', 'publish', 'closed', 'closed', '', 'moy-blok-bez-nazvaniya', '', '', '2019-12-03 18:11:55', '2019-12-03 15:11:55', '', 0, 'http://smartum/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/moy-blok-bez-nazvaniya/', 0, 'wp_block', '', 0),
(312, 1, '2019-12-03 18:53:12', '2019-12-03 15:53:12', '', 'krasKlass', '', 'inherit', 'open', 'closed', '', 'krasklass', '', '', '2019-12-03 18:53:12', '2019-12-03 15:53:12', '', 205, 'http://smartum/wp-content/uploads/2019/11/krasKlass.jpg', 0, 'attachment', 'image/jpeg', 0),
(313, 1, '2019-12-03 19:00:40', '2019-12-03 16:00:40', '', 'krasKlass', '', 'inherit', 'open', 'closed', '', 'krasklass-2', '', '', '2019-12-03 19:00:40', '2019-12-03 16:00:40', '', 205, 'http://smartum/wp-content/uploads/2019/11/krasKlass-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(314, 1, '2019-12-04 12:37:34', '2019-12-04 09:37:34', '', 'sprite', '', 'inherit', 'open', 'closed', '', 'sprite', '', '', '2019-12-04 12:37:34', '2019-12-04 09:37:34', '', 0, 'http://smartum/wp-content/uploads/2019/12/sprite.svg', 0, 'attachment', 'image/svg+xml', 0),
(315, 1, '2019-12-04 14:51:10', '2019-12-04 11:51:10', '', 'krasKlass', '', 'inherit', 'open', 'closed', '', 'krasklass-3', '', '', '2019-12-04 14:51:10', '2019-12-04 11:51:10', '', 206, 'http://smartum/wp-content/uploads/2019/11/krasKlass.jpg', 0, 'attachment', 'image/jpeg', 0),
(317, 1, '2019-12-17 14:56:18', '2019-12-17 11:56:18', '<div id=\"formQuest\" class=\"formAll formQuest__form\">\r\n<div class=\"input__wrapper\">\r\n<label><svg><use xlink:href=\"http://smartum/wp-content/themes/smartum/img/svg/sprite.svg#phone\"></use></svg></label>\r\n[text* phone class:form__phone placeholder \"Номер телефона\"]\r\n </div>\r\n\r\n<button class=\"form__button\">                        \r\n<span>[submit class:form__submit \"Отправить\" ]</span>\r\n<svg><use xlink:href=\"http://smartum/wp-content/themes/smartum/img/svg/sprite.svg#btnArrow\"></use></svg>\r\n</button></div>\n1\nSmartum Форма захвата телефона\nSmartum <info@f0315577.xsph.ru>\n43reiter@gmail.com\nОт: Smartum <info@f0315577.xsph.ru>\r\nТема: Smartum Форма захвата телефона\r\nСообщение:\r\n[phone]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Smartum (http://smartum)\n\n\n\n\n\nSmartum \"[your-subject]\"\nSmartum <wordpress@smartum>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Smartum (http://smartum)\nReply-To: 43reiter@gmail.com\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2019-12-17 16:12:39', '2019-12-17 13:12:39', '', 0, 'http://smartum/?post_type=wpcf7_contact_form&#038;p=317', 0, 'wpcf7_contact_form', '', 0),
(319, 1, '2019-12-18 15:53:25', '2019-12-18 12:53:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок на странице центра', 'center_title', 'publish', 'closed', 'closed', '', 'field_5dfa20fd304cd', '', '', '2019-12-18 15:53:55', '2019-12-18 12:53:55', '', 199, 'http://smartum/?post_type=acf-field&#038;p=319', 1, 'acf-field', '', 0),
(322, 0, '2019-12-18 20:57:05', '2019-12-18 17:57:05', '', 'Киров', 'Центр в г. Киров', 'publish', 'closed', 'closed', '', 'kirov', '', '', '2019-12-18 20:57:06', '2019-12-18 17:57:06', '', 0, 'http://smartum/?post_type=centers&#038;p=322', 0, 'centers', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 4, 'desc_site', 'ddd'),
(2, 4, '_desc_site', 'field_5dd990ea1dadd'),
(3, 4, 'video_header', 'https://youtu.be/L2vRNd3vhYI'),
(4, 4, '_video_header', 'field_5dd9960c04ae0'),
(5, 13, 'title_all_article', 'ввв'),
(6, 13, '_title_all_article', 'field_5ddcf513adfe4'),
(7, 18, 'center_program_icon', '295'),
(8, 18, '_center_program_icon', 'field_5de3c7c99141b'),
(9, 18, 'center_program_desc', 'Интерактивная методика подготовки к \r\nшколе, где ваш ребенок выступает в \r\nроли главного героя сказки и познает \r\nмир, ведущий в школу'),
(10, 18, '_center_program_desc', 'field_5de3c8159141c'),
(11, 17, 'center_program_icon', '296'),
(12, 17, '_center_program_icon', 'field_5de3c7c99141b'),
(13, 17, 'center_program_desc', 'За основу взяты Кембреджиские \r\nучебники по английскому языку и \r\nдополнены уникальным ридером, \r\nразработанным для StartUmи \r\nохватывающим все аспекты.'),
(14, 17, '_center_program_desc', 'field_5de3c8159141c'),
(15, 16, 'center_program_icon', '297'),
(16, 16, '_center_program_icon', 'field_5de3c7c99141b'),
(17, 16, 'center_program_desc', ''),
(18, 16, '_center_program_desc', 'field_5de3c8159141c'),
(19, 15, 'center_program_icon', '129'),
(20, 15, '_center_program_icon', 'field_5de3c7c99141b'),
(21, 19, 'center_program_icon', '132'),
(22, 19, '_center_program_icon', 'field_5de3c7c99141b'),
(23, 20, 'center_program_icon', '136'),
(24, 20, '_center_program_icon', 'field_5de3c7c99141b'),
(25, 21, 'center_program_icon', '139'),
(26, 21, '_center_program_icon', 'field_5de3c7c99141b'),
(27, 22, '_thumbnail_id', '176'),
(28, 23, '_thumbnail_id', '185'),
(29, 24, '_thumbnail_id', '180'),
(30, 25, '_thumbnail_id', '189'),
(31, 26, '_thumbnail_id', '193'),
(32, 27, '_thumbnail_id', '303'),
(33, 28, '_thumbnail_id', '303'),
(34, 29, '_thumbnail_id', '303'),
(35, 30, '_thumbnail_id', '303'),
(36, 18, '_thumbnail_id', '295'),
(37, 17, '_thumbnail_id', '296'),
(38, 15, '_thumbnail_id', '129'),
(39, 16, '_thumbnail_id', '297'),
(40, 21, '_thumbnail_id', '139'),
(41, 20, '_thumbnail_id', '136'),
(42, 19, '_thumbnail_id', '132'),
(43, 31, 'center_program_icon', '151'),
(44, 31, '_center_program_icon', 'field_5de3c7c99141b'),
(45, 31, '_thumbnail_id', '151');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Основное меню', 'osnovnoe-menyu', 0),
(3, 'Основное меню внутренних страниц', 'osnovnoe-menyu-vnutrennih-stranic', 0),
(4, 'Шапка', 'shapka', 0),
(5, 'Показатели', 'pokazateli', 0),
(6, 'Контакты', 'kontakty', 0),
(7, 'Социальные сети', 'socialnye-seti', 0),
(8, 'О развитии', 'o-razvitii', 0),
(9, 'О воспитании', 'o-vospitanii', 0),
(10, 'О коммуникации', 'o-kommunikacii', 0),
(11, 'Об образовании', 'ob-obrazovanii', 0),
(12, 'Другое', 'drugoe', 0),
(13, 'Статьи', 'stati', 0),
(14, 'Центры', 'centry', 0),
(15, 'Ментальная арифметика', 'mentalnaya-arifmetika', 0),
(16, 'Обучение чтению', 'obuchenie-chteniyu', 0),
(17, 'Английский язык', 'angliyskiy-yazyk', 0),
(18, 'Актерское мастерство', 'akterskoe-masterstvo', 0),
(19, 'Скорочтение', 'skorochtenie', 0),
(20, 'Робототехника', 'robototehnika', 0),
(21, 'Подготовка к школе', 'podgotovka-k-shkole', 0),
(22, 'Фэйсбук', 'feysbuk', 0),
(23, 'Нонэйм', 'noneym', 0),
(24, 'Вконтакте', 'vkontakte', 0),
(25, 'Ю-тубе', 'yu-tube', 0),
(26, 'Твиттер', 'tvitter', 0),
(27, 'Валерия Северная', 'valeriya-severnaya', 0),
(28, 'Юлия Самойлова', 'yuliya-samoylova', 0),
(29, 'Аркадий Шин', 'arkadiy-shin', 0),
(30, 'Иван Петров', 'ivan-petrov', 0),
(31, 'Школа блогинга', 'shkola-bloginga', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(70, 4, 0),
(76, 4, 0),
(78, 4, 0),
(87, 4, 0),
(108, 5, 0),
(110, 5, 0),
(112, 5, 0),
(167, 6, 0),
(169, 6, 0),
(171, 7, 0),
(178, 7, 0),
(183, 7, 0),
(187, 7, 0),
(191, 7, 0),
(195, 16, 0),
(195, 17, 0),
(195, 18, 0),
(195, 22, 0),
(195, 23, 0),
(195, 24, 0),
(195, 25, 0),
(195, 27, 0),
(195, 28, 0),
(195, 29, 0),
(195, 30, 0),
(197, 15, 0),
(197, 17, 0),
(197, 18, 0),
(197, 19, 0),
(197, 20, 0),
(197, 22, 0),
(197, 24, 0),
(197, 25, 0),
(197, 26, 0),
(197, 27, 0),
(197, 29, 0),
(197, 30, 0),
(198, 16, 0),
(198, 25, 0),
(198, 26, 0),
(198, 28, 0),
(198, 29, 0),
(201, 17, 0),
(201, 20, 0),
(201, 21, 0),
(201, 22, 0),
(201, 23, 0),
(201, 26, 0),
(201, 27, 0),
(201, 29, 0),
(201, 30, 0),
(204, 15, 0),
(204, 18, 0),
(204, 21, 0),
(204, 23, 0),
(204, 24, 0),
(204, 26, 0),
(204, 27, 0),
(204, 28, 0),
(204, 29, 0),
(205, 16, 0),
(205, 19, 0),
(205, 20, 0),
(205, 22, 0),
(205, 26, 0),
(205, 27, 0),
(205, 28, 0),
(205, 29, 0),
(205, 30, 0),
(213, 15, 0),
(213, 17, 0),
(213, 23, 0),
(213, 25, 0),
(213, 27, 0),
(227, 9, 0),
(229, 9, 0),
(229, 13, 0),
(231, 10, 0),
(233, 10, 0),
(236, 8, 0),
(240, 8, 0),
(240, 13, 0),
(242, 11, 0),
(244, 12, 0),
(255, 13, 0),
(322, 15, 0),
(322, 16, 0),
(322, 17, 0),
(322, 19, 0),
(322, 20, 0),
(322, 21, 0),
(322, 23, 0),
(322, 24, 0),
(322, 25, 0),
(322, 26, 0),
(322, 27, 0),
(322, 28, 0),
(322, 30, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '<h1><strong>Международная сеть центров</strong>\r\nдетского дополнительного\r\nобразования STARTUM</h1>', 0, 4),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 6, 4),
(8, 8, 'category', '', 13, 2),
(9, 9, 'category', '', 13, 2),
(10, 10, 'category', '', 13, 2),
(11, 11, 'category', '', 13, 1),
(12, 12, 'category', '', 13, 1),
(13, 13, 'category', '<strong>Полезные статьи от специалистов</strong>\r\nкомпании StartUm для вас', 0, 3),
(14, 14, 'category', 'Наши центры представлены\r\nв 28 регионах страны', 0, 0),
(15, 15, 'program', 'Интерактивная методика \r\nподготовки к школе, где ваш \r\nребенок выступает в роли главного \r\nгероя сказки и познает мир, \r\nведущий в школу', 0, 4),
(16, 16, 'program', 'Курс направлен на обучение детей \r\nчтению, все уроки структурированы \r\nтаким образом, чтобы у ребенка \r\nскладывалась четкая структура \r\nклассификации букв.', 0, 4),
(17, 17, 'program', 'За основу взяты Кембреджиские \r\nучебники по английскому языку и \r\nдополнены уникальным ридером, \r\nразработанным для StartUmи \r\nохватывающим все аспекты.', 0, 5),
(18, 18, 'program', 'Интерактивная методика подготовки к \r\nшколе, где ваш ребенок выступает в \r\nроли главного героя сказки и познает \r\nмир, ведущий в школу', 0, 3),
(19, 19, 'program', 'Интерактивная методика \r\nподготовки к школе, где ваш \r\nребенок выступает в роли \r\nглавного героя сказки и познает мир, \r\nведущий в школу', 0, 3),
(20, 20, 'program', 'Курс помогает детям в игре \r\nразобраться в основах физики, \r\nпрограммирования, информатики и \r\nдругих предметов, которые так \r\nскучно преподаются в школе.', 0, 4),
(21, 21, 'program', 'Курс помогает детям в игре \r\nразобраться в основах физики, \r\nпрограммирования, информатики и \r\nдругих предметов, которые так \r\nскучно преподаются в школе.', 0, 3),
(22, 22, 'social', 'fb', 0, 4),
(23, 23, 'social', '#', 0, 5),
(24, 24, 'social', 'vk', 0, 4),
(25, 25, 'social', '#youtube', 0, 5),
(26, 26, 'social', 'twitter', 0, 6),
(27, 27, 'teachers', 'Старший \r\nпреподаватель', 0, 7),
(28, 28, 'teachers', 'Преподаватель \r\nробототехники', 0, 5),
(29, 29, 'teachers', 'Преподаватель \r\nскорочтения', 0, 6),
(30, 30, 'teachers', 'Штатный психолог', 0, 5),
(31, 31, 'program', 'Создание интернет-блога с нуля для \r\nдетей может стать возможностью \r\nтворчества, самовыражения, \r\nразвития и понимание основ \r\nинформационной безопасности.', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'reiter'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'coffee'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'ru_RU'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9508aa681bab968d1f6bd3e256698933e43a4f43284cb61035778da2d35e4863\";a:4:{s:10:\"expiration\";i:1577555930;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576346330;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '254'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:22:\"add-post-type-services\";i:1;s:22:\"add-post-type-articles\";i:2;s:17:\"add-post-type-faq\";i:3;s:21:\"add-post-type-reviews\";i:4;s:21:\"add-post-type-workers\";i:5;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&editor_plain_text_paste_warning=1&libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1575130329'),
(26, 1, 'closedpostboxes_post', 'a:1:{i:0;s:23:\"acf-group_5dd1a518369a3\";}'),
(27, 1, 'metaboxhidden_post', 'a:0:{}'),
(28, 1, 'a3_lazy_load-plugin_framework_global_box-opened', '1'),
(29, 1, 'a3_lazy_load-a3_lazy_load_global_settings', 'a:2:{i:0;s:23:\"a3l_apply_to_videos_box\";i:1;s:23:\"a3l_apply_to_images_box\";}'),
(30, 1, 'closedpostboxes_quests', 'a:0:{}'),
(31, 1, 'metaboxhidden_quests', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(32, 1, 'manageedit-categorycolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(33, 1, 'meta-box-order_articles', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5ddd49f6b6ef4\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'meta-box-order_centers', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5dd6a3afa4edf\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(35, 1, 'manageedit-programcolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(36, 1, 'manageedit-socialcolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(37, 1, 'manageedit-teacherscolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(38, 1, 'edit_teachers_per_page', '20'),
(39, 1, 'closedpostboxes_centers', 'a:0:{}'),
(40, 1, 'metaboxhidden_centers', 'a:0:{}'),
(41, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'reiter', '$P$BrzxhDj0KnVcrBROPZpGVoR1dwjWKw/', 'reiter', '43reiter@gmail.com', '', '2019-11-13 13:31:47', '', 0, 'reiter');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1041;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
