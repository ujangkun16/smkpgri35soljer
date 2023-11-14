-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 03:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkpgri35soljer`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_peminjam` int(11) NOT NULL,
  `kode_peminjam` varchar(255) DEFAULT NULL,
  `nis` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `gambar` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `kategori`, `judul`, `konten`, `slug`, `gambar`, `created_at`, `updated_at`) VALUES
(5, 'Poloitik', 'Pemilihan Ketua OSIS', 'jzkgsd', 'shgjasf', 'ashgd', '2023-11-12 20:36:13', '2023-11-12 20:36:13'),
(8, 'Poloitik', 'Pemilihan Ketua OSIS', 'aaaaaaa', 'shgjasf', 'Gambar1', '2023-11-12 21:28:58', '2023-11-12 21:28:58'),
(9, 'Poloitik', 'Pemilihan Ketua OSIS', 'b', 'shgjasf', 'Gambar1', '2023-11-12 21:29:31', '2023-11-12 21:38:33'),
(10, 'Pendidikan', 'Guru Tamu', 'Guru tamu.........................', 'Guru Tamu', 'sadsfdzxcda', '2023-11-12 22:19:01', '2023-11-12 22:19:01'),
(11, 'Pendidikan', 'aa', 'aa', 'aa', '28d28cccefae99be13a764caadc99a01.jpg', '2023-11-13 19:07:01', '2023-11-13 19:07:01'),
(12, 'Olahraga', 'Pemilihan Ketua OSIS', 'safsd', 'aa', '28d28cccefae99be13a764caadc99a01.jpg', '2023-11-13 19:18:21', '2023-11-13 19:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kode_buku` varchar(255) DEFAULT NULL,
  `nama_buku` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `kode_guru` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `mapel` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tgl_lahir` varchar(21) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `kode_guru`, `nama`, `jenis_kelamin`, `mapel`, `kontak`, `alamat`, `tgl_lahir`, `avatar`, `password`, `created_at`, `updated_at`) VALUES
(3, 12, 'Bayu', 'Laki-laki', 'Produktif', '23', 'aaaa', '10-10-2000', NULL, 'aa', '2023-11-10 00:20:58', '2023-11-10 00:20:58'),
(4, 111, 'Revia', 'Perempuan', 'Produktif', '111', 'Soljer', '10-10-2000', NULL, '1111', '2023-11-10 00:36:39', '2023-11-10 00:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel`
--

CREATE TABLE `guru_mapel` (
  `kode_guru` int(11) DEFAULT NULL,
  `kode_mapel` varchar(255) DEFAULT NULL,
  `jam_pelajaran` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(255) DEFAULT NULL,
  `nama_mapel` varchar(255) DEFAULT NULL,
  `program_keahlian` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `nis` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(11) NOT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `nama_ortu` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `kontak_ortu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `kode_buku` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `program_keahlian` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kontak_siswa` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_peminjam` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `kode_buku` varchar(255) DEFAULT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nis` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
