-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 12:53 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `kd_dept` int(10) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `tunjangan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`kd_dept`, `nik`, `departemen`, `jabatan`, `gaji_pokok`, `tunjangan`) VALUES
(5, '20160001', 'IT', 'Direktur', 25000000, 5000000),
(6, '20160002', 'HRD / GA', 'Supervisor', 15000000, 2500000),
(7, '20160003', 'Accounting', 'Operator', 5000000, 1000000),
(8, '20160004', 'Marketing', 'Operator', 4000000, 500000),
(9, '20160005', 'IT', 'Direktur', 5000000, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `gajian`
--

CREATE TABLE `gajian` (
  `kd_gaji` int(4) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `gaji_bulan` varchar(10) NOT NULL,
  `gaji_tahun` varchar(10) NOT NULL,
  `tgl_transfer` date NOT NULL,
  `absensi` int(2) NOT NULL,
  `sakit` int(2) DEFAULT NULL,
  `cuti` int(2) DEFAULT NULL,
  `no_rek` varchar(25) NOT NULL,
  `gaji` int(10) NOT NULL,
  `tunjangan` int(10) NOT NULL,
  `uang_makan` int(10) NOT NULL,
  `uang_transport` int(10) NOT NULL,
  `thr` int(10) DEFAULT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gajian`
--

INSERT INTO `gajian` (`kd_gaji`, `nik`, `gaji_bulan`, `gaji_tahun`, `tgl_transfer`, `absensi`, `sakit`, `cuti`, `no_rek`, `gaji`, `tunjangan`, `uang_makan`, `uang_transport`, `thr`, `total`) VALUES
(2, '20160001', 'Oktober', '2016', '2016-10-25', 30, 0, 0, '0447424411', 25000000, 5000000, 300000, 450000, 2000000, 32750000),
(3, '20160002', 'Oktober', '2016', '2016-10-27', 25, 3, 2, '4478115819', 15000000, 2500000, 250000, 375000, 1000000, 19125000),
(4, '20160003', 'Oktober', '2016', '2016-10-28', 24, 4, 2, '3387340192', 5000000, 1000000, 240000, 360000, 500000, 7100000),
(5, '20160004', 'Oktober', '2016', '2016-10-30', 20, 5, 5, '9925823472', 4000000, 500000, 200000, 300000, 500000, 5500000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `status` enum('tetap','kontrak','magang','outsource') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `alamat`, `no_hp`, `status`) VALUES
('20160001', 'Firdaus Pandu Aji', 'Depok', '08577574xxxx', 'tetap'),
('20160002', 'Dimas Rizki', 'Bojong', '08778387xxxx', 'outsource'),
('20160003', 'Rahmalita Ayuza Putri', 'Grogol', '08778387xxxx', 'magang'),
('20160004', 'Muhammad Hamim', 'Bogor', '08777031xxxx', 'kontrak'),
('20160005', 'Aweu', 'Depok', '08874238', 'tetap');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `no_hp`, `level`, `gambar`) VALUES
(3, 'daus', 'daus', 'Firdaus Pandu Aji P', '08577574xxxx', 'admin', 'gambar_admin/daus.jpg'),
(4, 'dimas', 'dimas', 'Dimas Rizki', '08778387xxxx', 'admin', 'gambar_admin/ipul.jpg'),
(5, 'lita', 'lita', 'Rahmalita Ayuza Putri', '08778387xxxx', 'admin', 'gambar_admin/lita.jpg'),
(6, 'hamim', 'hamim', 'Muhammad Hamim', '08777031xxxx', 'admin', 'gambar_admin/hamim.jpg'),
(7, 'admin', 'admin', 'Admin Ganteng', '08678937xxxx', 'admin', 'gambar_admin/Koala.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kd_dept`);

--
-- Indexes for table `gajian`
--
ALTER TABLE `gajian`
  ADD PRIMARY KEY (`kd_gaji`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `kd_dept` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gajian`
--
ALTER TABLE `gajian`
  MODIFY `kd_gaji` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
