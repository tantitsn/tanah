-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2018 at 04:58 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanahsukapura`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip_surat_tanah`
--

CREATE TABLE `arsip_surat_tanah` (
  `id_arsip` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tgl_arsip` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `stat_ambil` varchar(30) NOT NULL,
  `ket` varchar(50) NOT NULL,
  `id_perm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bukti_pengambilan`
--

CREATE TABLE `bukti_pengambilan` (
  `id_bukti` int(11) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `file_bukti` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `f_kuasa` varchar(100) NOT NULL,
  `id_perm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_layanan`
--

CREATE TABLE `detail_layanan` (
  `idlayanan` varchar(100) NOT NULL,
  `nama_l` varchar(100) NOT NULL,
  `syarat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_layanan`
--

INSERT INTO `detail_layanan` (`idlayanan`, `nama_l`, `syarat`) VALUES
('L0000001', 'Pembuatan AJB', '<p>Dokumen yang harus disiapkan oleh penjual atau pemberi hak atas tanah:</p>\r\n\r\n<p>1. Fotokopi KTP penjual (suami dan istri).</p>\r\n\r\n<p>2. Fotokopi KK</p>\r\n\r\n<p>3. Fotokopi Akta nikah</p>\r\n\r\n<p>4. Asli Sertipikat atau bukti kepemilikan tanah lainnya jika belum sertipikat.</p>\r\n\r\n<p>5. STTS Pajak Bumi dan Bangungan</p>\r\n\r\n<p>6. Surat persetujuan suami atau istri</p>\r\n\r\n<p>Dokumen yang harus disiapkan oleh pembeli:</p>\r\n\r\n<p>1. Fotokopi KTP</p>\r\n\r\n<p>2. Fotokopi KK</p>\r\n\r\n<p>3. Fotokopi Akta Nikah, jika sudah menikah.</p>\r\n\r\n<p>4. Fotokopi NPWP</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `user_id` int(11) NOT NULL,
  `datejoin` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namal` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nohp` int(15) NOT NULL,
  `f_ktp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`user_id`, `datejoin`, `username`, `password`, `namal`, `alamat`, `nohp`, `f_ktp`) VALUES
(1, '2018-03-10', 'ginata21', 'jagahati', 'Ginanjar Natasasmita', 'Jalan Raya Pacet no. 247', 857947660, '');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `nokohir` int(15) NOT NULL,
  `nama_wp` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pencatat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_alih_hak_tanah`
--

CREATE TABLE `permohonan_alih_hak_tanah` (
  `idpermohonan` varchar(10) NOT NULL,
  `nama_pemohon` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status_syarat` varchar(50) DEFAULT NULL,
  `syarat_belum` text NOT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `progres` varchar(50) DEFAULT NULL,
  `statperm` varchar(50) NOT NULL,
  `tgl_aju` date NOT NULL,
  `pencatat` varchar(50) NOT NULL,
  `status_tanah` varchar(50) NOT NULL,
  `idlayanan` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permohonan_alih_hak_tanah`
--

INSERT INTO `permohonan_alih_hak_tanah` (`idpermohonan`, `nama_pemohon`, `alamat`, `status_syarat`, `syarat_belum`, `nohp`, `progres`, `statperm`, `tgl_aju`, `pencatat`, `status_tanah`, `idlayanan`, `user_id`) VALUES
('P0000001', 'Asep Saepulloh', 'Jalan sukapura no. 22', 'Belum Lengkap', '', '085794766044', 'Mengajukan Permohonan', 'Permohonan Disetujui', '2018-03-10', 'Ginanjar Natasasmita', '', 'L0000001', NULL),
('P0000002', 'Asep Saepulloh', 'Jalan Buah Batu no. 123', 'Lengkap', '', '086794766044', 'Mengajukan Permohonan', 'Belum Disetujui', '2018-03-10', 'Ginanjar Natasasmita', '', 'L0000001', NULL),
('P0000003', 'Asep Rahmat', 'Jalan Buah Batu no. 12', NULL, '', '086794766044', 'Mengajukan Permohonan', 'Belum Disetujui', '2018-03-10', 'Ginanjar Natasasmita', 'Sudah Sertifikat', 'L0000001', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `jenis_akses` varchar(40) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`username`, `password`, `nama_p`, `alamat`, `nohp`, `level`, `jenis_akses`, `file`, `status`) VALUES
('admin56', 'admin', 'Henri', 'Jalan sukapura no.44 RT. 01 RW.02', '085794766044', 3, 'Kepala Desa', 'null', ''),
('fatih21', 'jagahati', 'Muhammad Alfatih', 'Jalan Buah Batu no. 303', '086794766555', 1, 'Petugas Seksi', '', ''),
('ginanjarn56', 'admin', 'Ginanjar Natasasmita', 'Jalan Raya Pacet no. 247, Kp. Cengkrong RT.01 RW.02', '085794766044', 2, 'Kepala Seksi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tanah`
--

CREATE TABLE `tanah` (
  `no_persil` varchar(10) NOT NULL,
  `kelas_t` varchar(10) NOT NULL,
  `jenis_t` varchar(10) NOT NULL,
  `pencatat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`nim`, `nama`, `jurusan`) VALUES
(67011401, 'Ginanjar N', 'Informatika'),
(67011402, 'Agung', 'ABC'),
(67011403, 'Basuki', 'SSS');

-- --------------------------------------------------------

--
-- Table structure for table `transaksitanah`
--

CREATE TABLE `transaksitanah` (
  `id_transaksi` varchar(10) NOT NULL,
  `kelas_t` varchar(10) NOT NULL,
  `jenis_t` varchar(10) NOT NULL,
  `luas_t` int(15) NOT NULL,
  `pajak` int(15) DEFAULT NULL,
  `sebab_alih` varchar(100) NOT NULL,
  `tgl_alih` date NOT NULL,
  `kohir_parent` int(15) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `pencatat` varchar(30) NOT NULL,
  `persetujuan` varchar(30) DEFAULT NULL,
  `bukti_surat` varchar(100) DEFAULT NULL,
  `statustanah` varchar(30) DEFAULT NULL,
  `nokohir` int(15) NOT NULL,
  `no_persil` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip_surat_tanah`
--
ALTER TABLE `arsip_surat_tanah`
  ADD PRIMARY KEY (`id_arsip`),
  ADD KEY `id_perm` (`id_perm`);

--
-- Indexes for table `bukti_pengambilan`
--
ALTER TABLE `bukti_pengambilan`
  ADD KEY `id_perm` (`id_perm`);

--
-- Indexes for table `detail_layanan`
--
ALTER TABLE `detail_layanan`
  ADD PRIMARY KEY (`idlayanan`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`nokohir`);

--
-- Indexes for table `permohonan_alih_hak_tanah`
--
ALTER TABLE `permohonan_alih_hak_tanah`
  ADD PRIMARY KEY (`idpermohonan`),
  ADD KEY `idlayanan` (`idlayanan`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tanah`
--
ALTER TABLE `tanah`
  ADD PRIMARY KEY (`no_persil`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `transaksitanah`
--
ALTER TABLE `transaksitanah`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `nokohir` (`nokohir`),
  ADD KEY `no_persil` (`no_persil`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arsip_surat_tanah`
--
ALTER TABLE `arsip_surat_tanah`
  ADD CONSTRAINT `arsip_surat_tanah_ibfk_1` FOREIGN KEY (`id_perm`) REFERENCES `permohonan_alih_hak_tanah` (`idpermohonan`);

--
-- Constraints for table `bukti_pengambilan`
--
ALTER TABLE `bukti_pengambilan`
  ADD CONSTRAINT `bukti_pengambilan_ibfk_1` FOREIGN KEY (`id_perm`) REFERENCES `permohonan_alih_hak_tanah` (`idpermohonan`);

--
-- Constraints for table `permohonan_alih_hak_tanah`
--
ALTER TABLE `permohonan_alih_hak_tanah`
  ADD CONSTRAINT `permohonan_alih_hak_tanah_ibfk_1` FOREIGN KEY (`idlayanan`) REFERENCES `detail_layanan` (`idlayanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permohonan_alih_hak_tanah_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `masyarakat` (`user_id`);

--
-- Constraints for table `transaksitanah`
--
ALTER TABLE `transaksitanah`
  ADD CONSTRAINT `transaksitanah_ibfk_1` FOREIGN KEY (`nokohir`) REFERENCES `pemilik` (`nokohir`),
  ADD CONSTRAINT `transaksitanah_ibfk_2` FOREIGN KEY (`no_persil`) REFERENCES `tanah` (`no_persil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
