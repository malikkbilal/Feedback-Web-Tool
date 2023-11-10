-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 03:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_tool`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `feedback_id`, `created_at`, `updated_at`) VALUES
(1, 'Odit commodi enim totam vel officia et. Voluptates non doloribus voluptatem vel qui et debitis. Neque recusandae explicabo debitis ab quis. Eveniet esse est fuga impedit maiores laborum.', 1, 12, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(2, 'Laboriosam ut officiis velit delectus quam. Veritatis voluptas expedita ab doloribus beatae assumenda ea. Et quo enim repellendus architecto veniam ut aut.', 4, 2, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(3, 'Numquam et doloribus consectetur vero accusantium est. Dolorum non minima commodi sit tempore. Quod dolorem odit sapiente laborum id nobis maxime.', 4, 19, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(4, 'In aut ut eligendi aspernatur esse debitis autem. Exercitationem dolore totam pariatur est. Quidem et dolor at tempora consectetur culpa. Temporibus voluptas velit totam tenetur voluptate voluptas qui.', 3, 8, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(5, 'Architecto soluta ullam impedit fugit dolor totam. Doloribus est aut suscipit tenetur optio. Laborum ratione beatae corporis est dolor consectetur aperiam.', 9, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(6, 'Possimus dicta rerum aut. Perferendis ut cumque quasi rerum doloremque officiis adipisci expedita. Molestiae cum maxime maiores magni magni.', 3, 12, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(7, 'Soluta quia nisi laborum molestiae deleniti aliquam distinctio. Harum sint nisi qui autem quas. Aut aut consequatur aut.', 8, 18, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(8, 'Qui illum rerum eos sit omnis fuga corporis non. Sed est ut nostrum iure necessitatibus accusantium. Quos dolor eius ipsum occaecati odio illum.', 1, 10, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(9, 'Est labore quo voluptatibus. Qui aut illo possimus sequi. In sed est velit saepe necessitatibus pariatur dicta ducimus.', 1, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(10, 'Praesentium et sit aspernatur dolorum. Placeat et doloribus quibusdam iusto unde repellat. Maxime exercitationem natus et. Error sed harum cupiditate placeat velit.', 10, 10, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(11, 'Et quis aut maiores est sed ut provident voluptas. Sunt eaque natus sed. Qui labore aliquid perferendis facilis libero velit. Totam consequatur aspernatur et aut.', 9, 6, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(12, 'Et optio numquam fugit cumque qui. Et perferendis atque dolore doloremque nobis eos. Est assumenda ipsam aperiam enim quia laboriosam asperiores. Aut vero et quia explicabo ab placeat.', 4, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(13, 'Consectetur assumenda quia voluptas tenetur expedita. Eum error qui aspernatur. Rerum earum at porro.', 1, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(14, 'Praesentium ut cumque id sunt ipsam cumque expedita. Maxime est quis id quia. Tempore quia corrupti quia nesciunt veritatis nemo asperiores occaecati.', 1, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(15, 'Ullam dolorem ipsum ipsa ut est. Quia sint fuga optio omnis in libero aperiam. Maxime vitae dolorem ut quos nulla incidunt.', 3, 11, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(16, 'Ea dolorem consequatur assumenda tenetur maiores incidunt. Quia nihil praesentium hic molestiae impedit nesciunt ut. Ipsum eum facilis quisquam perferendis rerum eum.', 4, 20, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(17, 'Voluptate quia voluptatibus aliquid mollitia dolor. Consequatur magnam laborum et debitis nostrum omnis. Debitis quasi fuga ullam alias laborum pariatur inventore.', 7, 4, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(18, 'Necessitatibus omnis deserunt et beatae. Repellat autem ipsa voluptatum aut. In necessitatibus magnam qui ut voluptas ipsam tempore est. Enim adipisci repudiandae debitis ratione sit.', 7, 15, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(19, 'Nam fugit placeat cum dignissimos excepturi asperiores officia. Consequatur earum id saepe sit provident ut asperiores porro. Qui facilis et accusantium fugiat veniam aliquid. Explicabo est similique possimus sit est ut.', 6, 18, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(20, 'Neque dicta error voluptatem laudantium. Quo magni ab eligendi rem. Minus vero non et sunt hic et enim temporibus.', 4, 2, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(21, 'Voluptatem eius asperiores aliquam beatae quia nam quis. Aut eum totam impedit quia. Doloribus eos earum rerum velit voluptatum et porro.', 6, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(22, 'Reiciendis et quia deleniti esse ducimus tempore est. Quia aut praesentium hic nesciunt qui voluptatem veniam est. Quia eum enim velit. Nam esse maiores neque ut sequi.', 4, 1, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(23, 'Fugiat non distinctio optio minus. Ad dolorum error ut eum corrupti omnis. Quis iusto aut sapiente necessitatibus aspernatur esse. Hic recusandae alias quo.', 5, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(24, 'Voluptatem nesciunt sunt molestias eum voluptatum at qui. Non cum unde consequatur odio voluptatibus. Aut quia fugiat tempora omnis deserunt est. Ea animi consectetur asperiores.', 7, 11, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(25, 'Occaecati est fugit excepturi voluptatem et. Autem totam aspernatur doloribus ipsa et reiciendis quia. Similique nihil beatae quia maiores et autem. Enim illo perferendis suscipit sunt ut doloremque placeat ut. Aut sequi alias dolor molestias aliquam.', 4, 17, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(26, 'Ea deleniti qui mollitia vitae iure. Vitae voluptas nisi natus autem hic. Aliquam consequatur esse perspiciatis voluptatem ut culpa in. Aut et optio odit vel.', 6, 13, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(27, 'Et dolor repellat nihil facilis nostrum. Sunt reiciendis et aspernatur dolorum.', 1, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(28, 'Quia nobis minima voluptas autem deleniti doloribus distinctio. Corrupti itaque repellendus exercitationem sint provident. Quaerat vel voluptas aut et tempora. Unde accusantium distinctio blanditiis dolor ut dicta et.', 10, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(29, 'Ut nihil amet aut blanditiis voluptatem. Architecto corrupti corrupti ut non. Laboriosam qui architecto beatae in sed illum. Dicta sit dolor non voluptas excepturi.', 4, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(30, 'Maiores quis itaque sunt ex qui. Laudantium dignissimos fugit nemo dolore ipsum optio. Doloribus illo aut a laudantium esse quasi blanditiis recusandae. Dolores aut magni quia aut sequi.', 4, 12, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(31, 'Porro nihil dolorem eligendi itaque voluptas aut totam. At voluptas accusamus aliquid. Dolor perferendis omnis expedita.', 2, 7, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(32, 'Cupiditate molestiae consequuntur et iure. Blanditiis pariatur nulla cupiditate possimus quis. Ipsum excepturi repellat quia porro eligendi esse. Quis numquam ut id aperiam.', 8, 8, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(33, 'Voluptatem dolor sunt rerum id cupiditate. Et doloremque est sed ipsum. Quam debitis perferendis explicabo commodi est neque.', 1, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(34, 'Explicabo et quos error ducimus sint et. Repellat odio consequatur ea repellendus voluptate. Nemo dolores libero sequi. Ipsam eos quidem incidunt maiores ea harum enim.', 6, 16, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(35, 'Maiores optio tempore fuga et quo repellendus totam vero. Voluptates quaerat rerum consequatur nulla qui. Aspernatur molestias voluptatem dolore. Rerum magnam ut sed omnis voluptas consequatur.', 7, 20, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(36, 'Est ex dolorum amet consequatur officia. Sunt minus qui et nesciunt rem et. Ipsum ut temporibus ipsa perferendis tempora et.', 3, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(37, 'In velit hic et repellendus nobis ut possimus. Et voluptate quia soluta dolore maxime dolore iure. Et illo tempore saepe in quisquam aut odit. Voluptas et aut consequuntur sunt tenetur. Sed recusandae dolorem corrupti non nostrum eum.', 5, 3, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(38, 'Rem recusandae cum aut omnis quis iste similique. Aperiam tempore et qui. Aut aut et cupiditate. Vitae deleniti harum omnis odio voluptates. Consequatur earum quis molestiae nisi qui.', 4, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(39, 'Sed vero qui et incidunt repellat ea. Cumque quae est totam doloremque numquam. Velit ut et sunt voluptatem reiciendis qui asperiores.', 5, 17, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(40, 'Maiores architecto quis rerum odit. Consequuntur ipsum voluptas non rerum libero praesentium harum aliquid. Molestias sit ut aliquam dolorem laborum rerum eos.', 2, 16, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(41, 'Necessitatibus porro eos voluptatum et aut. Consequatur enim culpa rem et expedita dolore similique.', 10, 7, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(42, 'Et officia ratione debitis doloremque. Vel impedit distinctio ullam quia ea et nesciunt. Qui qui qui error repellat et.', 2, 18, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(43, 'Sed dolores sit nihil voluptatem quasi voluptas. In ea consequatur rem omnis. Iste qui aperiam a voluptatum est.', 2, 19, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(44, 'Blanditiis et a beatae sint. Sed corporis modi iste consequatur et provident. Ut est voluptas qui ut. Et est suscipit commodi facilis tenetur.', 5, 19, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(45, 'Aut hic adipisci minus blanditiis rem. Est beatae veniam harum quis aut. Sed consequatur consectetur sunt. Non laboriosam rem ex facilis nam quos.', 4, 1, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(46, 'Totam et commodi aut vel eaque vel quia velit. Esse dolore fuga unde pariatur. Sit consequatur esse qui non.', 2, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(47, 'Dignissimos voluptates maxime fuga doloribus. Eum earum omnis qui et ut ea provident. Nemo molestiae doloribus harum qui quia omnis. Ipsam est voluptatem tenetur et accusamus animi.', 8, 1, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(48, 'Unde laborum suscipit rerum esse. Autem ut sed ea porro et. Tempore tempora molestiae omnis necessitatibus necessitatibus recusandae totam modi. Eos magni est dolorum. Occaecati est sit tempore incidunt.', 4, 1, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(49, 'Eum sint modi quos saepe dignissimos. Qui et itaque molestiae.', 6, 10, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(50, 'Modi soluta nesciunt beatae asperiores ullam. Consequatur laboriosam voluptatem omnis qui est recusandae. Non at dolores porro.', 6, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `vote_count` int(11) NOT NULL DEFAULT 0,
  `comments_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `title`, `description`, `category`, `vote_count`, `comments_enabled`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Necessitatibus fugit aspernatur veritatis maiores consequatur quisquam a.', 'Sint et culpa magni veniam harum necessitatibus. Dolores quis ut eveniet dolor. A et recusandae sit eum.', 'Feature Request', 50, 1, 9, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(2, 'Magnam dolores asperiores fugit.', 'Sed est inventore aliquid nemo. Tempora id alias amet nihil molestiae molestiae fugiat. Voluptates quae veniam sunt mollitia animi et eaque praesentium.', 'General Feedback', 36, 0, 9, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(3, 'Aliquam ad molestias eligendi.', 'Voluptate occaecati enim cupiditate id dicta sequi repellendus fuga. Error sequi doloribus maxime recusandae sapiente. Ratione dolores quos est ut tenetur id doloribus velit. Totam eum hic ipsam dicta quisquam commodi.', 'Improvement', 65, 0, 4, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(4, 'Non velit sequi doloremque in non.', 'Minima quo vel tenetur asperiores molestias quidem. Officia doloribus rerum sit maiores. Provident quod sed enim ea unde voluptatibus sint est.', 'General Feedback', 81, 1, 7, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(5, 'Quisquam nisi sequi deleniti qui provident eum.', 'Unde architecto est rerum sint. Veniam ut rem dicta earum sit aut ullam. Hic distinctio nulla et et consequatur est.', 'Feature Request', 74, 0, 3, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(6, 'Et quo ipsum aut quo et.', 'Quis eaque dignissimos magnam fugiat. Mollitia voluptatibus dolores repudiandae atque eveniet. Maiores officiis natus quidem maxime facere non.', 'Improvement', 61, 1, 9, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(7, 'Vero incidunt mollitia recusandae ducimus.', 'Commodi repellat voluptatum illo culpa nobis explicabo. Qui dolor et quibusdam. Et reprehenderit qui quaerat et voluptas.', 'General Feedback', 66, 1, 1, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(8, 'Voluptas voluptas blanditiis dolore ut aliquam ab.', 'Saepe vel provident sunt ut animi ut. Consectetur ea eaque eum et mollitia veniam amet quia. Earum officiis sed aperiam fugit ut iusto ipsum. Porro assumenda id ut veritatis illum. Rem animi officia quae quibusdam voluptatibus distinctio.', 'Improvement', 61, 0, 3, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(9, 'Quia nisi aut ut ea nulla.', 'Alias sint voluptas deleniti ut voluptatem laboriosam. Sint perferendis modi in. Molestiae quas sed et possimus. Perspiciatis voluptas praesentium nihil et nobis.', 'General Feedback', 96, 0, 6, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(10, 'Ad tenetur commodi facilis vitae eveniet minus.', 'Debitis vero aut veniam assumenda corrupti architecto culpa. Dolores qui enim soluta voluptatibus. Enim nihil aperiam ipsam culpa cum temporibus vel. Provident cum rerum cupiditate voluptatem autem nulla voluptatibus.', 'Feature Request', 11, 1, 6, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(11, 'Nam occaecati facere et.', 'Rerum consequuntur culpa id magni vitae quis. Minima autem tempora quis adipisci accusamus omnis quis. Est sunt id rerum dolor.', 'Feature Request', 20, 1, 6, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(12, 'Eos sit perferendis rem vel cum qui et.', 'Eveniet nemo omnis itaque et unde saepe. Eius sit tenetur et id. Libero dolores nisi eius eius optio ipsum. Ratione exercitationem fugiat quaerat omnis nam perspiciatis.', 'Improvement', 17, 0, 9, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(13, 'Sit voluptatem atque quo ea in et.', 'Ratione molestiae delectus quis quas. Accusantium necessitatibus dolorum eos quisquam dolor. Molestiae cumque est nisi suscipit fugit est. Totam cumque praesentium ab molestiae animi.', 'Improvement', 79, 0, 8, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(14, 'Aliquam iusto iusto officiis omnis molestias quas qui.', 'Itaque ut delectus quis alias voluptatibus accusantium. Distinctio architecto occaecati sed ut voluptatem. Qui ab deleniti dolorum nulla et.', 'Improvement', 52, 1, 8, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(15, 'Saepe officiis delectus harum.', 'Sed exercitationem enim ullam nemo cumque recusandae. Voluptatem neque eum aperiam adipisci commodi laboriosam beatae. Omnis minus dolores repellendus repudiandae voluptatem doloribus.', 'General Feedback', 76, 1, 3, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(16, 'Quasi rerum quae quia ex.', 'Voluptatem consequatur sed eaque dolor enim sit. Dolores et rerum quia dignissimos. Ea itaque iusto in id.', 'General Feedback', 99, 1, 10, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(17, 'Tempore perspiciatis eos et saepe quo omnis.', 'At accusamus et excepturi sed ab nihil et. Culpa est adipisci ipsum aspernatur. Ipsum voluptatem quod voluptatem odit asperiores rem. Nisi enim illum praesentium ipsum repudiandae sit debitis.', 'Improvement', 43, 0, 6, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(18, 'Voluptas error quo in expedita.', 'Exercitationem magni qui inventore sunt sed odit. Consequatur vel quisquam dolorum. Eos architecto aut id laudantium nulla rem.', 'Improvement', 61, 1, 4, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(19, 'Ut ea dolorum ullam facere excepturi praesentium dolorem.', 'Possimus molestiae officiis aut sit. Perspiciatis provident est labore. Ullam dolorum iste cumque sunt fugiat qui enim. Dolor ab quis quo aut qui et enim.', 'Improvement', 76, 1, 10, '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(20, 'Dolorem consequatur earum minima architecto voluptatem.', 'Nemo recusandae sed et et magni qui. Illum qui fugiat quia blanditiis et. Enim praesentium officiis quia cupiditate.', 'Improvement', 24, 1, 5, '2023-11-10 08:20:09', '2023-11-10 08:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_151331_create_feedback_table', 1),
(6, '2023_11_07_151349_create_comments_table', 1),
(7, '2023_11_07_151401_create_roles_table', 1),
(8, '2023_11_07_151413_create_permissions_table', 1),
(9, '2023_11_09_133609_create_votes_table', 1),
(10, '2023_11_09_222933_create_role_user_table', 1),
(11, '2023_11_09_223510_create_permission_user_table', 1),
(12, '2023_11_09_224541_create_permission_role_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'create-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(2, 'edit-own-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(3, 'edit-all-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(4, 'delete-own-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(5, 'delete-all-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(6, 'vote-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(7, 'comment-feedback', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(8, 'manage-users', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(9, 'manage-roles', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(10, 'manage-settings', '2023-11-10 08:20:09', '2023-11-10 08:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 2, 6, NULL, NULL),
(5, 2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL),
(2, 9, 1, NULL, NULL),
(3, 10, 1, NULL, NULL),
(4, 1, 2, NULL, NULL),
(5, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'authToken', '6f2aeb17f4d8e1de798c3e55853a8fcd24ae6b9fe8cd9f21cdd0eea26ff33494', '[\"*\"]', '2023-11-10 08:29:34', NULL, '2023-11-10 08:23:42', '2023-11-10 08:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(2, 'User', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(3, 'Moderator', '2023-11-10 08:20:09', '2023-11-10 08:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 2, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francis Kessler', 'rowe.jazmin@example.org', '2023-11-10 08:20:08', '$2y$10$G2y6C4rdTXd0BEqwMzfnx.5IHIKtuuQLoK23FaAMo7EBenrBMJl3i', 'e0storpgIg', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(2, 'Prof. Angelica Lakin I', 'karlie.lindgren@example.net', '2023-11-10 08:20:08', '$2y$10$n7Tl2lK1so49Usgsfq5z2eqmqpkZaSo3WZj62ZtOPGZC9FQkYz.di', '4rrpPPiKEd', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(3, 'Leonel Pfeffer MD', 'devan.kuphal@example.org', '2023-11-10 08:20:08', '$2y$10$HURVQwqBHTbmZGhW7JreB.GXihUR7jj2YyVt3SVmbgDxzMqSHHNP.', 'L67veO5eIM', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(4, 'Rosemary Weissnat Jr.', 'douglas.golden@example.com', '2023-11-10 08:20:08', '$2y$10$VeonvEf4XeZkZWZJ.kpfxOzYoMF7ruPCTXae4UKo/DI0Q0uCGzKiS', 'bD6AiHDjVR', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(5, 'Stephon Weissnat', 'batz.lenora@example.com', '2023-11-10 08:20:08', '$2y$10$pRDtqTQPwqKJvHl2wR7JCeSMAihZiy1/Bn3geuX7cOFcrP6YAMN6y', 'qcOirpR7W6', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(6, 'Jamison Barton II', 'qdach@example.net', '2023-11-10 08:20:08', '$2y$10$asMIPIKjsKxbOnWd5g8vfOO/Z8HE0v3PiGITVCT.Rs2xmAEQ1vad2', 'dCibQiPlmS', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(7, 'Mrs. Polly Gerhold', 'lang.damion@example.com', '2023-11-10 08:20:08', '$2y$10$L43W5wNeCPuM.q9KcCD./ec6JvzeBUPqyBcXtpNzGwm.oS.AaETjG', 'aFyP6uh7bY', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(8, 'Hudson Grimes', 'doyle.dudley@example.com', '2023-11-10 08:20:08', '$2y$10$YqzNChSnBPmd78N0Vpd0gODyYXSJR3L8Tn68zEmZKatyFH/0yioym', 'LSo1SgQY6O', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(9, 'Zack Skiles', 'krunolfsdottir@example.org', '2023-11-10 08:20:08', '$2y$10$g7o1nYhR8RS/mZhVn/hle.KIIVolqnP1ZiUO26SGNyPJva1NcA/ou', '2ntp8IqqVh', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(10, 'Bianka Marvin', 'kailey.monahan@example.com', '2023-11-10 08:20:08', '$2y$10$b.dr5.jOpYcY/8aSfQk.peP5sMPJgXGQfj/iZo48XoLE0x/syzn6K', 'KXHdaBwvdx', '2023-11-10 08:20:09', '2023-11-10 08:20:09'),
(11, 'bilal malik', 'bilal@test.com', '2023-11-10 08:22:08', '$2y$10$0bJvcUj3VlUusMlAgrCc6uWxzqh.GjEDSuU3ciqgH0I4msUsctW0m', 'Obhx37Jk7g', '2023-11-10 08:22:08', '2023-11-10 08:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `feedback_id`, `created_at`, `updated_at`) VALUES
(1, 7, 18, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(2, 2, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(3, 7, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(4, 1, 14, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(5, 8, 4, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(6, 7, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(7, 9, 8, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(8, 8, 9, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(9, 7, 2, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(10, 3, 15, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(11, 6, 2, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(12, 10, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(13, 1, 5, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(14, 6, 11, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(15, 2, 17, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(16, 1, 11, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(17, 3, 4, '2023-11-10 08:20:10', '2023-11-10 08:20:10'),
(18, 5, 5, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(19, 9, 1, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(20, 8, 2, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(21, 3, 12, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(22, 9, 5, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(23, 6, 16, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(24, 7, 18, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(25, 5, 8, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(26, 3, 20, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(27, 5, 18, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(28, 8, 19, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(29, 3, 12, '2023-11-10 08:20:11', '2023-11-10 08:20:11'),
(30, 2, 5, '2023-11-10 08:20:11', '2023-11-10 08:20:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_feedback_id_foreign` (`feedback_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_role_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_feedback_id_foreign` (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`),
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
