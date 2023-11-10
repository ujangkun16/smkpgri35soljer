CREATE TABLE `berita` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `kategori` varchar(255),
  `judul` varchar(255),
  `konten` text,
  `slug` varchar(255),
  `id_galeri` integer,
  `created_at` timestamp
);

CREATE TABLE `galeri` (
  `id_galeri` integer PRIMARY KEY AUTO_INCREMENT,
  `caption` varchar(255),
  `media` varchar(255),
  `link` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ppdb` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nisn` varchar(255),
  `nama_siswa` varchar(255),
  `nama_ortu` varchar(255),
  `alamat` varchar(255),
  `asal_sekolah` varchar(255),
  `kontak_ortu` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `siswa` (
  `nis` integer PRIMARY KEY AUTO_INCREMENT,
  `status` varchar(255),
  `nama` varchar(255),
  `jenis_kelamin` varchar(255),
  `program_keahlian` varchar(255),
  `kelas` varchar(255),
  `alamat` varchar(255),
  `kontak_siswa` varchar(255),
  `nama_wali` varchar(255),
  `avatar` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `guru` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `kode_guru` integer,
  `nama` varchar(255),
  `jenis_kelamin` varchar(255),
  `program_keahlian` varchar(255),
  `kontak` varchar(255),
  `avatar` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `mapel` (
  `id_mapel` integer PRIMARY KEY AUTO_INCREMENT,
  `kode_mapel` varchar(255),
  `nama_mapel` varchar(255),
  `program_keahlian` varchar(255),
  `kelas` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `guru_mapel` (
  `kode_guru` integer,
  `kode_mapel` varchar(255),
  `jam_pelajaran` integer,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `mapel_siswa` (
  `nis` integer,
  `id_mapel` integer,
  `nilai` integer,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `buku` (
  `id` integer PRIMARY KEY,
  `kode_buku` varchar(255),
  `nama_buku` varchar(255),
  `penulis` varchar(255),
  `penerbit` varchar(255),
  `tahun_terbit` varchar(255),
  `stok` integer,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `rak` (
  `id_rak` integer PRIMARY KEY,
  `nama_rak` varchar(255),
  `lokasi` varchar(255),
  `kode_buku` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `anggota` (
  `id_peminjam` integer PRIMARY KEY,
  `kode_peminjam` varchar(255),
  `nis` integer,
  `keterangan` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `petugas` (
  `id_petugas` integer PRIMARY KEY,
  `kode_petugas` varchar(255),
  `nama_petugas` varchar(255),
  `jabatan` varchar(255),
  `kontak` varchar(255),
  `alamat` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `transaksi` (
  `id` integer PRIMARY KEY,
  `id_peminjam` integer,
  `id_petugas` integer,
  `kode_buku` varchar(255),
  `tgl_peminjaman` date,
  `tgl_kembali` date,
  `denda` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `galeri` ADD FOREIGN KEY (`id_galeri`) REFERENCES `berita` (`id_galeri`);

ALTER TABLE `guru_mapel` ADD FOREIGN KEY (`kode_guru`) REFERENCES `guru` (`kode_guru`);

ALTER TABLE `guru_mapel` ADD FOREIGN KEY (`kode_mapel`) REFERENCES `mapel` (`kode_mapel`);

ALTER TABLE `mapel_siswa` ADD FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);

ALTER TABLE `mapel_siswa` ADD FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

ALTER TABLE `rak` ADD FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`);

ALTER TABLE `transaksi` ADD FOREIGN KEY (`id_peminjam`) REFERENCES `anggota` (`id_peminjam`);

ALTER TABLE `transaksi` ADD FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

ALTER TABLE `transaksi` ADD FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`);

ALTER TABLE `siswa` ADD FOREIGN KEY (`nis`) REFERENCES `anggota` (`nis`);
