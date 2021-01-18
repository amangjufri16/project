-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 08 Nov 2020 pada 10.19
-- Versi Server: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(255) DEFAULT NULL,
  `no_tlp_keluarga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `no_tlp`, `no_tlp_keluarga`) VALUES
(3, '123', 'mana saja ', '085423647562  ', '0875648235564  '),
(4, 'tono', 'nyamplungan', '052154876332', '058754213365'),
(5, 'bayu', 'cluster alamanda', '023547866954', '087653489765'),
(7, 'dimas', 'perak', '0876543987655', '097653288765'),
(8, 'bagas', 'ciputra', '0986543789654', '087654322897'),
(9, 'syafiq', 'andasia', '087655366788', '088776453826'),
(10, 'yohanes', 'siciliy', '0987653254678', '09765332778663'),
(12, 'agus', 'padang', '08876534273947', '083736736728399'),
(14, 'muhammad', 'jakarta', '0987633467389', '09983764538728'),
(15, 'fikri', 'mojokerto', '09987342568', '087655423684936'),
(16, 'fairus', 'surabaya', '0998735627356', '0887763426789'),
(17, 'salma', 'petukangan', '09876553452', '88776342566'),
(18, 'husein', 'indonesia', '9098098', '09870897');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_type`
--

CREATE TABLE `room_type` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `price`) VALUES
(1, 'VVIP ANGGREK  8 ', 280000),
(2, 'VIP 1 MATAHARI', 800000),
(3, 'VIP 2 FLAMBOYAN', 700000),
(4, '2TH CLASS', 400000),
(6, '4TH CLASS', 250000),
(8, 'matahari 1', 12000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `room_type_vacilities`
--

CREATE TABLE `room_type_vacilities` (
  `id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `vacilities_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `room_type_vacilities`
--

INSERT INTO `room_type_vacilities` (`id`, `room_type_id`, `vacilities_id`) VALUES
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 1),
(10, 2, 9),
(11, 2, 3),
(12, 2, 10),
(13, 2, 5),
(14, 2, 11),
(15, 2, 12),
(16, 3, 1),
(17, 3, 9),
(18, 3, 3),
(19, 3, 5),
(20, 3, 13),
(21, 3, 14),
(22, 4, 15),
(23, 4, 9),
(24, 4, 16),
(25, 4, 17),
(26, 4, 18),
(27, 4, 19),
(28, 5, 20),
(29, 5, 9),
(30, 5, 21),
(32, 5, 22),
(33, 6, 24),
(34, 6, 9),
(35, 6, 25),
(37, 6, 22),
(38, 6, 26),
(39, 8, 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `room_type_id`, `status`, `date_in`, `date_out`, `time_in`, `time_out`) VALUES
(1, 5, 2, 'IN', '2020-03-03', '2020-03-07', '16:34:00', '20:00:00'),
(2, 6, 5, 'IN', '2020-03-07', NULL, '07:00:00', NULL),
(3, 1, 6, 'IN', '2020-01-02', NULL, '18:45:00', NULL),
(4, 2, 5, 'IN', '2020-02-05', NULL, '19:00:00', NULL),
(5, 7, 3, 'IN', '2020-04-04', NULL, '07:33:00', NULL),
(6, 9, 1, 'IN', '2020-02-24', NULL, '13:12:00', NULL),
(7, 10, 6, 'IN', '2020-01-01', NULL, '22:24:00', NULL),
(8, 3, 5, 'OUT', '2020-04-23', '2020-04-29', '01:00:00', '12:00:00'),
(9, 4, 6, 'OUT', '2020-01-02', '2020-01-10', '12:00:00', '08:35:00'),
(10, 8, 4, 'OUT', '2020-03-31', '2020-04-05', '07:50:00', '16:23:00'),
(12, 5, 9, 'IN', '2020-06-08', NULL, '08:46:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`) VALUES
(1, 'amangjufri', 'amangjufri@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(2, 'dani', 'amang@amang.com', '0fc6ae674e6a593e6003405f20512064'),
(3, 'andi', 'amang.jufri@amang.com', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vacilities`
--

CREATE TABLE `vacilities` (
  `id` int(40) NOT NULL,
  `vacilities` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vacilities`
--

INSERT INTO `vacilities` (`id`, `vacilities`) VALUES
(1, 'di mana'),
(2, '2 air conditioner'),
(3, '1 paramount bed patient'),
(4, '1 double bed'),
(5, 'private toilet'),
(6, 'dinning room'),
(7, '1 led 45\" television'),
(8, 'visit time 24 h'),
(9, '1 air conditioner'),
(10, '1 single bed'),
(11, '1 led 42\" television'),
(12, 'visit time 09.00 - 20.00'),
(13, '1 led 35\" television'),
(14, 'visit time 09.00 - 19.00'),
(15, '2 patient only'),
(16, '2 paramount bed'),
(17, 'share toilet'),
(18, '1 led 32\" television'),
(19, 'visit time 09.00 - 18.00'),
(20, '4 patient only'),
(21, '4 paramount bed'),
(22, '1 led 30\" television'),
(23, 'visit time 09.00 - 17.00'),
(24, '10 patient only'),
(25, '10 paramount bed'),
(26, 'visit time 09.00 - 16.00'),
(27, 'es teh'),
(32, 'kentang goreng'),
(33, 'es teh'),
(34, 'jambu'),
(35, 'masker'),
(36, 'netflix'),
(37, 'ke atas'),
(38, 'ke atas'),
(39, 'es milo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type_vacilities`
--
ALTER TABLE `room_type_vacilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacilities`
--
ALTER TABLE `vacilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `room_type_vacilities`
--
ALTER TABLE `room_type_vacilities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vacilities`
--
ALTER TABLE `vacilities`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
