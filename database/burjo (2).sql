-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 04:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burjo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arus_kas`
--

CREATE TABLE `tbl_arus_kas` (
  `id` int(13) NOT NULL,
  `kd_transaksi` varchar(30) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `arus` varchar(10) DEFAULT NULL,
  `total` int(25) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `operator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_arus_kas`
--

INSERT INTO `tbl_arus_kas` (`id`, `kd_transaksi`, `tipe`, `arus`, `total`, `waktu`, `operator`) VALUES
(1, 'g3rZpufaH8jaf9p', 'Pembayaran kasir', 'masuk', 9450, '2022-11-21 07:52:30', 'admin'),
(2, 'e2O4L3tVpNu4czmaiYFK', 'Pengeluaran resto', 'keluar', 4800000, '2022-11-23 13:50:31', 'admin'),
(3, 'XSpHWLhyj6Mcvrz1nVF0', 'Pengeluaran resto', 'keluar', 6000000, '2022-11-23 13:53:19', 'admin'),
(4, 'FpSoXqiL2T3RG6ujBKfx', 'Pengeluaran resto', 'keluar', 2000000, '2022-11-23 13:54:05', 'admin'),
(5, 'gtIAnie3KxUm4kd', 'Pembelian bahan baku resto', 'keluar', 2000000, '2022-11-23 14:04:07', 'admin'),
(6, 'ezo0EgxkD8wwj69', 'Pembelian bahan baku resto', 'keluar', 875000, '2022-11-23 14:09:36', 'admin'),
(7, '3kZisgfBACMxtqY', 'Pembelian bahan baku resto', 'keluar', 1150000, '2022-11-23 14:15:48', 'admin'),
(8, 'qysz9Bed5kFq7mi', 'Pembelian bahan baku resto', 'keluar', 1750000, '2022-11-23 14:21:44', 'admin'),
(9, 'drCexcFsIwmZyHO', 'Pembelian bahan baku resto', 'keluar', 1000000, '2022-11-23 14:36:05', 'admin'),
(10, 'brj2zuygAalz06a', 'Pembelian bahan baku resto', 'keluar', 250000, '2022-11-23 14:40:53', 'admin'),
(11, 'mpU6cdQIeHoy6Ci', 'Pembelian bahan baku resto', 'keluar', 150000, '2022-11-23 14:45:32', 'admin'),
(12, 'hbYJPphf1T6jsyr', 'Pembayaran kasir', 'masuk', 80850, '2022-11-23 14:58:06', 'admin'),
(13, 'qdYsdZniprfaqvf', 'Pembayaran kasir', 'masuk', 28350, '2022-11-23 15:17:53', 'admin'),
(14, 'ec15hdcpH70OtSU', 'Pembayaran kasir', 'masuk', 25200, '2022-11-23 15:18:21', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bahan_baku`
--

CREATE TABLE `tbl_bahan_baku` (
  `id` int(11) NOT NULL,
  `kd_bahan` varchar(4) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deks` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `aktif` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bahan_baku`
--

INSERT INTO `tbl_bahan_baku` (`id`, `kd_bahan`, `nama`, `deks`, `kategori`, `satuan`, `stok`, `aktif`) VALUES
(1, '9383', 'Indomi', 'mie', 'Mie Instan', 'dus', 20, '1'),
(2, '2758', 'telur', 'satuan', 'Lain Lain', 'kg', 140, '1'),
(3, '0414', 'beras ', 'nasi', 'Karbo', 'kg', 400, '1'),
(4, '6554', 'sayuran', 'tambahan atau toping', 'Sayur', 'kg', 56, '1'),
(5, '7156', 'teh', 'celup', 'Lain Lain', 'dus', 20, '1'),
(6, '3841', 'Ayam', 'ayam potong', 'Daging', 'kg', 50, '1'),
(7, '2165', 'tepung', 'terigu', 'Tepung', 'kg', 30, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bantuan`
--

CREATE TABLE `tbl_bantuan` (
  `id` int(3) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bantuan`
--

INSERT INTO `tbl_bantuan` (`id`, `judul`, `deks`) VALUES
(1, 'Proses pemesanan di website customer tidak bisa di proses', 'Pastikan settingan firebase sudah benar'),
(2, 'Print struk tidak berjalan', 'Pastikan koneksi ke printer, pastikan printer terdeteksi di sistem operasi. Port printer juga harus diperhatikan'),
(3, 'Key firebase sudah di masukkan, tetapi tidak bekerja', 'Kemungkinan rules dari realtime database path belum di aktifkan, silahkan aktifkan terlebih dahulu.'),
(4, 'Laporan tipe PDF tidak bisa di akses (print)', 'Masalah yang mungkin terjadi adalah jika anda menggunakan server linux sebagai webserver, pastikan folder aplikasi sudah mendapatkan hak akses penuh untuk read, write.'),
(5, 'Proses checkout tidak berjalan', 'Kemungkinan masalah ada di path server pada settingan file base.php, perhatikan apakah semuanya sudah benar'),
(6, 'Email tidak terkirim', 'Pastikan settingan SMTP sudah sesuai, jika menggunakan gmail sebagai host, pastikan settingan dari sisi gmailnya sudah di aktifkan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_csrf_token`
--

CREATE TABLE `tbl_csrf_token` (
  `id` int(10) NOT NULL,
  `token` varchar(30) DEFAULT NULL,
  `login_from` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `valid_until` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_order`
--

CREATE TABLE `tbl_delivery_order` (
  `id` int(5) NOT NULL,
  `kd_pesanan` varchar(15) DEFAULT NULL,
  `pelanggan` varchar(20) DEFAULT NULL,
  `kurir` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tipe_pembayaran` varchar(20) DEFAULT NULL,
  `dikirim` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diterima` timestamp NOT NULL DEFAULT current_timestamp(),
  `alamat_pengiriman` text DEFAULT NULL,
  `masuk` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_firebase_config`
--

CREATE TABLE `tbl_firebase_config` (
  `id` int(2) NOT NULL,
  `kd_setting` varchar(155) DEFAULT NULL,
  `caption` varchar(155) DEFAULT NULL,
  `value` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_menu`
--

CREATE TABLE `tbl_kategori_menu` (
  `id` int(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deks` text NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_menu`
--

INSERT INTO `tbl_kategori_menu` (`id`, `nama`, `deks`, `active`) VALUES
(1, 'Makanan Utama', 'Makanan utama\r\n', '1'),
(2, 'Coffe', 'Coffe & Cappucino\r\n', '1'),
(3, 'Side Food (Snack)', 'Makanan kecil & pendamping', '1'),
(4, 'Cake', 'Kue', '1'),
(5, 'Tea', 'Kategori minuman', '1'),
(6, 'Pasta', 'Pasta', '1'),
(7, 'Juice', 'Kategori jus', '1'),
(8, 'Milkshake', 'Kategori milkshake', '1'),
(9, 'Seafood', 'Seafood', '1'),
(10, 'Noodles', 'Noodles', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meja`
--

CREATE TABLE `tbl_meja` (
  `id` int(5) NOT NULL,
  `kd_meja` varchar(5) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `deks` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `jlh_tamu` int(3) DEFAULT NULL,
  `last_visit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_meja`
--

INSERT INTO `tbl_meja` (`id`, `kd_meja`, `nama`, `deks`, `status`, `jlh_tamu`, `last_visit`) VALUES
(2, '9925', 'Meja', 'Kursi 4', 'leave', 0, '2022-11-23 13:22:28'),
(3, '7962', 'Meja 2 ', 'Kursi 4', 'leave', 0, '2022-11-23 13:22:40'),
(4, '8918', 'Meja 3 ', 'Kursi 4', 'leave', 0, '2022-11-23 15:17:56'),
(5, '9101', 'Meja 4', 'Kursi 4', 'leave', 0, '2022-11-23 13:22:59'),
(6, '0424', 'Meja 5', 'Kursi 4', 'leave', 0, '2022-11-23 13:23:07'),
(7, '2061', 'Meja 6', 'Kursi 4', 'leave', 0, '2022-11-23 13:23:18'),
(8, '0569', 'Meja 7', 'Kursi 4', 'leave', 0, '2022-11-23 14:58:09'),
(9, '6456', 'Meja 8', 'Kursi 4', 'leave', 0, '2022-11-23 13:23:43'),
(10, '4360', 'Meja 9', 'Kursi 4', 'leave', 0, '2022-11-23 13:23:54'),
(12, '3357', 'Meja 10', 'Kursi 4', 'leave', 0, '2022-11-23 13:24:24'),
(13, '9355', 'Meja 11', 'Kursi 4', 'leave', 0, '2022-11-23 13:24:33'),
(14, '1208', 'Meja 12', 'Kursi 4', 'leave', 0, '2022-11-23 13:24:41'),
(15, '8300', 'Meja 13', 'Kursi 4', 'active', 10, '2022-11-23 15:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(5) NOT NULL,
  `kd_menu` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deks` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `total_dipesan` int(7) NOT NULL,
  `aktif` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `kd_menu`, `nama`, `deks`, `kategori`, `satuan`, `harga`, `pic`, `total_dipesan`, `aktif`) VALUES
(22, '06538804', 'Indomi Rebus ', 'mie rebus biasa', '10', 'porsi', 6000, '06538804.png', 8, '1'),
(23, '18190615', 'Indomi Rebus + telur', 'tambahan telur', '10', 'porsi', 9000, '18190615.jpg', 3, '1'),
(24, '92894603', 'Indomi Goreng', 'goreng', '10', 'porsi', 6000, '92894603.jpg', 1, '1'),
(25, '46272388', 'Indomi Goreng + Telur', 'tambahan telur', '10', 'porsi', 9000, '46272388.jpg', 0, '1'),
(26, '07566149', 'Omelet', 'telur goreng', '10', 'porsi', 9000, '07566149.jpg', 2, '1'),
(27, '40527652', 'Magelangan ', 'nasi+mie', '1', 'porsi', 11000, '40527652.jpeg', 0, '1'),
(28, '68030941', 'mie dok-dok', 'mie pedes', '10', 'porsi', 10000, '68030941.jpg', 1, '1'),
(29, '76461991', 'Nasi Goreng', 'sedang,pedes,pedes banget', '10', 'porsi', 10000, '76461991.jpg', 0, '1'),
(30, '09208315', 'Sarden', 'ikan sarden', '10', 'porsi', 10000, '09208315.jpeg', 1, '1'),
(31, '97709376', 'teh', 'es teh', '10', 'porsi', 3000, '97709376.jpg', 6, '1'),
(32, '95026087', 'ayam geprek', 'level 12345', '10', 'porsi', 11000, '95026087.jpg', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mitra`
--

CREATE TABLE `tbl_mitra` (
  `id` int(5) NOT NULL,
  `kd_mitra` varchar(8) NOT NULL,
  `nama` varchar(155) NOT NULL,
  `deks` text NOT NULL,
  `alamat` text NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `aktif` varchar(1) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mitra`
--

INSERT INTO `tbl_mitra` (`id`, `kd_mitra`, `nama`, `deks`, `alamat`, `pemilik`, `hp`, `aktif`, `tipe`) VALUES
(1, '14041869', 'pemilik', 'sendiri', 'Patemon,Sekaran,Gunung Pati, Semarang', 'jamal ', '085667890102', '1', 'pemasok');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_operator`
--

CREATE TABLE `tbl_operator` (
  `id` int(5) NOT NULL,
  `username` varchar(55) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(20) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `total_waktu_kerja` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(5) NOT NULL,
  `id_pelanggan` varchar(20) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `id_pelanggan`, `nama`, `alamat`, `no_hp`, `email`, `last_visit`) VALUES
(1, 'cash', 'Cash (Pelanggan default)', '-', '-', '-', '2020-06-22 09:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id` int(7) NOT NULL,
  `kd_invoice` varchar(30) NOT NULL,
  `kd_pesanan` varchar(30) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` int(25) NOT NULL,
  `kd_promo` varchar(111) DEFAULT NULL,
  `diskon` int(25) NOT NULL,
  `tax` int(15) DEFAULT NULL,
  `total_final` int(25) NOT NULL,
  `tunai` int(25) NOT NULL,
  `kembali` int(25) NOT NULL,
  `operator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id`, `kd_invoice`, `kd_pesanan`, `waktu`, `total`, `kd_promo`, `diskon`, `tax`, `total_final`, `tunai`, `kembali`, `operator`) VALUES
(1, '11-21-2022-G3RZ', 'g3rZpufaH8jaf9p', '2022-11-21 07:52:30', 9000, '-', 0, 450, 9450, 10000, 550, 'admin'),
(2, '11-23-2022-HBYJ', 'hbYJPphf1T6jsyr', '2022-11-23 14:58:06', 77000, '', 0, 3850, 80850, 0, 0, 'admin'),
(3, '11-23-2022-QDYS', 'qdYsdZniprfaqvf', '2022-11-23 15:17:53', 27000, '', 0, 1350, 28350, 0, 0, 'admin'),
(4, '11-23-2022-EC15', 'ec15hdcpH70OtSU', '2022-11-23 15:18:21', 24000, '', 0, 1200, 25200, 0, 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian_bahan_baku`
--

CREATE TABLE `tbl_pembelian_bahan_baku` (
  `id` int(10) NOT NULL,
  `kd_pembelian` varchar(15) DEFAULT NULL,
  `mitra` varchar(100) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` int(20) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian_bahan_baku`
--

INSERT INTO `tbl_pembelian_bahan_baku` (`id`, `kd_pembelian`, `mitra`, `waktu`, `total`, `operator`) VALUES
(1, 'gtIAnie3KxUm4kd', '14041869', '2022-11-23 14:04:07', 2000000, 'admin'),
(2, 'ezo0EgxkD8wwj69', '14041869', '2022-11-23 14:09:36', 875000, 'admin'),
(3, '3kZisgfBACMxtqY', '14041869', '2022-11-23 14:15:48', 1150000, 'admin'),
(4, 'qysz9Bed5kFq7mi', '14041869', '2022-11-23 14:21:44', 1750000, 'admin'),
(5, 'drCexcFsIwmZyHO', '14041869', '2022-11-23 14:36:05', 1000000, 'admin'),
(6, 'brj2zuygAalz06a', '14041869', '2022-11-23 14:40:53', 250000, 'admin'),
(7, 'mpU6cdQIeHoy6Ci', '14041869', '2022-11-23 14:45:32', 150000, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengeluaran`
--

CREATE TABLE `tbl_pengeluaran` (
  `id` int(9) NOT NULL,
  `kd_pengeluaran` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deks` text DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengeluaran`
--

INSERT INTO `tbl_pengeluaran` (`id`, `kd_pengeluaran`, `nama`, `deks`, `kategori`, `total`, `operator`, `waktu`) VALUES
(1, 'e2O4L3tVpNu4czmaiYFK', 'listrik', 'bebanlistrik', 'listrik', 4800000, 'admin', '2022-11-23 13:50:31'),
(2, 'XSpHWLhyj6Mcvrz1nVF0', 'sewa gedung ', 'beban gedung per tahun', 'lain lain', 6000000, 'admin', '2022-11-23 13:53:19'),
(3, 'FpSoXqiL2T3RG6ujBKfx', 'WIFI', 'beban wifi per tahun', 'lain lain', 2000000, 'admin', '2022-11-23 13:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id` int(7) NOT NULL,
  `kd_pesanan` varchar(20) NOT NULL,
  `pelanggan` varchar(111) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jumlah_tamu` int(3) NOT NULL,
  `meja` varchar(111) DEFAULT NULL,
  `waktu_masuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `waktu_selesai` timestamp NOT NULL DEFAULT current_timestamp(),
  `operator` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id`, `kd_pesanan`, `pelanggan`, `tipe`, `jumlah_tamu`, `meja`, `waktu_masuk`, `waktu_selesai`, `operator`, `status`) VALUES
(1, 'M7nqdal4uv5T3g5', 'cash', 'dine_in', 3, '1491', '2022-11-21 07:45:28', '0000-00-00 00:00:00', 'admin', 'active'),
(2, 'g3rZpufaH8jaf9p', 'cash', 'take_home', 0, '-', '2022-11-21 07:52:30', '2022-11-21 07:52:30', 'admin', 'done'),
(3, 'qdYsdZniprfaqvf', 'cash', 'dine_in', 4, '8918', '2022-11-23 15:17:53', '2022-11-23 15:17:53', 'admin', 'done'),
(4, 'ec15hdcpH70OtSU', 'cash', 'take_home', 0, '-', '2022-11-23 15:18:21', '2022-11-23 15:18:21', 'admin', 'done'),
(5, 'hbYJPphf1T6jsyr', 'cash', 'dine_in', 6, '0569', '2022-11-23 14:58:06', '2022-11-23 14:58:06', 'admin', 'done'),
(6, 'lRskfwITbfOPXkb', 'cash', 'dine_in', 10, '8300', '2022-11-23 15:17:16', '0000-00-00 00:00:00', 'admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `id` int(4) NOT NULL,
  `kd_promo` varchar(8) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `deks` text NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `value` int(20) NOT NULL,
  `kuota` int(5) NOT NULL,
  `tanggal_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_promo`
--

INSERT INTO `tbl_promo` (`id`, `kd_promo`, `nama`, `deks`, `tipe`, `value`, `kuota`, `tanggal_expired`) VALUES
(1, '010693', 'tahun baruan', 'perayaan tahun baru', 'persen', 10, 55, '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(3) NOT NULL,
  `kd_setting` varchar(200) NOT NULL,
  `caption` varchar(111) NOT NULL,
  `deks` text NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `kd_setting`, `caption`, `deks`, `value`) VALUES
(1, 'tax', 'Pajak restoran', 'Tambahann pajak ketika pembayaran', '5'),
(2, 'nama_resto', 'Nama restoran', 'Nama Restoran', 'BurjoPOS'),
(3, 'ip_address_print_kasir', 'Ip address printer kasir', 'Alamat ip address printer kasir', '127.0.0.1'),
(4, 'ip_address_print_kichen', 'Ip Address printer dapur', 'Alamat ip address printer dapur', '127.0.0.1'),
(5, 'alamat_resto', 'Alamat restoran', '', 'Jalan Sekaran. Gn Pati. Semarang'),
(6, 'status_setting', 'Status Setting', '-', 'done'),
(7, 'nama_owner', 'Nama Owner Resto', '', 'Windi'),
(8, 'email_resto', 'Email Restoran', 'Alamat email restoran', 'burjopos@gmail.com'),
(9, 'logo_resto', 'Logo Restoran', '', 'burjo3.png'),
(10, 'awal_pembukuan', 'Tahun awal pembukuan', '', '2020'),
(11, 'api_woo_wa', 'API Key WooWa', '', ''),
(12, 'saldo_awal', 'Saldo awal resto', '', '1000000'),
(13, 'nomor_handphone', 'Nomor Handphone Restoran', '', '082272177099'),
(14, 'koneksi_printer', 'Tipe koneksi printer', '', 'USB'),
(15, 'ip_address_print_other', 'Ip address print other', '', '127.0.0.01'),
(16, 'email_host', 'Email Host', 'Email pengiriman notifikasi ke pelanggan', ''),
(17, 'email_host_password', 'Email host password', 'Password email untuk notifikasi ke pelanggan', ''),
(18, 'kode_pos', 'Kode Pos Resto', '', '20986');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(2) NOT NULL,
  `sub_header` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `cap_button` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `sub_header`, `title`, `sub_title`, `img`, `cap_button`, `link`) VALUES
(1, 'Welcome to BurjoPOS', 'Best BurjoPOS for college student', 'Harga murah, kualitas makanan luar biasa', 'soto_ayam.jpg', 'Order now', 'home/selfservice');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_pembelian_bahan_baku`
--

CREATE TABLE `tbl_temp_pembelian_bahan_baku` (
  `id` int(10) NOT NULL,
  `kd_temp` varchar(20) DEFAULT NULL,
  `kd_pembelian` varchar(15) DEFAULT NULL,
  `kd_item` varchar(15) DEFAULT NULL,
  `qt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp_pembelian_bahan_baku`
--

INSERT INTO `tbl_temp_pembelian_bahan_baku` (`id`, `kd_temp`, `kd_pembelian`, `kd_item`, `qt`) VALUES
(1, 'udF6fRnMfnriQ4jgcNzT', 'gtIAnie3KxUm4kd', '0414', 200),
(2, 'u0E1qLdGRshtyoleIDw5', 'ezo0EgxkD8wwj69', '3841', 25),
(3, 'xkzFbZ9qVua3648jX31t', '3kZisgfBACMxtqY', '9383', 10),
(4, 'VRbFBrhKPTXY5dxUuz7r', 'qysz9Bed5kFq7mi', '2758', 70),
(5, 'ja35KEXhgcsSvn8tbzs4', 'drCexcFsIwmZyHO', '6554', 28),
(6, '9J3QwSdqTPBEfxHyji5N', 'brj2zuygAalz06a', '7156', 10),
(7, 'CRHnlIh2jDoP70baOg48', 'mpU6cdQIeHoy6Ci', '2165', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_pesanan`
--

CREATE TABLE `tbl_temp_pesanan` (
  `id` int(7) NOT NULL,
  `id_temp` varchar(55) NOT NULL,
  `kd_pesanan` varchar(20) NOT NULL,
  `kd_menu` varchar(11) NOT NULL,
  `harga_at` int(20) NOT NULL,
  `qt` int(4) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp_pesanan`
--

INSERT INTO `tbl_temp_pesanan` (`id`, `id_temp`, `kd_pesanan`, `kd_menu`, `harga_at`, `qt`, `total`) VALUES
(1, 'v09pb8Bacg2Zmz31jWmk', 'M7nqdal4uv5T3g5', '06538804', 6000, 1, 6000),
(2, 'dHYjw205trkA8rcsxN3q', 'M7nqdal4uv5T3g5', '92894603', 6000, 1, 6000),
(3, 'dkjIqqlstGWy1jmnpd1c', 'M7nqdal4uv5T3g5', '07566149', 9000, 1, 9000),
(4, 'ZxnhX7rHpL3aiC83B02V', 'g3rZpufaH8jaf9p', '07566149', 9000, 1, 9000),
(5, 'hL2uJB5GpMOkjPDXAVga', 'qdYsdZniprfaqvf', '06538804', 6000, 3, 18000),
(6, 'yYXObzCVk36pjHQlq2mn', 'qdYsdZniprfaqvf', '18190615', 9000, 1, 9000),
(7, '046KbhygfkfxzIlMsi5F', 'ec15hdcpH70OtSU', '06538804', 6000, 4, 24000),
(8, 'r3Ds9qdTrd6SpxBs8KLI', 'hbYJPphf1T6jsyr', '06538804', 6000, 1, 6000),
(9, 'RK9tLx4Oszr17oFmwz3u', 'hbYJPphf1T6jsyr', '07566149', 9000, 1, 9000),
(10, 'xHTJtuwavirgsyQn987d', 'hbYJPphf1T6jsyr', '92894603', 6000, 1, 6000),
(11, 'cZipGrcTwhX6MJBaAv3v', 'hbYJPphf1T6jsyr', '09208315', 10000, 1, 10000),
(12, 'Alw2r4v4sh9Uaxk15ZGx', 'hbYJPphf1T6jsyr', '97709376', 3000, 6, 18000),
(13, '4kl3cgX1iDF67Ln6K49p', 'hbYJPphf1T6jsyr', '18190615', 9000, 2, 18000),
(14, 'iNUBY2tfuprlwXoDnfGo', 'hbYJPphf1T6jsyr', '68030941', 10000, 1, 10000),
(15, 'O0Tzte2d15hH4oCIdBa7', 'lRskfwITbfOPXkb', '95026087', 11000, 3, 33000),
(16, '2iqo9jdQeyMZ5atw1vTa', 'lRskfwITbfOPXkb', '06538804', 6000, 2, 12000),
(17, 'FIupJE5BP8XinA0mv15M', 'lRskfwITbfOPXkb', '68030941', 10000, 1, 10000),
(18, 'ccdpB8NurtHlDwTlzM56', 'lRskfwITbfOPXkb', '07566149', 9000, 2, 18000),
(19, 'ldAtw2cpenQM1Ygvjfrv', 'lRskfwITbfOPXkb', '97709376', 3000, 10, 30000),
(20, 'rVxlitLTKpokwh4o2QcN', 'lRskfwITbfOPXkb', '09208315', 10000, 1, 10000),
(21, '3atOlwx7uYrzguwjsPT4', 'lRskfwITbfOPXkb', '76461991', 10000, 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_self_service`
--

CREATE TABLE `tbl_temp_self_service` (
  `id` int(10) NOT NULL,
  `kd_temp` varchar(15) DEFAULT NULL,
  `kd_item` varchar(10) DEFAULT NULL,
  `qt` int(3) DEFAULT NULL,
  `harga_at` int(20) DEFAULT NULL,
  `total` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeline`
--

CREATE TABLE `tbl_timeline` (
  `id` int(7) NOT NULL,
  `id_timeline` varchar(55) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `object` varchar(111) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(5) NOT NULL,
  `token_transaksi` varchar(25) NOT NULL,
  `kd_transaksi` varchar(15) NOT NULL,
  `arus` varchar(10) NOT NULL,
  `total` int(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `operator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `token_transaksi`, `kd_transaksi`, `arus`, `total`, `waktu`, `operator`) VALUES
(1, 'mi4xmahg3SVneIQ7258Rgs41t', 'g3rZpufaH8jaf9p', 'masuk', 9450, '2022-11-21 07:52:30', 'admin'),
(2, '5qx9LHlh78kpRFiqW5usawyOZ', 'hbYJPphf1T6jsyr', 'masuk', 80850, '2022-11-23 14:58:06', 'admin'),
(3, 'vq6sD5Wczdg84mvSo2snpb6Lr', 'qdYsdZniprfaqvf', 'masuk', 28350, '2022-11-23 15:17:53', 'admin'),
(4, 'q073nPW5akAY516S1b2itNxjj', 'ec15hdcpH70OtSU', 'masuk', 25200, '2022-11-23 15:18:21', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(5) NOT NULL,
  `username` varchar(111) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(111) NOT NULL,
  `tipe` varchar(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `nama`, `password`, `tipe`, `last_login`) VALUES
(1, 'admin', 'Nadha Resto Admin', '$2y$10$QzSw1T9csavkHjJEjeYsOumM3tOrT1WKWZQPAe/4tuFSql.lYSfxq', 'admin', '2022-11-23 14:46:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arus_kas`
--
ALTER TABLE `tbl_arus_kas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bahan_baku`
--
ALTER TABLE `tbl_bahan_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_csrf_token`
--
ALTER TABLE `tbl_csrf_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery_order`
--
ALTER TABLE `tbl_delivery_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_firebase_config`
--
ALTER TABLE `tbl_firebase_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori_menu`
--
ALTER TABLE `tbl_kategori_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_meja`
--
ALTER TABLE `tbl_meja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mitra`
--
ALTER TABLE `tbl_mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_operator`
--
ALTER TABLE `tbl_operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pembelian_bahan_baku`
--
ALTER TABLE `tbl_pembelian_bahan_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengeluaran`
--
ALTER TABLE `tbl_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_pembelian_bahan_baku`
--
ALTER TABLE `tbl_temp_pembelian_bahan_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_pesanan`
--
ALTER TABLE `tbl_temp_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_self_service`
--
ALTER TABLE `tbl_temp_self_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arus_kas`
--
ALTER TABLE `tbl_arus_kas`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_bahan_baku`
--
ALTER TABLE `tbl_bahan_baku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_csrf_token`
--
ALTER TABLE `tbl_csrf_token`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_delivery_order`
--
ALTER TABLE `tbl_delivery_order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_firebase_config`
--
ALTER TABLE `tbl_firebase_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori_menu`
--
ALTER TABLE `tbl_kategori_menu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_meja`
--
ALTER TABLE `tbl_meja`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_mitra`
--
ALTER TABLE `tbl_mitra`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_operator`
--
ALTER TABLE `tbl_operator`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pembelian_bahan_baku`
--
ALTER TABLE `tbl_pembelian_bahan_baku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pengeluaran`
--
ALTER TABLE `tbl_pengeluaran`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_temp_pembelian_bahan_baku`
--
ALTER TABLE `tbl_temp_pembelian_bahan_baku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_temp_pesanan`
--
ALTER TABLE `tbl_temp_pesanan`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_temp_self_service`
--
ALTER TABLE `tbl_temp_self_service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
