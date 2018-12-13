-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2018 at 03:47 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(80) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('2250d9e3-23e6-4de2-b98b-ca34240334ee', 'dr Mcd', 'Penyakit Lambung dan Usus Besar', 'Depan dr Kfc', '14045'),
('387ba098-fbcb-4a92-b8b1-669a6671bc9f', 'dr suwidnyana', 'Penyakit dalam', 'tabanan', '3112'),
('ad4c29d5-3992-439b-8b77-69054a401475', 'Dr KFC', 'Penyakit Dalam', 'Jl Pemuda No 10', '14022'),
('c7e5ae99-bb4c-426e-92fc-80c438d69a3b', 'dr Burger King', 'Penyakit dalam', 'Jalan Merdeka No.56, Bandung', '1500025');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('0a5c733c-621b-11e8-86a9-c85b76957882', 'Napacin', 'Obat Asma'),
('0a5cac76-621b-11e8-86a9-c85b76957882', 'Asmadex', 'Obat Asma'),
('0a5ce4b4-621b-11e8-86a9-c85b76957882', 'Intrabat', 'Obat Batuk'),
('1c89faab-0da8-4008-83a4-31b15395e50a', 'Sausage McMuffinÂ®', 'English muffin, sosis ayam khas McDonald\'s, keju'),
('1d0885e8-3699-4d59-b2bd-a77d76237610', 'RODEOÂ® KINGâ„¢', 'The RODEOÂ® KINGâ„¢ Sandwich features two savory flame-grilled beef patties totaling more than Â½ lb.* of beef, topped with 3 half-strips of thick-cut smoked bacon, our signature crispy onion rings, tangy BBQ sauce, American cheese and creamy mayonnaise all on our sesame seed bun.'),
('8678d8a1-831d-436c-83d1-1f381a9a8169', 'Cheeseburger with Egg', 'Roti burger lezat dengan daging sapi, telur, keju, saus tomat, acar, potongan bawang dan mustard'),
('8eb0f869-61b0-11e8-b3bb-c85b76957882', 'Paracetamol', 'Obat Panas'),
('94b23125-b2f9-4b80-a41b-18119983117e', 'BACON KINGâ„¢ Jr. Sandwich', 'Introducing the BACON KINGâ„¢ Jr. Sandwich, smaller package, same BIG taste. Two flameâ€“grilled 100% beef patties topped with thick-cut smoked bacon, melted American cheese, ketchup and creamy mayonnaise on a toasted sesame seed bun.'),
('a9847e38-6f4f-44f2-8694-9392098759d1', 'Paket Super Besar 2', '2 Paha/Dada + Minum L + Nasi'),
('c39bf731-3b6d-47bb-beb8-7df1a2a2c2af', 'Big Mac', '3 tumpuk roti burger dengan taburan wijen di atasnya, 2 lapis daging sapi, selada segar, keju, acar, saus Big Mac, potongan bawang.'),
('d0c42e43-cfca-48c7-8678-027372990632', 'Lanadexon', 'Radang,Alergi dan Penambah Nafsu Makan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(30) NOT NULL,
  `nama_pasien` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('2dc90911-c56b-4f08-a93f-87059c4667bf', '556', 'Sasuke', 'L', 'Konohagakure', '12'),
('66bfb4bb-a0c2-46be-96a0-6d462000764d', '231244532534', 'Yudi', 'L', 'Denpasar', '1431412313'),
('6c718b59-3ea9-4e81-9e7c-5bdec981e689', '64112787281', 'Gray Fullbuster', 'L', 'Kerajaan Fiore', '31243242'),
('9b2e202f-8534-483d-a571-17bc1a4ee54d', '212', 'Suwidnyana Putra', 'L', 'Tabanan,Kediri', '12312'),
('9f333259-b9d9-4cbe-9789-b0b73635fb3d', '3214231243123', 'Roger', 'L', 'One Piece', '3123412'),
('ad89cd3b-75b7-4bc3-b5d2-2593e408d425', '4134123123', 'Edward', 'L', 'Kanada', '312413412'),
('c8c778ce-360f-488f-92b7-627f60f5ec8f', '123124', 'Haruno Sakura', 'P', 'Konohagakure,Desa Daun', '113'),
('d66ccb29-1019-4bfc-8076-c27825886cfd', '4325245213', 'I Putu Suwidnyana Putra', 'L', 'Bali', '2345231213'),
('de61a949-7d3b-48a9-be89-570366e20e43', '33333', 'Naruto', 'L', 'Konohagakure', '131413'),
('e40a417c-8b5f-45ac-b792-32178a4cf60d', '83189739', 'Natsu', 'L', 'Fiore Kingdom', '1342');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('2b38cdd3-1d66-466a-adc2-4b5b225049c9', 'Husada', 'Jalan Melati No 9 Bandung'),
('9f07de5c-9c08-4006-b904-07d7e2f6c8ce', 'Kasih Ibu', 'Jalan Merdeka No 5'),
('b3d70626-21b4-4737-a0c5-8171a4e55f16', 'dwa', 'dwaa'),
('b67935be-41e0-460b-89a2-ec61f42473c6', 'dwad', 'dwa'),
('c007bdd4-2ffb-415f-9869-4c92c1495930', 'Puri Bunda', 'Jalan Mawar No 10 Surabaya'),
('c37a26d0-0d1e-4ea3-89cb-3eb2a35ec993', 'Burger King \"Be You Way\"', 'Jalan Sunset Road'),
('c571492b-a460-419c-a228-3e146399d668', 'KFC \"Jagonya Ayam\"', 'Jalan Dewi Sartika'),
('c6c83b49-83bb-4bbb-9043-358bb7d53489', 'Mcd \"I\'m Lovin It\"', 'Jalan Dewi Sartika');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_rm`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`, `id_poli`, `tgl_periksa`) VALUES
('0fb60bab-803c-4c00-bf1f-402356e4a0e1', 'd66ccb29-1019-4bfc-8076-c27825886cfd', 'Lapar', '2250d9e3-23e6-4de2-b98b-ca34240334ee', 'Belum Makan', 'c37a26d0-0d1e-4ea3-89cb-3eb2a35ec993', '2018-06-04'),
('4f5e1b6b-499a-4f2b-a822-864ad37b8266', 'd66ccb29-1019-4bfc-8076-c27825886cfd', '<p>Lelah</p>\r\n', '2250d9e3-23e6-4de2-b98b-ca34240334ee', 'Lelah', 'c37a26d0-0d1e-4ea3-89cb-3eb2a35ec993', '2018-06-06'),
('5345ed7c-7931-4ec4-9089-222885c47568', 'd66ccb29-1019-4bfc-8076-c27825886cfd', '<p>Lelah</p>\r\n', 'c7e5ae99-bb4c-426e-92fc-80c438d69a3b', 'Lelah', '2b38cdd3-1d66-466a-adc2-4b5b225049c9', '2018-06-06'),
('5d8ee2b2-a688-45c1-b04f-156bcc882eb3', 'd66ccb29-1019-4bfc-8076-c27825886cfd', 'Lapar', '2250d9e3-23e6-4de2-b98b-ca34240334ee', 'Belum Makan', 'c37a26d0-0d1e-4ea3-89cb-3eb2a35ec993', '2018-06-04'),
('c376fdd6-37c2-4c91-8332-508ce9b9c289', '9b2e202f-8534-483d-a571-17bc1a4ee54d', '<p>dsa</p>\r\n', '387ba098-fbcb-4a92-b8b1-669a6671bc9f', 'sada', 'b3d70626-21b4-4737-a0c5-8171a4e55f16', '2018-06-07'),
('d7296834-f0ca-49de-b088-bdf8f91d4b77', '66bfb4bb-a0c2-46be-96a0-6d462000764d', '<p>e</p>\r\n', '2250d9e3-23e6-4de2-b98b-ca34240334ee', 'e', 'c37a26d0-0d1e-4ea3-89cb-3eb2a35ec993', '2018-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(8) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id`, `id_rm`, `id_obat`) VALUES
(1, '0fb60bab-803c-4c00-bf1f-402356e4a0e1', '94b23125-b2f9-4b80-a41b-18119983117e'),
(2, '5d8ee2b2-a688-45c1-b04f-156bcc882eb3', '1c89faab-0da8-4008-83a4-31b15395e50a'),
(3, '5d8ee2b2-a688-45c1-b04f-156bcc882eb3', '1d0885e8-3699-4d59-b2bd-a77d76237610'),
(4, '5d8ee2b2-a688-45c1-b04f-156bcc882eb3', '8678d8a1-831d-436c-83d1-1f381a9a8169'),
(5, '5345ed7c-7931-4ec4-9089-222885c47568', '8eb0f869-61b0-11e8-b3bb-c85b76957882'),
(8, '4f5e1b6b-499a-4f2b-a822-864ad37b8266', 'a9847e38-6f4f-44f2-8694-9392098759d1'),
(9, 'd7296834-f0ca-49de-b088-bdf8f91d4b77', '0a5c733c-621b-11e8-86a9-c85b76957882'),
(10, 'd7296834-f0ca-49de-b088-bdf8f91d4b77', '0a5cac76-621b-11e8-86a9-c85b76957882'),
(11, 'd7296834-f0ca-49de-b088-bdf8f91d4b77', '0a5ce4b4-621b-11e8-86a9-c85b76957882'),
(13, 'c376fdd6-37c2-4c91-8332-508ce9b9c289', 'd0c42e43-cfca-48c7-8678-027372990632');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('2e6487b2-f726-11e8-bda4-c85b76957882', 'Suwidnyana', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1'),
('8a85ffee-f708-11e8-bda4-c85b76957882', 'Superuser', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_obat` (`id_obat`),
  ADD KEY `id_rm` (`id_rm`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
