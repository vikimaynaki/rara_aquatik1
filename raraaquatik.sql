-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Okt 2020 pada 17.20
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raraaquatik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenguru`
--

CREATE TABLE `absenguru` (
  `kode_guru` varchar(20) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `tanggal_mengajar` varchar(25) NOT NULL,
  `jam_mengajar` varchar(25) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absenguru`
--

INSERT INTO `absenguru` (`kode_guru`, `nama_guru`, `tanggal_mengajar`, `jam_mengajar`, `nama_siswa`, `keterangan`) VALUES
('ev01', 'kak evy ', '05-09-2020', '07.30', 'fatimah ap', 'clock in'),
('ev01', 'kak evy ', '05-09-2020', '18.30', 'fatimah', 'clock out'),
('ev01', 'kak evy ', '12-09-2020', '10.00', 'fatimah ap', 'clock in'),
('ev01', 'kak evy ', '12-09-2020', '10.30', 'fatimah ap', 'clock out'),
('yan03', 'kak yayan', '05-09-2020', '08.00', 'hasan faily', 'clock in'),
('yan03', 'kak yayan', '05-09-2020', '09.00', 'hasan family', 'clock out'),
('yan03', 'kak yayan', '05-09-2020', '13.00', 'fatimah', 'clock in'),
('yan03', 'kak yayan', '05-09-2020', '14.00', 'fatimah', 'clock out');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensiswa`
--

CREATE TABLE `absensiswa` (
  `kode_siswa` varchar(20) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nama_ortu` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `kode_guru` varchar(20) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `tanggal_latihan` varchar(25) NOT NULL,
  `sesi_latihan` varchar(20) NOT NULL,
  `tanggal_sesi_izin` varchar(25) NOT NULL,
  `tanggal_reschedule` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensiswa`
--

INSERT INTO `absensiswa` (`kode_siswa`, `nama_siswa`, `nama_ortu`, `alamat`, `no_telp`, `kode_guru`, `nama_guru`, `tanggal_latihan`, `sesi_latihan`, `tanggal_sesi_izin`, `tanggal_reschedule`) VALUES
('01fa', 'fatimah a p', 'ana', 'jl moh kahfi 1 jaksel', '08127363233', 'ev01', 'kak evy ', '05-09-2020', 'sesi1', '-', '-'),
('01fa', 'fatimah a p', 'ana', 'jl moh kahfi 1 jaksel', '08127363233', 'ev01', 'kak evy ', '12-09-2020', 'sesi2', '-', '-'),
('03mhf', 'hasan family', 'eva', 'jl raya tanjung barat jaksel', '0813434334', 'yan03', 'kak yayan', '05-09-2020', 'sesi1', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataguru`
--

CREATE TABLE `dataguru` (
  `kode_guru` varchar(15) NOT NULL,
  `nama_guru` varchar(25) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dataguru`
--

INSERT INTO `dataguru` (`kode_guru`, `nama_guru`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
('adt04', 'kak aditia', 'bekasi', '08-07-1990', 'Laki-Laki', 'jl. moh kahfi 2 jaksel', '08128376221'),
('ev01', 'kak evy ', 'jakarta', '07-08-1988', 'Perempuan', 'jl lenteng agung', '08128736443'),
('hab02', 'kak habib', 'jakarta', '07-08-1986', 'Laki-Laki', 'jl kp rawageni', '0897878766'),
('yan03', 'kak yayan', 'bogor', '09-06-1988', 'Laki-Laki', 'jl jagakarsa jaksel', '08127747334');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `kode_karyawan` varchar(15) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datakaryawan`
--

INSERT INTO `datakaryawan` (`kode_karyawan`, `nama_karyawan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `jabatan`, `no_telepon`) VALUES
('01wa', 'wanda abdiadi', 'bogor', '19-02-1997', 'Laki-Laki', 'jl. cagar alam selatan depok', 'helper', '081280646830'),
('02ga', 'gitaayu', 'depok', '28-12-2001', 'Perempuan', 'jl. cagar alam selaan depok', 'helper', '08123637483');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datasiswa`
--

CREATE TABLE `datasiswa` (
  `kode_siswa` varchar(20) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nama_ortu` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datasiswa`
--

INSERT INTO `datasiswa` (`kode_siswa`, `nama_siswa`, `nama_ortu`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
('01fa', 'fatimah a p', 'ana', 'depok', '04-08-2013', 'Perempuan', 'jl moh kahfi 1 jaksel', '08127363233'),
('02ppa', 'popo p a', 'ina', 'jakarta', '03-01-2011', 'Perempuan', 'jl raya kebagusan jaksel', '08783323343'),
('03mhf', 'hasan family', 'eva', 'jakarta', '09-11-2015', 'Laki-Laki', 'jl raya tanjung barat jaksel', '0813434334'),
('04ap', 'annisa putri', 'ema', 'jakarta', '06-07-2014', 'Perempuan', 'jl raya margonda no 4', '08123223222'),
('05mh', 'muhammad umar', 'dina', 'jakarta', '11-08-2017', 'Laki-Laki', 'jl moh kahfi 2', '082233233333'),
('06um', 'nazmi umar ', 'dini', 'jakarta', '01-07-2017', 'Laki-Laki', 'jl kampung rawageni', '08128382223'),
('07abk', 'aidil abu bakar', 'lisa', 'jakarta', '09-09-2015', 'Laki-Laki', 'jl kampung rawageni', '082645366333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_guru`
--

CREATE TABLE `gaji_guru` (
  `kode_guru` varchar(25) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `tgl_pertemuan1` varchar(25) NOT NULL,
  `tgl_pertemuan2` varchar(25) NOT NULL,
  `tgl_pertemuan3` varchar(25) NOT NULL,
  `tgl_pertemuan4` varchar(25) NOT NULL,
  `jumlah_pertemuan` varchar(20) NOT NULL,
  `jumlahgaji_diterima` varchar(25) NOT NULL,
  `tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji_guru`
--

INSERT INTO `gaji_guru` (`kode_guru`, `nama_guru`, `nama_siswa`, `tgl_pertemuan1`, `tgl_pertemuan2`, `tgl_pertemuan3`, `tgl_pertemuan4`, `jumlah_pertemuan`, `jumlahgaji_diterima`, `tanggal`) VALUES
('ev01', 'kak evy ', 'fatimah ap', '05-09-2020', '12-09-2020', '', '', '2', '88000', '19-09-2020'),
('yan03', 'kak yayan', 'hasan family', '05-09-2020', '12-09-2020', '19-09-2020', '-', '3', '120000', '03-09-2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp_murid`
--

CREATE TABLE `spp_murid` (
  `kode_siswa` varchar(25) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `tanggal_bayar` varchar(25) NOT NULL,
  `pembayaran_bulan` varchar(25) NOT NULL,
  `jumlah_bayar` varchar(25) NOT NULL,
  `uang_bayar` varchar(25) NOT NULL,
  `kembalian` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spp_murid`
--

INSERT INTO `spp_murid` (`kode_siswa`, `nama_siswa`, `tanggal_bayar`, `pembayaran_bulan`, `jumlah_bayar`, `uang_bayar`, `kembalian`) VALUES
('01fa', 'fatimah a p', '05-09-2020', 'september', '125000', '150000', '25000'),
('03mhf', 'hasan family', '05-09-2020', 'september', '930000', '950000', '20000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataguru`
--
ALTER TABLE `dataguru`
  ADD PRIMARY KEY (`kode_guru`);

--
-- Indexes for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD PRIMARY KEY (`kode_karyawan`);

--
-- Indexes for table `datasiswa`
--
ALTER TABLE `datasiswa`
  ADD PRIMARY KEY (`kode_siswa`);

--
-- Indexes for table `spp_murid`
--
ALTER TABLE `spp_murid`
  ADD PRIMARY KEY (`kode_siswa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
