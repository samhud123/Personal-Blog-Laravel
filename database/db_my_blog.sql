-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2023 pada 11.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_my_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `kutipan` text NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `judul`, `slug`, `gambar`, `user_id`, `category_id`, `kutipan`, `isi`, `created_at`, `updated_at`, `view`) VALUES
(1, 'Tutorial Menggunakan NMAP', 'tutorial-menggunakan-nmap', 'aM58PO9CEttzH9fkatE6ncHgK0byGCtIQXhEBJov.png', 1, 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor fugit atque consequatur sunt! A dicta, ducimus, molestias iste quae ut ea at veritatis...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor fugit atque consequatur sunt! A dicta, ducimus, molestias iste quae ut ea at veritatis qui saepe fugiat id nam autem asperiores excepturi temporibus quis eveniet dolorem pariatur obcaecati atque iure nemo? Unde officiis dolorum similique soluta! Recusandae voluptate nihil eveniet officia, non quaerat odio laborum voluptas cum temporibus cumque, repudiandae perspiciatis blanditiis similique architecto reprehenderit inventore, maiores deleniti! Non quae iure a asperiores excepturi fugiat nulla, quasi ea quos nostrum ipsam.</p><p>&nbsp;Aut fugiat laborum numquam quam natus ducimus perspiciatis eaque perferendis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus ab beatae voluptates cumque. Vero ipsum quis porro, natus ut soluta, similique corporis ab non minus modi nam, vitae eum recusandae doloremque. Sit facere suscipit tempora aut? Non illum, corporis ad provident odit dignissimos? Ex exercitationem laborum veniam dignissimos, earum distinctio inventore eius corporis. Eum animi est accusantium at magni, voluptatibus sint temporibus quod? Ab minus aut itaque sint explicabo aperiam optio eligendi, praesentium doloribus dolorem facilis quo minima delectus repellat adipisci, nesciunt placeat fugit nihil. Vero dicta laudantium, assumenda, sequi, natus corrupti optio consequatur libero sapiente adipisci repellat praesentium culpa. Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p><p>&nbsp;Cum omnis repudiandae minima numquam iste animi voluptatem! Asperiores quaerat molestias sit reiciendis libero minima et suscipit cum quod accusamus? Incidunt vel eos, non labore qui dolore et placeat voluptatibus reprehenderit consectetur velit, deleniti reiciendis, commodi id quos modi veritatis a? Harum temporibus qui laudantium sit neque, iure fugit repudiandae eius totam cum, rerum veritatis minima aut atque maxime numquam quisquam maiores praesentium sequi eos veniam laborum voluptate. Excepturi consectetur, dolor ducimus sequi dolore ipsam. Fugit, rerum ipsum atque minima accusamus beatae necessitatibus voluptatem sunt vel dolor.</p>', '2023-08-02 11:56:37', '2023-08-03 01:44:05', 1),
(2, 'Landing Page', 'landing-page', 'N6uVLoGU6SJk4Ph3tHJIAF5f5StukDKlpPBnO0qC.jpg', 1, 5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:21:30', '2023-08-02 05:21:30', 0),
(3, 'Website POS Kasir', 'website-pos-kasir', 'xLHUipZWGPRxaqiMyqq9tn57qCYWY8zBX4XIEb5g.jpg', 1, 7, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:22:37', '2023-08-02 05:22:37', 0),
(4, 'Website Sekolah', 'website-sekolah', 'MhfhWFU74YFIIbuLhrPt2ApH0U1B4y6cOvkiwKW5.jpg', 1, 7, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:23:11', '2023-08-03 01:59:01', 2),
(5, 'Belajar JavaScript', 'belajar-javascript', 'AnFdsg9tLnNgbmdqvBTE8YKsfUwOFanjRZ6qYHoI.webp', 1, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:23:46', '2023-08-02 05:38:30', 2),
(6, 'Belajar Laravel 10', 'belajar-laravel-10', 'hbgWn3MNwhTq6uQJ3jVPV0eaB8NwTo5ddkyfaCNg.jpg', 1, 8, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:24:15', '2023-08-02 05:39:11', 1),
(7, 'Belajar PHP', 'belajar-php', 'U72Oir4yqWOJqfgvN4IaA0HpGzIx2BIYqJYIKDNz.jpg', 1, 4, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente paria...', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam quod consequuntur ut, dolores minima accusamus voluptatum nulla, magni sapiente pariatur mollitia accusantium adipisci illo rerum aut unde laborum officiis iure laudantium incidunt. Totam, velit. Optio, ex ipsum. Neque animi, eveniet ducimus explicabo itaque recusandae autem! Temporibus reiciendis, qui libero animi odio quidem asperiores incidunt architecto error, suscipit repudiandae fugit, necessitatibus aspernatur consectetur iusto facilis sed facere dignissimos maiores rerum. Ipsam eveniet quae magnam error voluptatum. Adipisci, expedita inventore blanditiis molestias doloribus ducimus culpa accusamus at necessitatibus. Earum vel soluta assumenda.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima velit ex delectus asperiores, dolorem veritatis repellendus reprehenderit quo voluptates accusantium voluptatem facere, blanditiis assumenda rem ad hic aliquam incidunt, vero quia in aut? Provident, neque aperiam? Beatae quos necessitatibus eos amet iure mollitia, cupiditate recusandae impedit totam nihil unde laborum natus, nesciunt accusantium illum, quam perferendis cumque obcaecati porro architecto temporibus odit quaerat ducimus. Assumenda voluptates quidem minus animi laborum dolorum, eum illum. Dolorum molestiae cupiditate quia odit velit id voluptatem neque, ipsum dolores maxime architecto tempora quam minima aperiam sed! Deserunt, voluptatibus fugit. Accusamus?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In doloremque dolore autem odit adipisci temporibus, reprehenderit cum voluptatibus deserunt minus facilis quaerat, omnis porro illo natus officia expedita possimus nemo iure quo qui dignissimos magni dolorem ab! Excepturi, ad ullam corrupti minima assumenda praesentium dolore quisquam tenetur vel reiciendis, porro rem. Illum nobis voluptatum aliquid hic doloremque suscipit quo provident quibusdam magni necessitatibus odit culpa voluptatibus tenetur nostrum, accusamus quam explicabo sit libero consequatur omnis repellat nemo, corporis quas quae. Veniam aspernatur consequuntur facilis nesciunt nisi dolorem repudiandae hic quam, cum, minus id culpa consectetur. Pariatur similique error optio commodi.</p>', '2023-08-02 05:24:52', '2023-08-02 05:41:29', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(1, 3),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(4, 9),
(4, 10),
(5, 4),
(5, 11),
(6, 12),
(6, 11),
(6, 13),
(7, 11),
(7, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `nama`, `slug`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'HTML & CSS', 'html-css', 'Artikel yang membahas tentang HTML dan CSS', '2023-08-02 11:53:15', '2023-08-02 11:53:15'),
(2, 'Cyber Security', 'cyber-security', 'Artikel yang membahas tentang hacking dan seputernya', '2023-08-02 11:54:22', '2023-08-02 11:54:22'),
(3, 'JavaScript', 'javascript', 'Artikel yang membahas tentang belajar javascript dari awal', '2023-08-02 11:55:13', '2023-08-02 05:17:28'),
(4, 'PHP', 'php', 'Artikel belajar PHP Dasar', '2023-08-02 05:17:48', '2023-08-02 05:17:48'),
(5, 'Front End Web Development', 'front-end-web-development', 'Artikel belajar design website', '2023-08-02 05:18:19', '2023-08-02 05:18:19'),
(6, 'Backend Web Development', 'backend-web-development', 'Artikel belajar membuat aplikasi', '2023-08-02 05:18:39', '2023-08-02 05:18:39'),
(7, 'Project', 'project', 'Artikel membuat sebuah project dengan bahasa pemrograman', '2023-08-02 05:19:01', '2023-08-02 05:19:01'),
(8, 'Framework', 'framework', 'Artikel cara membuat website dengan kerangka kerja', '2023-08-02 05:19:17', '2023-08-02 05:19:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_31_221549_create_slides_table', 1),
(6, '2023_08_01_022128_create_categories_table', 1),
(7, '2023_08_01_083151_create_articles_table', 1),
(8, '2023_08_01_083750_create_tags_table', 1),
(9, '2023_08_01_084032_create_article_tag_table', 1),
(10, '2023_08_02_000601_add_view_column', 1),
(11, '2023_08_03_071741_add_field_column', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kutipan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`id`, `judul`, `gambar`, `kutipan`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to My Blog', 'pPxops202TgH6dlvLqs8q1iCaZzB3ey1THovn3Yw.jpg', 'Selamat Datang di Blog Saya. Saya Samirul Huda Seorang Junior Web Developer', '2023-08-02 12:04:11', '2023-08-02 12:04:11'),
(2, 'Tantang Saya', 'kkn4lZmZRWz0sggeqEAj4bxDaknlglyKbiSndEBP.jpg', 'Saya seorang mahasiswa di STMIK Widya Pratama', '2023-08-02 12:04:11', '2023-08-02 12:04:11'),
(3, 'Visi & Misi', 'W5X2fAUcajLOH2bRuMeVulzDq3QlZVnufx8N32U0.jpg', 'Visi Foya, Misi Foya, Visi & Misi -> Foya-Foya', '2023-08-02 12:08:14', '2023-08-02 12:08:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'html', 'html', '2023-08-02 11:51:10', '2023-08-02 11:51:33'),
(2, 'css', 'css', '2023-08-02 11:51:49', '2023-08-02 11:51:49'),
(3, 'hacking', 'hacking', '2023-08-02 11:52:05', '2023-08-02 11:52:05'),
(4, 'javascript', 'javascript', '2023-08-02 11:52:23', '2023-08-02 11:52:23'),
(5, 'nmap', 'nmap', '2023-08-02 11:52:42', '2023-08-02 11:52:42'),
(6, 'front end', 'front-end', '2023-08-02 05:21:30', '2023-08-02 05:21:30'),
(7, 'landing page', 'landing-page', '2023-08-02 05:21:30', '2023-08-02 05:21:30'),
(8, 'portofolio', 'portofolio', '2023-08-02 05:21:30', '2023-08-02 05:21:30'),
(9, 'Project', 'project', '2023-08-02 05:22:37', '2023-08-02 05:22:37'),
(10, 'php native', 'php-native', '2023-08-02 05:22:37', '2023-08-02 05:22:37'),
(11, 'belajar', 'belajar', '2023-08-02 05:23:46', '2023-08-02 05:23:46'),
(12, 'laravel', 'laravel', '2023-08-02 05:24:15', '2023-08-02 05:24:15'),
(13, 'mvc', 'mvc', '2023-08-02 05:24:15', '2023-08-02 05:24:15'),
(14, 'php', 'php', '2023-08-02 05:24:52', '2023-08-02 05:24:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `keahlian` varchar(255) NOT NULL,
  `words` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `foto`, `alamat`, `telpon`, `keahlian`, `words`) VALUES
(1, 'samirulhuda', 'samirulhuda@gmail.com', NULL, '$2y$10$TvwmhN2adCPe7aBN29UONOF6ANlkN9uYfSsULz/Pdrn11wIHa/8Ke', NULL, NULL, '2023-08-03 01:47:32', 'qRw5wiSo26WjZIOcw5ZXjN60RHd5KfU09K83S4Cq.jpg', 'Ds. Pododadi, Kec. Karanganyar, Kab. Pekalongan, Jawa Tengah, Indonesia', '085648597436', 'html5, css3, bootstrap, javascript, php, laravel, mysql, git, github', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fuga quaerat, possimus similique quasi eaque exercitationem consequatur soluta quisquam voluptatibus provident officiis, magnam, iure debitis tenetur mollitia in assumenda consectetur animi et reprehenderit ducimus eligendi. Vero quaerat ipsum delectus excepturi a ab odio. Earum officia, quidem accusantium assumenda eos quia voluptates. Voluptatibus dolore ipsam dolor facilis dolorum unde ab perspiciatis? Perspiciatis molestias atque quae, repellendus dolorem, distinctio molestiae ea obcaecati eligendi beatae deleniti, sunt adipisci natus maxime explicabo repellat eos quas.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum odio ab amet necessitatibus velit illum? Quod sed fugiat sit aspernatur sequi deserunt suscipit ipsa eligendi, ut magni recusandae eveniet quis quaerat ducimus nihil commodi necessitatibus voluptas, nesciunt ipsam officia voluptates deleniti, quia enim? Libero sed, perspiciatis a dolor eos facere. Fugit, culpa repellendus! Quis, nostrum molestias! Vero placeat ab tenetur incidunt consequatur fugiat, quae repellendus recusandae quidem. Molestiae velit accusantium eum autem eligendi aperiam perspiciatis earum hic sequi commodi deserunt inventore ex quo dolores, pariatur harum officiis possimus quidem ipsa nulla optio assumenda, dignissimos fugiat? Laboriosam veniam magnam minima libero.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio, cumque cum tenetur soluta consequatur tempore illum veritatis sunt eaque. Consequuntur in veniam consequatur possimus eaque fugiat, voluptatem sit dicta voluptate at ex perferendis doloremque cumque harum asperiores eum aliquam aliquid iusto. Ipsam voluptatem qui obcaecati rem aliquam, consequatur vel illum quidem quae dolore rerum, dolorem labore amet laudantium placeat voluptate numquam. Repudiandae adipisci, sed voluptas porro saepe similique eveniet reiciendis aut quae eos deserunt optio perferendis nostrum at tempora eaque ratione libero pariatur sapiente atque facere! Iusto consequatur mollitia ut?</p>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Indeks untuk tabel `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
