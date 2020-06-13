-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 02:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasikkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `tabungan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nik`, `nama`, `tempat`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_tlp`, `tabungan`) VALUES
('1', 'agus', 'jakarta', '15 agustus 1990', 'laki-laki', 'depok', '085611537894', '200000'),
('2', 'tejo', 'jakarta', '15 maret 1985', 'laki-laki', 'jakarta selatan', '085732155656', '200000'),
('3', 'ardi', 'jakarta', '12 januari 1988', 'laki-laki', 'jakarta', '081555756789', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `tanggal` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jumlah_pinjaman` varchar(50) NOT NULL,
  `angsuran_ke` varchar(10) NOT NULL,
  `cicilan` varchar(50) NOT NULL,
  `bayar` varchar(50) NOT NULL,
  `kembali` varchar(50) NOT NULL,
  `id_angsuran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`tanggal`, `nik`, `nama`, `jumlah_pinjaman`, `angsuran_ke`, `cicilan`, `bayar`, `kembali`, `id_angsuran`) VALUES
('20 mei 2020', '2092', 'supri', '2000000', '1', '200000', '200000', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `no_pinjaman` varchar(50) NOT NULL,
  `tanggal_pinjaman` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `jumlah_pinjaman` varchar(50) NOT NULL,
  `lama_angsuran` varchar(10) NOT NULL,
  `bunga` varchar(10) NOT NULL,
  `total_pinjaman` varchar(20) NOT NULL,
  `cicilan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`no_pinjaman`, `tanggal_pinjaman`, `nik`, `nama`, `alamat`, `keterangan`, `jumlah_pinjaman`, `lama_angsuran`, `bunga`, `total_pinjaman`, `cicilan`) VALUES
('1', '9 mei 2020', '2092', 'supri', 'depok', 'kasbon', '2000000', '10', '5', '2100000', '210000');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `kode_tabungan` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `saldo_sekarang` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `tabungan_masuk` varchar(50) NOT NULL,
  `tabungan_keluar` varchar(20) NOT NULL,
  `saldo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`kode_tabungan`, `nik`, `nama`, `saldo_sekarang`, `tanggal`, `tabungan_masuk`, `tabungan_keluar`, `saldo`) VALUES
('1', '2016', 'adi', '200000', '15 mei 2020', '300000', '0', '500000'),
('2', '2016', 'adi', '500000', '20 mei 2020', '0', '300000', '200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`id_angsuran`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`no_pinjaman`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`kode_tabungan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angsuran`
--
ALTER TABLE `angsuran`
  MODIFY `id_angsuran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
