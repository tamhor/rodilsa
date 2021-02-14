-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2021 pada 03.29
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_rodilsa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_banks`
--

CREATE TABLE `mp_banks` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `branch` varchar(100) CHARACTER SET latin1 NOT NULL,
  `branchcode` varchar(100) CHARACTER SET latin1 NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `accountno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_banks`
--

INSERT INTO `mp_banks` (`id`, `bankname`, `branch`, `branchcode`, `title`, `accountno`, `status`) VALUES
(1, 'Bank Central Asia', 'Karawang', '23567', 'PT. SiAP System', '12345678910', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_bank_transaction`
--

CREATE TABLE `mp_bank_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cheque_amount` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ref_no` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transaction_status` int(1) NOT NULL,
  `transaction_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_barcode`
--

CREATE TABLE `mp_barcode` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `random_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_barcode`
--

INSERT INTO `mp_barcode` (`id`, `barcode`, `random_no`, `description`) VALUES
(12, 'Rayban RB 8921F 5263 Carbon Fibre Original', '8578771704', ''),
(13, 'Guess F GE 2565F 005 53', '0810451976', ''),
(14, 'Rayben H QD GA124132 54 42', '2362162973', ''),
(15, 'Giordano F GD GA02069 94 53', '7549858606', ''),
(16, 'Giordano F GD GA02404 52 51', '4348593175', ''),
(17, 'Cardinal CA5026', '1077666113', ''),
(18, 'Converse F CO A524 BLK 51', '5511133707', ''),
(19, 'WICO 9124', '1388470487', ''),
(20, 'Ducati SB 178889', '5533156276', ''),
(21, 'silver icy grey', '6510642530', ''),
(22, 'Koko Black by exoticon', '4401616888', ''),
(23, 'A+', '1489898095', ''),
(24, 'X2 Sanso', '5136010995', ''),
(25, 'X2 Bio Glaze', '2550119151', ''),
(26, 'New Diva', '9861590247', ''),
(27, 'Fervox original 18094 Bulat Stainlees', '3096542150', ''),
(28, 'Langford Alloy TR 90', '4263368587', ''),
(29, ' Elizabeth Arden C8 Soft Pink', '5649492883', ''),
(30, 'Etcetera S22632 Series', '4399329822', ''),
(31, 'Disney F DY DS8273 C1 52', '6704289578', ''),
(32, 'Mickey Mouse F M- 6503 GREEN 46', '1384115500', ''),
(33, 'Doraemon F DE DM0189 80 47', '3931429575', ''),
(34, 'Paolo Gucci P7492 A89', '0342612555', ''),
(35, 'Alan Garaud 8422', '8620881391', ''),
(36, 'jeanwesp J7 1866 JP12', '6422369584', ''),
(37, 'Jeep JP12 4534 Series Black', '3688572437', ''),
(39, 'Vandenberg V3144 Black Original', '2467687220', ''),
(40, 'Times F31015 C1 Original', '1992929907', ''),
(41, 'GNA Eyewear W-1347 Brown', '2455227813', ''),
(42, 'Rodenstock F RS R7050 A 54', '1387625057', ''),
(43, ' IDECO IC 34 1033', '3079700689', ''),
(44, 'Horien HR 1773 Spesial Edition', '7702764289', ''),
(45, 'Nomad 2862N', '8510473076', ''),
(46, 'Saint Lux SL G 3355 C1', '2341530687', ''),
(47, 'Giacoma Puccini Gpf 6327 Col 2 Original', '7973130899', ''),
(48, 'Filano F313 C40 Original', '2193298726', ''),
(49, 'Nike 7091', '5621948212', ''),
(50, 'H&amp;M BD 6267', '8220296562', ''),
(51, 'Monalisa Serie TR90 8055 5118-138', '6956581265', ''),
(52, 'Braun Buffel BB 15310 109', '3004313645', ''),
(56, 'Oriental Single vision 1,67 Ultra Clean', '3066458606', ''),
(57, 'Oriental Single vision 1,61 Ultra Clean', '3232532106', ''),
(58, 'Oriental Bifocal kryptok T-28 1,5 Ultraclean', '7984126155', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_brand`
--

CREATE TABLE `mp_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_brand`
--

INSERT INTO `mp_brand` (`id`, `name`) VALUES
(6, 'rodenstock'),
(7, 'Rayben'),
(8, 'Calvin Klein'),
(9, 'Chanel'),
(10, 'Guess'),
(11, 'Emporio Armani'),
(12, 'Horien'),
(13, 'ideco'),
(14, 'jeanwest'),
(15, 'jeep'),
(16, 'H&amp;M'),
(17, 'Markstudio'),
(18, 'Matsuka'),
(19, 'Mickey Mouse'),
(20, 'Monalisa'),
(21, 'Navy'),
(22, 'Wico'),
(23, 'Times'),
(24, 'Valintino Rudy'),
(25, 'Payback'),
(26, 'silver'),
(27, 'Payback clip on'),
(28, 'Active'),
(29, 'Aslan'),
(30, 'atalia'),
(31, 'AZ'),
(32, 'Believe'),
(33, 'BPHC Discount'),
(34, 'Braun buffel'),
(35, 'cardinal'),
(36, 'Converse'),
(37, 'D-Eye'),
(38, 'Disney'),
(39, 'Ducati'),
(40, 'Eclipse'),
(41, 'Elizabeth Arden'),
(42, 'Etcetera'),
(43, 'Faul Frank'),
(44, 'fervox'),
(45, 'filano'),
(46, 'Frame Discount'),
(47, 'Giocoma Puccini'),
(48, 'Giordano Armani'),
(49, 'GNA'),
(50, 'GNA junior'),
(51, 'Helen keller'),
(52, 'HI5'),
(53, 'Horten'),
(54, 'John Langford'),
(55, 'Neutra Clip On'),
(56, 'Nikitana'),
(57, 'Nomad'),
(58, 'Paket'),
(59, 'Paulu Gucci'),
(60, 'Red Chery'),
(61, 'Saintlux'),
(62, 'Saintlux Clip On'),
(63, 'Vandenberg'),
(64, 'Visacuve'),
(65, 'Wico'),
(66, 'Max see'),
(67, 'koko black'),
(68, 'A+'),
(69, 'Sanso'),
(70, 'New Diva'),
(73, 'Doraemon'),
(74, 'Alan Garaud'),
(75, 'Oriental'),
(76, 'essilor'),
(77, 'Nike');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_brand_sector`
--

CREATE TABLE `mp_brand_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_brand_sector`
--

INSERT INTO `mp_brand_sector` (`id`, `sector`, `created`, `updated`) VALUES
(7, 'jj', '2020-10-22', '2020-11-14'),
(8, 'coklat', '2020-11-14', '2020-11-14'),
(9, 'Stone', '2020-12-25', '2020-12-25'),
(10, 'Grey', '2020-12-25', '2020-12-25'),
(11, 'Sugar grey', '2020-12-25', '2020-12-25'),
(12, 'shadow', '2020-12-25', '2020-12-25'),
(13, 'Onyx', '2020-12-25', '2020-12-25'),
(14, 'Na Quartzo', '2020-12-25', '2020-12-25'),
(15, 'Na Azul', '2020-12-25', '2020-12-25'),
(16, 'Black', '2021-01-27', '2021-01-27'),
(17, 'Glossy', '2021-01-27', '2021-01-27'),
(18, 'Blue', '2021-01-27', '2021-01-27'),
(19, 'Red', '2021-01-27', '2021-01-27'),
(20, 'Pink', '2021-01-30', '2021-01-30'),
(21, 'Green', '2021-01-30', '2021-01-30'),
(22, 'white', '2021-01-30', '2021-01-30'),
(23, 'Dark White', '2021-01-30', '2021-01-30'),
(24, 'Gold', '2021-02-02', '2021-02-02'),
(25, 'silver', '2021-02-07', '2021-02-07'),
(26, 'bening', '2021-02-08', '2021-02-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_category`
--

CREATE TABLE `mp_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_category`
--

INSERT INTO `mp_category` (`id`, `category_name`, `description`, `status`) VALUES
(16, 'Lensa', 'lensa kacamata', 0),
(17, 'Frame', 'frame kacamata', 0),
(18, 'Softlens', 'softlens mata', 0),
(19, 'Pembersih', 'pembersih kacamata', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_contactabout`
--

CREATE TABLE `mp_contactabout` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_number` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 NOT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 NOT NULL,
  `linked` varchar(255) CHARACTER SET latin1 NOT NULL,
  `googleplus` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_quotation` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_description` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_contactabout`
--

INSERT INTO `mp_contactabout` (`id`, `contact_title`, `contact_description`, `phone_number`, `address`, `email`, `facebook`, `twitter`, `linked`, `googleplus`, `about_title`, `about_quotation`, `about_name`, `about_title2`, `about_description`) VALUES
(1, 'Contact Us', '', '02188345425', 'Perumnas 3, Jl. Nusantara Raya Blok A4 No.24, RT.004/RW.009, Aren Jaya, Kec. Bekasi Tim., Bekasi, Jawa Barat 17111', 'optikrodilsa@gmail.com', 'Optik Rodilsa', 'optikrodilsa', 'optikrodilsa', 'optikrodilsa', 'optikrodilsa', 'optikrodilsa', 'optikrodilsa', 'About Us', 'optikrodilsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_customer_payments`
--

CREATE TABLE `mp_customer_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_expense`
--

CREATE TABLE `mp_expense` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `total_bill` varchar(255) CHARACTER SET latin1 NOT NULL,
  `total_paid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `payee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_generalentry`
--

CREATE TABLE `mp_generalentry` (
  `id` int(11) NOT NULL,
  `id_head` varchar(10) NOT NULL,
  `customer_id` int(11) DEFAULT 0,
  `date` date NOT NULL,
  `naration` varchar(255) CHARACTER SET latin1 NOT NULL,
  `generated_source` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_generalentry`
--

INSERT INTO `mp_generalentry` (`id`, `id_head`, `customer_id`, `date`, `naration`, `generated_source`) VALUES
(370, '', 0, '2021-02-28', 'Transaksi dilakukan dari penjualan', 'Journal Voucher'),
(371, '', 0, '2021-02-26', 'Transaksi Dilakukan dari Pembayaran Customer', 'Journal Voucher'),
(372, '', 0, '2021-02-25', 'Transaksi dilakukan dari penjualan POS', 'Journal Voucher'),
(373, '', 0, '2021-02-24', 'Transaksi dilakukan dari penjualan POS', 'Journal Voucher'),
(374, '', 0, '2021-02-23', 'Transaksi dilakukan dari penjualan POS', 'Journal Voucher'),
(375, '', 0, '2021-02-22', 'Pembayaran beban telepon', 'Journal Voucher'),
(376, '', 0, '2021-02-21', 'Pembayaran beban gaji', 'Journal Voucher'),
(377, '', 0, '2021-02-20', 'Transaksi dilakukan dari penjualan POS', 'Journal Voucher'),
(378, '', 0, '2021-02-19', 'Pembayaran beban listrik dan air', 'Journal Voucher'),
(379, '', 0, '2021-02-18', 'Transaksi dilakukan dari penjualan POS', 'Journal Voucher'),
(380, '', 0, '2021-02-17', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(381, '', 0, '2021-02-16', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(382, '', 0, '2021-02-14', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(383, '', 0, '2021-02-12', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(384, '', 0, '2021-02-03', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(385, '', 0, '2021-02-02', 'Transaksi dilakukan dari Pembelian ke Supplier', 'Journal Voucher'),
(386, '', 0, '2021-02-01', 'Menyetorkan modal usaha', 'Journal Voucher'),
(387, '', 0, '2021-02-10', 'Transaksi dilakukan dari penjualan POS', 'pos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_head`
--

CREATE TABLE `mp_head` (
  `id` int(11) NOT NULL,
  `id_head` varchar(5) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nature` varchar(50) CHARACTER SET latin1 NOT NULL,
  `type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `relation_id` int(11) NOT NULL,
  `expense_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_head`
--

INSERT INTO `mp_head` (`id`, `id_head`, `name`, `nature`, `type`, `relation_id`, `expense_type`) VALUES
(1, '501', 'Beban Gaji', 'Expense', 'Lancar', 0, 'Beban Kas'),
(2, '101', 'Kas', 'Assets', 'Lancar', 0, '-'),
(3, '401', 'Pendapatan', 'Revenue', 'Lancar', 0, '-'),
(4, '102', 'Piutang Usaha', 'Assets', 'Lancar', 0, '-'),
(5, '201', 'Hutang Usaha', 'Liability', 'Lancar', 0, '-'),
(6, '502', 'Beban Telepon', 'Expense', 'Lancar', 0, 'Beban Kas'),
(7, '301', 'Modal Usaha', 'Equity', 'Lancar', 0, '-'),
(13, '503', 'Beban Administrasi', 'Expense', 'Lancar', 0, 'Beban Kas'),
(14, '504', 'Beban Listrik dan Air', 'Expense', 'Lancar', 0, 'Beban Kas'),
(15, '505', 'Beban Iklan', 'Expense', 'Lancar', 0, 'Beban Kas'),
(19, '506', 'Beban Perlengkapan', 'Expense', 'Lancar', 0, 'Beban Kas'),
(21, '500', 'Pembelian', 'Expense', 'Lancar', 0, 'Beban Kas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_invoices`
--

CREATE TABLE `mp_invoices` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sph` int(10) NOT NULL,
  `cyln` int(10) NOT NULL,
  `xis` int(10) NOT NULL,
  `agentname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `delivered_to` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_by` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_date` date NOT NULL,
  `delivered_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shippingcharges` decimal(11,2) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `payment_method` int(1) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `bill_paid` decimal(11,2) NOT NULL,
  `source` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_invoices`
--

INSERT INTO `mp_invoices` (`id`, `transaction_id`, `date`, `discount`, `status`, `description`, `sph`, `cyln`, `xis`, `agentname`, `cus_id`, `cus_picture`, `delivered_to`, `delivered_by`, `delivered_date`, `delivered_description`, `shippingcharges`, `prescription_id`, `region_id`, `vehicle_id`, `driver_id`, `payment_method`, `total_bill`, `bill_paid`, `source`) VALUES
(69, 387, '2021-02-10', '0.00', 0, '', 0, 0, 0, 'muhammad fauzan', 31, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '50000.00', '50000.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_langingpage`
--

CREATE TABLE `mp_langingpage` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companydescription` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companykeywords` varchar(255) CHARACTER SET latin1 NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `banner` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6one` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title8` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title9` varchar(255) CHARACTER SET latin1 NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 NOT NULL,
  `primarycolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `theme_pri_hover` varchar(50) CHARACTER SET latin1 NOT NULL,
  `expirey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_langingpage`
--

INSERT INTO `mp_langingpage` (`id`, `companyname`, `companydescription`, `companykeywords`, `logo`, `banner`, `slider1`, `slider2`, `slider3`, `slider4`, `slider5`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `subtitle6`, `subtitle6one`, `title8`, `title9`, `currency`, `language`, `primarycolor`, `theme_pri_hover`, `expirey`) VALUES
(1, 'Optik Rodilsa', 'perusahaan dagang', 'penjualan pembelian dan persediaan kacamata', 'dcb99169fed78154951d15df01aa5dbe.png', '1171127a5133603e62cc949a87aedda4.jpg', '0ae082ea4c6d3334de39a11840c07c09.jpg', 'a3cbfa5f37d75bd8de678ceded28da43.png', 'd6e2b9bad5eb6560699d95d0235b3e9e.png', '67e008061660613ba4497979db422f91.png', 'ec572d4564b40dec3412b2d305f6a59e.png', 'THE  PHARMACY AND POS SYSTEM', 'OUR SERVICES', 'THINGS YOU SHOULD KNOW ABOUT US', 'MEET OUR PHARMACIST!.', 'SEE WHAT PATIENTS ARE SAYING?.', 'CONTACT US.', 'Contact Info.', 'Having Any Query! Or Book an appointment.', 'Quick Links.', 'Follow us.', 'IDR', 'ID', '#ec2711', '#000000', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_menu`
--

CREATE TABLE `mp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_menu`
--

INSERT INTO `mp_menu` (`id`, `name`, `icon`) VALUES
(1, 'Inventori', 'fa fa-cube'),
(5, 'Laporan', 'fa fa-file'),
(6, 'Penjualan', 'fa fa-clipboard'),
(7, 'Profil', 'fa fa-user'),
(12, 'Pengguna', 'fa fa-users'),
(16, 'Supplier', 'fa fa-truck'),
(20, 'Pembelian', 'fa fa-briefcase'),
(23, 'Akuntansi', 'fa fa-calculator'),
(25, 'Pengaturan', 'fa fa-cog'),
(26, 'Dashboard', 'fa fa-tachometer'),
(28, 'Customer', 'fa fa-user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_menulist`
--

CREATE TABLE `mp_menulist` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_menulist`
--

INSERT INTO `mp_menulist` (`id`, `menu_id`, `title`, `link`) VALUES
(1, 1, 'Produk', 'product'),
(2, 1, 'Kategori', 'category'),
(3, 2, 'Tampilan & Sistem', 'layout'),
(4, 1, 'Barcode', 'product/generate_barcode'),
(9, 28, 'Data Customer', 'customers'),
(10, 5, 'Laporan Penjualan', 'salesreport'),
(13, 6, 'Daftar Penjualan', 'invoice/manage'),
(16, 7, 'Personal', 'profile'),
(17, 12, 'Daftar Pengguna', 'users'),
(26, 12, 'Atur hak akses', 'multiple_roles'),
(28, 16, 'Data Supplier', 'supplier'),
(36, 6, 'Transaksi Penjualan', 'invoice'),
(39, 20, 'Daftar Pembelian', 'purchase'),
(43, 1, 'Merk', 'initilization'),
(47, 1, 'Unit', 'initilization/units'),
(49, 1, 'Peringatan Stok', 'stockAlertReport'),
(51, 1, 'Stok', 'product/productStock'),
(53, 16, 'Pembayaran Supplier', 'supplier/payment_list'),
(54, 28, 'Buku Besar Customer', 'customers/ledger'),
(55, 16, 'Buku Besar Supplier', 'supplier/ledger'),
(57, 4, 'Pembayaran Customer', 'customers/payment_list '),
(58, 23, 'COA/Akun', 'accounts'),
(59, 23, 'Jurnal Umum', 'statements'),
(60, 23, 'Buku Besar', 'statements/leadgerAccounst'),
(61, 23, 'Neraca Saldo', 'statements/trail_balance'),
(62, 23, 'Laporan Laba Rugi', 'statements/income_statement'),
(64, 23, 'Entri Jurnal', 'statements/journal_voucher'),
(66, 28, 'Pembayaran Customer', 'customers/payment_list '),
(68, 25, 'Backup Database', 'backup'),
(69, 25, 'Restore Database', 'backup/upload_restore'),
(70, 18, 'Deposito Bank', 'bank/deposit_list'),
(71, 18, 'Buku Bank', 'bank/bank_book'),
(72, 26, 'Beranda', 'dashboard'),
(74, 25, 'Format Data', 'backup/format'),
(75, 20, 'Transaksi Pembelian', 'purchase/create_purchase'),
(76, 5, 'Laporan Pembelian', 'purchase');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_multipleroles`
--

CREATE TABLE `mp_multipleroles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `agentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_multipleroles`
--

INSERT INTO `mp_multipleroles` (`id`, `user_id`, `menu_Id`, `role`, `agentid`) VALUES
(117, 1, 12, 0, 1),
(118, 1, 1, 1, 1),
(119, 1, 2, 1, 1),
(120, 1, 5, 1, 1),
(121, 1, 6, 1, 1),
(122, 1, 7, 1, 1),
(123, 1, 16, 1, 1),
(124, 1, 18, 1, 1),
(125, 1, 20, 1, 1),
(126, 1, 21, 1, 1),
(127, 1, 22, 1, 1),
(128, 1, 23, 1, 1),
(129, 1, 24, 1, 1),
(130, 1, 25, 1, 1),
(131, 1, 26, 1, 1),
(132, 1, 27, 1, 1),
(133, 1, 28, 1, 1),
(135, 2, 2, 1, 1),
(136, 2, 5, 1, 1),
(138, 2, 7, 1, 1),
(139, 2, 12, 1, 1),
(140, 2, 16, 1, 1),
(141, 2, 18, 1, 1),
(142, 2, 20, 1, 1),
(143, 2, 21, 1, 1),
(144, 2, 22, 1, 1),
(145, 2, 23, 1, 1),
(146, 2, 25, 1, 1),
(147, 2, 26, 1, 1),
(148, 2, 27, 1, 1),
(150, 2, 24, 1, 1),
(152, 4, 1, 1, 2),
(153, 4, 7, 1, 2),
(157, 7, 5, 1, 2),
(158, 7, 6, 1, 2),
(159, 7, 7, 1, 2),
(160, 7, 28, 1, 2),
(161, 7, 30, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_payee`
--

CREATE TABLE `mp_payee` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_contact_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_status` int(1) NOT NULL,
  `cus_town` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_balance` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_date` date NOT NULL,
  `customer_nationalid` int(16) NOT NULL,
  `type` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_payee`
--

INSERT INTO `mp_payee` (`id`, `customer_name`, `cus_email`, `cus_password`, `cus_address`, `cus_contact_1`, `cus_picture`, `cus_status`, `cus_town`, `cus_balance`, `cus_date`, `customer_nationalid`, `type`) VALUES
(28, 'Rudi', 'rudi99@gmail.com', '', 'perumahan taman kebayoran jalan cipaku no 1', '09898787', '1e2c803d38c653b18f0bc133d76f9bf1.jpg', 0, 'Bekasi Timur', '', '2020-12-25', 2147483647, 'customer'),
(29, 'Joko', 'joko@gmail.com', '', 'perumahan alamanda regency jalan matahari no 7', '085656565', 'c1b94e2b007c6a8a265302bc6407708e.jpg', 0, 'Bekasi Timur', '', '2020-12-25', 2147483647, 'customer'),
(30, 'Bagas', 'bagas41@gmail.com', '', 'perumahan bumi sani jalan diponegoro no 11', '07565656', '828c66807396def7a5ab373b2b9498ed.jpg', 0, 'Cikarang', '', '2020-12-25', 1989787987, 'customer'),
(31, 'Yoga', 'yoga121@gmail.com', '', 'Perumahan setia darma jalan matahari no 21', '067676767', '9759e28b73ae67ed9038dce0cdb71eba.jpg', 0, 'Bekasi Timur', '', '2020-12-25', 1434343434, 'customer'),
(32, 'Toni', 'toni12@gmail.com', '', 'perumahan grand wisata jalan jalan bunga no 4', '017818181', '6cc42363bed3d7d5fb4259808d8b8f1a.jpg', 0, 'Bekasi Timur', '', '2020-11-26', 2147483647, 'customer'),
(33, 'CV Abdi Cipta', 'cvabdicipta12@gmail.com', '', 'jalan klonengan kav 2-5 ', '08989898', '0ae0e2189afd83c7cc4ad042e40a0214.jpg', 0, 'kalimantan', '', '2020-11-26', 2147483647, 'supplier'),
(34, 'PT. Nusantara jaya', 'nusantarajaya28@gmail.com', '', 'jalan gatot subroto kav 25-27', '089389839', 'd6a5be33b002d64c70547b6800c1d87f.jpg', 0, 'Jakarta selatan', '', '2020-11-26', 121921929, 'supplier'),
(35, 'CV Mulya Abadi', 'cvmulyabadi81@gmail.com', '', 'jalan raya underpass no 75', '0728282', '4739e4248ed21468a1752d4bc3bfad31.jpg', 0, 'Bekasi Barat', '', '2020-11-26', 2147483647, 'supplier'),
(36, 'PT Obor Pratama', 'ptoborpratama1@gmail.com', '', 'jalan petronas no 12', '0121921982', '03993253bda97e2595d34e8aac82121a.jpg', 0, 'Karawang', '', '2020-11-26', 2147483647, 'supplier'),
(37, 'CV nandi jaya', 'nandijaya2020@gmail.com', '', 'jalan beo no 10', '0818192', '91e9722dfb0e31fdc29c5b293ca0463c.jpg', 0, 'Bandung', '', '2020-11-26', 2147483647, 'supplier'),
(39, 'Aris', 'aris12@gmail.com', '', 'perumahan alamanda regency jalan matahari no 7', '0676767676', '3bb6dc99941ba80673655695374a70df.jpg', 0, 'Bekasi Timur', '', '2020-11-29', 1767677, 'customer'),
(42, 'Rudi', 'rudi@gmail.com', '', '', '', 'default.jpg', 0, '', '', '2021-02-02', 0, 'supplier');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_productslist`
--

CREATE TABLE `mp_productslist` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `retail` decimal(11,2) NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `min_stock` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `total_units` int(11) NOT NULL,
  `packsize` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sku` varchar(255) CHARACTER SET latin1 NOT NULL,
  `location` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_sector_id` int(11) NOT NULL,
  `unit_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_productslist`
--

INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `quantity`, `purchase`, `retail`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `image`, `brand_id`, `brand_sector_id`, `unit_type`) VALUES
(1455, 18, 'silver icy grey', 90, '40000.00', '87000.00', '                                produk ini untuk entod', '6510642530', 1, 0, 0, '12', '123131300', 'rak 01', '0.00', '5d4b951f38315891f2959bbb2ed89ff8.png', 9, 7, 'Pcs'),
(1456, 18, 'Koko Black by exoticon', 109, '20000.00', '50000.00', 'Big Eyes Series\r\n8,6 base curve\r\n14,5 diameter\r\n42% water ', '4401616888', 1, 0, 0, '12', '21204815871', 'rak 02', '0.00', 'f9201e4edc99e431644884c17c219d7f.png', 67, 9, 'Pcs'),
(1457, 18, 'A+', 32, '40000.00', '80000.00', '6 Months supplies\r\n8,6 Base Curve\r\n14,5 Diameter\r\n55% Water\r\n45% Ocurlcon A', '1489898095', 1, 0, 0, '4', '81838382929', 'rak 03', '0.00', 'e71327309d5d234394692e44787d8392.png', 68, 10, 'Pcs'),
(1459, 18, 'X2 Sanso', 3, '75000.00', '150000.00', '3 months suppliy\r\n8,8 base curve\r\n14,5 diameter\r\n55% water', '5136010995', 1, 0, 0, '10', '25453434343', 'rak 04', '0.00', '47468a46c708538741590f48cc325496.png', 69, 12, 'Pcs'),
(1460, 18, 'X2 Bio Glaze', 16, '70000.00', '140000.00', '6 Months Supplies\r\n8,6 Base Curve\r\n14,5 diameter\r\n45% water\r\n55% occurflon', '2550119151', 1, 0, 0, '2', '71899929222', 'rak 02', '0.00', '906fa4a6be0a4205caabed97a3b75f36.png', 6, 11, 'Pcs'),
(1461, 18, 'New Diva', 23, '40000.00', '100000.00', '6 Months supplies\r\n9,0 Base Curve\r\n15 Diameter\r\n42% water\r\n58% Polema                               ', '9861590247', 0, 0, 0, '2', '2333424434343', 'rak 05', '0.00', 'ac6da4d80ed8d16ae2bf5f45e73ae23b.png', 70, 10, 'Pcs'),
(1462, 17, 'Rayban RB 8921F 5263 Carbon Fibre Original', 3, '200000.00', '400000.00', '          frame kacamata rayben                      ', '8578771704', 1, 0, 3, '1', '81838382929', 'rak 03', '0.00', '4da8be5801f90d4e2e6dd555afe53f98.PNG', 7, 8, 'Pcs'),
(1463, 17, 'Guess F GE 2565F 005 53', 8, '200000.00', '600000.00', '                                Berawal dari koleksi stonewased denim yang ikonik, Guess berkembang ', '0810451976', 1, 0, 0, '2', '1391238193818', 'rak b', '0.00', '920f7129da8707bfc786ecd94d2dc08b.PNG', 10, 10, 'Pcs'),
(1464, 17, 'Rayben H QD GA124132 54 42', 7, '100000.00', '300000.00', '                                ', '2362162973', 1, 0, 0, '2', '1231313121', 'rak 04', '0.00', '631f4d72fac604c4b1d2ec0adbcf8ce8.PNG', 7, 8, 'Pcs'),
(1465, 17, 'Giordano F GD GA02069 94 53', 7, '300000.00', '714000.00', '                                frame kacamata', '7549858606', 1, 0, 0, '1', '198382828', 'rak 05', '0.00', '8d1572ddfaf38f6fa39ad6723237ac74.PNG', 48, 16, 'Pcs'),
(1466, 17, 'Giordano F GD GA02404 52 51', 21, '500000.00', '846000.00', '                                frame kacamata', '4348593175', 1, 0, 0, '2', '749193929', 'rak 01', '0.00', '62e27aa85032743849805aebc3d41daa.PNG', 48, 10, 'Pcs'),
(1467, 17, 'Cardinal CA5026', 18, '100000.00', '240000.00', 'Size : 55\r\nBridge : 18\r\nVerical : 35\r\nColor : Glossy\r\nMaterial : Plastik\r\nGender : Unisex', '1077666113', 1, 0, 0, '3', '81727272892', 'rak 06', '0.00', 'e73593ff841ccb0a49f7fa5fff965b2a.PNG', 35, 17, 'Pcs'),
(1468, 17, 'Converse F CO A524 BLK 51', 5, '1000000.00', '1641000.00', '                                frame kacamata', '5511133707', 1, 0, 0, '1', '12728288811', 'rak 02', '0.00', '8641c830b28c76722e9594574ecc72e9.PNG', 36, 16, 'Pcs'),
(1469, 17, 'WICO 9124', 37, '50000.00', '100000.00', '                                Frame kacamata', '1388470487', 1, 0, 10, '4', '5282736272', 'rak 03', '0.00', 'b8fbef8008b1b8c6c792461a7949295a.PNG', 22, 8, 'Pcs'),
(1470, 17, 'Ducati SB 178889', 23, '125000.00', '243000.00', 'bahan frame full titanium\r\nwarna tersedia hitam\r\nbisa dipakai pria dan wanita\r\nLebar hidung 17\r\nPD 5', '5533156276', 1, 0, 0, '6', '181992202002', 'rak 03', '0.00', '34236d10093b531591deb67cf759994a.PNG', 39, 16, 'Pcs'),
(1471, 17, 'Fervox original 18094 Bulat Stainlees', 20, '75000.00', '198000.00', 'Model kacamata bulat yang sedang hits dengan bahan yg berkualitas dari merek Fervox\r\nDesign Yang Tre', '3096542150', 1, 0, 0, '2', '82938938918392', 'rak 03', '0.00', '27b0a9e0311fa34abacf905f9ddb4025.PNG', 44, 16, 'Pcs'),
(1472, 17, 'Langford Alloy TR 91', 14, '140000.00', '280000.00', 'Langford merek optik frame kacamata resep bingkai pria besar full-frame alloy tr90 tinggi 36mm2214 P', '4263368587', 1, 0, 0, '2', '0183929203929', 'rak 04', '0.00', '345c16ba4a4dcca8189afe4e541ef7a2.PNG', 54, 10, 'Pcs'),
(1473, 17, 'Elizabeth Arden C8 Soft Pink', 3, '750000.00', '1250000.00', ' Brand    : Elizabeth Arden Eyewear\r\nTipe       : H00066-C8\r\nModel   : Stylish Elegan\r\nLensa   : Dem', '5649492883', 1, 0, 0, '2', '52952374892945', 'rak 04', '0.00', 'dc3d9a86a21fe14a413b25efdec34bac.PNG', 41, 20, 'Pcs'),
(1474, 17, 'Etcetera S22632 Series', 18, '50000.00', '100000.00', 'Frame kacamata Etcetera S22632 terbuat dari metal super ringan dan dipadukan dengan plastik super ri', '4399329822', 1, 0, 0, '2', '816429374292', 'rak 01', '0.00', '49f64adb39d50f77a572409dcd9c20ee.PNG', 42, 16, 'Pcs'),
(1475, 17, 'Disney F DY DS8273 C1 52', 15, '171500.00', '357000.00', 'CATEGORY	:	Frame\r\nCOLOR	:	C1\r\nFRAME COLOR	:	PINK\r\nLENS COLOR	:	-\r\nGENDER	:	FEMALE\r\n', '6704289578', 1, 0, 0, '3', '3232312213123', 'rak 04', '0.00', '6cd90544388d1b6372688b92001f2579.PNG', 38, 20, 'Pcs'),
(1476, 17, 'Mickey Mouse F M- 6503 GREEN 46', 10, '210000.00', '557000.00', '                                ', '1384115500', 1, 0, 0, '2', '2947284829472', 'rak 02', '0.00', '32b2978ade8b8ccd7bb559abeb42ee16.PNG', 19, 21, 'Pcs'),
(1477, 17, 'Paolo Gucci P7492 A89', 16, '125000.00', '350000.00', 'Frame paolo gucci bisa langsung pakai lensa blurai/photocromic pluss,minus,cillinder dengan harga be', '0342612555', 1, 0, 0, '2', '9182819102919', 'rak 08', '0.00', '760e2e5c292ef47939143097a002ffa1.PNG', 59, 8, 'Pcs'),
(1478, 17, 'Alan Garaud 8422', 8, '65000.00', '120000.00', 'FREE LAP &amp; CASE\r\nBARANG ORIGINAL KUALITAS BAGUS', '8620881391', 1, 0, 0, '2', '27362837878', 'rak 04', '0.00', 'bf29d7cbeef2101d8412e667ea307cb1.PNG', 74, 16, 'Pcs'),
(1479, 17, 'jeanwesp J7 1866 JP12', 13, '147000.00', '450000.00', '                                ', '6422369584', 1, 0, 0, '2', '342221313213', 'rak 05', '0.00', 'd6387ed0793e216d2c5ab49d2b67c81d.PNG', 14, 8, 'Pcs'),
(1480, 17, 'Jeep JP12 4534 Series Black', 5, '500000.00', '1000000.00', '', '3688572437', 1, 0, 0, '1', '2737282939', 'rak 03', '0.00', '46cce39afbd5f0e7f39132329dc38aec.PNG', 15, 16, 'Pcs'),
(1481, 17, 'Vandenberg V3144 Black Original', 10, '125000.00', '250000.00', 'Brand/Merk : Vandenberg\r\nSize : 56\r\nTipe : v3144\r\nWarna : Black - Grey\r\nJenis Lensa : Demo Lens\r\nKel', '2467687220', 1, 0, 0, '1', '3423423424', 'rak 01', '0.00', 'c3a402cfff227868b1dd8e75196450d3.PNG', 63, 16, 'Pcs'),
(1482, 17, 'Times F31015 C1 Original', 16, '125000.00', '250000.00', 'Brand/Merk : Times\r\nSize lens Width : 51\r\nBridge : 21\r\nTemple : 148\r\nTipe : F31015\r\nGender : Unisex\r', '1992929907', 1, 0, 0, '2', '323434342342', 'rak 02', '0.00', 'd303d622917e793e0006f134d77c975b.PNG', 23, 16, 'Pcs'),
(1483, 17, 'GNA Eyewear W-1347 Brown', 10, '150000.00', '300000.00', 'FRAME KACAMATA GNA Eyewear W-1347\r\nUkuran : 50 - 18', '2455227813', 1, 0, 0, '2', '125243424242', 'rak 03', '0.00', '512e70e0cb3e122d1fd21e900d92f635.PNG', 49, 8, 'Pcs'),
(1484, 17, 'Rodenstock F RS R7050 A 54', 3, '1400000.00', '2300000.00', '', '1387625057', 1, 0, 0, '1', '84546456456', 'rak 04', '0.00', '93f3075b802aee6924a48178a1342d09.PNG', 6, 24, 'Pcs'),
(1485, 17, 'IDECO IC 34 1033', 6, '235000.00', '420000.00', 'Size Frame : 52-19-140mm dan tinggi lensa : 34mm\r\nPanjang gagang / kaki : 140mm', '3079700689', 1, 0, 0, '2', '723434242323', 'rak 02', '0.00', '1a9c382a8c942f6ff4e7bb0b3db04bd4.PNG', 13, 16, 'Pcs'),
(1486, 17, 'Horien HR 1773 Spesial Edition', 15, '145000.00', '285000.00', 'tempat kacamata\r\n-lap microfiber 1518 warna putih awet tebal,sangat halus dan melindungi lensa\r\nada ', '7702764289', 1, 0, 0, '3', '49230934939', 'rak 04', '0.00', 'db555bac904bfcb84fa8e7a3c1bdd63b.PNG', 12, 23, 'Pcs'),
(1487, 17, 'Nomad 2862N', 12, '412000.00', '825000.00', 'Brand : Nomad\r\nTipe : 2862N GG 033\r\nModel : Stylis\r\nLensa : Demo Lensa Normal Nomad\r\nFrame : stainle', '8510473076', 1, 0, 0, '3', '183829283829', 'rak 01', '0.00', 'b4b2639690471b4220a7e751ecab096f.PNG', 57, 16, 'Pcs'),
(1488, 17, 'Saint Lux SL G 3355 C1', 18, '123000.00', '245000.00', '   ', '2341530687', 1, 0, 0, '3', '427283828292', 'rak 03', '0.00', 'ad3b56e10f009ecf2a6139fce2813ce4.PNG', 61, 16, 'Pcs'),
(1489, 17, 'Giacoma Puccini Gpf 6327 Col 2 Original', 16, '175000.00', '350000.00', 'Brand/Merk : Giacoma Puccini\r\nSize lens Width : 50\r\nBridge : 14\r\nTemple : 138\r\nTipe : 6327 Col 2\r\nGe', '7973130899', 1, 0, 0, '2', '32923892839', 'rak 04', '0.00', '2cb69ddadf348f22db12936f2ac8d4d8.PNG', 47, 16, 'Pcs'),
(1490, 17, 'Filano F313 C40 Original', 20, '99000.00', '199000.00', 'Brand/Merk : Filano\r\nSize lens Width : 50\r\nBridge : 16\r\nTemple : 135\r\nTipe : F313\r\nGender : Unisex\r\n', '2193298726', 1, 0, 0, '5', '34532234234', 'rak 03', '0.00', '872381cf62ea6b6ba685c97d009d8b49.PNG', 45, 19, 'Pcs'),
(1491, 17, 'Nike 7091', 16, '65000.00', '125000.00', '', '5621948212', 1, 0, 0, '2', '868263647274', 'rak 02', '0.00', '1935ac45428b494c37582b5aa74a8463.PNG', 77, 16, 'Pcs'),
(1492, 17, 'H&amp;M BD 6267', 12, '100000.00', '200000.00', '                                ', '8220296562', 1, 0, 0, '3', '4526262277', 'rak 02', '0.00', '07220021caa9471f4183cb894a705e64.PNG', 16, 8, 'Pcs'),
(1493, 17, 'Monalisa Serie TR90 8055 5118-138', 30, '42000.00', '98000.00', 'Warna : Abu Abu\r\nMerk : MONALISA\r\nUntuk : Pria/Wanita\r\nSerie : TR90 8055 5118-138 SILVER\r\nBahan : Pl', '6956581265', 1, 0, 0, '3', '27828292939', 'rak 03', '0.00', '510ae78fdcdef16829675e57024b1ef4.PNG', 20, 25, 'Pcs'),
(1494, 17, 'Braun Buffel BB 15310 109', 20, '200000.00', '400000.00', 'Fitur Produk\r\nKacamata\r\nBerbahan berkualitas tinggi\r\nDidesain trendy dalam bentuk square shaped deng', '3004313645', 1, 0, 0, '2', '73848374837', 'rak 04', '0.00', '6c660d1874f2a7d872b0aacbbe456bd3.PNG', 34, 16, 'Pcs'),
(1495, 16, 'Oriental Single vision 1,67 Ultra Clean', 7, '130000.00', '320000.00', 'Sph maks : -3.00 s/d -10,00\r\ncyl maks   : -2,00\r\nSph + cyl maks : -12,00', '3066458606', 1, 0, 0, '2', '163723828', 'rak 02', '0.00', '0fb96351a0a3b6645c76a1c3c0c421fa.PNG', 75, 26, 'Pcs'),
(1496, 16, 'Oriental Single vision 1,61 Ultra Clean', 16, '100000.00', '200000.00', 'Sph Maks : -2,00 s/d -8,00\r\nCyl Maks : -2,00\r\nSph + Cyl Maks : -10,00', '3232532106', 1, 0, 0, '4', '772883883', 'rak 04', '0.00', '2971d13aa979088f0fecd3cce6565c7c.PNG', 75, 26, 'Pcs'),
(1497, 16, 'Oriental Bifocal kryptok T-28 1,5 Ultraclean', 14, '150000.00', '300000.00', 'Sph Maks : +2,00 s/d -2,00\r\nAddition : +1,00 s/d  +3,00', '7984126155', 1, 0, 0, '3', '7373828283', 'rak 03', '0.00', '18eed40bae1f21eb54077b0b4d0e7f97.PNG', 75, 26, 'Pcs'),
(1503, 16, 'jojon', 20, '100.00', '200.00', '                                ', '12121', 1, 0, 10, '2', '221212', 'rak 01', '0.00', 'default.jpg', 6, 7, 'Pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_purchase`
--

CREATE TABLE `mp_purchase` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `payment_type_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` date NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cus_picture` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_return`
--

CREATE TABLE `mp_return` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `agent` varchar(255) CHARACTER SET latin1 NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `return_amount` decimal(11,2) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `discount_given` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_return_list`
--

CREATE TABLE `mp_return_list` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_sales`
--

CREATE TABLE `mp_sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mg` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_sales`
--

INSERT INTO `mp_sales` (`id`, `product_id`, `product_no`, `order_id`, `product_name`, `mg`, `price`, `purchase`, `qty`, `tax`) VALUES
(1, 1456, '21204815871', 69, 'Koko Black by exoticon', 0, '50000.00', '20000.00', 1, '0.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_sessions`
--

CREATE TABLE `mp_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mp_sessions`
--

INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0136ugr361jag0v5cs884f2i7cqmilol', '::1', 1609206518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230363531383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2043726561746564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('0601r78jqcaibrb6eo9fgvc5bclne85n', '::1', 1611890927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839303932373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('082bleb7ckgrl0e524h47jvoksj1mo4l', '::1', 1611549516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313534393531363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0bm0v3j337od8ufjnkodqvtdet1apa1k', '::1', 1611805729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830353732393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0eq0m0ovne89n4j5r0t5b33omqrf3ovu', '::1', 1612685522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638353532323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0kg3p2are2rr833dek6crdk9jsf2c9o1', '::1', 1611031253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033313235333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0lnkcoavrumup6vup0pd4bnar04mmot8', '::1', 1612336533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333363533333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('0m936f8e99afq03tgn8ki7ibjopnjf7a', '::1', 1612338720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333383732303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0mm61sc3pdtq0r1jdoloomtmln02v193', '::1', 1611983091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938333039313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0nt4d8e533qvrdispf4q2j39391m1hmt', '::1', 1610945029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934353032393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0pl6nh9f03cv1otupoh0v0h18060ime6', '::1', 1611721623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732313632333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('0qlgduokk1sdb7e1tcd1btdl7e2n34sl', '::1', 1610946250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934363235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0rj2sir9mh5ju0rgkdldd8u1b1atd087', '::1', 1611719812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731393831323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0rse2c7l42fmtamcquos5r05fu3bl7qv', '::1', 1611978294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937383239343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('0tjksv3g4tkv3e9hln2rsalob84u59v9', '::1', 1612151980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135313938303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('134q514c94393p0vk0lru3pemmobf87i', '::1', 1611801511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830313531313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('13b84bas4te8176u6lhvtbkp4251dgsj', '::1', 1612248651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234383635313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('147acp9uaoarhtf1lhijtrfbian62nug', '::1', 1612236519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233363531393b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('1jqklpj3ishlg634tm1remnococbi4bt', '::1', 1610515493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303531353439333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1oe8mttmokj7r1e17q5g6cnlab1oskg9', '::1', 1612247791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234373739313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1qcdt7ohn3avg1use2jo8jhll9d86glo', '::1', 1612410561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431303536313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1ra3mlenoobsjp26m1ntsvl7rln7600k', '::1', 1611639719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633393731393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1srrvb51vd846qi6tp66f3q0mdgnl75h', '::1', 1612246791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234363739313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1t3rkcr0mm4l4ca5p1r5cmvrq0gbknud', '::1', 1612415650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431353635303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('1tio2j1bkt566bh1js8jcjaq5q1ijb95', '::1', 1612080395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323038303339353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('22dtb2n763389674mcca7r6i3dg9lcm7', '::1', 1611811160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831313136303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('23jdmnoaapm2ns1codabptpffe9abf3t', '::1', 1612416272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431363237323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('23o853hbdhkcoplfbe8ikvln8jf8gtga', '::1', 1612415148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431353134383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2bedf1mr09nubbmlnh2u1t5dh4s86dd7', '::1', 1612675635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637353633353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2fdpip792kp7rmq0bl7u6mn2rc3hhe2g', '::1', 1611715465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731353436353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2g7146lovsj27oqmjs3rki8a98pnvblu', '::1', 1612408593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430383539333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2i3f366ua6qg1qln9aa7ssdne4mtj5el', '::1', 1612585951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538353935313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2iajgldiekl191jv4tiupotnn5a2cl0k', '::1', 1611849582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313834393332353b),
('2k1m08qu13kuk4dblfkaq8nenagd8erj', '::1', 1612414796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431343739363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2lknffn7m9ad2uqab05dar413vlispu5', '::1', 1611036830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033363636333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2mmr7l3kts25n067vol6370do3qp9mp3', '::1', 1611909994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930393939343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('2sueeop8e4t2p7keff895f6rk509168a', '::1', 1612237364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233373336343b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('30jna8e10sjsebl1a92fp7m7m4v6r3ta', '::1', 1611028505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032383530353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('31k9bqfl4v2mcua5rne0vcgeo4mic3fa', '::1', 1611029825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032393832353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('31ohbnvdf5konmou1vlr53f7hnhb6ffm', '::1', 1612246430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234363433303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('32fe0nhvvj9e3afq8au55nooi32hscst', '::1', 1611717192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731373139323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('34hqjk8o27esrf9g0n00n0cuoj1fli41', '::1', 1612416573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431363537333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('36i9a2ve6culsdukl40n0s6eh2qviudt', '::1', 1612234656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233343635363b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('36k0nae6ooj7qrj2j8ovmd0ofutngr9r', '::1', 1612585627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538353632373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3c4khfsc6i2cj953h36abmr7aajc0o2i', '::1', 1611889017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313838393031373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3dp3b7k46fhdcm9ii1a2r3e5sjfajvnn', '::1', 1611030499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033303439393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3ea0qdsd2s3i35410sjsr8alg86pindo', '::1', 1612843666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834333636363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3f8e3sk26e0alngongnm7s8q2in8q7oq', '::1', 1611714165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731343136353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3g3n388legj4skdlkcgkc9oukqkuqkl7', '::1', 1612923461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323932333436313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3gng883nhmc0st5lo8qip7mmkgmv1mkk', '::1', 1612072695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037323639353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3m1bniinofll07k36pvg0tmrvehn4gcp', '::1', 1612496533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439363533333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3mv6a7v9e8hol0vdrc7cv1qmt2f6i6pr', '::1', 1612413970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431333937303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('3pd4bdbi1qbfovr76vmaljoj5mtuljrj', '::1', 1611981910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938313931303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('40a8mur3mmvnob4au5c8ci48t1po71t8', '::1', 1612417148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431373134383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('46hgbohvghte5g8qgc1v54s45h0fm4of', '::1', 1611813312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831333331323b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('486fn747hpq1l967uei6fj26rjl920u9', '::1', 1611029229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032393232393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4fv1annalb7l5ngc9m7g06ja4grk4qa2', '::1', 1612844235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834343233353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4gpbqa5sf0okau9t8qf5nqvehi8346fd', '::1', 1612498203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439383230333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4h3lctl3idas47h912pueklq6kh8i94k', '::1', 1612237693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233373639333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4islk8o6vfs1qlr7jjuro8ag8pvk8d0s', '::1', 1612413646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431333634363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4lbfs6rqb25vsed0kbek92j0d1j9lgfk', '::1', 1611801879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830313837393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4mbp1kupl9eh2icl7o3dm01np5rsv2c6', '::1', 1610944394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934343339343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4q0hes04todm0fr1ptdir91vcpkusq0k', '::1', 1612340332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323334303333323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4qnrnh6k5q16n0et7cqhlp8ioeanfv93', '::1', 1611027874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032373837343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4r398o2n6kmcnbrf8e0ofs8uj8pokaoa', '::1', 1612754207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323735343230373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4runs28rf659i2geq7t0mi529q8ii59r', '::1', 1612250574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323235303537343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('4vqn17p7qg3h8a845c6odgi793nkn67f', '::1', 1611981278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938313237383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('55e2d4o2m9kpbnng5itr2thns10eupdp', '::1', 1612683616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638333631363b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('5bchedblpl6oega37tia1hijof7p8ioq', '::1', 1612152331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135323333313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5hlbmhssrlm61gs3t0curs4mnu4vaqv8', '::1', 1612498995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439383939353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5hrstfsoa0b26u5dg55niq5bn58f5jro', '::1', 1612155185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135353138353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5jbeupeht0p4kpla7f3ufk0vgobuh171', '::1', 1612337712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333373731323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5jfh74j5623vppna70d8722e8pqqdq7l', '::1', 1612753522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323735333532323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5kgkig5jqbo67s1chv6dbgm96trevt48', '::1', 1611034366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033343336363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5kum421pd9o59ldshstdhfjo4ir07j54', '::1', 1611804729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830343732393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5l3qccvk744t8v8522bhhriv16fvtt3v', '::1', 1612248202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234383230323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5lcn2r80uid14fasu7nghq8e830aphr7', '::1', 1611547696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313534373639363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5mk1dni2r1e9sfh5k4k76phioac92lfc', '::1', 1612850437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323835303433373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5nohccqkeq43gjojqrn71teb35eb74d9', '::1', 1610522609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303532323630353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5pcfbpk27cs2kp7pfk1ujk5igl1leqfn', '::1', 1612422668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432323636383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5q58cgjic6t068sb13vr4lp854sspiqr', '::1', 1612851715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323835313731353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5s4ivf8js74oedpurspltmf46k7p8euu', '::1', 1611811796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831313739363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('5tm3l7a8m7kvc6k696mkphmrvoa5gmg5', '::1', 1612496834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439363833343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('613kvd794r6sof2qp72fmkgupms1fble', '::1', 1609206123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230363132333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('65osbrtmuatocfm6cqbcnuc8r10glpbc', '::1', 1611903705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930333730353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('67mnc5eoengjts6ffeqqcd19e51oa3e6', '::1', 1612757551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323735373535313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a38313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d74726173682d6f2220617269612d68696464656e3d2274727565223e3c2f693e204272616e642072656d6f766564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('693bogn9r3mjhs9qppll87kh0vpc6dbs', '::1', 1611901808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930313830383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('69f78un11m2t4gqr5gfam1q75gm8t90h', '::1', 1611979289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937393238393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6e9qnr0fg1q6573gve7gvu70adu82m4l', '::1', 1611552745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535323734353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6o7d1oeqldpfd5r2ec8dnblioff5c2d5', '::1', 1612233177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233333137373b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('6of4r85upuhrdkcnhareisqan9etk8p8', '::1', 1612422981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432323938313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6pdhel9l5ac1gh8htjn5oojec6s16dbm', '::1', 1611982572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938323537323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('6sjekaguhieuvk2s1g1k03jo7jhrqjaa', '::1', 1612412615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431323631353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6sq42qfdjf7q5r4ootrcr514r5l92srh', '::1', 1610947833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934373833333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6ti1mn65s8t9i4fo0gpujsmuedq65djo', '::1', 1611977335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937373333353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('6v1p2icttlphogco2v4ksqiaa3a8des2', '::1', 1612683952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638333935323b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('71tl7alabvh8g24ds61blof0ubcmhjbm', '::1', 1609206827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230363832373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('741asmm9doj2ahjlscqpck049e4r6me7', '::1', 1612592157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539323135373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('77osfk5se5rablnnbvaj5dvg3ivbr8vn', '::1', 1609150483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393135303438333b757365725f69647c613a323a7b733a323a226964223b733a313a2232223b733a343a226e616d65223b733a31343a22436861657220696d616e7564696e223b7d),
('789lnpf0psnltdoskgot7laob1ko6npu', '::1', 1610944059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934343035393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('7berlio27rukk7huphqr4bti0h1ge5fc', '::1', 1612421826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432313832363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a3131353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2044617461205472616e73616b73692050656e6a75616c616e20426572686173696c20446975626168223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('7flctjnhmju5ejv70cahtfj1k5jmbc7c', '::1', 1612422321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432323332313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('7gmuhkn6ndrpkee76ju8sjje558vu68b', '::1', 1611981599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938313539393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('7mjt45mtjenvp0hr0qgldisal5hopnga', '::1', 1611553707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535333730373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('7mts6ara5r9p8cj3ou3s4g99du32vu1j', '::1', 1611633002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633333030323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('7t00ql4eogpsgisi0ej00sonck0p27d6', '::1', 1611725834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732353833343b),
('7urdjusbrnlpeaf2c9va7ovcbpvua4n8', '::1', 1612157250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135373235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('87l310b76dr5darhk7qbj9jf4or7bi78', '::1', 1611717988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731373938383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('8b27rqdag3an831ub6asnaail54or9ql', '::1', 1612845197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834353139373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2043726561746564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('8d7fuguo00qofqbeg6tb4hr6fn8lg91g', '::1', 1609207222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230373232323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('8h0tmtnmhvg98i2evcjd37dlgkv12pnu', '::1', 1611631612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633313631323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('8hmqo1jh5g4086eqq3v0lsqsb9i6b2au', '::1', 1611721278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732313237383b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('8qj3ssn52jcv4u4qsbqktsbufgrbkkum', '::1', 1611718688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731383638383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('8t69sl1kjbnlsn3ofets82m95n4u49qr', '::1', 1612497514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439373531343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('90jk0crtgf9piltg08t352e56lkrqso3', '::1', 1612409272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430393237323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('94pt3sg7rqr126tsv6fg1a3gamgf8rmv', '::1', 1611715086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731353038363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('9bm93glab0tuv22s3hds0a7te4adm43b', '::1', 1611811468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831313436383b),
('9d204mgc9bg97kvo1meatjtpgfqvq9tt', '::1', 1611809782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830393738323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('9gk5e28nr3tjcbfk80b7g8muacbbld6p', '::1', 1612684380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638343338303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('9ntf9vcuj2pmnr91rvqfu8se6nvclgni', '::1', 1612337411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333373431313b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d7374617475737c613a323a7b733a333a226d7367223b733a3130383a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204461746120426172636f646520426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('9obo1mdngrv9o48qiidape0oi81uth5d', '::1', 1612684683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638343638333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('9rknpah5i0nmgb973j9tvn5udmkp9trb', '::1', 1612151304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135313330343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('a14b3qfru2bj6153i48rle22jgr9f3sj', '::1', 1612761654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736313635343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39333a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204164646564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('a9oume9e8ecvpnnejpegfig9997bvg5a', '::1', 1612072394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037323339343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('aacldsm7g1cnhtnvmimpthus7cpltg1e', '::1', 1611810529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831303532393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('aaem4vnrubpg0t0ii45vrgb2op9j4gqh', '::1', 1612762105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736323130353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('ad534kl9eqm8qekrge1sfibam09gphbt', '::1', 1612844888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834343838383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('aetqjhvd4shuqti7eo6uuon3b85qvl1k', '::1', 1612419871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431393837313b),
('ahldru28rm5o31tcfveeu9hj5pvkb6rp', '::1', 1611640436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313634303433363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ao06ms6suh2jc0gl2di8kg5281u33gjf', '::1', 1612763623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736333632333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('asu4bs04q5cmomkkeo0n6b7hcgfb1uov', '::1', 1612071152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037313135323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('at6bvj7fe6b6j9p74k2aemfg2o2uo2ta', '::1', 1612850797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323835303739373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('avg87gmluvuqrskp6mn4po2as019fsgo', '::1', 1612336994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333363939343b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('b1919s2nck5j1hpp056holn6gf2vl8bb', '::1', 1612236171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233363137313b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('b4irolca2hg4vqcqjbi4htg2rq4b9aen', '::1', 1611803017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830333031373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ba1n4j3e3t6iu28mthvsu6rv9uv741nc', '::1', 1612153802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135333830323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('be2ee6p9vfv08uula4bu4h7narucf75o', '::1', 1611031563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033313536333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39303a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20496e766f6963652065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('be7noqu5nn4401uq2m9l9th9nfdnbpf6', '::1', 1612148899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323134383839393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('bmbmtn2r9rm6kt71a0nl9ua84qpogl9e', '::1', 1612233491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233333439313b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('c32gvpk63ev5k4e2hmacc1si1lon4cgj', '::1', 1612584135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538343133353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('c54viqhl3o34mpudupdl26akbgek7vf3', '::1', 1612764537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736343533373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('c56k7uqg9naj4vv1rtj92p1kfth553d9', '::1', 1612843169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834333136393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('c7j5m01ceh91kc5tr9ircnhemn5s2hfk', '::1', 1611550855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535303835353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ca7lmkanghhpfgqp4ika2cngf2qn5qo6', '::1', 1612923801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323932333830313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('cd6n6o51g8qr31jig93go389sopq82b1', '::1', 1610522605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303532323630353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('clihmieptmdfe8e6f8lntfhpsrftbiot', '::1', 1612335643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333353634333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('d36155anr6tchr70o81ai9b6n49vq2k7', '::1', 1611721985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732313938353b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('d6orhh8phq59amtejteejubhjeqo6k9o', '::1', 1612238361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233383336313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('d72epkqo1u1ri3e5hffok2019mab9qdv', '::1', 1610944726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934343732363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('d7anckl8c50utscc3t8ub5cjbttjfiiq', '::1', 1611549047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313534393034373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('d8jbvp51k77qsf2su4853emjnsf5hs75', '::1', 1612151660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135313636303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('derq2kpoi0tu9cda7se4lnch6672bvft', '::1', 1611892019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839323031393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dfhn7rp8dvb5cgjcdjt5l03ochb4db23', '::1', 1611719485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731393438353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dh6l0ii4mdunk0cr3j35ck5vo9cd5gv4', '::1', 1611901499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930313439393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dke7qnk1bceqjtfoljk3r3gecujfb3bm', '::1', 1611631969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633313936393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dkl6j1kfqcg8ad2arij19b4lgh9p0c32', '::1', 1611548715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313534383731353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dlpldddpu8mj6e20q7al99omg6mrkh33', '::1', 1612423603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432333630333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dqmahfk6ib938db9nob3cls83q5977f5', '::1', 1610264302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303236343330323b),
('dsg5efdbeqqi1h7iq2pg8e2pbf35k9ah', '::1', 1609205748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230353734383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dt0heo3hhqti04t56fk37mjikn4gbat9', '::1', 1612762421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736323432313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('dvblj6m93cl03gq7faq2pqmkdv197ke7', '::1', 1611986947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938363934373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('e0ssh5h8g0pq41qf10l78j0qghp5jte4', '::1', 1611984307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938343330373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ebnp7377rb3val69fc52eppebv3m0ui3', '::1', 1612413324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431333332343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ee4qsnc0ub12u06urv8kg6obn6mscot2', '::1', 1611719005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731393030353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a38323a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d74726173682d6f2220617269612d68696464656e3d2274727565223e3c2f693e205265636f72642072656d6f766564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('eej2lg2mflaufm7bt7e9cfi0khtf8jo3', '::1', 1611720501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732303530313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('efcnqijvh8r0ticmm0bv4j5s9vdf12c3', '::1', 1611890626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839303632363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('egcolrs64sm0vn3b8cfjcltbeftfiq6l', '127.0.0.1', 1611903265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930333232323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('egdbljqh5d6v8brj7esin4p86mu3pipj', '::1', 1612071786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037313738363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ejigrjnfokirjj54d2oan36qp09h8io1', '::1', 1612585310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538353331303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ekpeqi5r5o374rhbg2rngle1ebb2bb4a', '::1', 1611895245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839353234353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('eqpelepha506lmodc9cipf8getebotlh', '::1', 1611891250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839313235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('erj1oaj9ui8sgfoh3lm1fdrh6os7gr4p', '::1', 1612419262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431393236323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('fbjgee74l4lu5o8t8gr73fvmmu7st596', '::1', 1612239948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233393934383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ffobhud8qo7j7jres9f00hrfehgnsqaj', '::1', 1611892360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839323336303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('fnuu24et8ff07elchuov8s1ulkmmt3gi', '::1', 1611902246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930323234363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('fofjh64h9bcvpg3310eulmv77378hoe5', '::1', 1612685011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638353031313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('fpgtfp9954mbu3b39hf0kc40emfm0doe', '::1', 1611893516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839333531363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('fqho3l1o2h481mbcvorse740j6hvfq34', '::1', 1611810225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831303232353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d);
INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('frh26taeoos32biqbbahbfl09ve9eabk', '::1', 1612070775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037303737353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('g0dmhf12tnds4ifo9bjb14m1jf6n9bt6', '::1', 1612584905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538343930353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('g0u56arskivg9velrhlfnlcshsi7db11', '::1', 1612157464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135373235303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('g21u879e271v0f35n0ds98eprokn0ljg', '::1', 1611818522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831383532323b7374617475737c613a323a7b733a333a226d7367223b733a3133303a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d6578636c616d6174696f6e2d747269616e676c652220617269612d68696464656e3d2274727565223e3c2f693e20557365726e616d652061746175204b6174612053616e64692079616e6720616e6461206d6173756b6b616e2073616c6168223b733a353a22616c657274223b733a363a2264616e676572223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('g7lvbldo111gq1d8c5u9sli6t7v69tuk', '::1', 1612238005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233383030353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gelufbsdud37i9b6pnj0fjnp54jv2803', '::1', 1611896134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839363133343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gg6ke93pj6f99k0eq94vulhm4tqko70e', '::1', 1611638863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633383836333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gh8sqaun2rpetnggqugijnq3q5hbscas', '::1', 1612150985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135303938353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ghe08nbqqct9nq6n2cvfeehp18hmrlvq', '::1', 1612675326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637353332363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('givpcr9lnmhik4qmchtemt379kq6r1ns', '::1', 1612072088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037323038383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gme8hbg3lur37psjb2uqn6aq3hgulj2a', '::1', 1611893205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839333230353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gqq7lnnb9tb60202rfv4djqjmkltjcdf', '::1', 1612420182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432303138323b757365725f69647c613a323a7b733a323a226964223b733a313a2237223b733a343a226e616d65223b733a31393a224172696620536574796177616e205975737566223b7d),
('gtdmhrkj49qmte2fq8l1ilv140gf1d1s', '::1', 1612674181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637343138313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gudni8i1j53o9cnk2o3et90dbpj6jopm', '::1', 1612582358, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538323335383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('gufr21g26fhn8rjireta0ambc4jin1g2', '::1', 1611553895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535333730373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('h0fv13o3qs92as1shhhte8557hd6ijnt', '::1', 1612590558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539303535383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2043726561746564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('h16eqnqrqpad457a2d8af26klcbt4na6', '::1', 1611982253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938323235333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('h3h1hpfrmed94u4q41phkranpe28m6to', '::1', 1612761179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736313137393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('h4e75mm70vfp609j05ojmdr5d5prenqb', '::1', 1611805041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830353034313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('h8n30vugdddr9nakmupimq1kcm83b5d8', '::1', 1611806803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830363830333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hbd60lcfbidg8src824e9d0keas55la2', '::1', 1611810833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831303833333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hc6be4vtl7ee12100c75aambbf2bgh16', '::1', 1611802649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830323634393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hfo6dq63s3v1ag2l7n5mp72k5jr662vp', '::1', 1611978651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937383635313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hjflr87imn2ns3odf2vtspcfr08cnhfq', '::1', 1611379288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313337393238383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hlks10i6hid6phvmgsfdalm2uv1o5tqp', '::1', 1612583833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538333833333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hobaf0u7g1oj38praeahctf0ddcv4khb', '::1', 1611848928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313834383932383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('hrqmmhhipl0d4lfbr6iot27q95muq3n4', '::1', 1611720968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313732303936383b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('i1jgqpmv5r6bktaij8b3dgh4778df4ih', '::1', 1612591745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539313734353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('i22rkosne5s6oeu6h5r83ehf2ruvb88o', '::1', 1611027027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032373032373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('i4gdcbeaqg51b1i5f9sdnpqerbueofo4', '::1', 1612851229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323835313232393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('i58l2dr6cchc7fgc0mt4ro2m6hlllijv', '::1', 1611815926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831353932363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('i824j6p01pslhnmeltgeoi4mchtftdl2', '::1', 1611890007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839303030373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ib09ubkloics5rg23o0l1ekveerfes0t', '::1', 1612420484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432303438343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('iih26fptgp6dshi5qthmkhv4ernc9qpc', '::1', 1612336003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333363030333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d7374617475737c613a323a7b733a333a226d7367223b733a3130383a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204461746120426172636f646520426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('imu9k8bov72avgdcifaf29m167anhofa', '::1', 1612149848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323134393834383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ioe99mm7ipr68p63i8ch997ab4ted8fk', '::1', 1612246128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234363132383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a3130333a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20446174612050726f64756b20426572686173696c20446965646974223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('iohfg8bd5m0tfae8k78j3sq49267roj3', '::1', 1611901198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930313139383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('iq4qr860ibc24toq29aj9872icqsv8q0', '::1', 1612412072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431323037323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('isab1i7ik2cumdeec6fslbkp7gnv215a', '::1', 1611640069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313634303036393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('itdj9933hl851qr8nlekh1iksjno11g6', '::1', 1611806189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830363138393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('itsksr7q1itbe55489ebkl6oimj4tc0d', '::1', 1612409595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430393539353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('j423umousq0hf62kldtoquci7h9ishmu', '::1', 1612923801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323932333830313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('j7c7pqvoupuqm7ks6f1g3oep0lvuualq', '::1', 1611380428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313338303432383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('j9fkngsfubrfnghvf7kvk4oorl5mjh1e', '::1', 1612339699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333393639393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('jchdfg4b0m9qv7erbcnkjoj6qkdpl6fq', '::1', 1611803986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830333938363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('jdt6st9ho9e94ui46ppllm86s2aes4rr', '::1', 1611636754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633363735343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('jgl6hv15093j0373ea16esvd89q24ff4', '::1', 1612590254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539303235343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('jot85v4t2c4bu9ndc1skhfc86m8hit78', '::1', 1612338411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333383431313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('kfg8bevqi19f8c7ti44jr48gkam4smsl', '::1', 1611887755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313838373735353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('kkd9n042p842bvrtabq3dkl83ohr8r08', '::1', 1611900380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930303338303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('km7bpnpsn3agbrs7r27ot16oc7ngqokl', '::1', 1611983999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938333939393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('l0psao42khc45bncthomo352qtgbrd89', '::1', 1611805367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830353336373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('l0vtfphhnmrdjeust2lulbqnvdoos6a2', '::1', 1612408932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430383933323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('l8nc6n4l9tecgavsajf3il94i129mos4', '::1', 1611814199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831343139393b),
('lbuc5ut23678q6i5bntleanav1cq9g6u', '::1', 1612340019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323334303031393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('litu1oivn4hb7ebuktrakviu0087o3ru', '::1', 1611978966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937383936363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('lkan8e36h50njpkfuhlvbvhvq4h3effg', '::1', 1610514055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303531343035353b),
('lkefj2o5fl9qa7ca76r5vtpu4pktb36v', '::1', 1612852577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323835323537373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('lliub3dghgmqt4kfne6cpd9h0tkh83ll', '::1', 1611036663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033363636333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('lsqqj65jvkq8sl3d706k0gap7db074mg', '::1', 1609152126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393135323132363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('m32d3j8gbgfbn5dp9kgecutociatoe88', '::1', 1612674991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637343939313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('m3rnaclofvdagfad75arschouh4ef4ul', '::1', 1612146987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323134363938373b),
('m49iks78p4mf23d9stvark3hl0br4o9n', '::1', 1611894335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839343333353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('m4bgamsbe0v011seb1oc47nsus7j70s4', '::1', 1612156100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135363130303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('m5dnj6qmrd2g08dlm6t4dv2196fhgupo', '::1', 1611028199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032383139393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('m7qslphh0bcqjo4roptrsos52v3sf4k7', '::1', 1611890315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313839303331353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('mgm06esen2mi8iur1lidjt2lvcvbghvu', '::1', 1612339067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333393036373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('mko0kt0ofhjb5qdclc65co8kj71ti9st', '::1', 1612147371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323134373337313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('mn2t86kf4h9k2n052hh0m0e9dhtjg7ad', '::1', 1612150487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135303438373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('mor5i0dej7bdockb74kr5n1lb5126kfj', '::1', 1609207572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230373537323b),
('mpmt20kunb9t9r4ur5orvhbgupfbvn64', '::1', 1612845856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834353835363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('mq93omj8lfk79f6rbsf9p6vf31poj7hg', '::1', 1612415964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431353936343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39343a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d74726173682d6f2220617269612d68696464656e3d2274727565223e3c2f693e204461746120416b756e20426572686173696c2044696861707573223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('msc0m79427661mg96tv960vbo0raafo3', '::1', 1611034669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033343636393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('n0h4lfet0mna3lk6sig3ihc9g5mp7tpj', '::1', 1612592483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539323438333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('n0msqnv5mr3km5u7ue7t8hqaq0opja3i', '::1', 1609150150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393135303037373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('n6949gv8qk5aismrr5u3rq9bqq2bg9jt', '::1', 1611553058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535333035383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('n76hf8fiuqkd6qjavl1n0gcuiuq0s6k5', '::1', 1610947125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934373132353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ngfjdkoa3e59rqcil7kvhvmeept3a3qb', '::1', 1612418719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431383731393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nghmru6vn48m3dmtdakvfcejb10qq8ve', '::1', 1612071485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037313438353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ni0rjbk8cji5e48kbt14pp2rp84cop77', '::1', 1611980746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938303734363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nistj9ubhav9s4qv3og9g273kpctcoh7', '::1', 1610946810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934363831303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nkj28jemtd41ltfv9n71hpqtgsjcjm9e', '::1', 1609153583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393135333538333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nmdec4uh1icrbacnoj67kak620ne4l3o', '::1', 1612410230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431303233303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nnvpk79310192hu271v0vdmcmode1og7', '::1', 1612592785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539323738353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ntglfreecft5ueigfemdsoeh7nrvsq95', '::1', 1611815441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313831353434313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nub83uok8slrs9k2emnp7m6r3nc6n0at', '::1', 1611030912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033303931323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('nvj2iscqp4c42f5roodu8uf1aoq7uj5l', '::1', 1612423301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432333330313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('o1btojee1q5qd12c6acqglnnk771afhn', '::1', 1612419570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431393537303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('o68929hk64bb2e2bb78rkdl6ivfhmi0s', '::1', 1610945516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934353531363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('oepfjbt7pvafbve5tncuikqrhbop55th', '::1', 1612083760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323038333736303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('og7sh75q9qci0o4lbs8gc4tphunto6ip', '::1', 1611979941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937393934313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ojse1j04h2u9llsnn2mn1kfpuse4ji7p', '::1', 1612682242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638323234323b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('os0vopdk5dotf4vu5ss2ehbgofjkt8p6', '::1', 1611979594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937393539343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('otpbmkjugdt3t6iv36htnbtmae5jh8ip', '::1', 1612591119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539313131393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ou5isv0co21hilt2aqjhl79shcr9sj0o', '::1', 1612408281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430383238313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ov8hg391v7ne3ig5ee7btlh41ao42ee8', '::1', 1611803366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830333336363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('p0ns6521g19ej28uk4r5j04aglrkkj9n', '::1', 1612248952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234383935323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('p7ctr7511k60pjvpe315155hfr9uqc5i', '::1', 1611026546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313032363534363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('patmjin0edsk5nqrq9let8m8r5cvnlgc', '::1', 1611983507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938333530373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e20426572686173696c20446974616d6261686b616e223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('pbbc4n1kbo0eh6uuurbg9vom1tkso1d7', '::1', 1612236822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233363832323b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('pf61lnil85d6lkat5c4moi3grfba66b0', '::1', 1612235869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233353836393b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('pfckh8sjd69p94jskeie8ln7om1u6mgu', '::1', 1612682698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638323639383b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('pgcpjeuo4tmn3hflc2lvvipfdug453nu', '::1', 1612421010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432313031303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('phiheqqeqf5kp34jssje3kn3nvram4mv', '::1', 1611802272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830323237323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('pid4dvu6d1jip6kpq1ebcp075ul5t856', '::1', 1612338092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333383039323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('pinsgm98qb204ob6qvf4bortfceepptq', '::1', 1612591436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323539313433363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('pk0g7k5fhl001ugk2tvuk014a9stg345', '::1', 1611718381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731383338313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39313a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d70656e63696c2d7371756172652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2070726f647563742065646974746564223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('pp7otf56g9h8fac9prl1ut989dc0de0c', '::1', 1612495668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439353636383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('pqlnmd1r9bk4v9858up6bvhsqoqumr2e', '::1', 1611980259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313938303235393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('pr3rmk20t8l77si74rmsocojq30625ik', '::1', 1612582031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323538323033313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('q0g3bvqh0qffpd38cfttvti0hsrtdhdp', '::1', 1609207588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230373537323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('q8e6oceqckaa8mm6n4e0j20vijegmfis', '::1', 1612257609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736363430313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('qjvq9flu1pfo14b64bvc3qjsirkpld0o', '::1', 1609202120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230323132303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('qn3m3qsb4t35tfbgi0ilufnvq1daubpj', '::1', 1611902808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930323830383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('qo4sq1k9ra8d7hslk2jqnpga2j4tchje', '::1', 1612673874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637333837343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('qp1puosrccb9r8ivm7ufmo0o2g38ga0t', '::1', 1611804330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830343333303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('qtfj7j2uiolj6rllm2s9p7dtr4soni74', '::1', 1612765000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736353030303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('rauqbd6hab1e22sb0cs8mdnpniq55faq', '::1', 1612765308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736353330383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('rd82o4c6ks1eqlpha25j55d79shkiec8', '::1', 1611803671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830333637313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('rn897hvl1mghfo6fajdeqn7t61n7vd8o', '::1', 1611030126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313033303132363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('rrm9rlp6oijj5gf2ke08ske5ap7bfiqh', '::1', 1610943736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303934333733363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('rtiekiu8skjg18f0egg8ldiea024hlsi', '::1', 1612335336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333353333363b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('rvfh4qt1atklfg4of6on2g25mdvj7ave', '::1', 1612762802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736323830323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('s1ral7dsee8ut2e8ocj06s51c70h3vj0', '::1', 1611553397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313535333339373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('s337cohej5cfkbt7k8q9dce7ajlai949', '::1', 1612421494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323432313439343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('s8poep281sl7vt47q3q42gopoahl2ueq', '::1', 1612413013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431333031333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('s9ug8u2d4moubr0bdg5ihart3avm2u3t', '::1', 1611977648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937373634383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('saa92i8a4gd87dro871g2plg62vggr2i', '::1', 1612414288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431343238383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sar9pod6ptnphq27vhfifhi6helrd30k', '::1', 1610515057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303531353035373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sfemfgtgneadsumnp4blr8k35r4lkecn', '::1', 1611548399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313534383339393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('shu4isb3kfkc1vvu3vok841gc3q8npkf', '::1', 1612764236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736343233363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sldb10vvd3te609be3tfomrl3lik94ke', '::1', 1612766401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736363430313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('slslgkcr78ll6iadcch8kbu7eth68csq', '::1', 1611807112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830373131323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sn149tk6qnrbs94ekrlrtlhitqmpk697', '::1', 1612686214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323638363231343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sp039acdt4807p7d9vsuea3as9jbgbc3', '::1', 1612409920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323430393932303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('sqbqi7467q410jpdqekr5kno33lv1i1a', '::1', 1612233833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323233333833333b757365725f69647c613a323a7b733a323a226964223b733a313a2234223b733a343a226e616d65223b733a31333a224d7568616d6d6164204a616e75223b7d),
('sueg0aifot1fid12it1528889sfejda0', '::1', 1612846159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834363135393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('t73pbu17e8f4dnqie7avsmgenq55f8c1', '::1', 1612245822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234353832323b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('tbs7h1u7acmjqo3f2j75ql7c48me82tm', '::1', 1609204577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393230343537373b),
('te8l63mblkno0do6pvjvk3bae4e4fkoc', '::1', 1612339379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323333393337393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('tgp2p0o056naqvufodgddfa3moq1kuc4', '::1', 1612247460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323234373436303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39333a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e204164646564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('tjcsi8dcuqkl6i3u1quvkutr5h5sbkrq', '::1', 1611637434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633373433343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('tktog3c9kjuevk1hg8kjo68mv8kkgp8e', '::1', 1611800219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830303231393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('tofdpakv1dep6hj36k7o1636356g55kc', '::1', 1611717529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731373532393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('u25h76uad14uglc2hr19noja4tvn04sh', '::1', 1611632635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313633323633353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('u905ndk4bgu17dqpendet5k2kq0ije72', '::1', 1612498571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439383537313b),
('ubomgjg0s3bl6rrspu6m3aco2b8j1s34', '::1', 1611910347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313931303334373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('ue2a567d0fmk9llp8hr7213qs5iibmvf', '::1', 1612844558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834343535383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('uhis19vpl37sch55veudd3n9jjno4103', '::1', 1611907758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313930373735383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('um3mfda2hn5j3nq81df4q1ailr1umj41', '::1', 1612067194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323036373139343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('und95l1j2r49236mgv456jfb907c4b5v', '::1', 1612084330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323038343333303b),
('uudk1hhfuerirl0ubosgi8bgts3ftf4v', '::1', 1612674519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323637343531393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('v51suu4n160ncsibp2h2ofgplhfpr6iv', '::1', 1612153459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323135333435393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('v74a4ps9ib9nt4rvfg556rgqqpn1cqe8', '::1', 1612763929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323736333932393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d7374617475737c613a323a7b733a333a226d7367223b733a39353a223c69207374796c653d22636f6c6f723a236666662220636c6173733d2266612066612d636865636b2d636972636c652d6f2220617269612d68696464656e3d2274727565223e3c2f693e2043726561746564205375636365737366756c6c79223b733a353a22616c657274223b733a343a22696e666f223b7d5f5f63695f766172737c613a313a7b733a363a22737461747573223b733a333a226f6c64223b7d),
('v773gds2k26gvpk0upsgi9qq1j39h61h', '::1', 1611801073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313830313037333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vd46nlcs4dtnf6rua3ebg0aba2rvu2kt', '::1', 1612410898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431303839383b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('veclva8gl9o7tl0qqr3lq3dm7fv4uv7r', '::1', 1611977980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313937373938303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vhapvef0s9j9jrt8lgpi11k5aecd2dri', '::1', 1612074276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323037343237363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vi4k6mtcddi922egq33akvhirkit20kl', '::1', 1612845527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323834353532373b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('viioo3dcs6m6fb6tcmsdg901mhlqs6gj', '::1', 1612411275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431313237353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vsdr1n6hgn67mkrv03p1vsap3lmanb5c', '::1', 1612417451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323431373435313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vsk40ir4qu83t1mqgs64pcqfvag4b694', '::1', 1611849325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313834393332353b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d),
('vvp6bdk0n30hj63jhl5f9j86bmaf5npm', '::1', 1611714469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313731343436393b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31353a226d7568616d6d6164206661757a616e223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_sub_entry`
--

CREATE TABLE `mp_sub_entry` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `accounthead` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_sub_entry`
--

INSERT INTO `mp_sub_entry` (`id`, `parent_id`, `accounthead`, `amount`, `type`) VALUES
(1, 370, 2, '160000.00', 0),
(2, 370, 3, '160000.00', 1),
(3, 371, 2, '200000.00', 0),
(4, 371, 4, '200000.00', 1),
(5, 372, 2, '200000.00', 0),
(6, 372, 4, '200000.00', 0),
(7, 372, 3, '400000.00', 1),
(8, 373, 2, '100000.00', 0),
(9, 373, 3, '100000.00', 1),
(10, 374, 2, '620000.00', 0),
(11, 374, 3, '620000.00', 1),
(12, 375, 6, '25000.00', 0),
(13, 375, 2, '25000.00', 1),
(14, 376, 1, '200000.00', 0),
(15, 376, 2, '200000.00', 1),
(16, 377, 2, '300000.00', 0),
(17, 377, 3, '300000.00', 1),
(18, 378, 14, '75000.00', 0),
(19, 378, 2, '75000.00', 1),
(20, 379, 2, '80000.00', 0),
(21, 379, 3, '80000.00', 1),
(22, 380, 21, '160000.00', 0),
(23, 380, 2, '160000.00', 1),
(24, 381, 21, '200000.00', 0),
(25, 381, 2, '200000.00', 1),
(26, 382, 21, '200000.00', 0),
(27, 382, 2, '200000.00', 1),
(28, 383, 5, '250000.00', 0),
(29, 383, 2, '250000.00', 1),
(30, 384, 21, '450000.00', 0),
(31, 384, 2, '200000.00', 1),
(32, 384, 5, '250000.00', 1),
(33, 385, 21, '260000.00', 0),
(34, 385, 2, '260000.00', 1),
(35, 386, 2, '50000000.00', 0),
(36, 386, 7, '50000000.00', 1),
(37, 387, 2, '50000.00', 0),
(38, 387, 3, '50000.00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_supplier_payments`
--

CREATE TABLE `mp_supplier_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_temp_barcoder_invoice`
--

CREATE TABLE `mp_temp_barcoder_invoice` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `agentid` int(11) NOT NULL,
  `source` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_units`
--

CREATE TABLE `mp_units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `symbol` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_units`
--

INSERT INTO `mp_units` (`id`, `name`, `symbol`) VALUES
(1, 'Pieces', 'Pcs'),
(3, 'Paket', 'pkt'),
(5, 'Bungkus', 'bks'),
(6, 'Dus', 'Dus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mp_users`
--

CREATE TABLE `mp_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_contact_2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  `user_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_date` date NOT NULL,
  `agentname` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mp_users`
--

INSERT INTO `mp_users` (`id`, `user_name`, `user_email`, `user_address`, `user_contact_2`, `cus_picture`, `status`, `user_description`, `user_password`, `user_date`, `agentname`) VALUES
(1, 'muhammad fauzan', 'admin', 'perumahan grand wisata blok R4 no 1', '01715932630', 'bc5d0dd9c71559bde500de24b72093ed.png', 0, 'admin aplikasi', '8cb2237d0679ca88db6464eac60da96345513964', '2017-08-23', 'Chaer imanudin'),
(2, 'Chaer imanudin', 'chaer', 'perumahan house regency jalan cimanggis blok A no 4', '5686', '3b461cb13e4fb5733a07781e6adb6b68.png', 0, 'Pemilik Optik', '8cb2237d0679ca88db6464eac60da96345513964', '2018-06-01', 'Chaer imanudin'),
(4, 'Muhammad Janu', 'janu', 'perumahan taman kebayoran jalan prapanca 4 blok A6 no 6', '029898989', '920b00d2285f518b0fd9be69f6a75956.png', 0, 'bagian gudang', '8cb2237d0679ca88db6464eac60da96345513964', '2020-11-27', 'Chaer imanudin'),
(7, 'Arif Setyawan Yusuf', 'arif', 'jakarta', '081818188', '6ae42da1fc6064133f2ccd15253cbf14.png', 0, 'Bagian Penjualan', '8cb2237d0679ca88db6464eac60da96345513964', '2020-12-23', 'Chaer imanudin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mp_banks`
--
ALTER TABLE `mp_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indeks untuk tabel `mp_barcode`
--
ALTER TABLE `mp_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_brand`
--
ALTER TABLE `mp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_category`
--
ALTER TABLE `mp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `head_id` (`head_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indeks untuk tabel `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_head`
--
ALTER TABLE `mp_head`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `prescription_id` (`prescription_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indeks untuk tabel `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_menu`
--
ALTER TABLE `mp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_menulist`
--
ALTER TABLE `mp_menulist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `menu_Id` (`menu_Id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indeks untuk tabel `mp_payee`
--
ALTER TABLE `mp_payee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mp_productslist`
--
ALTER TABLE `mp_productslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `brand_sector_id` (`brand_sector_id`),
  ADD KEY `unit_type` (`unit_type`);

--
-- Indeks untuk tabel `mp_purchase`
--
ALTER TABLE `mp_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `mp_return`
--
ALTER TABLE `mp_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indeks untuk tabel `mp_return_list`
--
ALTER TABLE `mp_return_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`return_id`),
  ADD KEY `medicine_id` (`product_id`);

--
-- Indeks untuk tabel `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `mp_sessions`
--
ALTER TABLE `mp_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`parent_id`),
  ADD KEY `accounthead` (`accounthead`),
  ADD KEY `amount` (`amount`);

--
-- Indeks untuk tabel `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indeks untuk tabel `mp_units`
--
ALTER TABLE `mp_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symbol` (`symbol`);

--
-- Indeks untuk tabel `mp_users`
--
ALTER TABLE `mp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_name_2` (`user_name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mp_banks`
--
ALTER TABLE `mp_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mp_barcode`
--
ALTER TABLE `mp_barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `mp_brand`
--
ALTER TABLE `mp_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `mp_category`
--
ALTER TABLE `mp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_expense`
--
ALTER TABLE `mp_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT untuk tabel `mp_head`
--
ALTER TABLE `mp_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `mp_invoices`
--
ALTER TABLE `mp_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mp_menu`
--
ALTER TABLE `mp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `mp_menulist`
--
ALTER TABLE `mp_menulist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT untuk tabel `mp_payee`
--
ALTER TABLE `mp_payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `mp_productslist`
--
ALTER TABLE `mp_productslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1504;

--
-- AUTO_INCREMENT untuk tabel `mp_purchase`
--
ALTER TABLE `mp_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_return`
--
ALTER TABLE `mp_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_return_list`
--
ALTER TABLE `mp_return_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_sales`
--
ALTER TABLE `mp_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mp_units`
--
ALTER TABLE `mp_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mp_users`
--
ALTER TABLE `mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD CONSTRAINT `customer_trans_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `payee_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `mp_payee` (`id`);

--
-- Ketidakleluasaan untuk tabel `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD CONSTRAINT `general_expense_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `head_expense_fk` FOREIGN KEY (`head_id`) REFERENCES `mp_head` (`id`),
  ADD CONSTRAINT `payee_expense_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`);

--
-- Ketidakleluasaan untuk tabel `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD CONSTRAINT `invoice_payee_fk` FOREIGN KEY (`cus_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `invoice_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Ketidakleluasaan untuk tabel `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD CONSTRAINT `roles_agentid_fk` FOREIGN KEY (`agentid`) REFERENCES `mp_users` (`id`),
  ADD CONSTRAINT `roles_user_fk` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
