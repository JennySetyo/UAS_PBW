-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 01:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Abranara Archa', 'admin', 'd393359ee224317c5aefa8144595f422', '087786416247', 'abranara12@gmail.com', 'Pati');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `berita_name` varchar(100) NOT NULL,
  `berita_description` text NOT NULL,
  `berita_image` varchar(100) NOT NULL,
  `berita_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `category_id`, `berita_name`, `berita_description`, `berita_image`, `berita_status`, `data_created`) VALUES
(3, 4, 'Covid-19', '<p>https://www.tribunnews.com/corona/2022/01/16/breaking-news-update-corona-16-januari-2022-tambah-855-kasus-baru-total-4271649-orang</p>\r\n', 'berita1642142671.jpg', 1, '2022-01-14 06:44:31'),
(4, 4, 'Sambongrejo Destinasi Wisata Berbasis Budaya ', '<p>http://www.sorotnuswantoronews.com/2021/11/sambongrejo-destinasi-wisata-berbasis.html</p>\r\n', 'berita1642493745.jpg', 1, '2022-01-18 08:15:45'),
(5, 4, 'Peresmian Desa Wisata Sambongrejo', '<p>https://blora-ekspres.com/desa-wisata-budaya-sambongrejo-diresmikan-bupati-harus-memberi-kesan-bagi-wisatawan/</p>\r\n', 'berita1642493941.jpg', 1, '2022-01-18 08:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Kerajinan'),
(4, 'Berita'),
(5, 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(23, 1, 'Sale Pisang', 20000, '<p>makanan ini terbuat dari bahan dasar pisang</p>\r\n', 'produk1642058834.jpg', 1, '2022-01-13 07:27:14'),
(24, 2, 'jamu beras kencur', 15000, '<p>jamu beras kencur</p>\r\n', 'produk1642084573.jpg', 1, '2022-01-13 14:36:13'),
(25, 1, 'Soto Kletuk', 25000, '<p>Soto bening dengan tambahan telur dan taburan ketela goreng yang renyah</p>\r\n', 'produk1642408077.jpg', 1, '2022-01-17 08:27:57'),
(26, 1, 'Sate Ayam Blora', 20000, '<p>Sate ayam dengan bumbu khas dari Blora dijamin enakk</p>\r\n\r\n<p>20000/10 tusuk</p>\r\n', 'produk1642408347.jpg', 1, '2022-01-17 08:32:27'),
(27, 1, 'Kue Gendu', 25000, '<p>Kue gendu adalah salah satu kue tradisional yang rasanya mirip nastar. Kalau dilihat sekilas sih bentuk dari kue gendu ini mirip sekali dengan ulat. Sebab ada garis-garis di atas adonan kue gendu ini yang membuatnya mirip seperti ulat.</p>\r\n', 'produk1642492402.jpg', 1, '2022-01-17 08:35:19'),
(28, 1, 'Kue Manco', 20000, '<p>Manco merupakan kue tradisional yang sangat mudah ditemui di pasar. Bahan utama pembuatan kue manco yakni beras ketan yang diolah dengan sedemikian rupa sehingga menjadi jajanan yang lezat.</p>\r\n', 'produk1642492308.jpg', 1, '2022-01-17 08:38:05'),
(29, 1, 'Ungker', 15000, '<p>Ungker merupakan makahan khas Blora yang berbahan dasar kepompong daun jati</p>\r\n', 'produk1642409024.jpg', 1, '2022-01-17 08:43:44'),
(30, 1, 'Abon Lele', 20000, '<p>Abon yang terbuat dari ikan lele</p>\r\n', 'produk1642409251.jpg', 1, '2022-01-17 08:47:31'),
(31, 1, 'Dumbeg', 5000, '<p>Dumbeg<strong>&nbsp;</strong>adalah jajanan tradisional yang bisa ditemukan di pasar yang bentuknya menyerupai terompet. Dumbeg terbuat dari bahan tepung beras, gula aren dan garam</p>\r\n', 'produk1642409548.jpg', 1, '2022-01-17 08:52:28'),
(32, 2, 'Wedang Cemohe', 10000, '<p>wedang cemohe&nbsp;terdapat beberapa bahan seperti irisan kelapa, kacang tanah goreng, susu krim, dan roti tawar.</p>\r\n', 'produk1642409688.jpg', 1, '2022-01-17 08:54:48'),
(33, 2, 'Es Jati', 7000, '<p>es ini terbuat dari campuran pucuk daun jati yang diberi pemanis air gula Jawa.<br />\r\n&nbsp;</p>\r\n', 'produk1642409826.jpg', 1, '2022-01-17 08:57:06'),
(34, 2, 'Kopi Santan', 20000, '<p>Kopi santan terbuat dari biji kopi robusta yang disangrai dengan potongan kelapa</p>\r\n', 'produk1642410183.jpg', 1, '2022-01-17 09:03:03'),
(35, 3, 'Souvenir Barongan', 20000, '<p>Gantungan kunci barongan.&nbsp;Ukiran pada gantungan kunci ini juga dibuat dengan detail layaknya barongan berukuran besar.</p>\r\n', 'produk1642492849.jpg', 1, '2022-01-18 08:00:49'),
(36, 3, 'Batik Blora', 50000, '<p>Batik Blora mempunyai ciri khas yang melekat yaitu warna yang diaplikasikan menggambarkan kearifan lokal yang ada di wilayah tersebut. Begitu pula pada corak yang digunakan yaitu barongan, tayub, dan pohon jati.</p>\r\n', 'produk1642492959.jpg', 1, '2022-01-18 08:02:39'),
(37, 3, 'Kaos Samin', 70000, '<p>kaos ini diberi gambar tokoh pahlawan lokal blora yaitu Samin Surasentika. Kaos ini sangat nyaman dan adem untuk dipakai</p>\r\n', 'produk1642493178.jpg', 1, '2022-01-18 08:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_video`
--

CREATE TABLE `tb_video` (
  `video_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `video_name` varchar(100) NOT NULL,
  `video_description` text NOT NULL,
  `video_image` varchar(100) NOT NULL,
  `video_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_video`
--

INSERT INTO `tb_video` (`video_id`, `category_id`, `video_name`, `video_description`, `video_image`, `video_status`, `data_created`) VALUES
(1, 5, 'Nglenyer Sambongrejo', '<p>https://youtu.be/1WhlZ799cO8</p>\r\n', 'video1642141606.jpg', 1, '2022-01-14 06:26:46'),
(2, 5, 'Arak Arakan Barongan Arengga Jaya Live SambongRejo', '<p>https://youtu.be/ZT0fu_AWTW8</p>\r\n', 'video1642494610.jpg', 1, '2022-01-18 08:30:10'),
(3, 5, 'KAMPUNG SAMIN DESA WISATA SAMBONGREJO TEST TOUR !!!', '<p>https://youtu.be/FeohpxcAAIE</p>\r\n', 'video1642494738.jpg', 1, '2022-01-18 08:32:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
