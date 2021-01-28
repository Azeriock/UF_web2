-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 jan. 2021 à 16:04
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `area` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`id`, `area`, `city`, `zip`, `created_at`, `updated_at`) VALUES
(1, '25, rue du test', 'Paris', 1229, '2021-01-28 11:46:26', '2021-01-28 11:32:35'),
(2, 'adresse 1', 'Paris', 1772, '2021-01-28 11:45:52', '2021-01-28 11:32:35'),
(3, 'adresse 2', 'Paris', 1223, '2021-01-28 11:46:00', '2021-01-28 11:32:35'),
(4, 'adresse 3', 'Paris', 1233, '2021-01-28 11:46:09', '2021-01-28 11:32:35'),
(5, '35 BOULEVARD SERURIER', 'PARIS 19', 75019, '2021-01-28 10:32:57', '2021-01-28 10:32:57'),
(6, '35 BOULEVARD SERURIER', 'PARIS 19', 75019, '2021-01-28 12:06:51', '2021-01-28 12:06:51');

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345', 'Loic', '2021-01-27 23:00:00', '2021-01-27 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Ordinateur', 'PC, Laptop', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(2, 'Smart Phone', 'All smartphones', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(3, 'Casque', 'All headphones', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(4, 'Camera', 'All cameras', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(6, 'Gaming', 'All gaming accessories', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(7, 'Tablette', 'All tabs', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(8, 'Smartwatch', 'All smartwatches', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(9, 'Enceinte', 'All speakers', '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(10, 'Accessoire', 'All accessories', '2021-01-26 23:00:00', '2021-01-26 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `description`, `colors`, `price`, `discount`, `tag`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'HP Probook X360 440 G1', '1.jpg', '<div class=\"ng-scope\">\n<p>Generation - 8th Gen<br />Processor - Intel Core i7 8550U<br />Processor Clock Speed - 1.80-4.0GHz<br />Display Size - 14\"<br />RAM - 8GB<br />RAM Type - DDR4<br />Storage - 512GB SSD<br />Operating System - Free Dos</p>\n</div>', '#000000', 949, 910, 'New', 1, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(4, 'Apple iPad Pro', '1.jpg', '<div class=\"ng-scope\">\r\n<p>Model - Apple iPad Pro 11 Inch WiFi+Cellular<br />Processor Type - A12X Bionic chip<br />Internal Memory - 256GB<br />Display Type - Liquid Retina display<br />Display Size - 11\"<br />Screen Resolution - 2388 x 1668<br />Connectivity - Wi-Fi, Bluetooth 5.0, USB, GPS</p>\r\n</div>', '#c0c0c0', 405, 401, 'new', 7, '2021-01-26 23:00:00', '2021-01-28 12:38:33'),
(5, 'Google Pixel 3 (64 GB)', '1.jpg', '<div class=\"ng-scope\">\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">Processor: Qualcomm Snapdragon 845 2.5 GHz quad-core.</li>\n<li class=\"TrT0Xe\">Display: 5.5 inch, 2160x1080-pixel</li>\n<li class=\"TrT0Xe\">Operating system: Android 9 Pie.</li>\n<li class=\"TrT0Xe\">RAM: 4GB LPDDR4.</li>\n<li class=\"TrT0Xe\">Storage: 64GB internal.</li>\n<li class=\"TrT0Xe\">Cameras: 12.2-megapixel rear f/1.8 dual-pixel</li>\n</ul>\n</div>', '#ff80ff,#c0c0c0,#000000', 719, 710, 'New', 2, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(6, 'Samsung Galaxy Note 9', '1.jpg', '<div class=\"ng-scope\">\n<ul class=\"i8Z77e\">\n<li class=\"TrT0Xe\">CPU: Qualcomm Snapdragon 845.</li>\n<li class=\"TrT0Xe\">Memory: 6/8GB.</li>\n<li class=\"TrT0Xe\">Storage: 128.</li>\n<li class=\"TrT0Xe\">MicroSD storage: Up to 512GB.</li>\n<li class=\"TrT0Xe\">Screen size: 6.4 inches.</li>\n<li class=\"TrT0Xe\">Resolution: 2960 x 1440.</li>\n<li class=\"TrT0Xe\">Connectivity: Bluetooth 5, NFC.</li>\n<li class=\"TrT0Xe\">Battery: 4,000mAh</li>\n</ul>\n</div>', '#0080c0,#000000,#804040', 350, 340, 'Hot', 2, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(8, 'A4tech Bloody G437', '1.jpg', '<ul class=\"i8Z77e\">\n<li>Driver Unit: 40 mm Neodymium Magnet</li>\n<li>Frequency Response: 20-20000 Hz</li>\n<li>Sensitivity: 100 dB</li>\n<li>Impedance: 32 ohm</li>\n</ul>', '#000000', 300, 229, 'Hot', 3, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(11, 'Canon EOS 6D Mark II', '1.jpg', '<p>Model - Canon 6D Mark II<br />Mega Pixels - 26.2 Megapixels<br />Lens Mount - Canon EF Lens<br />Processor - DIGIC 7<br />Sensor Type - CMOS Senso</p>', '#000000', 105, 101, 'Hot', 4, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(12, 'Nikon D7200 Camera', '1.jpg', '<p>Model - Nikon D7200<br />Effective Pixels - 24.2 Megapixels<br />Lens Mount - AF-S 18-140mm<br />Processor - Expeed 4<br />Sensor Type - CMOS Sensor<br />Screen Type - TFT LCD<br />Screen Size - 3.2\"</p>', '#000000', 188, 150, 'New', 4, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(15, 'Canon PowerShot SX730', '1.jpg', '<p>Model - Canon PowerShot SX730 HS<br />Resolution (MP) - 20.3 Mega pixels<br />Display (Inch) - 3\" TFT Color LCD Display<br />Optical Zoom (X) - 40x<br />Battery - NB-13L Battery</p>', '#000000', 315, 300, 'New', 4, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(16, 'Microsoft Xbox One', '1.jpg', '<ul>\n<li>Seamless profile and controller pairing</li>\n<li>Responsive thumbsticks</li>\n<li>Triggers and bumpers are designed for quick access</li>\n<li>Menu and View buttons quick for easy navigation</li>\n<li>Remap buttons through the Xbox Accessories App</li>\n</ul>', '#000000', 51, 43, 'Gaming', 6, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(17, 'Logitech Wireless F710', '1.jpg', '<p>Model - Logitech F710<br />Type - Gamepad</p>', '#004080,#c0c0c0', 50, 45, 'New', 6, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(22, 'Apple Watch Series 4', '1.jpg', '<p>Model - Apple Watch Series 4<br />Watch Dimension - 40 x 34 x 10.7mm<br />Display Size - 1.57\"<br />Connectivity - WiFi, Bluetooth, GPS</p>', '#000000', 443, 430, 'Hot', 8, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(23, 'Mi Amazfit Bip', '1.jpg', '<div class=\"short-description\">\n<div class=\"std\">Model - Mi Amazfit Bip<br />Display Size - 1.28\"<br />Connectivity - WiFi, Bluetooth, GPS</div>\n</div>', '#000000', 61, 59, 'New', 8, '2021-01-26 23:00:00', '0000-00-00 00:00:00'),
(24, 'Garmin fenix 5 Sapphire', '1.jpg', '<ul>\n<li>Display: 1.2&rdquo; (240 x 240)</li>\n<li>Display type: Sunlight-visible, transflective memory-in-pixel (MIP)</li>\n<li>Memory: 64MB</li>\n<li>Lens Material: chemically strengthened glass or sapphire crystal</li>\n<li>Bezel Material: Stainless steel</li>\n<li>Strap material: silicone</li>\n</ul>', '#000000', 450, 430, 'Smartwatch', 8, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(25, 'Beats PILL Plus', '1.jpg', 'SKU: RAMBPSHSP\n\nBrand: Beats\n\nActive 2-way crossove', '#000000,#ff0000,#c0c0c0', 210, 200, 'Speaker', 9, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(26, 'JBL Omni 50+', '1.jpg', '<p>&lt;h2&gt;Model - JBL by Harman/Kardon Omni 50+&lt;br /&gt;Type - Wireless HD Indoor/Outdoor Speaker with Rechargeable Battery&lt;/h2&gt;</p>', '#000000', 67, 50, 'Speaker', 9, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(27, 'Edifier S350DB 2.1', '1.jpg', '<p>Model - Edifier S350DB<br />Type - Modern Powered Bluetooth Bookshelf Speaker<br />Channel - 2.1<br />RMS/Channel (Watt) - 15Watt x 2 (Treble) + 25Watt x 2 (midrange and bass)<br />RMS/Subwoofer (Watt) - 70Watt</p>', '#000000', 310, 300, 'Speaker', 9, '2021-01-26 23:00:00', '0000-00-00 00:00:00'),
(28, 'JBL Xtreme 2 Portable', '1.jpg', '<p>Model - JBL Xtreme 2<br />Type - Portable Bluetooth Speaker<br />Lithium-ion Polymer 36Wh (Equivalent to 3.7V 10000mAh)<br />Wirelessly connect<br />2 smartphones or tablets<br />charges device via an USB port</p>', '#400080', 54, 24, 'Hot', 9, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(30, 'APPLE Magic Mouse 2', '1.jpg', '<p>Model - APPLE Magic Mouse 2<br />Type - Magic Mouse<br />Connectivity - Wireless<br />Rechargable</p>', '#000000', 110, 100, 'Mouse', 10, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(31, 'Rapoo 3600 Silent', '1.jpg', '<ul>\n<li>Connection: 2.4GHz Wireless</li>\n<li>Tracking method: Optical</li>\n<li>Keys amount: 3&nbsp;</li>\n<li>Keys travel: 0.8mm</li>\n<li>Acceleration: 20G</li>\n<li>Resolution: 1000DPI</li>\n<li>Voltage: 1.5V</li>\n</ul>', '#000000', 305, 299, 'Mouse', 10, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(34, 'Corsair STRAFE Mechanical', '1.jpg', '<p>Model - Corsair STRAFE Mechanical<br />Type - RED LED Backlight Gaming Keyboard<br />Interface - USB</p>', '#ff0000', 110, 105, 'Keyboard', 10, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(35, 'APPLE MAGIC KEYBOARD', '1.jpg', 'APPLE MAGIC KEYBOARD (MLA22ZA/A, MLA22LL/A)', '#c0c0c0', 97, 95, 'Keyboard', 10, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(36, 'MSI GT75VR 7RE TITAN', '1.jpg', '<p>Generation - 7th Gen<br />Processor - Intel Core i7 7820HK<br />Processor Clock Speed - 2.90-3.90GHz<br />Display Size - 17.3\"<br />RAM - 32GB<br />RAM Type - DDR4 2400MHz<br />Storage - 1TB HDD + 256GB NVMe SSD</p>', '#808080', 254, 245, 'Laptop', 1, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(37, 'Asus ROG G752VS(KBL)', '1.jpg', '<p>Generation - 7th Gen<br />Processor - Intel Core i7 7700HQ<br />Processor Clock Speed - 2.80GHz<br />Display Size - 17.3\"<br />RAM - 32GB<br />RAM Type - DDR4<br />HDD - 2TBHDD+512GB SSD<br />Operating System - Endless</p>', '#808080', 231, 224, 'Hot', 1, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(38, 'Microsoft Surface Pro', '1.jpg', '<p>Generation - 8th Gen<br />Processor - Intel Core i7 8650U<br />Processor Clock Speed - 1.90-4.20GHz<br />Display Size - 12.3\"<br />RAM - 16GB<br />Storage - 512GB SSD<br />Operating System - Windows 10 Home</p>', '#c0c0c0,#8080ff', 202, 195, 'Tab', 7, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(39, 'HP Spectre 13-V113TU', '1.jpg', '<p>Model - HP Spectre 13-V113TU<br />Processor - Intel Core i5 7200U<br />Generation - 7th Gen<br />Processor Clock Speed - 2.50-3.10GHz<br />Display Size - 13.3\"<br />RAM - 8GB<br />RAM Type - LPDDR3 1866 On-Board</p>', '#000000', 126, 123, 'New', 1, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(41, 'asus zenfone 5z', '1.jpg', '<p>Dimensions 153 x 75.7 x 7.9 mm</p>\n<p>Weight 155 g (5.47 oz)</p>\n<p>Hybrid Dual SIM</p>\n<p>DISPLAY Type IPS LCD</p>\n<p>Resolution 1080 x 2246 pixels,</p>\n<p>18.7:9 ratio (~402 ppi density) OS Android 8.0 (Oreo)</p>\n<p>Chipset Qualcomm SDM845 Snapdragon 845</p>\n<p>GPU Adreno 630</p>', '#000000,#c0c0c0', 490, 480, 'Hot', 2, '2019-02-09 23:00:00', '2019-02-09 23:00:00'),
(42, 'Skullcandy Over-Ear', '1.jpg', '<ul>\n<li>Type: Over-Ear</li>\n<li>Connection Type: Bluetooth&reg; or Wired</li>\n<li>Battery Life: Up to 40 Hours</li>\n<li>Rapid Charge: 10 Min = 3 Hours of Play</li>\n<li>Noise Isolation: Passive</li>\n<li>Driver Size: 40mm</li>\n</ul>', '#000000', 140, 139, 'Hot', 3, '2019-02-09 23:00:00', '2019-02-09 23:00:00'),
(43, 'Microlab Outlander', '1.jpg', '<ul>\n<li>Bluetooth Profiles: HSP, HFP, A2DP, AVRCP</li>\n<li>Frequency Response: 20 Hz - 20 kHz&nbsp;&nbsp;</li>\n<li>Sound pressure level: 115 &plusmn; 3 dB</li>\n<li>Impedance: 32 &Omega;</li>\n<li>Wireless Range: 10m</li>\n<li>Talk Time: 22H</li>\n<li>Standby Time: 900 hours</li>\n<li>Music Play Time: 20 hours</li>\n</ul>', '#000000', 92, 90, 'Speaker', 3, '2019-02-09 23:00:00', '2019-02-09 23:00:00'),
(44, 'DualShock 4 Wireless', '1.jpg', 'SKU HRDDASCPLU\n\nWeight 0.2100\n\nBrand Sony', '#ff0000', 69, 59, 'Gaming', 6, '2019-02-09 23:00:00', '2019-02-09 23:00:00'),
(45, 'Huawei MediaPad T3', '1.jpg', '<p>Model - Huawei MediaPad T3 10<br />Processor Type - Qualcomm MSM8917 Quad Core A53<br />RAM - 2GB<br />Processor Speed - 1.4GHz<br />Internal Memory - 16GB ROM<br />Display Type - IPS display<br />Display Size - 9.6\"<br />Screen Resolution - 1280 x 800</p>', '#000000', 199, 189, 'New', 7, '2019-02-09 23:00:00', '2019-02-09 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `product_id`, `order_status`, `price`, `created_at`, `updated_at`) VALUES
(19, 1, '3:1:#000000:1', 'On Process', 91000, '2021-01-27 19:40:24', '2021-01-28 10:34:25'),
(20, 1, '3:1:#000000:1', 'Delivered', 91000, '2021-01-28 10:33:53', '2021-01-28 10:34:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `prev_password`, `address_id`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@test.com', '12345', '0122222222', NULL, 1, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(2, 'test b', 'b@gmail.com', '12345', '0133333333', NULL, 2, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(3, 'test c', 'c@gmail.com', '12345', '0144444444', NULL, 3, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(4, 'test d', 'd@gmail.com', '12345', '0111111111', NULL, 4, '2021-01-26 23:00:00', '2021-01-26 23:00:00'),
(6, 'LOIC PIERRET', 'loic.pierret@ynov.com', '12345', '0699703459', NULL, 6, '2021-01-28 12:06:51', '2021-01-28 12:06:51');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_id_foreign` (`address_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
