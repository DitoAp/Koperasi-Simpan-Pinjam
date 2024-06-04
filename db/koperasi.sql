-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 05:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminx`
--

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminx`
--

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`, `postdate`) VALUES
('21232f297a57a5a743894a0e4a801fc3', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-03-09 09:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `m_item`
--

CREATE TABLE `m_item` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nominal` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `biaya_admin` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_item`
--

INSERT INTO `m_item` (`kd`, `kode`, `nama`, `nominal`, `postdate`, `biaya_admin`) VALUES
('4baa22efe16cfa7268ff833970eb30da', 'PJ001', 'Pinjaman 500', '500000', '2023-03-09 09:53:52', '15000'),
('7b9974f92d40c4a23aace945f0fc4845', 'PJ002', 'Pinjaman 1000', '1000000', '2023-03-09 09:34:23', '25000'),
('e30569d86967cbd0597b80817b6c219d', 'PJ003', 'Pinjaman 2000', '2000000', '2023-03-09 09:34:41', '50000'),
('5e97a1c461e3b7cb6510d827e93a1990', 'b21', 'Peminjaman 250K', '250000', '2023-10-17 10:27:22', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `m_pelanggan`
--

CREATE TABLE `m_pelanggan` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `total_transaksi` varchar(10) DEFAULT '0',
  `total_nominal` varchar(15) DEFAULT '0',
  `total_tabungan_debet` varchar(15) DEFAULT '0',
  `total_tabungan_kredit` varchar(15) DEFAULT '0',
  `total_tabungan_saldo` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_pelanggan`
--

INSERT INTO `m_pelanggan` (`kd`, `kode`, `nama`, `postdate`, `telp`, `jabatan`, `total_transaksi`, `total_nominal`, `total_tabungan_debet`, `total_tabungan_kredit`, `total_tabungan_saldo`) VALUES
('c6e526aa1540dc38f588ccf5fe061778', '9283897', 'BAMBANG', '2023-10-17 10:28:35', '8989678768', 'SISWA', '0', '', '0', '0', '0'),
('1fd6cfeeb44e93b8b7ffaf8288c8b4b2', '090827', 'KASEP', '2023-10-17 10:28:16', '090878787879', 'SISWA', '1', '253000', '0', '0', '0'),
('7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', '2023-03-09 13:53:13', '080989999', 'GURU', '1', '1025000', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `m_tabungan`
--

CREATE TABLE `m_tabungan` (
  `kd` varchar(50) NOT NULL,
  `min_debet` varchar(15) NOT NULL DEFAULT '0',
  `max_kredit` varchar(15) NOT NULL DEFAULT '0',
  `min_saldo` varchar(15) NOT NULL DEFAULT '0',
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_tabungan`
--

INSERT INTO `m_tabungan` (`kd`, `min_debet`, `max_kredit`, `min_saldo`, `postdate`) VALUES
('e807f1fcf82d132f9bb018ca6738a19f', '10000', '1000000', '10000', '2023-03-10 08:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan_pinjam`
--

CREATE TABLE `pelanggan_pinjam` (
  `kd` varchar(50) NOT NULL,
  `pelanggan_kd` varchar(50) DEFAULT NULL,
  `pelanggan_kode` varchar(100) DEFAULT NULL,
  `pelanggan_nama` varchar(100) DEFAULT NULL,
  `pelanggan_jabatan` varchar(100) DEFAULT NULL,
  `pelanggan_telp` varchar(100) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `kode_transaksi` varchar(100) DEFAULT NULL,
  `item_kd` varchar(50) DEFAULT NULL,
  `item_nominal` varchar(15) DEFAULT NULL,
  `item_biaya_admin` varchar(15) DEFAULT NULL,
  `subtotal` varchar(100) DEFAULT NULL,
  `kredit_angsuran_total` varchar(5) DEFAULT NULL,
  `kredit_angsuran_sisa` varchar(5) DEFAULT NULL,
  `kredit_angsuran_ke` varchar(5) DEFAULT NULL,
  `kredit_angsuran_nominal` varchar(15) DEFAULT NULL,
  `kredit_postdate` datetime DEFAULT NULL,
  `kredit_ket` varchar(100) DEFAULT NULL,
  `kredit_nominal_total` varchar(15) DEFAULT NULL,
  `kredit_nominal_bayar` varchar(15) DEFAULT NULL,
  `kredit_nominal_belum` varchar(15) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan_pinjam`
--

INSERT INTO `pelanggan_pinjam` (`kd`, `pelanggan_kd`, `pelanggan_kode`, `pelanggan_nama`, `pelanggan_jabatan`, `pelanggan_telp`, `tgl_pinjam`, `tgl_kembali`, `kode_transaksi`, `item_kd`, `item_nominal`, `item_biaya_admin`, `subtotal`, `kredit_angsuran_total`, `kredit_angsuran_sisa`, `kredit_angsuran_ke`, `kredit_angsuran_nominal`, `kredit_postdate`, `kredit_ket`, `kredit_nominal_total`, `kredit_nominal_bayar`, `kredit_nominal_belum`, `postdate`) VALUES
('5cc87bb34c3bd455942752d0262e7c48', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', 'GURU', '080989999', '2023-03-09', NULL, '20230309103938', '7b9974f92d40c4a23aace945f0fc4845', '1000000', '25000', '1000000', '5', NULL, '5', '205000', '2023-03-09 10:57:38', 'ok ya...', '1025000', '1025000', '0', '2023-03-09 10:39:48'),
('278b2a20feb39cb4e8e0d5eb797db4b1', '1fd6cfeeb44e93b8b7ffaf8288c8b4b2', '090827', 'KASEP', 'SISWA', '090878787879', '2023-10-17', NULL, '20231017102852', '5e97a1c461e3b7cb6510d827e93a1990', '250000', '3000', '250000', '5', NULL, '2', '50600', '2023-10-17 10:31:13', 'BIASA', '253000', '101200', '151800', '2023-10-17 10:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan_pinjam_kredit`
--

CREATE TABLE `pelanggan_pinjam_kredit` (
  `kd` varchar(50) NOT NULL,
  `pelanggan_kd` varchar(50) DEFAULT NULL,
  `pelanggan_kode` varchar(100) DEFAULT NULL,
  `pelanggan_nama` varchar(100) DEFAULT NULL,
  `pelanggan_jabatan` varchar(100) DEFAULT NULL,
  `pelanggan_telp` varchar(100) DEFAULT NULL,
  `pinjam_kd` varchar(100) DEFAULT NULL,
  `pinjam_kode` varchar(100) DEFAULT NULL,
  `nourut` varchar(5) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `nominal` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan_pinjam_kredit`
--

INSERT INTO `pelanggan_pinjam_kredit` (`kd`, `pelanggan_kd`, `pelanggan_kode`, `pelanggan_nama`, `pelanggan_jabatan`, `pelanggan_telp`, `pinjam_kd`, `pinjam_kode`, `nourut`, `tgl_bayar`, `nominal`, `ket`, `postdate`) VALUES
('c31ca686eed5731d36adb8a9b2e2eabb', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', NULL, '080989999', '5cc87bb34c3bd455942752d0262e7c48', NULL, '2', '2023-03-09', '205000', '1233333', '2023-03-09 11:00:50'),
('6c2ea9ff85c705e81398f23a4145277e', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', NULL, '080989999', '5cc87bb34c3bd455942752d0262e7c48', NULL, '3', '2023-03-10', '205000', 'bayar lagi...', '2023-03-09 11:13:25'),
('86454f34c9377b1bd245d6c10ecc2b76', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', NULL, '080989999', '5cc87bb34c3bd455942752d0262e7c48', NULL, '1', '0001-03-11', '205000', '1111', '2023-03-09 11:30:16'),
('13c9813504654cc2d92d5b38e134e27b', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', NULL, '080989999', '5cc87bb34c3bd455942752d0262e7c48', NULL, '4', '2023-03-12', '205000', '12333', '2023-03-09 11:30:27'),
('f657cbc1a66a210a206a53227bcc4ced', '7264b6e0fe39ded564f6caacaa11f55e', '192168001', 'coba1', NULL, '080989999', '5cc87bb34c3bd455942752d0262e7c48', NULL, '5', '2023-03-13', '205000', '2333333222', '2023-03-09 11:30:37'),
('11f528f5434508cf55c363a55dbc5fa5', '1fd6cfeeb44e93b8b7ffaf8288c8b4b2', '090827', 'KASEP', NULL, '090878787879', '278b2a20feb39cb4e8e0d5eb797db4b1', NULL, '1', '2023-10-17', '50600', 'PERTAMA', '2023-10-17 10:30:28'),
('ef23116fbb851788798c748ec9233713', '1fd6cfeeb44e93b8b7ffaf8288c8b4b2', '090827', 'KASEP', NULL, '090878787879', '278b2a20feb39cb4e8e0d5eb797db4b1', NULL, '2', '2023-10-18', '50600', 'GHFH', '2023-10-17 10:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan_tabungan`
--

CREATE TABLE `pelanggan_tabungan` (
  `kd` varchar(50) NOT NULL,
  `pelanggan_kd` varchar(50) DEFAULT NULL,
  `pelanggan_kode` varchar(100) DEFAULT NULL,
  `pelanggan_nama` varchar(100) DEFAULT NULL,
  `pelanggan_jabatan` varchar(100) DEFAULT NULL,
  `pelanggan_telp` varchar(100) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `debet` enum('true','false') DEFAULT 'false',
  `nilai` varchar(15) DEFAULT NULL,
  `saldo` varchar(15) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan_tabungan`
--

INSERT INTO `pelanggan_tabungan` (`kd`, `pelanggan_kd`, `pelanggan_kode`, `pelanggan_nama`, `pelanggan_jabatan`, `pelanggan_telp`, `tgl`, `debet`, `nilai`, `saldo`, `postdate`) VALUES
('3923b758079ea0663db9eab1bb496f9d', 'e2553e6654229c88a40b96deb63b3d99', '2302', 'muhajir', 'SISWA', '01234567890', '2023-03-10', 'false', '75000', '375000', '2023-03-10 08:34:18'),
('452fe3e59ef1039dbcd91d2db9e0f3db', 'e2553e6654229c88a40b96deb63b3d99', '2302', 'muhajir', 'SISWA', '01234567890', '2023-03-10', 'true', '350000', '450000', '2023-03-10 08:34:10'),
('2acd9ed60be201ef289e597b39d3dd38', 'e2553e6654229c88a40b96deb63b3d99', '2302', 'muhajir', 'SISWA', '01234567890', '2023-03-10', 'true', '100000', '100000', '2023-03-10 08:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_log_entri`
--

CREATE TABLE `user_log_entri` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `dibaca_postdate` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_log_entri`
--

INSERT INTO `user_log_entri` (`kd`, `kode`, `nama`, `ket`, `dibaca`, `dibaca_postdate`, `postdate`) VALUES
('f857c8a987e36c8bfe2cc53e48f6fd44', NULL, NULL, '[MENU : [HISTORY]. History Entri].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:10'),
('56f404af83cac8104dc3103687773b80', NULL, NULL, '[MENU : DashBoard ADMIN WEB].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:13'),
('f85b7230124591c126919469f5c1a84e', NULL, NULL, '[MENU : [HISTORY]. History Entri].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:15'),
('8d8fea50fb2da454cce5114e4a003f08', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:20'),
('bf419eeb7b7daafb1f50fd2a84c98ea5', NULL, NULL, '[MENU : DashBoard ADMIN WEB].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:22'),
('a1d41d1535834f649b108dde3d1c0403', NULL, NULL, '[MENU : [SETTING] Ganti Password].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:51'),
('39450ffe949551a9f30e5edb77c8a52b', NULL, NULL, '[MENU : [HISTORY]. History Login].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:54'),
('7b78374115516801154d43bcf307dddc', NULL, NULL, '[MENU : [HISTORY]. History Entri].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:11:57'),
('5eb0e86f9d93de310e115cfafb94ef14', NULL, NULL, '[MENU : [MASTER] Data Produk Pinjaman].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:00'),
('179aa03d8eac702a0bc41b6a10f1d581', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:02'),
('af7c258a07f1a2042957bfd26799afaf', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:05'),
('0afd37724f2b6eec983bc9de36773721', NULL, NULL, '[MENU : Set DebetxgmringxKreditxgmringxSaldo].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:11'),
('3c4280ec84b4e20ec8de425ec727dc1f', NULL, NULL, '[MENU : DebetxgmringxKredit Anggota].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:14'),
('25b4b9568a511b04f895cdb581983560', NULL, NULL, '[MENU : Lap. Harian].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:19'),
('18fa681055bead460bd40be9ca46e43e', NULL, NULL, '[MENU : [PEMINJAMAN] Lap. Angsuran].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:25'),
('62da96e0c0c68c1677965ca12edddd96', NULL, NULL, '[MENU : DashBoard ADMIN WEB].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:28'),
('09e0cd3026732b00b523b11351335570', NULL, NULL, '[MENU : Login Admin].', 'true', '2023-10-17 10:26:42', '2023-03-12 11:12:52'),
('20877f064da1b246af3ad761cc984d22', NULL, NULL, '', 'true', '2023-10-17 10:26:42', '2023-10-17 10:25:55'),
('63e3db0f92ee5fddc9d12bfef7f51a48', NULL, NULL, '', 'true', '2023-10-17 10:26:42', '2023-10-17 10:26:13'),
('fbd2b3e335388cdf887c43f82e668609', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'true', '2023-10-17 10:26:42', '2023-10-17 10:26:25'),
('629a402079a0e0c316dfa33dfe00596b', NULL, NULL, '', 'true', '2023-10-17 10:26:42', '2023-10-17 10:26:28'),
('ba062135ddca6e57af5e2d1b9262ee4e', NULL, NULL, '[MENU : [HISTORY]. History Login].', 'true', '2023-10-17 10:26:42', '2023-10-17 10:26:38'),
('18a93b3c2aa8fd7d6250330a460c11e3', NULL, NULL, '[MENU : [HISTORY]. History Entri].', 'false', NULL, '2023-10-17 10:26:42'),
('64646702cfe4919168f4fcdc33d6ca07', NULL, NULL, '[MENU : [MASTER] Data Produk Pinjaman].', 'false', NULL, '2023-10-17 10:26:47'),
('2949161ec2bdb6f40f19790386b4eb6f', NULL, NULL, '[MENU : [MASTER] Data Produk Pinjaman].', 'false', NULL, '2023-10-17 10:26:58'),
('e983149afe6e20b5c82a09d2c3a3e87d', NULL, NULL, '[MENU : [MASTER] Data Produk Pinjaman].', 'false', NULL, '2023-10-17 10:27:22'),
('f53c8bcce0e172bf740709027d5788a4', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:27:35'),
('307931c5166a400f66719c81c8c21003', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:27:43'),
('4a4d5325d6502b38d6ac3927b705af56', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:27:47'),
('6f0fafb49531a3ccb78ec37e5d6714ee', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:27:51'),
('404e97fe8a132283fa5c5d7133b6be7f', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:27:58'),
('beca83f3a9b2c13ca919875392158705', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:02'),
('e8e65e422c831f694ac201c39c99dc0a', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:16'),
('1e61f04ade1cf565acb176ef2e4b0791', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:22'),
('e352b609ea203b55ae60ee5a9e934309', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:35'),
('6c7510743476385e84d06539b1cced21', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:38'),
('8faae017b00b22f5f4b603310a27c9b4', NULL, NULL, '[MENU : [MASTER] Data Anggota].', 'false', NULL, '2023-10-17 10:28:39'),
('278b2a20feb39cb4e8e0d5eb797db4b1', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:28:46'),
('2888642bb7d7cce87904b624290f2f99', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:28:52'),
('f3f9bc415d5f25d0a3febfc46afa434b', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:29:08'),
('67275832559aeb2fd33958c20bb9960f', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:29:19'),
('514c3e939673229905b9b29627737c03', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:29:36'),
('f1e04e7e73ead3bf6c6d3d78c40f481f', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:29:46'),
('3f640529112a0e56b28bcf5f760ef2c5', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:30:06'),
('ec214d00b9b53d513d2985e0f52138b2', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:30:28'),
('ec745f10951c3ed7cfe24fc202880b3a', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:30:47'),
('76a930c1ccb53fd0238802934568441b', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:31:13'),
('0af8a9e8a945839d21784fa3ec364088', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:31:15'),
('dd66c559ec7c6d8fd4dc38569eabfbde', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:32:25'),
('e195cc994d4f8da9a64ea9045488d5b1', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:32:37'),
('2eeb065571df780ef4c2cf66322dc279', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:32:46'),
('c8fae73e4534338c4b545cca672c0ad2', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:32:48'),
('dd6b155aedfc5ce15a10df7d01d704fc', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:32:52'),
('4faa7605c27a4aedc334b3f4cb0399e5', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:32:53'),
('16b5cb142e15d978910bc1198be2ee46', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:32:55'),
('022ae93895f8c557482e6ae993121d4b', NULL, NULL, '[MENU : [PEMINJAMAN] Lap. Angsuran].', 'false', NULL, '2023-10-17 10:34:30'),
('6be4b5068f1242358d42ef9d0f2b054f', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:34:34'),
('c0a431caf4c8d60d2c1d6a9b5e566a36', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:34:36'),
('b14d362916d184109e0be46a87df31eb', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:34:40'),
('d0612b01bd9d898638c16dd389bdf114', NULL, NULL, '[MENU : Login Admin].', 'false', NULL, '2023-10-17 10:40:01'),
('bd2cda9a2b0fb87c64a5be011bef33f2', NULL, NULL, '[MENU : DashBoard ADMIN WEB].', 'false', NULL, '2023-10-17 10:40:05'),
('57ff56728b9d908ff24662f99659f100', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:40:08'),
('835c5ee9842aaaf412b7fe328d833765', NULL, NULL, '[MENU : [PEMINJAMAN] Pinjam Uang].', 'false', NULL, '2023-10-17 10:40:10'),
('92b1ef4c9df1a6cfa583d7b4418f46b0', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:40:11'),
('075edb4faef209d660c4b4c2d45f84ee', NULL, NULL, '[MENU : NOTA].', 'false', NULL, '2023-10-17 10:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_log_login`
--

CREATE TABLE `user_log_login` (
  `kd` varchar(50) NOT NULL,
  `ipnya` varchar(100) DEFAULT NULL,
  `dibaca` enum('true','false') NOT NULL DEFAULT 'false',
  `dibaca_postdate` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_log_login`
--

INSERT INTO `user_log_login` (`kd`, `ipnya`, `dibaca`, `dibaca_postdate`, `postdate`) VALUES
('b0b36bd221f206d9cf896a4a82e5969d', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-03-09 09:21:18'),
('1ae4e82f7edf9223cb718354b4f70d29', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-03-09 13:47:26'),
('7b65ed35794286e87467ad5bad1dbae2', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-03-09 16:49:08'),
('346b331ec066ca050a92f3f15637a5b7', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-03-10 07:58:10'),
('1407bbeeec204357d1797adf220ba816', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-03-12 11:10:06'),
('a7a3b470b3f1b3955b792a22484bb49f', '127.0.0.1', 'true', '2023-10-17 10:26:38', '2023-10-17 10:26:12'),
('e0b617c507d66c8daa92e3c8fedf1c4c', '127.0.0.1', 'false', NULL, '2023-10-17 10:40:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminx`
--
ALTER TABLE `adminx`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_item`
--
ALTER TABLE `m_item`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `m_tabungan`
--
ALTER TABLE `m_tabungan`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `pelanggan_pinjam`
--
ALTER TABLE `pelanggan_pinjam`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `pelanggan_pinjam_kredit`
--
ALTER TABLE `pelanggan_pinjam_kredit`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `pelanggan_tabungan`
--
ALTER TABLE `pelanggan_tabungan`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_log_entri`
--
ALTER TABLE `user_log_entri`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `user_log_login`
--
ALTER TABLE `user_log_login`
  ADD PRIMARY KEY (`kd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
