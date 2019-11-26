-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2019 at 01:22 PM
-- Server version: 10.2.27-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5863120_stpdn`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `judul` varchar(258) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tgl_about` date DEFAULT NULL,
  `photo` varchar(258) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `judul`, `deskripsi`, `tgl_about`, `photo`) VALUES
(2, 'Ini Kami, Pamong Praja 03', 'Bercita-cita menjadi seseorang yang bisa berguna dan bermanfaat bagi seseorang lainnya itulah seorang Pamong Praja. Ada banyak cerita dan kisah yang kuperoleh selama masa pendidikanku di IPDN, sebuah proses penempaan diri untuk menjadi seorang yang bisa memajukan bangsa ini.', '1993-02-02', '11102019025052-Pendidikan-8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `alamat` varchar(128) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `nip` varchar(128) DEFAULT NULL,
  `npp` varchar(128) DEFAULT NULL,
  `fk_id_kementrian` int(11) DEFAULT NULL,
  `fk_id_prov` int(11) DEFAULT NULL,
  `fk_id_kab_kot` int(11) DEFAULT NULL,
  `fk_id_kec` int(11) DEFAULT NULL,
  `fk_id_kel` int(11) DEFAULT NULL,
  `fk_id_pangkat` int(11) DEFAULT NULL,
  `jabatan` varchar(128) DEFAULT NULL,
  `instansi` varchar(128) DEFAULT NULL,
  `meninggal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `mobile_phone`, `email`, `photo`, `nip`, `npp`, `fk_id_kementrian`, `fk_id_prov`, `fk_id_kab_kot`, `fk_id_kec`, `fk_id_kel`, `fk_id_pangkat`, `jabatan`, `instansi`, `meninggal`) VALUES
(5, 'AAH ANWAR SAEFULOH', 'GARUT', '1972-12-29', 'Laki-laki', 'Jl. Adung No. 21 RT05 RW 03 Tarogong Garut', '-', '-', '15102019084332-WhatsApp_Image_2019-10-14_at_10_29_25.JPG', '19721229 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '-', '-', 'Masih Hidup'),
(6, 'ABAS SUDRAJAT', 'SUMEDANG', '1972-08-13', 'Laki-laki', 'Jl. Kantor Pos dan GHori No.17 Cimalaka-Sumedang Jawa Barat 45353', '-', '-', '15102019083234-WhatsApp_Image_2019-10-14_at_10_29_25.JPG', '19720813 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(7, 'ABBAS ADAM', 'TIDORE', '1972-10-10', 'Laki-laki', 'Topo RT 01/ RW 03 Tidore  Hal-Teng Maluku (97851)', '-', '-', '15102019090824-image.JPG', '19721010 19920_ 1 _ _ _', '-', 1, 32, 4, 1, 1, 12, '', '', 'Masih Hidup'),
(8, 'ABDILLAH WIBISONO WIDATMOJO', 'SUKOHARJO', '1972-01-30', 'Laki-laki', 'Tegalrejo RT 02 /RW 02 Kemasan, Polokarto Sukoharjo, Jawa Tengah ', '-', '-', '15102019091540-image.JPG', '19720130 19920_ 1 _ _ _', '-', 1, 14, 5, 1, 1, 12, '', '', 'Masih Hidup'),
(9, 'ABDUL AJID', 'MAJALENGKA', '1971-08-09', 'Laki-laki', 'Dusun 03 No. 438 Desa Logi  Kec. Jatiwangi Kab. Majalengka 45454 - Jawa Barat', '-', '-', '15102019091740-image.JPG', '19710809 19920_ 1 _ _ _', '-', 1, 13, 6, 1, 1, 12, '', '', 'Masih Hidup'),
(10, 'ABDUL HADI', 'SAMBAS', '1972-04-12', 'Laki-laki', 'Jl. Syafruddin No. 19 RT 04/ RW 01 Sambas - Kalbar', '-', '-', '15102019094732-image.JPG', '19720412 19920_ 1 _ _ _', '-', 1, 21, 7, 1, 1, 12, '', '', 'Masih Hidup'),
(11, 'ABDUL HAFID HALILI', 'KENDARI', '1971-10-13', 'Laki-laki', 'Jl. Macan No. 5/10 B, Tipulu Tipulu - Kendari (93122)', '-', '-', '15102019095230-image.JPG', '19711013 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(12, 'ABD. HARIS ZAHIR', 'DUMAI', '1972-11-09', 'Laki-laki', 'Jl. Bintan No. 3B/108 Dumai ', '-', '-', '15102019095547-image.JPG', '19721109 19920_ 1 _ _ _', '-', 1, 5, 9, 1, 1, 12, '', '', 'Masih Hidup'),
(13, 'ABD. MANAF DUNGGIO', 'GORONTALO', '1973-02-26', 'Laki-laki', 'Jl. Sarini Abdullah, Kel. Limba UU.2 Kec. Kota Selatan, Kodya Dati II Gorontalo 96115', '-', '-', '15102019100117-image.JPG', '19730226 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(14, 'ABDUL MUIN', 'TOAYA', '1972-06-06', 'Laki-laki', 'Jl. Otoiskandardinata IV  No.8B Palu (Sul-Teng)', '-', '-', '15102019101314-image.JPG', '19720606 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 1, '', '', 'Masih Hidup'),
(15, 'ABDURACHMAN', 'BOGOR', '1973-03-23', 'Laki-laki', 'Warung Pari - Pamoyangan Bogor', '-', '-', '15102019101630-image.JPG', '19730323 19920_ 1 _ _ _', '-', 1, 13, 15, 1, 1, 12, '', '', 'Masih Hidup'),
(16, 'ABDUL KHOWI', 'LAMONGAN', '1972-01-24', 'Laki-laki', 'Jl. KH. A. Dachlan 30 Latukan, Kec. Karanggenang Lamongan, Jawa Timur ', '-', '-', '15102019102300-image.JPG', '19720124 19920_ 1 _ _ _', '-', 1, 16, 10, 1, 1, 12, '', '', 'Masih Hidup'),
(17, 'ABDUL MANAN', 'TUBAN', '1973-01-19', 'Laki-laki', 'Ds. Dasin RT 07/RW 01 Tambakboyo, Tuban - Jawa Timur', '-', '-', '15102019102752-image.JPG', '19730119 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(19, 'ABDUL RACHMAN H. KALAPATI (IWAN)', 'SURABAYA', '1971-12-06', 'Laki-laki', 'Jl. Raden Saleh No. 8', '-', '-', '15102019111008-image.JPG', '19711206 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(20, 'ABDUL RAHMAN MAHMUD', 'PINRANG', '1972-10-21', 'Laki-laki', 'Jl. Jenderal Sudirman No. Jl/145 (Jaya Timur) Pinrang, Sulawesi Selatan 91212', '-', '-', '15102019131518-image.JPG', '19721021 19920_ 1 _ _ _', '-', 1, 28, 17, 1, 1, 12, '', '', 'Masih Hidup'),
(21, 'ABDUL WAHID', 'SUMENEP', '1971-06-30', 'Laki-laki', 'Jl. SD. Sambakati II Kangean Sumenep Madura Jatim  69491', '-', '-', '15102019131817-image.JPG', '19710630 19920_ 1 _ _ _', '-', 1, 16, 18, 1, 1, 12, '', '', 'Masih Hidup'),
(22, 'ABDURAHMAN WAKANO', 'LATU', '1971-11-13', 'Laki-laki', 'Ex. Asrama ARSU Air Salobar Ambon', '-', '-', '15102019132149-image.JPG', '19711113 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(23, 'ABILIO GENTIL DE M. XIMENES', 'Uatocarabau/Viqueque', '1971-06-18', 'Laki-laki', 'Ds. Afaloikai RT 01/RW 01 Kec. Uatocarbau Kab. Viqueque-Timor timur', '-', '-', '15102019132638-image.JPG', '19711806 19920_ 1 _ _ _', '-', 1, 36, 20, 1, 1, 12, '', '', 'Masih Hidup'),
(24, 'ACHMAD DZULKARNAIN', 'PAMEKASAN', '1972-11-23', 'Laki-laki', 'JL. Bunder 62 Padewu Pamekasan - Jawa Timur 69381', '-', '-', '15102019133004-image.JPG', '19721123 19920_ 1 _ _ _', '-', 1, 16, 21, 1, 1, 12, '', '', 'Masih Hidup'),
(25, 'A.B. NURYANTO RAUF', 'BULUKUMBA', '1972-02-24', 'Laki-laki', 'Jl. Andi Loji No. 6 Bulukumba Provinsi Sulawesi Selatan', '-', '-', '15102019133325-image.JPG', '19720224 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(26, 'ACEP SUJIDIN', 'GARUT', '1971-07-25', 'Laki-laki', 'Lemah Sari RT 03/RW 04, Ds. Situjaya Kec. Karangpawitan, Kab. Garut  Jabar.', '-', '-', '15102019162835-image.JPG', '19710725 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(27, 'ÀCHMADAN CHAIR', 'ASAHAN', '1972-11-01', 'Laki-laki', 'Jl. Medan Tenggara  VII Gg. Keluarga No. 13/B Medan (20228', '0622 - 31467', '-', '15102019134007-image.JPG', '19721101 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(28, 'ACHMAD BASYARUDDIN ARS', 'JAKARTA', '1973-03-18', 'Laki-laki', 'Jl. Seha Kebon Nanas No. 27 RT 11/RW 10, Kel. Grogol Selatan Kec. Kebayoran Lama, Jak-Sel 12220', '-', '-', '15102019134603-image.JPG', '19730318 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(29, 'ACHMAD EDWYN ANEDI', 'PONOROGO', '1972-02-05', 'Laki-laki', 'Ds. Jetis, Kec. Dagangan Madiun Jawa Timur', '-', '-', '15102019134926-image.JPG', '19720502 19920_ 1 _ _ _', '-', 1, 16, 26, 1, 1, 12, '', '', 'Masih Hidup'),
(30, 'ACHMAD KOMARUDIN', 'GARUT', '1971-12-30', 'Laki-laki', 'Jl. Cimanuk 324, depan SMEA Negeri Garut - Jawa Barat 44151', '-', '-', '15102019135712-image.JPG', '19713012 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(31, 'ACHMAD MUZAKKI', 'GRESIK ', '1971-05-23', 'Laki-laki', 'Ds. Ambeng-ambeng, RT IX, Duduk Gresik, Jawa TImur', '-', '-', '15102019140050-image.JPG', '19710523 19920_ 1 _ _ _', '-', 1, 16, 28, 1, 1, 12, '', '', 'Masih Hidup'),
(32, 'ACHMAD RAJA NASUTION', 'P. SUDIMPUAN', '1973-06-19', 'Laki-laki', 'Jl. Panca Budi No. 10  Sadabuan P.Sudimpuan - Sumut', '-', '-', '15102019140451-image.JPG', '19720619 19920_ 1 _ _ _', '-', 1, 3, 29, 1, 1, 12, '', '', 'Masih Hidup'),
(33, 'ACHMAD RICKY FAUZAN', 'TANGGERANG', '1973-03-19', 'Laki-laki', 'Jl. Kenaiban No. 40 Kec/Kodya Tanggerang 15114', '-', '-', '15102019141221-image.JPG', '19720319 19920_ 1 _ _ _', '-', 1, 17, 30, 1, 1, 12, '', '', 'Masih Hidup'),
(34, 'ACHMAD ZAINUDDIN', 'SIDOARJO', '1971-07-04', 'Laki-laki', 'Randegan RT 03 /I No. 3 Tanggulangin, Sidoarjo - Jawa Timur', '-', '-', '15102019141502-image.JPG', '19720704 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(35, 'ADE GUNAWAN LUBIS', 'BINJAI', '1972-03-26', 'Laki-laki', 'Jl. Purnawirawan No. 4 Binjai Sumatra Utara', '-', '-', '15102019142136-image.JPG', '19720326 19920_ 1 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(36, 'ABDUL MUNIB SUSANTO', 'BOJONEGORO', '1970-11-26', 'Laki-laki', 'Jl. Puspanjolo Timur VIII/6 Semarang', '-', '-', '15102019152056-image.JPG', '19721126 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(37, 'ADE WIBAWA', 'SUMEDANG', '1972-01-28', 'Laki-laki', 'Jl. Badama No. 32 Desa Cimuja Kec. Cimalaka, Kab Dati II Sumedang - 45353', '-', '-', '15102019152619-image.JPG', '19720128 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(38, 'ADI BAGUS SATRIYO', 'Rembang', '1973-04-03', 'Laki-laki', 'Jl. Pesantren No. 6, Rembang', '-', '-', '15102019152907-image.JPG', '19720403 19920_ 1 _ _ _', '-', 1, 14, 34, 1, 1, 12, '', '', 'Masih Hidup'),
(39, 'ADRIANUS MANOPPO', 'MANADO', '1972-02-14', 'Laki-laki', 'Jl. Panjaitan  No. 464 Kotamobagu', '-', '-', '15102019153231-image.JPG', '19720214 19920_ 1 _ _ _', '-', 1, 26, 35, 1, 1, 12, '', '', 'Masih Hidup'),
(40, 'AEP MULYADI RAHMAT', 'TALEGONG', '1972-09-05', 'Laki-laki', 'Cibungur, RT 03/IV Ds. Sukamulya Blk. Kec Talegong, Garut \r\nJl. Raya Pangalengan - CIsewu, Garut Jabar', '-', '-', '15102019153645-image.JPG', '19720905 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(41, 'AEP SAEPUDIN SUBANDI', 'SUBANG', '1970-09-04', 'Laki-laki', 'Ds. Bantarsari RT 04/01, Kec. Cijambe Kab. DT. Subang - Jabar', '-', '-', '15102019154117-image.JPG', '19720904 19920_ 1 _ _ _', '-', 1, 13, 37, 1, 1, 12, '', '', 'Masih Hidup'),
(42, 'AFIDA ASPAR', 'Ujung Pandang', '1973-07-18', 'Laki-laki', 'Jl. Cendrawasih No. 349 A Ujung Pandang - 90134, Sul-Sel', '-', '-', '15102019154408-image.JPG', '19720718 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(43, 'AGUNG BUDI WALUYO', ' Lumajang', '1971-02-05', 'Laki-laki', 'Jl. Raya Candipuro Wetan 461 Kec. Candipuro - Lumajang Jawa Timur', '-', '-', '15102019154726-image.JPG', '19720205 19920_ 1 _ _ _', '-', 1, 16, 39, 1, 1, 12, '', '', 'Masih Hidup'),
(44, 'AGUNG RISWINARNO', 'Surabaya ', '1973-01-20', 'Laki-laki', 'Kompleks Angakatan Laut Biak, Irian Jaya', '-', '-', '15102019154956-image.JPG', '19720120 199203 1', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(45, 'AGUS SUPRIADI HARAHAP', 'MEDAN', '1971-08-18', 'Laki-laki', 'Jl. Aster I No. 31 Perumnas Helvitia - Medan', '-', '-', '15102019155720-image.JPG', '19710808 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(46, 'AGUNG SUYANTO', 'SRAGEN', '1972-05-14', 'Laki-laki', 'Jl. Mataram VIII No. 2 RT 02 RW X Banyuanyar - Surakarta', '-', '-', '15102019200207-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720514 19920_ 1 _ _ _', '-', 1, 14, 42, 1, 1, 12, '', '', 'Masih Hidup'),
(47, 'AGUNG WIDODO', 'SEMARANG', '1972-04-01', 'Laki-laki', 'Jl. Abd. Rachman Saleh No. 98A Kodya Semarang- Jawa Tengah ', '-', '-', '15102019203223-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720401 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(48, 'AGUNG YUSIANTO', 'BANJARNEGARA', '1972-08-11', 'Laki-laki', 'Jl. KH. Bushairi No. 315, Banjarnegara ', '(0286) - 91684', '-', '15102019203611-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720811 19920_ 1 _ _ _', '-', 1, 14, 44, 1, 1, 12, '', '', 'Masih Hidup'),
(49, 'AGUS', 'KANJIRO', '1972-08-17', 'Laki-laki', 'Jl. Y. Wayong, Aspol Kadia Kendari - Sulawesi Tenggara', '-', '-', '15102019203908-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720817 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(50, 'AGUS ATTO MALLISA', 'RANTEPAO', '1972-08-07', 'Laki-laki', 'Jl. Ahmad Yani No. 71 Rantepao Tana Toraja - Sulawesi Selatan', '-', '-', '15102019204252-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720807 19920_ 1 _ _ _', '-', 1, 28, 46, 1, 1, 12, '', '', 'Masih Hidup'),
(51, 'AGUS BAMBANG LELONO', 'JEPARA', '1972-11-07', 'Laki-laki', 'Jl. Shima 41, Jepara Jawa Tengah', '-', '-', '15102019204756-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721107 19920_ 1 _ _ _', '-', 1, 14, 47, 1, 1, 12, '', '', 'Masih Hidup'),
(52, 'AGUS CAHYONO', 'NGANJUK', '1970-09-13', 'Laki-laki', 'Bendoangung RT 06/II No. 11 Kampak, Trenggalek - Jawa Timur', '-', '-', '15102019205155-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700913 19920_ 1 _ _ _', '-', 1, 16, 48, 1, 1, 12, '', '', 'Masih Hidup'),
(53, 'AGUS DWI LESTARI', 'REMBANG', '1972-08-29', 'Laki-laki', 'Jl. Damar Utara Dalam II/175 Banyumanik, Semarang, Jateng', '-', '-', '15102019205541-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720829 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(54, 'AGUS DWI SAPUTRA', 'MADIUN', '1972-10-02', 'Laki-laki', 'Jl. Meyjen Suprapto 297 Tulungagung', '-', '-', '15102019205802-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721002 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(55, 'AGUS EFENDI', 'KEDIRI', '1973-09-09', 'Laki-laki', 'Jl. K.H. Wakhid Hasyim II/17 Bandar Kidul-Kediri Jawa Timur', '-', '-', '15102019210129-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730909 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(56, 'AGUS ENDANG HANAFIAH', 'LEBAK ', '1972-02-07', 'Laki-laki', 'Ds./Kec. Bojongmanik Kab. DT II Lebak - Banten', '-', '-', '15102019210454-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720207 19920_ 1 _ _ _', '-', 1, 17, 52, 1, 1, 12, '', '', 'Masih Hidup'),
(57, 'AGUS FATONI', 'SUKABUMI', '1972-06-06', 'Laki-laki', 'Jl. Mesir No.59/112, Sukabumi Bahuga - Lampung Utara (34563)', '-', '-', '15102019210904-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720606 19920_ 1 _ _ _', '-', 1, 9, 53, 1, 1, 12, '', '', 'Masih Hidup'),
(58, 'AGUS FILMA', 'JAYAPURA', '1972-08-30', 'Laki-laki', 'Jl. Halmahera No. 2A Jayapura - Irian Jaya', '-', '-', '15102019211242-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720830 19920_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(59, 'AGUS HIDAYAT', 'TEMON, KULON PROGO', '1972-10-06', 'Laki-laki', 'Temon Wetan RT 12/RW 06 No. 47 Kec. Kab. Kulon Progo, Yogyakarta (55654)', '-', '-', '15102019211549-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721006 19920_ 1 _ _ _', '-', 1, 15, 55, 1, 1, 12, '', '', 'Masih Hidup'),
(60, 'AGUS KORI HIDAYAT', 'SUMEDANG', '1972-08-30', 'Laki-laki', 'Jl. Angkrek, Gang Budaya No. 19 RT 02/14 Sumedang 45232', '-', '-', '15102019211859-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720830 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(61, 'AGUS KUNCORO', 'TULUNGAGUNG', '1971-08-19', 'Laki-laki', 'Subontoro RT I/RW , Boyolangu, Tulunagung Jawa Timur', '-', '-', '15102019213136-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710819 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(62, 'AGUS MANDAR', 'BASERAH', '1973-08-18', 'Laki-laki', 'Jl. Sukamaju II No. 17 Gobah-Pekan baru - Riau ', '-', '-', '15102019213342-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730818 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(63, 'AGUS MULYANTO', 'BANDUNG', '1971-02-11', 'Laki-laki', 'Kamp. Mariuk RT 01/RW 07 Ds. Bojong Salam Kec. Rancaekek, Kab. Bandung', '-', '-', '15102019213644-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710211 19920_ 1 _ _ _', '-', 1, 13, 112, 1, 1, 12, '', '', 'Masih Hidup'),
(64, 'AGUS MUSTAMIN', 'SUMBAWA', '1970-08-23', 'Laki-laki', 'Jl Kebayan Gg. Tambora III No. 05 Kel. Lempeh - Sumbawa Besar (NTB)', '-', '-', '15102019213953-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700823 19920_ 1 _ _ _', '-', 1, 19, 58, 1, 1, 12, '', '', 'Masih Hidup'),
(65, 'AGUS PURWANTO', 'JAKARTA', '1972-08-06', 'Laki-laki', 'Duta Lestari Estate Blok A III No.22 Jl. Raya Mauk KM. 4 Tanggerang ', '(021) 5536437', '-', '15102019214312-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720806 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(66, 'AGUS RAHMAT', 'BANDUNG', '1971-08-17', 'Laki-laki', 'Jl. Jatihandap Gg. II No.35 RT.05/04 Kel.Mandalajati Kec.Cicadas Kota Bandung', '-', '-', '15102019223621-image.JPG', '19710817 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '-', '-', 'Masih Hidup'),
(67, 'AGUS SALIM', 'MPURI', '1971-01-30', 'Laki-laki', 'Jl. Walet No.12 Karang Jangkong Mataram - NTB', '-', '-', '15102019224501-image.JPG', '19710130 19920_ 1 _ _ _', '-', 1, 19, 59, 1, 1, 12, '-', '-', 'Masih Hidup'),
(68, 'AGUSSALIM', 'PAJEKKO', '1972-03-02', 'Laki-laki', 'Jl. Pajekko No.11 RT.07 RW.08 Desa Samaelo Kec.Barebbo Kab.Bone Sulawesi Selatan', '-', '-', '15102019224800-image.JPG', '19720302 19920_ 1 _ _ _', '-', 1, 28, 60, 1, 1, 12, '-', '-', 'Masih Hidup'),
(69, 'AGUS SAEPUDIN', 'SUMEDANG', '1973-01-09', 'Laki-laki', 'Dusun Nangkod RT.04/03 Ds.Sukagalih Kec.Sumedang Selatan Kab.Sumedang', '-', '-', '15102019225112-image.JPG', '19730109 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '-', '-', 'Masih Hidup'),
(70, 'AGUS SANTOSO', 'JOMBANG', '1973-03-29', 'Laki-laki', 'Jatipelem RT.04 RW.01 No.52 Kec.Diwek Kab.Jombang Jawa TImur', '-', '-', '15102019225304-image.JPG', '19730329 19920_ 1 _ _ _', '-', 1, 1, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(71, 'AGUS SETYOKO', 'SURABAYA', '1971-03-04', 'Laki-laki', 'Jl. Mastrip Kedurus II Buyut/105C, Kec.Karang Pilang - Surabaya, Jawa Timur', '-', '-', '15102019225458-image.JPG', '19710304 19920_ 1 _ _ _', '-', 1, 1, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(72, 'AGUS SUSANTO', 'KUDUS', '1971-08-22', 'Laki-laki', 'Jl.Kampus UMK 99 Gg.Dahlia 698 Dersalam RT.01/II, Bae, Kudus, Jawa Tengah', '-', '-', '15102019225719-image.JPG', '19710822 19920_ 1 _ _ _', '-', 1, 14, 63, 1, 1, 12, '-', '-', 'Masih Hidup'),
(73, 'AGUSTAM', 'AMESSANGENG', '1973-08-20', 'Laki-laki', 'Jl.Bajo, LR.8 Tampangeng Sengkang Kab.Wajo - Sulawesi Selatan', '-', '-', '15102019230247-image.JPG', '19730820 19920_ 1 _ _ _', '-', 1, 1, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(74, 'AGUSTAR', 'KAMPAR', '1972-06-19', 'Laki-laki', 'Jl.Gelugur No.16 Tangkerang Utara Kec.Bukit Jaya - Pekanbaru', '-', '-', '15102019230507-image.JPG', '19720619 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '-', '-', 'Masih Hidup'),
(75, 'AGUSTINA PURDJIANTI', 'SEMARANG', '1972-08-20', 'Perempuan', 'Jl.Nirbhaya I/H-1 Lampriet Banda Aceh 23126', '-', '-', '15102019231025-image.JPG', '19720820 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '-', '-', 'Masih Hidup'),
(76, 'AGUSTINUS', 'KUPANG', '1972-09-08', 'Laki-laki', 'Jl.Kanbaniru No.16 Kupang 85119 NTT', '-', '-', '15102019232451-image.JPG', '19720908 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '-', '-', 'Masih Hidup'),
(77, 'AGUSTO HENRIQUES', 'MALIANA', '1969-08-28', 'Laki-laki', 'Jl. Rumah Sakit Lama', '-', '-', '15102019232716-image.JPG', '19690828 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(78, 'AGUS TRIYONO', 'JAKARTA', '1972-08-21', 'Laki-laki', 'Jl.Dukuh V RT.007/02 No.26 Kel.Dukuh Kec.Kramat Jati Jakarta Timur 13550', '-', '-', '15102019232937-image.JPG', '19720821 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '-', '-', 'Masih Hidup'),
(79, 'AGUS WIBOWO', 'PROBOLINGGO', '1971-08-14', 'Laki-laki', 'Jl. Setia budi No.366, Ds.Kademangan-Probolinggo', '-', '-', '15102019233209-image.JPG', '19710814 19920_ 1 _ _ _', '-', 1, 16, 68, 1, 1, 12, '-', '-', 'Masih Hidup'),
(80, 'AGUS WINARTO', 'KLATEN', '1973-03-18', 'Laki-laki', 'Muruh, Gantiwarno,Klaten,Jawa Tengah', '-', '-', '15102019233352-image.JPG', '19730318 19920_ 1 _ _ _', '-', 1, 14, 69, 1, 1, 12, '-', '-', 'Masih Hidup'),
(81, 'AGUS YOSEPH PRASETYO SUKAMDHIE', 'BALIKPAPAN', '1972-08-21', 'Laki-laki', 'Jl.Hasanudin No.73 E Pasuruan - Jawa Timur', '-', '-', '15102019233658-image.JPG', '19720821 19920_ 1 _ _ _', '-', 1, 16, 70, 1, 1, 12, '-', '-', 'Masih Hidup'),
(82, 'AHDIYAT RIDHO', 'PEMALANG', '1974-01-01', 'Laki-laki', 'Jl. Semampir No.25 Pedurungan Taman Pemalang - 52361', '-', '-', '15102019233856-image.JPG', '19740101 19920_ 1 _ _ _', '-', 1, 14, 71, 1, 1, 12, '-', '-', 'Masih Hidup'),
(83, 'AHMAD ARFAN', 'BULUKUMBA', '1972-12-12', 'Laki-laki', 'Jl.H.A. Karim 29 Bulukumba Sulawesi Selatan 925123', '-', '-', '15102019234140-image.JPG', '19721212 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '-', '-', 'Masih Hidup'),
(84, 'AHMAD FAISHOL NS.', 'BANYUWANGI', '1973-01-01', 'Laki-laki', 'Jl.Sultan Agung 79 Bangorejo, Kab.Banyuwangi RT.02 RW.01 Ds.Bangorejo Kab.Banyuwangi Jawa Timur', '-', '-', '15102019234418-image.JPG', '19730101 19920_ 1 _ _ _', '-', 1, 16, 72, 1, 1, 12, '-', '-', 'Masih Hidup'),
(85, 'AHMAD FATHONI', 'SURAKARTA', '1971-02-17', 'Laki-laki', 'Jl. Tanjung Rema Pasir No.42 I RT.09 RW.03 Martapura - KalSel', '-', '-', '15102019234656-image.JPG', '19710217 19920_ 1 _ _ _', '-', 1, 23, 73, 1, 1, 12, '-', '-', 'Masih Hidup'),
(86, 'AHMAD HARIYANTO', 'CIAMIS', '1973-04-08', 'Laki-laki', 'Jl. Cengkeh Selatan IV/207 Way Halim - Bandar Lampung - Lampung', '-', '-', '15102019234913-image.JPG', '19730408 19920_ 1 _ _ _', '-', 1, 9, 74, 1, 1, 12, '-', '-', 'Masih Hidup'),
(87, 'AHMAD KHUSAIRI', 'TEMBILAHAN', '1972-09-13', 'Laki-laki', 'Jl.H.Hasan Gani Lrg.Tiong No.87 Tembilahan 29212', '(0768) 22336', '-', '15102019235349-image.JPG', '19720913 19920_ 1 _ _ _', '-', 1, 5, 75, 1, 1, 12, '-', '-', 'Masih Hidup'),
(88, 'AHMAD LAIDI', 'LAHA', '1972-05-09', 'Laki-laki', 'Jl. Hatunuku Kamp.Baru Ds.Laha RT.005 Kec.Baguala Kodya Ambon', '-', '-', '15102019235634-image.JPG', '19720509 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '-', '-', 'Masih Hidup'),
(89, 'AHMAD RIADI PANE', 'JAMBI', '1972-12-31', 'Laki-laki', 'Jl.Teuku Sulaiman RT.17 RW.05 No.45 Pekanbaru Jambi 36132', '-', '-', '15102019235915-image.JPG', '19721212 19920_ 1 _ _ _', '-', 1, 6, 57, 1, 1, 12, '-', '-', 'Masih Hidup'),
(90, 'AHMAD SAMSUL BAHRI', 'SUKABUMI', '1971-10-07', 'Laki-laki', 'Jl.Pramuka RT.06 RW02 Cikondang - Sukabumi', '-', '-', '16102019000138-image.JPG', '19711007 19920_ 1 _ _ _', '-', 1, 13, 76, 1, 1, 12, '-', '-', 'Masih Hidup'),
(91, 'AHMAD SODIKIN', 'JAKARTA', '1972-07-02', 'Laki-laki', 'Jl.R.Moh. Kahfi 1 No.3 RT.006 RW.002 Cipedak - JakSel 12630', '-', '-', '16102019000355-image.JPG', '19720702 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '-', '-', 'Masih Hidup'),
(92, 'AHMAD SYAUQI', 'BANJARMASIN', '1972-08-10', 'Laki-laki', 'Jl.Pekapuran Raya RT.11 No.14 Banjarmasin - KalSel 70234', '-', '-', '16102019000618-image.JPG', '19720810 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '-', '-', 'Masih Hidup'),
(93, 'AHRIAWANDY', 'KENDARI', '1970-10-18', 'Laki-laki', 'Jl.R.A. Kartini RW.07 RT.02 Kel.Kessillampe Kendari Caddi (Komp.Bea & Cukai) Kendari - SulTra', '-', '-', '16102019000924-image.JPG', '19701018 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '-', '-', 'Masih Hidup'),
(94, 'ALAMSYAH', 'PEDAMARAN', '1970-12-01', 'Laki-laki', 'Jl.Letkol Zainal Abbidin 73 Pedamaran 1 Ke.Pedamaran Kb.Ogan Komering Ilir Sumatera Selatan 30672', '-', '-', '16102019001250-image.JPG', '19701201 19920_ 1 _ _ _', '-', 1, 7, 79, 1, 1, 12, '-', '-', 'Masih Hidup'),
(95, 'ALAMSYAH MAPPATANG', 'PAMMANA', '1971-12-26', 'Laki-laki', 'Jl. Raya Sengkang-Bone Km.12 RT.01 RW.03 Kel.Pammana Kec.Pammana Kab.Wajo Sulawesi Selatan 90971', '-', '-', '16102019001517-image.JPG', '19711226 19920_ 1 _ _ _', '-', 1, 28, 64, 1, 1, 12, '-', '-', 'Masih Hidup'),
(96, 'A. LATIEF', 'BANYUWANGI', '1972-11-15', 'Laki-laki', 'Salamrejo Ds.Sumbergondo Kec.Glenmore Kab.Banyuwangi Jawa Timur', '-', '-', '16102019001807-image.JPG', '19721115 19920_ 1 _ _ _', '-', 1, 16, 72, 1, 1, 12, '-', '-', 'Masih Hidup'),
(97, 'ALBERTH ALEXANDER R', 'MANOKWARI', '1973-07-09', 'Laki-laki', 'Perumahan Fasarkan TNI - AL (A.9) Jl.Mamberamo Sanggeng Manokwari Irian Jaya 98312', '-', '-', '16102019002136-image.JPG', '19730709 19920_ 1 _ _ _', '-', 1, 34, 80, 1, 1, 12, '-', '-', 'Masih Hidup'),
(98, 'ALBERTIN D DJEEN', 'JAKARTA', '1972-01-26', 'Laki-laki', 'Jl.Santa Crus Maliana Timor Timur', '-', '-', '16102019002344-image.JPG', '19720126 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(99, 'ALBERTO NATALIANO MAULANY', 'LATULAHAT', '1971-12-29', 'Laki-laki', 'Perumahan Pemda 1 RT.02 RW.05 Poka-Ambon-Maluku', '-', '-', '16102019002639-image.JPG', '1971129 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '-', '-', 'Masih Hidup'),
(100, 'ALBINO MAIA BARRETO', 'ERMERA', '1970-07-20', 'Laki-laki', 'Ds.Motael Kec.Dili Barat Kab.Dati II Dilli', '-', '-', '16102019002842-image.JPG', '19700720 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(101, 'ALEXANDER', 'UJUNG PANDANG', '1972-11-06', 'Laki-laki', 'Jl.Kumala 144 A Ujung Pandang Sulawesi Selatan', '-', '-', '16102019003045-image.JPG', '19721106 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(102, 'ALFIAN', 'PAYAKUMBUH', '1970-07-13', 'Laki-laki', 'Jl.Kenanga Gg.Tauhid No.1 Pekanbaru Riau', '-', '-', '16102019003256-image.JPG', '19700713 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '-', '-', 'Masih Hidup'),
(103, 'ALFONS PUNI', 'GALELA', '1971-04-13', 'Laki-laki', 'Bale Kec.Galela Ternate Maluku Utara', '-', '-', '16102019003440-image.JPG', '19710413 19920_ 1 _ _ _', '-', 1, 33, 82, 1, 1, 12, '-', '-', 'Masih Hidup'),
(104, 'ALI HUSAIN', 'PAREPARE', '1972-02-27', 'Laki-laki', 'Jl.Andi Panyiwi No.6B Pangkajene Sidenreng - Sulawesi Selatan', '-', '-', '16102019003721-image.JPG', '19720227 19920_ 1 _ _ _', '-', 1, 28, 83, 1, 1, 12, '-', '-', 'Masih Hidup'),
(105, 'ALI ISKANDAR', 'SUKABUMI', '1972-04-01', 'Laki-laki', 'Ds.Kertarahaja Kec.Cikembar Kab.DT.II Sukabumi Jl.Pelabuhan II Km.12', '-', '-', '16102019004012-image.JPG', '19720401 19920_ 1 _ _ _', '-', 1, 13, 88, 1, 1, 12, '-', '-', 'Masih Hidup'),
(106, 'ALKADRI', 'SINGKAWANG', '1971-01-05', 'Laki-laki', 'Jl.Alianyang No.16  RT.08 RW.03 Ds.Sei Wie Kec.Roban Kotif Singkawang KalBar 79115', '-', '-', '16102019004231-image.JPG', '19710105 19920_ 1 _ _ _', '-', 1, 21, 84, 1, 1, 12, '-', '-', 'Masih Hidup'),
(107, 'ALMUDASIR', 'PEKANBARU', '1971-10-25', 'Laki-laki', 'Jl.WR.Supratman No.22 Pekanbaru - Riau', '-', '-', '16102019004919-image.JPG', '19711025 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '-', '-', 'Masih Hidup'),
(108, 'ALWIAH SUPU YUSUF S,Sos,MSi', 'KENDARI', '1972-09-05', 'Perempuan', 'JLN LETJEND SUPRAPTO lll NO 4 KEL PLOSO KEC NGANJUK KAB NGANJUK ', '081335750607', '-', '30102019081813-IMG_20190913_043018_-_alwiah_yusuf.jpg', '19720905 1992 1  002', '03.1461', 1, 16, 148, 1, 1, 12, 'KASUBID PEMERINTAHAN DAERAH PADA BAPPEDA', 'BAPPEDA', 'Masih Hidup'),
(109, 'AIMEL NAZRA', 'TIAKAR', '1972-05-21', 'Laki-laki', 'Tiakar Guguk Kab.50 Kota Aceh Jl.Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019005345-image.JPG', '19720521 19920_ 1 _ _ _', '-', 1, 2, 85, 1, 1, 12, '-', '-', 'Masih Hidup'),
(110, 'AKHMAD BASIR. AM', 'BULUKUMBA', '1972-10-05', 'Laki-laki', 'Jl.Pendidikan No.G-96 Tanete Kab.Bulukumba SulSel', '-', '-', '16102019005559-image.JPG', '19721005 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '-', '-', 'Masih Hidup'),
(111, 'AKSAN SITABA', 'LASUSUA', '1971-01-03', 'Laki-laki', 'Ds. Rantelimbung Kec.Lasusua Kab.Kolaka', '-', '-', '16102019005805-image.JPG', '19710103 19920_ 1 _ _ _', '-', 1, 29, 86, 1, 1, 12, '-', '-', 'Masih Hidup'),
(112, 'AMANDIO AMARAL REITAS', 'FATUISIN', '1971-03-02', 'Laki-laki', 'Suai Fatisin J. Cabang Saui Loro Ds.Kamenasa Kab.Suai Kovalima Dili', '-', '-', '16102019010012-image.JPG', '19710302 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(113, 'AMANDIO PAULINO G.D.R.D.S', 'DILI', '1971-07-19', 'Laki-laki', 'Jl.Vila-Verde RT.21 RW.10 Dili Barat Timor Timur', '-', '-', '16102019010202-image.JPG', '19710719 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(114, 'AMIR FAUZIE', 'PALEMBANG', '1970-05-12', 'Laki-laki', 'Jl.Lingkaran 1 RT.1 No.70 kel.9 ilir Palembang 30113', '-', '-', '16102019010339-image.JPG', '19700512 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '-', '-', 'Masih Hidup'),
(115, 'AMIR HAMZAH', 'SUKABUMI', '1973-08-21', 'Laki-laki', 'Cijangkar No.64 RT.02 RW.01 Ds.Cisarua Kab.Sukabumi Jabar 43151', '-', '-', '16102019010841-image.JPG', '19730821 19920_ 1 _ _ _', '-', 1, 13, 88, 1, 1, 12, '-', '-', 'Masih Hidup'),
(116, 'AMRIN ABDULLAH', 'UJUNG PANDANG', '1973-06-27', 'Laki-laki', 'Jl.Lasandra No.16C Kendari Sulawesi Tenggara', '-', '-', '16102019011034-image.JPG', '19730627 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '-', '-', 'Masih Hidup'),
(117, 'AMRIN MA\'RUF', 'BANYUMAS', '1972-05-30', 'Laki-laki', 'Sidabowa RT.05 Rw.02 Kec.Patikraja Kab.Banyumas Jawa Tengah 53171', '-', '-', '16102019011300-image.JPG', '19720530 19920_ 1 _ _ _', '-', 1, 14, 89, 1, 1, 12, '-', '-', 'Masih Hidup'),
(118, 'ANANIAS FAOT', 'TETAF', '1972-04-17', 'Laki-laki', 'Perum Pemda I Jl.Yos Sudarso Kab.Fakfak Irian Jaya', '-', '-', '16102019011505-image.JPG', '19720417 19920_ 1 _ _ _', '-', 1, 34, 90, 1, 1, 12, '-', '-', 'Masih Hidup'),
(119, 'ANANTO WIBOWO', 'PONTIANAK', '1973-05-24', 'Laki-laki', 'Jongkangan, Tamanmartani, Kalasan sleman D.I.Yogyakarta 55571', '-', '-', '16102019011705-image.JPG', '19730524 19920_ 1 _ _ _', '-', 1, 15, 91, 1, 1, 12, '-', '-', 'Masih Hidup'),
(120, 'ANASRULLAH', 'TELUKBETUNG', '1972-10-24', 'Laki-laki', 'Jl.Yos Sudarso Gg.Kenari I/19 Sukaraja-Telukbetung Bandar Lampung', '-', '-', '16102019011911-image.JPG', '19721024 19920_ 1 _ _ _', '-', 1, 9, 74, 1, 1, 12, '-', '-', 'Masih Hidup'),
(121, 'ANCIL SUDARTO', 'KARANGANYAR', '1970-10-03', 'Laki-laki', 'Pundungrejo Ds.Jati Kec.Jaten Kab.Karanganyar', '-', '-', '16102019012100-image.JPG', '19701003 19920_ 1 _ _ _', '-', 1, 14, 92, 1, 1, 12, '-', '-', 'Masih Hidup'),
(122, 'ANDERIAS MARKUS', 'MOKDALE BAA-ROTE', '1972-03-09', 'Laki-laki', 'Ds.Mokdale Kec.Lobalain Pulau Rote NTT 85371', '-', '-', '16102019012305-image.JPG', '19720309 19920_ 1 _ _ _', '-', 1, 20, 93, 1, 1, 12, '-', '-', 'Masih Hidup'),
(123, 'ANDI AHMAD LUTHFI S.', 'UJUNG PANDANG', '1973-04-26', 'Laki-laki', 'Jl.Kebangkitan No.15B Ujung Pandang', '-', '-', '16102019012626-image.JPG', '19730426 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(124, 'ANDI AZIKIN', 'WATAMPONE', '1972-12-23', 'Laki-laki', 'Jl.R.S Islam Faisal VII No.8 Ujung Pandang Sulawesi Selatan', '853283', '-', '16102019012859-image.JPG', '19721223 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(125, 'ANDI BAHRUN RIZAL', 'BARRU', '1973-01-28', 'Laki-laki', 'Jl.Bonto Duri No.21 Gunung Sari Baru Ujung Pandang', '-', '-', '16102019013106-image.JPG', '19730128 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(126, 'ANDI BATARA', 'MADDUKELLENG', '1971-09-06', 'Laki-laki', '-', '-', '-', '16102019013304-image.JPG', '19710906 19920_ 1 _ _ _', '-', 1, 28, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(127, 'ANDI HARIS NASUTION', 'BIMA', '1972-10-05', 'Laki-laki', 'Jl.Barito I No.6 Tanjung Karang Ampenan NTB', '-', '-', '16102019013555-image.JPG', '19721005 19920_ 1 _ _ _', '-', 1, 19, 129, 1, 1, 12, '-', '-', 'Masih Hidup'),
(128, 'ANDI HERMAWAN', 'LOJI, JATIWANGI', '1971-04-03', 'Laki-laki', 'RT.01 RW.02 Dusun II No.87 Ds.Loji Kec.Jatiwangi Kab.Majalengka 45454', '-', '-', '16102019014101-image.JPG', '19710403 19920_ 1 _ _ _', '-', 1, 13, 6, 1, 1, 12, '-', '-', 'Masih Hidup'),
(129, 'ANDI HERNAWATI. R', 'UJUNG PANDANG', '1971-02-07', 'Perempuan', 'Jl.Syech Yusuf Komp.Minasa Upa Blok F20/7 Ujung Pandang', '-', '-', '16102019014354-image.JPG', '19710207 19920_ 2 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(130, 'ANDI IDIL', 'BONE', '1972-08-03', 'Laki-laki', 'Jl.A.Pasinringi No.1 Watampone Kotif Bone Sulawesi Selatan', '-', '-', '16102019014612-image.JPG', '19720803 19920_ 1 _ _ _', '-', 1, 28, 60, 1, 1, 12, '-', '-', 'Masih Hidup'),
(131, 'ANDI ILHAM ABUBAKAR', 'BONE', '1972-05-12', 'Laki-laki', 'Jl.Persatuan Raya 01.A Kabupaten Sinjai SulSel 92612', '-', '-', '16102019014821-image.JPG', '19720512 19920_ 1 _ _ _', '-', 1, 28, 94, 1, 1, 12, '-', '-', 'Masih Hidup'),
(132, 'ANDI INDRAWATY', 'PALOPO', '1971-07-12', 'Perempuan', 'Jl.Pierre Tandean Blok C-7 Ujung Pandang SulSel', '-', '-', '16102019015018-image.JPG', '19710712 19920_ 2 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(133, 'ANDI MUHAMMAD ARSYAD', 'PAREPARE', '1972-12-09', 'Laki-laki', 'Jl.Bouraq No.1 Komp.Perhub.Udara Batang Ase II-Maros SulSel 90552', '-', '-', '16102019015353-image.JPG', '19721209 19920_ 1 _ _ _', '-', 1, 28, 130, 1, 1, 12, '-', '-', 'Masih Hidup'),
(134, 'ANDI MUHAMMAD HIDAYAT P.', 'BONE', '1971-11-28', 'Laki-laki', 'Jl.Adhyaksa VI No.17 Ujung Pandang SulSel', '-', '-', '16102019020334-image.JPG', '19711128 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(135, 'ANDI MUHAMMAD RUM. AS', 'SENGKANG', '1973-10-21', 'Laki-laki', 'Jl.Pahlawan No.20 Sengkang Kab.Wajo SulSel', '-', '-', '16102019020702-image.JPG', '19731021 19920_ 1 _ _ _', '-', 1, 28, 64, 1, 1, 12, '-', '-', 'Masih Hidup'),
(136, 'ANDI MUHAMMAD URWAH', 'SOPENG', '1972-10-07', 'Laki-laki', 'Jl.Korban 40.000 No.103 Ujung Pandang SulSel', '-', '-', '16102019020910-image.JPG', '19721007 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(137, 'ANDI NURTAN', 'UJUNG PANDANG', '1972-11-27', 'Laki-laki', 'Jl.A.Yani No.16 Bulukumba', '-', '-', '16102019021053-image.JPG', '19721127 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '-', '-', 'Masih Hidup'),
(138, 'ANDI MUSAKKIR', 'SENGKANG', '1973-09-16', 'Laki-laki', 'Jl.Dg.Tata Komp.Hartaco Indah Blok III T/10 Ujung Pandang', '-', '-', '16102019021526-image.JPG', '19730916 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(139, 'ANANG MASHURI', 'BONDOWOSO', '1974-02-03', 'Laki-laki', 'Jl.Pancur No.1 Lumutan Bondowoso', '-', '-', '16102019021716-image.JPG', '19740203 19920_ 1 _ _ _', '-', 1, 16, 96, 1, 1, 12, '-', '-', 'Masih Hidup'),
(140, 'ANDI PAMENERI', 'UJUNG PANDANG', '1973-05-28', 'Laki-laki', 'Jl.Adhyaksa Raya No.1 Ujung Pandang', '-', '-', '16102019021902-image.JPG', '19730528 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(141, 'ANDI POCI JEMMA', 'ATAPANGE', '1971-04-13', 'Laki-laki', 'Jl.Irian No.35 Sengkang Kab.Wajo SulSel', '-', '-', '16102019022040-image.JPG', '19710413 19920_ 1 _ _ _', '-', 1, 28, 64, 1, 1, 12, '-', '-', 'Masih Hidup'),
(142, 'ANDI RIJAL', 'GUNTURU', '1974-07-13', 'Laki-laki', 'Jl.Pemuda No.3 Ds.Gunturu Kec.Herlang Kab.Bulukumba 92512', '-', '-', '16102019022226-image.JPG', '19740713 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '-', '-', 'Masih Hidup'),
(143, 'ANDI ROSMAN', 'WAJO', '1972-11-08', 'Laki-laki', 'Bontause Kel.Tancung Kec.Tanasitolo Kab.Wajo SulSel', '-', '-', '16102019022420-image.JPG', '19721108 19920_ 1 _ _ _', '-', 1, 28, 64, 1, 1, 12, '-', '-', 'Masih Hidup'),
(144, 'ANDREY IKHSAN LUBIS', 'MEDAN', '1973-01-09', 'Laki-laki', 'Jl.Karya No.167 Medan 20117', '-', '-', '16102019023253-image.JPG', '19730109 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '-', '-', 'Masih Hidup'),
(145, 'ANDRI AGUSTIAN', 'PALEMBANG', '1972-08-26', 'Laki-laki', 'Jl.Aiptu Awahab No.155/145 RT.15 Kel.Ulu Palembang', '-', '-', '16102019023440-image.JPG', '19720826 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '-', '-', 'Masih Hidup'),
(146, 'ANDRI INDRA', 'TASIKMALAYA', '1973-08-05', 'Laki-laki', 'Jl.Cimanuk Blk. No.301 Tarogong Garut Jawa Barat 44151', '-', '-', '16102019023638-image.JPG', '19730805 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '-', '-', 'Masih Hidup'),
(147, 'ANDRIYANI', 'JAKARTA', '1973-09-22', 'Perempuan', 'Cipinang Pulo Maja RT.007 RW.010 No.2 Cipinang Besar Utara Jatinegara - Jakarta Timur 13410', '-', '-', '16102019023907-image.JPG', '19730922 19920_ 2 _ _ _', '-', 1, 12, 67, 1, 1, 12, '-', '-', 'Masih Hidup'),
(148, 'ANDY ZULFIKARNAEN', 'PEKANBARU', '1972-02-01', 'Laki-laki', 'Jl.Pawon No.3 Kel.Simpang Empat Komp.Gubernur Pekanbaru Riau', '-', '-', '16102019024057-image.JPG', '19720201 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '-', '-', 'Masih Hidup'),
(149, 'ANHAR', 'PADANG', '1971-08-15', 'Laki-laki', 'Jl.Sisingamangaraja VIII/No.3 Kodya Padang', '-', '-', '16102019034919-image.JPG', '19710815 19920_ 1 _ _ _', '-', 1, 4, 29, 1, 1, 12, '-', '-', 'Masih Hidup'),
(150, 'ANGELO URBANO FERNANDES', 'DILI', '1971-10-17', 'Laki-laki', 'Ds.Villa Verde RT.24 RW.12 Kec.Dili Barat Timor Timur', '-', '-', '16102019035234-image.JPG', '19711017 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(151, 'ANGGIT SAFRUDIN', 'KALASAN, SLEMAN', '1973-05-25', 'Laki-laki', 'Jetak Selomartani, Kalasan, Sleman D.I. Yoggyakarta', '-', '-', '16102019040334-image.JPG', '19730525 19920_ 1 _ _ _', '-', 1, 15, 91, 1, 1, 12, '-', '-', 'Masih Hidup'),
(152, 'ANI NURDIANA AF.', 'TASIKMALAYA', '1973-04-23', 'Perempuan', 'Jl.Teuku Umar No.137 Ulu Talo, Bengkulu Selatan 38574', '-', '-', '16102019040635-image.JPG', '19730423 19920_ 2 _ _ _', '-', 1, 8, 97, 1, 1, 12, '-', '-', 'Masih Hidup'),
(153, 'ANISA SRI PRIHATIN', 'KABAENA', '1972-04-14', 'Perempuan', 'Jalan Jenderal Sudirman no. 04 kel. Lauru, kec. Rumbia tengah, kab. Bombana, prov. Sulawesi tenggara', '085242855544 / 0813437567', '-', '30102019082320-IMG20190910081117_-_Anisa_Sri_Prihatin.jpg', '197204141992012001', '031849', 1, 29, 255, 1, 1, 14, 'Kaban ', ' Litbang', 'Masih Hidup'),
(154, 'ANSAR RASIDI', 'SITUBONDO', '1972-05-10', 'Laki-laki', 'Jl.Sekar Putih 33 Kesambirampak-Kapongan Situbondo Jawa Timur', '-', '-', '16102019041159-image.JPG', '19720510 19920_ 1 _ _ _', '-', 1, 16, 99, 1, 1, 12, '-', '-', 'Masih Hidup'),
(155, 'ANSHAR UMAR', 'UJUNG PANDANG', '1972-05-28', 'Laki-laki', 'Jl.SMA Neg.10 Up No.005 Ujung Pandang', '-', '-', '16102019041821-image.JPG', '19720528 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(156, 'ANTIN SUPRIHATIN', 'PONTIANAK', '1971-05-15', 'Perempuan', 'Jl.Merdeka Gg.Murai No.51 Pontianak 78112', '-', '-', '16102019042048-image.JPG', '19710515 19920_ 2 _ _ _', '-', 1, 21, 100, 1, 1, 12, '-', '-', 'Masih Hidup'),
(157, 'ANTONIO SOUSA', 'BOBONARO', '1970-04-15', 'Laki-laki', 'Trans. Beco Maucola No.53 Covalima (suai) Timor Timur', '-', '-', '16102019042237-image.JPG', '19700415 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '-', '-', 'Masih Hidup'),
(158, 'ANTONIUS FREDDY ROMY', 'MEMPAWAH', '1972-12-11', 'Laki-laki', 'Jl.Raden Kusno No.71, Mempawah, Kab.Pontianak KalBar', '-', '-', '16102019042501-image.JPG', '19721211 19920_ 1 _ _ _', '-', 1, 21, 100, 1, 1, 12, '-', '-', 'Masih Hidup'),
(159, 'ANTONO', 'BLITAR', '1972-12-16', 'Laki-laki', 'Jl.Jend.Sudirman No.16B Sukabumi Jawa Barat', '-', '-', '16102019042645-image.JPG', '19721216 19920_ 1 _ _ _', '-', 1, 13, 76, 1, 1, 12, '-', '-', 'Masih Hidup'),
(160, 'ANSYAR SUTIADI RASYID', 'PALU', '1972-12-13', 'Laki-laki', 'Jl.Bali No.20 Palu', '-', '-', '16102019042846-image.JPG', '19721213 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '-', '-', 'Masih Hidup'),
(161, 'ANWAR', 'JOMBANG', '1971-04-18', 'Laki-laki', 'Ds.Ngampungan RT.03 RW.01 Kec.Bareng Kab.Jombang Jawa Timur', '-', '-', '16102019043037-image.JPG', '19710418 19920_ 1 _ _ _', '-', 1, 16, 61, 1, 1, 12, '-', '-', 'Masih Hidup'),
(162, 'APRIANA LUSIA PARERA', 'KUPANG', '1972-04-16', 'Perempuan', 'Jl.Panca Bakti RT.11 RW.05 Kel.Naikoten II Kupang NTT', '-', '-', '16102019043233-image.JPG', '19720416 19920_ 2 _ _ _', '-', 1, 20, 66, 1, 1, 12, '-', '-', 'Masih Hidup'),
(163, 'ARA SUNDARA', 'TASIKMALAYA', '1973-09-14', 'Laki-laki', 'Ds.Salebu RT.01 RW.09 Kec.Singaparna Tasikmalaya', '333715', '-', '16102019043535-image.JPG', '19730914 19920_ 1 _ _ _', '-', 1, 13, 131, 1, 1, 12, '-', '-', 'Masih Hidup'),
(164, 'A. RASYID MUHAMMAD', 'UJUNG PANDANG', '1971-03-20', 'Laki-laki', 'Jl.Mannurukki No.27 G.Sari Baru Ujung Pandang SulSel 90221', '-', '-', '16102019043931-image.JPG', '19710320 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '-', '-', 'Masih Hidup'),
(165, 'ARDIUS PRIHANTONO', 'GABUSWETAN', '1973-02-20', 'Laki-laki', 'Ds.Sukamelang Blok Gadel RT.07 Rw.02 Kec.Kroya Indramayu / Jl.Gunung Karang No.5 RT.02 RW.06 Cihaseum Pandeglang Banten', '-', '-', '16102019044340-image.JPG', '1973020 19920_ 1 _ _ _', '-', 1, 13, 132, 1, 1, 12, '-', '-', 'Masih Hidup'),
(166, 'A. RASYID MUHAMAD', 'UJUNG PANDANG', '1971-03-20', 'Laki-laki', 'Kl. Mannurukki No. 27 G. Sari Baru Ujung Pandang (90221) Sul-Sel', '-', '-', '16102019052700-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710320 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(167, 'ARDIUS PRIHANTONO', 'GABUSWETAN', '1973-02-20', 'Laki-laki', 'Desa Sukamelang Blok Gadel RT 07/02, Kec. Kroya Indramayu 45263', '-', '-', NULL, '19730220 19920_ 1 _ _ _', '-', 1, 13, 132, 1, 1, 12, '', '', 'Masih Hidup'),
(168, 'ARFAN', 'PALU', '1972-04-14', 'Laki-laki', 'Jl. K.H. Mas Mansyur No. 25 Palu', '-', '-', '16102019053239-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1972041?4 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(169, 'ARHAM DUSKY', 'SIBOLGA', '1972-10-12', 'Laki-laki', 'Jl. Yos Sudarso Gunungsitoli Sumut 22812', '(0639) 21090', '-', '16102019053502-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721012 19920_ 1 _ _ _', '-', 1, 3, 102, 1, 1, 12, '', '', 'Masih Hidup'),
(170, 'ARIANSYAH AR', 'BANDA ACEH', '1972-12-06', 'Laki-laki', 'Jl. Rawasakti II/42 Prumsed Jeulingke Banda Aceh-Daerah Istimewa Aceh', '-', '-', '16102019053748-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721206 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(171, 'ARIEV MAULAKAFKA', 'BANDA ACEH', '1972-05-15', 'Laki-laki', 'Jl. Tuan Keramat No. 1 (blk. Term. Setui) Banda Aceh  - 23243', '-', '-', '16102019053954-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720515 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(172, 'ARIEF FRIFANTIO', 'GARUT', '1972-10-15', 'Laki-laki', 'Perum Borolong Indah B.30 Cintaraja Singaparna Kab.Tasikmalaya ', '081323575800', '-', '16102019054206-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711015  199203 1 004', '03.1276', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(173, 'ARIF BASARI', 'KAPONTORI', '1972-01-19', 'Laki-laki', 'Jl. Bataraguru No. 25 C Bau bau (Buton) Sulawesi Tenggara (93714)', '-', '-', '16102019054447-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720119 19920_ 1 _ _ _', '-', 1, 29, 98, 1, 1, 12, '', '', 'Masih Hidup'),
(174, 'ARIFIN', 'JAKARTA', '1972-06-22', 'Laki-laki', 'Jl. Laksa I/36 RT 10/RW 03 Jakarta Barat (11250)', '-', '-', '16102019054729-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720622 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(175, 'ARIF MUSBICHIN', 'SEMARANG', '1971-12-26', 'Laki-laki', 'Puspogiwang dalam No. 23 Semarang 50149', '-', '-', '16102019054945-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711226 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(176, 'ARIF TRIYANTO', 'WANGON', '1973-03-31', 'Laki-laki', 'Jl. Puteran No. 3 RT 01/09 Wangon Banyumas - Jawa Tengah 53176', '-', '-', '16102019055234-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730331 19920_ 1 _ _ _', '-', 1, 14, 89, 1, 1, 12, '', '', 'Masih Hidup'),
(177, 'ARI HANDOKO', 'MAGELANG', '1973-05-25', 'Laki-laki', 'Majaksingi, Borobudur, Magelang (56553)', '-', '-', '16102019055442-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730525 19920_ 1 _ _ _', '-', 1, 14, 104, 1, 1, 12, '', '', 'Masih Hidup'),
(178, 'ARMINAL NOVA PUTRA', 'PADANG', '1972-08-01', 'Laki-laki', 'Jl. Basuki Rahmat I No. 20 RT 08/Rw 02 Kel. Sukamerindu Bengkulu', '-', '-', '16102019055921-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720801 19920_ 1 _ _ _', '-', 1, 8, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(179, 'ARI SONJAYA', 'JAKARTA', '1973-01-08', 'Laki-laki', 'Jl. Haji Ten I No. 4 RT 02/01 Rawamangun Jakarta Timur 12330', '-', '-', '16102019060140-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730108 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(180, 'ARISTARKUS SEMUEL S. PILAT', 'TAHUNA', '1972-07-13', 'Laki-laki', 'Jl. Sam Ratulangi, Link. 1 RT02 Kel. Sawang Bendar, Kec. Tahuna, Kab. Satal', '-', '-', '16102019060555-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720713 19920_ 1 _ _ _', '-', 1, 26, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(181, 'ARKADIUS F. ATITUS', 'KEFAMENANU', '1971-01-01', 'Laki-laki', 'Desa Hauteas Kec. Biboki Utara Kab. Dati II TTU Prop. Dati I NTT', '-', '-', '16102019060833-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '-', '-', 1, 20, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(182, 'ARMAWATI', 'UJUNG PANDANG', '1973-04-10', 'Perempuan', 'Jl. Kimaam No. 3, Marauke - Irian Jaya', '(0971) 21058', '-', '16102019061203-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970410 19920_ 1 _ _ _', '-', 1, 35, 108, 1, 1, 12, '', '', 'Masih Hidup'),
(183, 'ARMIN ZAKARIA', 'TERNATE', '1972-08-15', 'Laki-laki', 'Jl. Branjangan No. 28 Kel. Makasar Barat, Ternate, 97724', '-', '-', '16102019061356-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720815 19920_ 1 _ _ _', '-', 1, 32, 82, 1, 1, 12, '', '', 'Masih Hidup'),
(184, 'ARWIN DACHLAN', 'UJUNG PANDANG ', '1971-08-22', 'Laki-laki', 'Jl. Mesjid Raya No. 75 Sungguminasa Kab. Gowa Sulawesi Selatan', '-', '-', '16102019061610-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710822 19920_ 1 _ _ _', '-', 1, 28, 81, 1, 1, 12, '', '', 'Masih Hidup'),
(185, 'ARWIN MALIK', 'UJUNG PANDANG', '1973-11-04', 'Laki-laki', 'Jl. Angkasa I No. 7, Ujung Pandang Sulawesi Selatan', '-', '-', '16102019061856-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731104 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(186, 'A. SAFARI RENATA', 'PAREPARE', '1973-03-06', 'Laki-laki', 'Jl. Wolter Monginsidi No. 01 Pangsid, Kab. Sidenreng, Rappang ', '91667', '-', '16102019075622-image.JPG', '19730306 19920_ 1 _ _ _', '-', 1, 28, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(187, 'A. SAPTO SANTOSO', 'SEMARANG', '1972-01-11', 'Laki-laki', 'Jl. Prof. Moch. Yamin SH, No. 04 RT 03/RW 01 kel. Bandarjo Kec Ungaran, Kab. Semarang (Jateng)', '-', '-', '16102019075953-image.JPG', '19721101 19920_ 1 _ _ _', '-', 1, 14, 109, 1, 1, 12, '', '', 'Masih Hidup'),
(188, 'ASEP HARSONO H.S', 'GARUT', '1972-12-10', 'Laki-laki', 'Jl. Nayaga 23 Kel. Turangga, Bandung', '-', '-', '16102019080137-image.JPG', '19721210 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(189, 'ASEP KUSNANDAR', 'SUMEDANG', '1971-08-29', 'Laki-laki', 'Jl. Pangeran Kornel No.79 C Sumedang - Jawa Barat', '-', '-', '16102019080319-image.JPG', '19710829 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(190, 'ASEP NURDIN', 'CIREBON', '1972-01-17', 'Laki-laki', 'Jl. Raya Mundu Pesisir 41 Cirebon - 45181, Jabar', '-', '-', '16102019080809-image.JPG', '19720117 19920_ 1 _ _ _', '-', 1, 13, 111, 1, 1, 12, '', '', 'Masih Hidup'),
(191, 'ASEP SENDJAJA', 'SUMEDANG', '1971-01-24', 'Laki-laki', 'Jl. P. Geusan Ulun No. 08 Sumedang ', '-', '-', '16102019081057-image.JPG', '19720124 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(192, 'ASEP SUHABAN', 'JAKARTA', '1972-05-23', 'Laki-laki', 'Jl.Tmn Margasatwa Ragunan RT.004/011, Pasar Minggu Jakarta Selatan 12550', '-', '-', '16102019083835-image.JPG', '19720523 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '-', '-', 'Masih Hidup'),
(193, 'ASEP SUDRAJAT', 'SUKABUMI', '1971-03-05', 'Laki-laki', 'Jl.Pesantren No.30 Siantan Hulu Pontianak KalBar', '-', '-', '16102019084035-image.JPG', '19710305 199203 1', '-', 1, 21, 100, 1, 1, 12, '-', '-', 'Masih Hidup'),
(194, 'ASEP SURYADI', 'CIPARAY', '1973-08-04', 'Laki-laki', 'Jl.Laswi No.  RT.01/05 Kel.Jelengkong Kec. Baleendah Kab.DT.II Bandung 40258', '-', '-', '16102019084711-image.JPG', '19730804 199203 1', '-', 1, 13, 110, 1, 1, 12, '-', '-', 'Masih Hidup'),
(195, 'ASEP SUTENDI', 'GARUT', '1972-04-10', 'Laki-laki', 'Jl.Pangeran Suriaatmadja No.33 Kaum Kulon - Sumedang', '-', '-', '16102019084947-image.JPG', '19720410 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(196, 'ASEP TATANG', 'SUBANG', '1971-06-09', 'Laki-laki', 'Jl.Kartika I No.196B KPAD-Gegerkalong-Bandung', '-', '-', '16102019085257-image.JPG', '19710609 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '-', '-', 'Masih Hidup'),
(197, 'ASIH SUMARETMI', 'JAKARTA', '1973-03-20', 'Perempuan', 'Asrama POLRI Cipinang G:13 RT.006 RW.06 Jakarta TImur', '-', '-', '16102019085517-image.JPG', '19730320 19920_ 2 _ _ _', '-', NULL, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(198, 'ASRIATI MANNAUNGI', 'SENGKANG', '1972-07-25', 'Perempuan', 'Jl. Tolanca No.7 Sengkang Kab.Wajo SulSel', '-', '-', '16102019090010-image.JPG', '19720725 19920_ 2 _ _ _', '-', 1, 28, 64, 1, 1, 12, '', '', 'Masih Hidup'),
(199, 'ASRIL', 'SOLOK', '1972-11-13', 'Laki-laki', 'Jl.BEROK simpang air mati No.105 Kodya Solok SumBar', '-', '-', '16102019090235-image.JPG', '19721113 19920_ 1 _ _ _', '-', 1, 4, 113, 1, 1, 12, '', '', 'Masih Hidup'),
(200, 'ASRIL RIZAL', 'JAKARTA', '1972-03-11', 'Laki-laki', 'Jl. Makian Dalam No.10E Roxy-Jakarta Pusat', '-', '-', '16102019090516-image.JPG', '19720311 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(201, 'ASTON ZALIM', 'WAJO', '1973-05-20', 'Laki-laki', 'Jl.Bataraguru No.10 Buton Sulawesi Tenggara', '-', '-', '16102019090719-image.JPG', '19730520 19920_ 1 _ _ _', '-', 1, 29, 64, 1, 1, 12, '', '', 'Masih Hidup'),
(202, 'ASWIN SAUDO', 'POSO', '1973-01-05', 'Laki-laki', 'Jl.Pocut Baren 19B Banda Aceh Jl.Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019091117-image.JPG', '19730105 19920_ 1 _ _ _', '-', 1, 2, 85, 1, 1, 12, '', '', 'Masih Hidup'),
(203, 'ATEP PURNAMA', 'SUMEDANG', '1972-09-20', 'Laki-laki', 'Jl.Tampomas No.15 Sumedang Jawa Barat', '-', '-', '16102019091316-image.JPG', '1972020 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(204, 'AUGUS RAJA UNGGUL', 'PEKANBARU', '1972-08-09', 'Laki-laki', 'Jl.Akasia 11/38 Tangkerang Pekanbaru-Riau', '-', '-', '16102019091554-image.JPG', '19720809 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(205, 'AULIA SOFYAN', 'MNS TIMU', '1972-10-18', 'Laki-laki', 'Jl.Pocut Baren 19B Banda Aceh Jl.Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019091846-image.JPG', '19721018 19920_ 1 _ _ _', '-', 1, 2, 85, 1, 1, 12, '', '', 'Masih Hidup'),
(206, 'AURENDINO ALFONSO D.S.', 'LIQUICA', '1971-06-15', 'Laki-laki', 'Da.Dato/Kec.Liquica/Kab.Liquica Prov.Timor Timur', '-', '-', '16102019092124-image.JPG', '19710615 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(207, 'AWALUDDIN', 'KALUMPANG', '1973-07-07', 'Laki-laki', 'Jl.Pendidikan RT.01 RW.01 No.09 Ds.Tritiro Kec.Bontotiro Kab.Bulukumba Sulawesi Selatan', '-', '-', '16102019092401-image.JPG', '19730707 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(208, 'A. ZULFAHMI', 'JAKARTA', '1972-12-02', 'Laki-laki', 'Jl. Cendrawasih 8 No. 339 Depok I, Bogor 16432', '(021) 7521248', '-', '16102019093216-image.JPG', '19721202 19920_ 1 _ _ _', '-', 1, 13, 15, 1, 1, 12, '', '', 'Masih Hidup'),
(209, 'BAGUS RAHARJO', 'JAKARTA', '1972-08-08', 'Laki-laki', 'Jl. Pulo Asem I No. 1A Rawamangun, Jakarta TImur', '-', '-', '16102019093437-image.JPG', '19720808 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup');
INSERT INTO `alumni` (`id_alumni`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `mobile_phone`, `email`, `photo`, `nip`, `npp`, `fk_id_kementrian`, `fk_id_prov`, `fk_id_kab_kot`, `fk_id_kec`, `fk_id_kel`, `fk_id_pangkat`, `jabatan`, `instansi`, `meninggal`) VALUES
(210, 'BAHARUDIN', 'KLATEN', '1970-07-04', 'Laki-laki', 'Jl. Bhayangkara No. 10 Pedan, Klaten - Jawa Tengah', '-', '-', '16102019093753-image.JPG', '19700704 19920_ 1 _ _ _', '-', 1, 14, 69, 1, 1, 12, '', '', 'Masih Hidup'),
(211, 'BAHARUDDIN PABBA', 'JENEPONTO', '1971-10-10', 'Laki-laki', 'Kamp. Rannaya, Link. Maccini Baji, Kel. Tolo Barat, Kec Kelara, Kab. Dati II Jeneponto, Sul-Sel 92311', '-', '-', '16102019094159-image.JPG', '19721010 19920_ 1 _ _ _', '-', 1, 28, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(212, 'BAIQ RAUDATUL JANNAH', 'TANJUNG', '1972-01-01', 'Perempuan', 'Jl. H. Agus Salim No.2 Tanjung - Lombok Timur, NTT', '-', '-', '16102019094630-image.JPG', '19720101 19920_ 1 _ _ _', '-', 1, 20, 116, 1, 1, 12, '', '', 'Masih Hidup'),
(213, 'BAMBANG DWI SANTOSO', 'SEMARANG', '1971-05-24', 'Laki-laki', 'Jl. Meranti Barat I/312 Banyumanik, Semarang', '-', '-', '16102019094937-image.JPG', '19710524 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(214, 'BAMBANG HAFID ARIFIN', 'GARUT', '1973-08-06', 'Laki-laki', 'Jl. Haurkuning/Jl. Pembangunan (Depan Pemda) Tarogong, Garut ', '-', '-', '16102019095311-image.JPG', '19730806 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(215, 'BAMBANG HERMANSYAH', 'CIAMIS', '1972-12-18', 'Laki-laki', 'JL. Jend. A. Yani No. 219 Ciamis-Jabar', '-', '-', '16102019095555-image.JPG', '19721218 19920_ 1 _ _ _', '-', 1, 13, 117, 1, 1, 12, '', '', 'Masih Hidup'),
(216, 'BAMBANG JULIUS WIDJANARKO', 'BLITAR', '1971-03-06', 'Laki-laki', 'Jl. Gajah Mangersari IV No. 117 Siduarjo - Jawa Timur', '-', '-', '16102019100250-image.JPG', '19710306 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(217, 'BAMBANG PRAMUSINTO', 'SEMARANG', '1973-03-28', 'Laki-laki', 'Jl. Siblat II RT 04 RW 10 No. 53 Semarang - Jawa Tengah', '-', '-', '16102019100832-image.JPG', '19730328 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(218, 'BAMBANG SUHAJI', 'TUBAN', '1972-08-04', 'Laki-laki', 'Ds. Sumurgung, Kec. Tuban Kab. Tuban, Jawa Timur', '-', '-', '16102019101302-image.JPG', '19720804 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(219, 'BAMBANG SETYAWAN', 'TRENGGALEK', '1971-09-06', 'Laki-laki', 'Jl. Mangun Sarkoro II/4 Trenggalek', '-', '-', '16102019101529-image.JPG', '19720906 19920_ 1 _ _ _', '-', 1, 16, 48, 1, 1, 12, '', '', 'Masih Hidup'),
(220, 'BAMBANG SUPRIATNO', 'MANOKWARI', '1972-12-10', 'Laki-laki', 'Jl. Gunung Salju Fanindi No. 16 A Manokwari - Irian jaya', '-', '-', '16102019101753-image.JPG', '1972121019920_ 1 _ _ _', '-', 1, 35, 80, 1, 1, 12, '', '', 'Masih Hidup'),
(221, 'BAMBANG SURYA', 'SINABANG', '1972-12-29', 'Laki-laki', 'Jl. DT Mohzein No. 149, SK Damai Sinabang, Kec. Simeulue TImur-Kab. Aceh Barat', '-', '-', '16102019102101-image.JPG', '19721229 19920_ 1 _ _ _', '-', 1, 2, 118, 1, 1, 12, '', '', 'Masih Hidup'),
(222, 'BATARA RIVAL HARAHAP', 'MEDAN', '1973-01-01', 'Laki-laki', 'Jl. Garu I Gg. Sentosa No.69 A Comp. Mobil Oil Simpang Limun Medan-Sumut', '-', '-', '16102019102348-image.JPG', '19730101 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(223, 'BENNY IRWAN', 'PAYAKUMBUH', '1973-01-23', 'Laki-laki', 'Jl. Prof. Dr. Hamka No. 102 Payakumbuh-Sumatera Barat', '-', '-', '16102019102608-image.JPG', '19720123 19920_ 1 _ _ _', '-', 1, 4, 119, 1, 1, 12, '', '', 'Masih Hidup'),
(224, 'BERLIN GINTING', 'LUBUK PAKAM', '1971-08-27', 'Laki-laki', 'Jl. Dipenogoro No. 76 Lubuk Pakam Kab. Deli Serdang', '-', '-', '16102019102810-image.JPG', '19710827 19920_ 1 _ _ _', '-', 1, 3, 120, 1, 1, 12, '', '', 'Masih Hidup'),
(225, 'BERNAD OCTAVIANUS PASARIBU', 'JAKARTA', '1972-10-15', 'Laki-laki', 'Jl. Gading Raya No. 88, Rawamangun Jakarta Timur-13230', '2523/1973', '-', '16102019103119-image.JPG', '19721015 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(226, 'BERNARDO AMARIAL', 'WESORU', '1970-06-13', 'Laki-laki', 'Ds. Vessoru, Kec. Uato-Lari, Kab. Viqueque, TimTim', '-', '-', '16102019103626-image.JPG', '19700613 19920_ 1 _ _ _', '-', 1, 36, 20, 1, 1, 12, '', '', 'Masih Hidup'),
(227, 'BERRY MAKNAMARA', 'PONTIANAK', '1973-02-05', 'Laki-laki', 'Jl. Wr. Supratman No. 9A (Komplek PEMDA) Putussibau, Kab. Kapuas Hulu, Kal-Bar 78711', '(0567) 21380', '-', '16102019104244-image.JPG', '19730205 19920_ 1 _ _ _', '-', 1, 21, 121, 1, 1, 12, '', '', 'Masih Hidup'),
(228, 'BERTELENG BAKOIL', 'ALOR', '1971-07-29', 'Laki-laki', 'Jl. Swakarya 2 No. 37 Kelurahan Kuanino Kupang', '-', '-', '16102019104743-image.JPG', '19710729 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(229, 'BING EFIR TOBIGO', 'TIU', '1972-02-21', 'Laki-laki', 'Jl.Sulawesi No.15 Palu', '-', '-', '16102019105132-image.JPG', '19720221 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(230, 'BOB PRESLY SARAGIH', 'PEMATANG SIANTAR', '1972-05-15', 'Laki-laki', 'Jl.Jawa Gg.Genjer Kel.Bantan P.Siantar Sumut', '-', '-', '16102019105456-image.JPG', '19720515 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(231, 'BUDIMAN ACHMAD', 'BANDUNG', '1971-09-14', 'Laki-laki', 'Jl. Cicalengka 2 Gg. Tahapi I No. 52 Ujung Berung - Bandung', '-', '-', '16102019111500-image.JPG', '19710914 19920_ 1 _ _ _', '-', 1, 13, 112, 1, 1, 12, '', '', 'Masih Hidup'),
(232, 'BUDIMAN NARIMO', 'CILACAP', '1972-04-13', 'Laki-laki', 'Jl. Raya Padangjaya No. 261 Majenang, Cilacap - Jawa Tengah', '-', '-', '16102019111813-image.JPG', '19720413 19920_ 1 _ _ _', '-', 1, 13, 123, 1, 1, 12, '', '', 'Masih Hidup'),
(233, 'BUDI PRANOTO', 'WONOSOBO', '1971-09-19', 'Laki-laki', 'Kaliber, Mojotengah sarimulyo RT 01 /RW X wonosobo, Jawa Tengah 56351', '-', '-', '16102019131620-image.JPG', '19710919 19920_ 1 _ _ _', '-', 1, 14, 124, 1, 1, 12, '', '', 'Masih Hidup'),
(234, 'BUDI SUSILO', 'MAGELANG', '1973-04-08', 'Laki-laki', 'RT 04 RW 02 Semalen Ds. Ngadirojo Kec. Secang Kab. Magelang Jateng', '-', '-', '16102019132136-image.JPG', '19730408 19920_ 1 _ _ _', '-', 1, 14, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(235, 'BUDI WIBOWO', 'SEMARANG', '1972-04-25', 'Laki-laki', 'Komplek KPKN No. C 103 Purwerejo-Kedu', '-', '-', '16102019132350-image.JPG', '19720425 19920_ 1 _ _ _', '-', 1, 14, 125, 1, 1, 12, '', '', 'Masih Hidup'),
(236, 'BUDI HERMAWAN', 'JAKARTA', '1972-09-08', 'Laki-laki', 'Jl. Pocut Baren 19 B, Banda Aceh \r\nJl. Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019132901-image.JPG', '19720908 19920_ 1 _ _ _', '-', 1, 13, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(237, 'BURHAN NURDIN', 'PALIME', '1971-12-15', 'Laki-laki', 'Pallime, Kec. Cenrana Kab. Bone-Sulawesi Selatan', '-', '-', '16102019133143-image.JPG', '19711215 19920_ 1 _ _ _', '-', 1, 28, 60, 1, 1, 12, '', '', 'Masih Hidup'),
(238, 'BUSTAMI SOLEMAN', 'MAKIAN', '1971-01-17', 'Laki-laki', 'Jl. Hasanudin Belakang SMPN 1 Soa-Sio Tidore Halmahera Tengah Maluku', '-', '-', '16102019133427-image.JPG', '19710117 19920_ 1 _ _ _', '-', 1, 32, 126, 1, 1, 12, '', '', 'Masih Hidup'),
(239, 'CHAIDIR', 'GARUT', '1971-07-04', 'Laki-laki', 'Kota.Cikareo No 1 jln Roda Hias RT 006/02 Kel/Kec Serpong Tangerang Selatan', '081287877714', '-', '16102019133802-image.JPG', '197107041992021001', '03.1860', 1, 17, 30, 1, 1, 13, 'CAMAT PASAR KEMIS', '', 'Masih Hidup'),
(240, 'CHAIRIN F. SIMANJUNTAK', 'PEMANTANG SIANTAR', '1971-12-10', 'Laki-laki', 'Jl. Singosari 15 Kodya P.Siantar Sumatera-Utara(21143)', '-', '-', '16102019134231-image.JPG', '19711210 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(241, 'CHAIRONI', 'TANJUNG BALAI KARIMUN', '1971-05-01', 'Laki-laki', 'Kapling No. 48 RT 02 RW 11 Kel. Tebing Tanjung Balai Karimun Kepulauan Riau (29161)', '-', '-', '16102019134815-image.JPG', '19710501 19920_ 1 _ _ _', '-', 1, 11, 142, 1, 1, 12, '', '', 'Masih Hidup'),
(242, 'CHANIF TRI WAHYUDI', 'LAMONGAN', '1971-10-01', 'Laki-laki', 'Jl. Pocut Baren 19 B, Banda Aceh \r\nJl. Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019135138-image.JPG', '19710110 19920_ 1 _ _ _', '-', 1, 16, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(243, 'CORNELIUS TUBA', 'NGADA', '1971-01-03', 'Laki-laki', 'Paupaga-Aimere-Ngada Flores-NTT', '-', '-', '16102019135542-image.JPG', '19710103 19920_ 1 _ _ _', '-', 1, 20, 128, 1, 1, 12, '', '', 'Masih Hidup'),
(244, 'COSMAS EDWI YUNANTO', 'SRAGEN', '1971-09-12', 'Laki-laki', 'Perum Kec. Kedawung, Kab. Sragen Jawa Tengah- 57292', '(0271)-91071', '-', '16102019135802-image.JPG', '19710912 19920_ 1 _ _ _', '-', 1, 14, 133, 1, 1, 12, '', '', 'Masih Hidup'),
(245, 'DAENG DICKY ARMEINA', 'SINGKAWANG', '1972-05-21', 'Laki-laki', 'Jl. Yos Sudarso, 58 RT 09/II', '-', '-', '16102019140123-image.JPG', '19720521 19920_ 1 _ _ _', '-', 1, 21, 84, 1, 1, 12, '', '', 'Masih Hidup'),
(246, 'DANI BASTIANI', 'BANDUNG', '1971-02-12', 'Laki-laki', 'Jl. Jayapura No. 34 Kel. Oyehe Kec. Nabire Paniai-Irian Jaya', '-', '-', NULL, '19710212 19920_ 1 _ _ _', '-', 1, 35, 134, 1, 1, 12, '', '', 'Masih Hidup'),
(247, 'DANIEL LUCAL KUSAPY', 'AMBON', '1972-12-31', 'Laki-laki', 'Kelurahan Batu Gajah Atas RT 01/04 Ambon', '-', '-', '16102019152923-image.JPG', '19721231 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(248, 'DANIEL TAKO', 'AWAN', '1969-10-10', 'Laki-laki', 'Komplek SD Inpres Yapdes Rigd I Kec. Biak Kota Kab. Dati II Biak Numfor', '-', '-', '16102019153136-image.JPG', '19691010 19920_ 1 _ _ _', '-', 1, 35, 135, 1, 1, 12, '', '', 'Masih Hidup'),
(249, 'DANI HENDRA', 'GARUT', '1972-06-02', 'Laki-laki', 'Jl. Raya Cipanas No. 65 Tarogong - Garut', '-', '-', '16102019153357-image.JPG', '19720602 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(250, 'DAHLANROSO LASE', 'NIAS', '1972-03-06', 'Laki-laki', 'Jl. Melati No.38 Gunung Sitoli - Nias', '-', '-', '16102019153616-image.JPG', '19720306 19920_ 1 _ _ _', '-', 1, 3, 102, 1, 1, 12, '', '', 'Masih Hidup'),
(251, 'DARMADI', 'SAWAH KAREH', '1970-06-13', 'Laki-laki', 'Ds. Sawah Kareh, Kec. Rambatan Kab. Dati II Tanah Datar-Sumatera Barat', '-', '-', '16102019181720-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700613 19920_ 1 _ _ _', '-', 1, 3, 136, 1, 1, 12, '', '', 'Masih Hidup'),
(252, 'DARMAN KEO', 'RAHA', '1973-08-01', 'Laki-laki', 'Kel. Gunung Jati RT 03?B No. 26 Kendari, Sulawesi-Tenggara', '-', '-', '16102019182023-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730801 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(253, 'DARMONO', 'Boyolali', '1972-04-05', 'Laki-laki', 'RT 07/11 Banyuurip, Klego, Boyolali Jawa Tengah', '-', '-', '16102019182408-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720405 19920_ 1 _ _ _', '-', 1, 14, 137, 1, 1, 12, '', '', 'Masih Hidup'),
(254, 'DARWIN FERDINAND', 'JAYAPURA', '1972-11-26', 'Laki-laki', 'Jl. Kesehatan III No. 11 Jakarta Pusat', '-', '-', '16102019182559-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721126 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(255, 'DARYOKO UMAR SINGGIH', 'MAGELANG', '1973-04-15', 'Laki-laki', 'Trasan 05/09 (Kp. Semaitan) Bandongan Magelang 56151', '-', '-', '16102019182822-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730415 19920_ 1 _ _ _', '-', 1, 14, 104, 1, 1, 12, '', '', 'Masih Hidup'),
(256, 'DAVID DARMAWAN ZEBUA', 'JAYAPURA', '1971-07-18', 'Laki-laki', 'Jl. Bengawan Solo 3 Jayapura-Irian Jaya', '-', '-', '16102019183032-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710718 19920_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(257, 'DAVID EDWARD REGO', 'KUPANG', '1972-09-14', 'Laki-laki', 'JL. Johar 5A Kel. Oetete Kupang-NTT', '-', '-', '16102019183238-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720914 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(258, 'DECKY DWI UTOMO', 'PADANG PANJANG', '1973-03-03', 'Laki-laki', 'Jl. Urip Sumoharjo No. 24 Rt. I Padang Panjang Sumatera Barat 27121', '0752-82816', '-', '16102019183615-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730303 19920_ 1 _ _ _', '-', 1, 4, 138, 1, 1, 12, '', '', 'Masih Hidup'),
(259, 'DEDY CHANDRA', 'TANJUNG PINANG', '1971-03-08', 'Laki-laki', 'Jl. MT.Haryono No. 25 RT 09 RW 11 Tanjung Pinang Riau', '-', '-', '16102019183823-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710308 19920_ 1 _ _ _', '-', 1, 5, 139, 1, 1, 12, '', '', 'Masih Hidup'),
(260, 'DEDI ARIF DASRSONO', 'GARUT', '1972-12-29', 'Laki-laki', 'Jl. Cempaka Putih Tengah 33A/1 Jakarta-Pusat', '-', '-', '16102019185724-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721229 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(261, 'DEDY', 'TANGGERANG', '1972-07-13', 'Laki-laki', 'Jl. Pinang RT 03 RW 02 No.48 Pamulang Timur-Pamulang Tanggerang-Banten', '-', '-', '16102019190143-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720713 19920_ 1 _ _ _', '-', 1, 17, 30, 1, 1, 12, '', '', 'Masih Hidup'),
(262, 'DEDI SETIADI', 'KUNINGAN', '1970-10-10', 'Laki-laki', 'Jl. Ir. H. Juanda No. 692 Kuningan, Jawa Barat-45511', '-', '-', '16102019190506-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970101019920_ 1 _ _ _', '-', 1, 13, 140, 1, 1, 12, '', '', 'Masih Hidup'),
(263, 'DEDY ZULKARNAIN', 'SAMBAS', '1972-09-29', 'Laki-laki', 'Asrama Militer Lama Barak C No.9 \r\nJl. Merdeka-Sambas Kalimantan Barat-79162', '-', '-', '16102019190838-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720929 19920_ 1 _ _ _', '-', 1, 21, 7, 1, 1, 12, '', '', 'Masih Hidup'),
(264, 'DENI HAMDANI', 'KUNINGAN', '1971-03-08', 'Laki-laki', 'Jl. Raya Cigugur RT 17 RW 06 Kel/Kec. Cigugur-Kuningan', '-', '-', '16102019191057-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710308 19920_ 1 _ _ _', '-', 1, 13, 140, 1, 1, 12, '', '', 'Masih Hidup'),
(265, 'DENI SETIA MAHARWAN', 'CIANJUR', '1972-02-26', 'Laki-laki', 'Jl. Slamet Riyadi No. 347 Cianjur 43211', '(0263) 64894', '-', '16102019191523-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720226 19920_ 1 _ _ _', '-', 1, 13, 141, 1, 1, 12, '', '', 'Masih Hidup'),
(266, 'DENI NUBATONIS', 'KUPANG ', '1970-12-04', 'Laki-laki', 'Jl. A. Yani RT 20 RW 07 Kel. Oeba-Kupang-NTT', '-', '-', '16102019192004-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19701204 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(267, 'DENNY RICHARD SUMOLANG', 'PALU', '1972-12-30', 'Laki-laki', 'Jl. Kihajar Dewantoro Komplek Pusalemba No. 60 Palu, Sulawesi Tengah (94111)', '-', '-', '16102019192250-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721230 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(268, 'DERNA KURNIAWAN', 'KEDIRI', '1973-12-08', 'Laki-laki', 'Kroncong No. 349 RT 06 RW IV Ds. Purworejo Kec. Kandat Kab. Kediri Jawa Timur', '-', '-', '16102019192559-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731208 19920_ 1 _ _ _', '-', 1, 16, 143, 1, 1, 12, '', '', 'Masih Hidup'),
(269, 'DHARMA BAKTI HARAHAP', 'PURBASINOMBA', '1971-03-27', 'Laki-laki', 'Jl. Pelikan I No. 229 Perumnas Mandala Medan II Medan Sumatera Utara', '-', '-', '16102019192813-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710327 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(270, 'DIAN CANDERA', 'PALEMBANG', '1971-01-10', 'Laki-laki', 'Jl. Patimura 563 Kursus Typ \"Ampera\" Lubuk Linggau-Sumatera Selatan', '-', '-', '16102019193158-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711001 19920_ 1 _ _ _', '-', 1, 7, 144, 1, 1, 12, '', '', 'Masih Hidup'),
(271, 'DIAN RUDIANTO', 'BANDUNG', '1972-12-31', 'Laki-laki', 'Jl. Soma I Gg. Parang IV/20 Kiaracondong-Bandung', '-', '-', '16102019193413-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721231 13012 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(272, 'DIANO VELA FERY SANTOSA', '-', '1973-11-16', 'Laki-laki', 'Graha Candi Permai H 2 Kota Pasuruan Jawa Timur', '085 855 176 599', '-', '30102019084434-IMG_20180612_093321_-_Diano_Santoso.jpg', '197311161992031001', '03.1802', 1, 16, 70, 1, 1, 13, 'Camat Sukorejo', '', 'Masih Hidup'),
(273, 'DICKY COBANDONO', 'KEDIRI', '1970-09-12', 'Laki-laki', 'Jl. Pulosari No.19 Pare Kediri, Jawa Timur', '-', '-', '16102019193835-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700912 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(274, 'DIDIK CHUSUNUL YAKIN', 'MOJOKERTO', '1971-04-27', 'Laki-laki', 'Jl. Raya Gondang No.8 Mojokerto 61372-Jawa Timur', '-', '-', '16102019194351-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710427 19920_ 1 _ _ _', '-', 1, 16, 146, 1, 1, 12, '', '', 'Masih Hidup'),
(275, 'DIDIK HARIANTO', 'BOJONEGORO', '1971-11-21', 'Laki-laki', 'Ds. Sumberarum, RT 21/VII, Kec. Dangder, Kab. Bojonegoro Jawa Timur', '-', '-', '16102019195457-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711121 19920_ 1 _ _ _', '-', 1, 16, 147, 1, 1, 12, '', '', 'Masih Hidup'),
(276, 'DIDIK PURWANTO', 'KARANGANYAR', '1973-05-05', 'Laki-laki', 'Gerdu RT 02 RW 01 Karangpandan Karanganyar, Surakarta, Jateng', '-', '-', '16102019200545-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730305 19920_ 1 _ _ _', '-', 1, 14, 92, 1, 1, 12, '', '', 'Masih Hidup'),
(277, 'DIDIK SISWANTO', 'TULUNGAGUNG', '1972-07-16', 'Laki-laki', 'Jl. I Gusty Ngurah Rai VI/26 Tulungagung, Jawa Timur', '-', '-', '16102019201140-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970716 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(278, 'DIDIK WIDOYOKO', 'SURABAYA ', '1972-11-05', 'Laki-laki', 'Gilang Rt 06 Rw 01 No. 17B Taman Sidoarjo-Jawa Timur', '-', '-', '16102019202016-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721105 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(279, 'DIDIT NOOR CAHYO UTOMO', 'NGANJUK', '1971-07-22', 'Laki-laki', 'Jl. Yos Sudarso No.71 Nganjuk Jawa Timur', '-', '-', '16102019203027-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710722 19920_ 1 _ _ _', '-', 1, 16, 148, 1, 1, 12, '', '', 'Masih Hidup'),
(280, 'DINI ARDIANTO', 'SAMBAS', '1972-07-12', 'Laki-laki', 'Jl. Istana No.24 Rt 07 Rw 02 Dalam Kaum Sambas Kalimantan Barat', '-', '-', '16102019203248-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720712 19920_ 1 _ _ _', '-', 1, 21, 7, 1, 1, 12, '', '', 'Masih Hidup'),
(281, 'DJAFAR HI KADIR', 'NAMBO LEMPEK', '1971-12-30', 'Laki-laki', 'Nambo Lempek Kec. Luwuk Kab. Banggai-Sulawesi Tengah', '-', '-', '16102019203501-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711230 19920_ 1 _ _ _', '-', 1, 27, 149, 1, 1, 12, '', '', 'Masih Hidup'),
(282, 'DJOKO PRASETYONO', 'TEMANGGUNG', '1972-11-26', 'Laki-laki', 'Jampirejo Tengah, No. 156 Temanggung-Jawa Tengah', '-', '-', '16102019203753-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721126 19920_ 1 _ _ _', '-', 1, 14, 150, 1, 1, 12, '', '', 'Masih Hidup'),
(283, 'DJOKO PURNOMO', 'PEKANBARU', '1972-05-04', 'Laki-laki', 'Jl Banteng No. 49 Kel. Harjasari Kec. Sukajadi, Pekanbaru-Riau', '', '-', '16102019204016-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720604 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(284, 'DJOKO SULISTIYONO', 'BLORA', '1971-05-30', 'Laki-laki', 'Ds. Ledok Rt 01 Rw 01 Kec. Sambong, Kab. Blora Prop, Jaw Tengah', '-', '-', '16102019204515-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710530 19920_ 1 _ _ _', '-', 1, 14, 151, 1, 1, 12, '', '', 'Masih Hidup'),
(285, 'DJUANA POERWIYANTO', 'TUBAN', '1973-01-05', 'Laki-laki', 'Ds. Prunggahan Wetan Rt 02 Rw II Kec. Semanding, Kab. Tuban-Jawa Timur', '-', '-', '16102019204738-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730105 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(286, 'DODI SUHENDRA', 'PEKANBARU', '1972-09-20', 'Laki-laki', '-', '-', '-', '16102019204941-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720920 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(287, 'DONA ANDRIA', 'BUKIT TINGGI', '1971-12-31', 'Laki-laki', 'Komplek Bintaro Jaya, Jakarta', '-', '-', '16102019205336-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711231 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(288, 'DONISIUS BRUNO LAYAN', 'MEYANO LARAT', '1971-05-06', 'Laki-laki', 'Desa Ridool Kampunhg Pisang Kec. Tanimbar Utara, Kab. Maluku Tenggara', '-', '-', '16102019214137-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710506 19920_ 1 _ _ _', '-', 1, 32, 152, 1, 1, 12, '', '', 'Masih Hidup'),
(289, 'DOLI BONIARA', 'BOGOR', '1972-07-10', 'Laki-laki', 'Rumah Dinas Walikota Tanjung Pinag Jl. Diponegoro 7, Tanjung Pinang', '-', '-', '16102019214505-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720710 19920_ 1 _ _ _', '-', 1, 5, 139, 1, 1, 12, '', '', 'Masih Hidup'),
(290, 'DOMINIKUS D. P', 'LAMAHELAN', '1972-05-15', 'Laki-laki', 'Ds. Helanlangowuto-Senadan Ileboleng-Flores Timur-NTT', '-', '-', '16102019214723-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720515 19920_ 1 _ _ _', '-', 1, 20, 153, 1, 1, 12, '', '', 'Masih Hidup'),
(291, 'DUDI CAHYANTO PIDANI', 'KENDARI', '1973-04-26', 'Laki-laki', 'Jl. Raranani BTN I E/12 Wua-Wua, Kendari', '-', '-', '16102019214958-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730426 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(292, 'DULYONO', 'INDRAMAYU', '1972-06-12', 'Laki-laki', 'Jl. Pocut Baren 19 B, Banda Aceh\r\nJl. Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019215236-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720612 19920_ 1 _ _ _', '-', 1, 13, 132, 1, 1, 12, '', '', 'Masih Hidup'),
(293, 'DWI JOKO IRBIYANTORO', 'BIAK', '1972-02-03', 'Laki-laki', 'Perwakilan Kodim 1702 Abepura Jayapura Irian Jaya', '-', '-', '16102019215435-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720203 19920_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(294, 'DWI PURBOWAHYONO', 'PORONG', '1971-04-20', 'Laki-laki', 'Kel. Jatirejo Rt 04 Rw I Porong Sidoarjo-Jawa Timur', '-', '-', '16102019215728-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710420 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(295, 'DYAH WDYASTUTI', 'KENDAL', '1973-11-19', 'Perempuan', 'Jl. Sunan Bromo I/I Ds. Bebengan Kec. Boja, Kab. Kendal-Jawa Tengah', '-', '-', '16102019215948-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731119 19920_ 1 _ _ _', '-', 1, 14, 154, 1, 1, 12, '', '', 'Masih Hidup'),
(296, 'EDDIE HASFA', 'BUKITTINGGI', '1972-11-17', 'Laki-laki', 'Wisma Indah DI/23 Padang Tiakar Hilir PYK-Sumatera Barat', '-', '-', '16102019220443-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721117 19920_ 1 _ _ _', '-', 1, 4, 159, 1, 1, 12, '', '', 'Masih Hidup'),
(297, 'EDDY S. SALINDEHO', 'DAME', '1972-07-22', 'Laki-laki', 'Kel. Tarorane, Sangihe Talaud Sulawesi Utara', '-', '-', '16102019221401-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720722 19920_ 1 _ _ _', '-', 1, 3, 106, 1, 1, 12, '', '', 'Masih Hidup'),
(298, 'EDI AHMAD', 'KOTA BARU', '1971-05-21', 'Laki-laki', 'Jl. Jend Sudirman No.12 Rengat-Riau', '-', '-', '16102019221718-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710521 19920_ 1 _ _ _', '-', 1, 5, 75, 1, 1, 12, '', '', 'Masih Hidup'),
(299, 'EDIF HAYUNAN SISWANTO', 'TRENGGALEK', '1971-07-09', 'Laki-laki', 'Parakan Rt 02 Rw I No. 37 Trenggalek-Jawa Timur 66317', '-', '-', '16102019221923-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710709 19920_ 1 _ _ _', '-', 1, 16, 48, 1, 1, 12, '', '', 'Masih Hidup'),
(300, 'EDI SUTRISNO', 'MANGUNEGARA', '1972-12-05', 'Laki-laki', 'Ds. Mangunegara Rt 04/III Kec. Mrebet Kab. Purbalingga-Jawa Tengah', '-', '-', '16102019222200-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721205 19920_ 1 _ _ _', '-', 1, 14, 157, 1, 1, 12, '', '', 'Masih Hidup'),
(301, 'EDIWANDA', 'PAROM', '1973-01-02', 'Laki-laki', 'Jl. Keumangan No. 20 Ds. Parom Kec. Seunagan Dati II Aceh Barat Daerah Istimewa Aceh 23671', '-', '-', '16102019222420-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730102 19920_ 1 _ _ _', '-', 1, 2, 118, 1, 1, 12, '', '', 'Masih Hidup'),
(302, 'EDY SURYAMAN', 'SERANG', '1972-02-21', 'Laki-laki', 'Jl. Garuda Blok B. No. 167 Panancangan Baru, Serang Banten', '-', '-', '16102019222651-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720221 19920_ 1 _ _ _', '-', 1, 17, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(303, 'EDY SURYANTO', 'BONDOWOSO', '1972-04-21', 'Laki-laki', 'Cermee Rt 16 No.33 Bondowoso, Jawa Timur-68286', '-', '-', '16102019222947-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970421 19920_ 1 _ _ _', '-', 1, 16, 96, 1, 1, 12, '', '', 'Masih Hidup'),
(304, 'EDY YUFUF', 'SIMALUNGUN', '1972-08-09', 'Laki-laki', 'Jl. WR. Supratman (PasarIV) No.4 Lubuk Pakam-Sumatera Utara', '-', '-', '16102019223841-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720809 19920_ 1 _ _ _', '-', 1, 3, 216, 1, 1, 12, '', '', 'Masih Hidup'),
(305, 'EDWARD CHANDRA', 'TALANG BALAI BARU', '1972-09-06', 'Laki-laki', 'Perumnas Blok A No.2 Indralaya Kab. Oki-Sumatera Selatan 30662', '-', '-', '16102019224127-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720906 19920_ 1 _ _ _', '-', 1, 7, 79, 1, 1, 12, '-', '', 'Masih Hidup'),
(306, 'EDWIN EFFENDI', 'Tj. ENIM', '1972-07-27', 'Laki-laki', 'Jl. Kamboja No. 1161 B Rt. 54 Rw 15 Palembang', '-', '-', '16102019224336-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720727 19920_ 1 _ _ _', '-', 1, 3, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(307, 'EFERMAX NAMOTEMO', 'DOKULAMO', '1972-02-05', 'Laki-laki', 'Ds. Dokulamo, Rt 03 Rw 07 Kec. Galela Kab. Maluku Utara, Maluku-97761', '-', '-', '16102019224644-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720205 19920_ 1 _ _ _', '-', 1, 32, 158, 1, 1, 12, '', '', 'Masih Hidup'),
(308, 'EKO S. HADI', 'KLATEN', '1972-08-08', 'Laki-laki', 'Jl. Assyrot Rt. 03/ 01 No.24 Kel. Sukabumi Selatan, Kec Kebon Jeruk Jakarta Barat 11560', '-', '-', '16102019224903-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720808 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(309, 'ELISA BOETJE LAINSAMPUTTY', 'AMBON', '1971-11-20', 'Laki-laki', 'Jl. Pocut Baren 19 B, Banda Aceh \r\nJl. Jangka 154 Mat Glp Dua Aceh Utara', '-', '-', '16102019225123-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1971112019920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(310, 'ELISEU LOPES DE ARAUJO', 'MALIANA', '1972-02-11', 'Laki-laki', 'Ds. Lahomea Rt 10 Rw 02, Maliana', '-', '-', '16102019225409-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710211 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(311, 'ELQADRI', 'BUKITTINGGI', '1971-11-17', 'Laki-laki', 'Simpang Gadut, Jln. Raya Bukittinggi-Medan Km 4,5 Bukittingi-Sumatera Barat', '-', '-', '16102019225604-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711117 19920_ 1 _ _ _', '-', 1, 4, 159, 1, 1, 12, '', '', 'Masih Hidup'),
(312, 'ENDANG JOHARUDIN', 'ANJATAN', '1970-11-22', 'Laki-laki', 'RT 03 RW I Desa Bogor, Kec. Sukra Kab. Indramayu-Jawa Barat 45257', '-', '-', '16102019225820-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1971122 19920_ 1 _ _ _', '-', 1, 13, 132, 1, 1, 12, '', '', 'Masih Hidup'),
(313, 'ENDANG VAN GOBEL', 'GORONTALO', '1973-06-12', 'Perempuan', 'Jl. 23 Januari Depan SDN No. 2 Ipilo, Kotamkadya Dati II Gorontalo, Sulut', '23363 (0435)', '-', '16102019230101-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730612 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(314, 'ENDRI SULIS HARYANI', 'PADANG', '1973-02-19', 'Perempuan', 'Jl.Gayamsari Selatan RT.07 RW.03 Kel.Sendangguwo Kec.Tembalan Semarang-Jateng', '-', '-', '17102019041458-image.JPG', '19730319 19920_ 2 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(315, 'EMANUEL ROJA', 'BOLONGA', '1970-12-25', 'Laki-laki', 'Padhawoli Kel.Trikora 03 Kec.Ngada Bawa Kab.Ngada Flores-NTT', '-', '-', '17102019041826-image.JPG', '19701225 19920_ 1 _ _ _', '-', 1, 20, 128, 1, 1, 12, '', '', 'Masih Hidup'),
(316, 'ERDIANSYAH', 'RENGAT', '1972-08-21', 'Laki-laki', 'Jl.Kereta Pai Gg.Pokat Kel.Tangkerang Tengah Kec.Bukit Raya RT.04 RW.05 Pekanbaru-Riau', '-', '-', '17102019042143-image.JPG', '19720821 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(317, 'ERIC P.Z. LUMBUN', 'JAKARTA', '1972-07-11', 'Laki-laki', 'Jl.Tanjung Duren TImur V No.0 Jakarta Barat 11470', '-', '-', '17102019042333-image.JPG', '19720711 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(318, 'ERLINA WAHYUNINGSIH', 'MADIUN', '1973-05-31', 'Perempuan', 'JL.Raya No.255 Sugihwaras Maospati Magetan-Jatim', '-', '-', '17102019042611-image.JPG', '19730531 19920_ 2 _ _ _', '-', 1, 16, 160, 1, 1, 12, '', '', 'Masih Hidup'),
(319, 'ERSON GEMPA AFRIANDI', 'BUNGA MAS', '1971-04-10', 'Laki-laki', 'Jl.Durian Gg.Baiturrahman No.65A/10 Labuhbaru-Pekanbaru Riau', '-', '-', '17102019042800-image.JPG', '19710410 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(320, 'ERVAN GANI P.S', 'MEDAN', '1971-07-25', 'Laki-laki', 'Jl.Asrama Lorong XIIA No.27 P.Berayan Bengkel Medan-Sumut 20239', '-', '-', '17102019043049-image.JPG', '19710725 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(321, 'ETIK SULISTYANI', 'PONOROGO', '1971-07-22', 'Perempuan', 'Jl.S.Sukowati 143 A Kutukulon Jetis Ponorogo Jatim 63473', '-', '-', '17102019043309-image.JPG', '19710722 19920_ 1 _ _ _', '-', 1, 16, 161, 1, 1, 12, '', '', 'Masih Hidup'),
(322, 'EVAN HENDRAWAN', 'T.KARANG', '1972-08-06', 'Laki-laki', 'Jl.K.H. Ahmad Dahlan No.1 Pahoman Pusri Lama B.Lampung', '-', '-', '17102019043524-image.JPG', '19720806 19920_ 1 _ _ _', '-', 1, 9, 74, 1, 1, 12, '', '', 'Masih Hidup'),
(323, 'ERWIANDI NORIS', 'TAPAKTUAN', '1972-01-29', 'Laki-laki', 'Jl.T.Chiek Ditiro No.108 Tapaktuan-Aceh Selatan', '-', '-', '17102019043701-image.JPG', '19720129 19920_ 1 _ _ _', '-', 1, 2, 162, 1, 1, 12, '', '', 'Masih Hidup'),
(324, 'EWITA YUDA', 'PEKANBARU', '1972-07-23', 'Perempuan', 'Jl.Dahlia No.42 Pekanbaru-Riau 28121', '-', '-', '17102019043850-image.JPG', '19720723 19920_ 2 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(325, 'ERYANTO', 'JAMBI', '1973-02-03', 'Laki-laki', 'Jl.Brigjen Katamso RT.04 RW.02 No.12 Kel.Tanjung Pinang Kec.Jambi TImur', '-', '-', '17102019052210-image.JPG', '19730203 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(326, 'FACHRIZAL NASUTION', 'MEDAN', '1972-01-24', 'Laki-laki', 'Jl.K.P.T.M. Jamil Lubis No.19 Medan', '-', '-', '17102019052452-image.JPG', '19720124 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(327, 'FACHRIZAL SYAH', 'PEKANBARU', '1971-05-15', 'Laki-laki', 'Jl.Kulim Gg.Gahru No.3 Pekanbaru-Riau', '-', '-', '17102019052631-image.JPG', '19710515 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(328, 'FAJAR HARISON ABIDIN', 'JAMBI', '1973-10-24', 'Laki-laki', 'Jl.Dahlia DDN 103 Pekanbaru-Riau', '-', '-', '17102019052755-image.JPG', '19731024 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(329, 'FAJAR SHIDQY', 'PEKANBARU', '1972-11-19', 'Laki-laki', 'Jl.Hang Tuah Kampung Kelapa No.49A Pekanbaru-Riau', '-', '-', '17102019052929-image.JPG', '19721119 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(330, 'FARIDA KURNIANINGRUM', 'KUPANG', '1972-11-22', 'Perempuan', 'Jl.Soeharto No.82 Oepura-Kupang NTT 85117', '-', '-', '17102019053124-image.JPG', '1972122 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(331, 'FARID LEMBAH', 'PALU', '1972-02-01', 'Laki-laki', 'Jl.Imam Bonjol No.86C Kec.Palu Barat-SulTeng', '-', '-', '17102019053301-image.JPG', '19720102 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(332, 'FATHURRAHMAN', 'JAMBI', '1972-04-14', 'Laki-laki', 'Lrg.Tac RT.28 No.26 Kel.Payo Lebar-Jambi', '-', '-', '17102019053450-image.JPG', '19720414 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(333, 'FATAHILLAH SYUKUR', 'TERNATE', '1973-08-02', 'Laki-laki', 'Ds.Mangga Dua RT.15/VI Kec.Kota Ternate Selatan Kab.Maluku Utara 97716', '-', '-', '17102019053939-image.JPG', '19730802 19920_ 1 _ _ _', '-', 1, 32, 158, 1, 1, 12, '', '', 'Masih Hidup'),
(334, 'FAUZI', 'COMAL', '1972-01-25', 'Laki-laki', 'Jl.KH.Zainul Afifin 71 RT.04/101 Kel.Duri Pulo Jakarta Pusat 10140', '-', '-', '17102019054151-image.JPG', '19720125 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(335, 'FAUZI EFRIZAL', 'TELUK MERBAU', '1972-07-02', 'Laki-laki', 'Jl.Melur No.58 Sukajadi Pekanbaru-Riau', '-', '-', '17102019054325-image.JPG', '19720702 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(336, 'FEBES MULYONO', 'PATI', '1972-02-07', 'Laki-laki', 'Jl.P.Diponegoro IIA/15 (Timur Pragola) Pati-Jateng', '-', '-', '17102019054518-image.JPG', '19720207 19920_ 1 _ _ _', '-', 1, 14, 164, 1, 1, 12, '', '', 'Masih Hidup'),
(337, 'FERA DJOKOSUSANTO', 'PEMALANG', '1972-03-19', 'Laki-laki', 'Jl.Tangkuban Perahu No.1 Pemalang-Jateng', '-', '-', '17102019054704-image.JPG', '19720319 19920_ 1 _ _ _', '-', 1, 14, 71, 1, 1, 12, '', '', 'Masih Hidup'),
(338, 'FERDI FIRDAUS', 'TANJUNG KARANG', '1971-06-26', 'Laki-laki', 'Jl.Kesehatan No.23 RT.01 Ling.II Merangin Baru Kel.Pematang Kandis Bangko-Jambi 37314', '-', '-', '17102019054904-image.JPG', '19710626 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(339, 'FERDINAN MANUMPIL', 'PANIKI', '1972-02-05', 'Laki-laki', 'Jl.MR.A.A. Maramis Paniki Bawah No.253 Kec.Mapanget Kodya Manado-Sulut', '-', '-', '17102019055122-image.JPG', '19720205 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(340, 'FERISNOVEL', 'SOLOK', '1973-02-10', 'Laki-laki', 'Jl.Lintas Sumatera No.36 Kel.Kajai Kec.Kubung Kab.Solok', '-', '-', '17102019055308-image.JPG', '19730210 19920_ 1 _ _ _', '-', 1, 3, 166, 1, 1, 12, '', '', 'Masih Hidup'),
(341, 'FERNANDO DIAS GUSMAO', 'DHARMA PATI', '1973-05-21', 'Laki-laki', 'Halitalok Balibo Kec.Balibo Kab.Bobonaro Timor Timur', '-', '-', '17102019055446-image.JPG', '19730521 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(342, 'FHATANALIA PUTRA', 'PEKANBARU', '1973-04-30', 'Laki-laki', 'Jl.Lumba-Lumba No.12 Tangkerang Pekanbaru-Riau', '-', '-', '17102019055612-image.JPG', '19730430 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(343, 'FIRDAUS', 'KAPUAS', '1971-12-27', 'Laki-laki', 'Jl.Barito Hilir No.30 RT.19/XIV Telaga Biru-Trisakti Banjarmasin 70119', '-', '-', '17102019055808-image.JPG', '19711227 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(344, 'FIFI ERNETI', 'KEC. Tg. RAYA KAB. AGAM', '1971-10-21', 'Perempuan', 'Ds. II Sidang-Maninjau (kukuran) Kec. Tanjung Raya, Kab. Agam Sumatera Barat 26472', '-', '-', '17102019065659-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1971021 19920_ 1 _ _ _', '-', 1, 4, 167, 1, 1, 12, '', '', 'Masih Hidup'),
(345, 'FIRMANDO HASIHOLAN MATONDANG', 'MALANG', '1972-06-21', 'Laki-laki', 'Dieng atas gang praja sumberejo kalisonggo Dau Malang', '081332672028', '-', '29102019135559-Firman_Mando.jpg', '19720621992011001', '031757', 1, 16, 209, 1, 1, 13, 'CAMAT PAKIS', '', 'Masih Hidup'),
(346, 'FIRMAN FIRDAUS SJ', 'BOGOR', '1971-05-30', 'Laki-laki', 'Pasir Ipis Rt 17 Rw 12 Kec. Surade Sukabumi', '-', '-', '17102019070125-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710530 19920_ 1 _ _ _', '-', 1, 13, 88, 1, 1, 12, '', '', 'Masih Hidup'),
(347, 'FIRMAN SANYOTO', 'BANYUWANGI', '1972-11-15', 'Laki-laki', 'Jl. Temuguruh No. 915 (utara Bulog) Genteng Wetan Genteng Banyuwangi Jawa Timur 68465', '-', '-', '17102019070309-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721115 19920_ 1 _ _ _', '-', 1, 16, 72, 1, 1, 12, '', '', 'Masih Hidup'),
(348, 'FIRMAN WAHJUDY RAZAK', 'JEMBER', '1970-11-19', 'Laki-laki', 'K.H. Cokroatmojo VIIÍ58 F Pamekasan-Madura 69311', '-', '-', '17102019070503-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711119 19920_ 1 _ _ _', '-', 1, 14, 21, 1, 1, 12, '', '', 'Masih Hidup'),
(349, 'FITRA YALDI DACHI', 'RANTAU PRAPAT', '1971-09-10', 'Laki-laki', 'Jl. A. Yani No.96 Rantau Prapat Sumatera Utara', '-', '-', '17102019070705-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710910 19920_ 1 _ _ _', '-', 1, 3, 169, 1, 1, 12, '', '', 'Masih Hidup'),
(350, 'FITRIADI', 'Kp. Pon', '1972-10-18', 'Laki-laki', 'Jl. Kesehatan Adg 36, Kuta Alam Banda Aceh 23121', '-', '-', '17102019070843-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721018 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(351, 'FLAVIANO GODINHO (FAVI)', 'MALILAIT, BOBONARO', '1969-02-05', 'Laki-laki', 'Jl. Marinir Beto Timur Rt 02/IV A 24 Comoro Kec. Dili Barat, Timor TImur', '-', '-', '17102019071109-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19690205 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(352, 'F M ADILALO', 'WAIKABUBAK', '1972-03-30', 'Laki-laki', 'Jl. Beringinjaya No. 1 Waikabbak Sumba Barat-NTT', '-', '-', '17102019071234-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720330 19920_ 1 _ _ _', '-', 1, 20, 170, 1, 1, 12, '', '', 'Masih Hidup'),
(353, 'FORTUNATO DOUTEL SARMENTO V', 'KAMENASA', '1968-09-01', 'Laki-laki', 'Desa Bairro Central Dili Timur', '-', '-', '17102019071723-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '197680901 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(354, 'FRANCISCO X.D.G', 'VENILALE', '1970-12-03', 'Laki-laki', 'Komplek Perumahan Dinas DEPDIKBUD No.6 Becora, Jl. Raya Becora Dili Timor-TImur', '-', '-', '17102019073103-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19701203 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(355, 'FRAN SUPRIADI', 'JAMBI', '1972-05-31', 'Laki-laki', 'Rt. 04 Rw 02 No. 1 Kel. Cempaka Putih Kec. Jelutung Kodya Jambi-Jambi 36134', '-', '-', '17102019073318-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720531 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(356, 'FRANSISKUS R', 'MAUMERA', '1972-02-01', 'Laki-laki', 'Jl. Patirangga No.5 Maumere NTT 86111', '(0382) 21489', '-', '17102019074654-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720201 19920_ 1 _ _ _', '-', 1, 20, 236, 1, 1, 12, '', '', 'Masih Hidup'),
(357, 'FRANS JEFFRY WIRAWAN WAU', 'TELUK DALAM', '1973-05-22', 'Laki-laki', 'Jl. Tirta No.24 Gunung Sitoli Kab. Dati II Nias', '-', '-', '17102019075018-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730522 19920_ 1 _ _ _', '-', 1, 3, 102, 1, 1, 12, '', '', 'Masih Hidup'),
(358, 'FRENCE THE', 'SERUI', '1972-10-12', 'Laki-laki', 'Jl. Gajah Mada No. 06 Serui', '-', '-', '17102019075634-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721013 19920_ 1 _ _ _', '-', 1, 35, 237, 1, 1, 12, '', '', 'Masih Hidup'),
(359, 'GA. UTOYO', 'SEMARANG', '1971-02-10', 'Laki-laki', 'Jl. Rumpun Diponegoro VI/72 Banyumanik Semarang-Jawa Tengah', '-', '-', '17102019080429-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710210 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(360, 'FREDY MAULANA SAPUTRA', 'JAKARTA', '1972-04-21', 'Laki-laki', 'Jl. Menteng Atas Selatang No. 14 0012.012 Setia Budi Jakarta Selatan 12960', '(021) 8306886', '-', '17102019081051-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720421 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(361, 'GENIUS UMAR', 'PARIAMAN', '1972-07-24', 'Laki-laki', 'Jl. Fatahillah No.38 Pariaman Sumatera Barat', '-', '-', '17102019081310-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720724 19920_ 1 _ _ _', '-', 1, 4, 173, 1, 1, 12, '', '', 'Masih Hidup'),
(362, 'GUNTUR', 'JAMBI', '1973-03-25', 'Laki-laki', 'Telanai Pura-Jambi', '-', '-', '17102019081511-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730325 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(363, 'GUSTI GEDE PUTRA', 'PADANG KERTA', '1972-04-27', 'Laki-laki', 'Kr. Bungkulan, Cakranegara Barat, Cakranegara Lombok Barat-NTB', '-', '-', '17102019081756-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720427 19920_ 1 _ _ _', '-', 1, 19, 174, 1, 1, 12, '', '', 'Masih Hidup'),
(364, 'GUSTI NURFAIZAL', 'BENGKULU', '1973-05-11', 'Laki-laki', 'Jl. Kapten Syahriar No. 10 Rt. IX Bengkulu 38118', '-', '-', '17102019082205-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730511 19920_ 1 _ _ _', '-', 1, 8, 179, 1, 1, 12, '', '', 'Masih Hidup'),
(365, 'HADI PRIYANTO', 'TUBAN', '1972-11-27', 'Laki-laki', 'Jl. Melati V/7 Rt. 04 Rw. IV Jember-Jawa Timur', '-', '-', '17102019082406-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721127 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(366, 'HAERANI DAHLAN', 'SINJAI', '1972-12-28', 'Perempuan', 'Jl. KH. A. Dahlan No. 6 Kab. Sanjai', '-', '-', '17102019082546-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721128 19920_ 1 _ _ _', '-', 1, 28, 94, 1, 1, 12, '', '', 'Masih Hidup'),
(367, 'HALIMATUSSAKDIAH', 'LAWE SAWAH', '1972-08-06', 'Perempuan', 'Jl. Mad Said No. 3 Lawe Sawah Kluet Selatan-Aceh Selatan', '-', '-', '17102019082813-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970806 19920_ 1 _ _ _', '-', 1, 2, 162, 1, 1, 12, '', '', 'Masih Hidup'),
(368, 'HALSEN', 'SERITI', '1972-04-24', 'Laki-laki', 'Jl. Mangga No.24, Palopo', '-', '-', '17102019083449-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720424 19920_ 1 _ _ _', '-', 1, 28, 176, 1, 1, 12, '', '', 'Masih Hidup'),
(369, 'HAMABALI', 'JAMBI', '1973-04-26', 'Laki-laki', 'Jl. Melur I Rt 17 Rw 06 No.31 Kel Simpang IV SIpin Telanaipu-Jambi 36124', '-', '-', '17102019084843-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730426 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(370, 'MAMDY SALEH PULUNGAN', 'BATANGTORU', '1972-04-01', 'Laki-laki', 'Jl. Teratai No.23 Padangsidempuan Kab. Tapanuli Selatan', '-', '-', '17102019085024-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720401 19920_ 1 _ _ _', '-', 1, 3, 177, 1, 1, 12, '', '', 'Masih Hidup'),
(371, 'HANY TITIHERU', 'AMBON', '1973-12-28', 'Laki-laki', 'AS. Den POM VIII/3 Trikora\r\nJl. Listrik Negara Batu Gajah Kotamadya Ambon', '-', '-', '17102019085310-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721228 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(372, 'HARISON EUGENE DAPU', 'MANADO', '1973-06-08', 'Laki-laki', 'Jl. Palma No .1 Manado', '-', '-', '17102019085547-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730608 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(373, 'HARIYONO', 'KEDIRI', '1971-10-16', 'Laki-laki', 'Jl. Mauni Gg. I No. 100 Kediri-Jatim', '-', '-', '17102019085705-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711016 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(374, 'HARTO KOSWARA', 'NAJAKENGKA', '1973-03-24', 'Laki-laki', 'Blok Bojong No. 117 Kel. Babakan Jawa Kec./Kab. Majalengka', '-', '-', '17102019091711-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730324 19920_ 1 _ _ _', '-', 1, 13, 6, 1, 1, 12, '', '', 'Masih Hidup'),
(375, 'Drs. Hasanudin,M.Si', 'PONTIANAK', '1973-04-04', 'Laki-laki', 'Perum Sarijadi Blok 13 No 2 Sukasari Bandung', '082231724466', 'Hasanudin0033@gmail.com', '25102019162838-WhatsApp_Image_2019-10-25_at_16_25_00.jpg', '19730404 199203 1 001', '03.1536', 1, 13, 110, 1, 1, 12, 'Kepala Bidang Pajak Daerah 1 ', 'BPKD', 'Masih Hidup'),
(376, 'HARYONO', 'BATANG', '1971-03-23', 'Laki-laki', 'Ds. Rejosari Jl. Wijaya Kusuma No. 16 Rt 01 Rw 01, Kec. Tersono, Kab. Batang', '-', '-', '17102019092328-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710323 19920_ 1 _ _ _', '-', 1, 14, 178, 1, 1, 12, '', '', 'Masih Hidup'),
(377, 'HAYKAL AKMAL', 'MEDAN', '1971-12-20', 'Laki-laki', 'Jl. K.L Yos Sudarso Link. II No.89 Medan-20116, Sumatera Utara', '-', '-', '17102019092838-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711220 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(378, 'HALDER COSME MARCAL BELO', 'BAUCAU', '1972-04-24', 'Laki-laki', '', '-', '-', NULL, '19720424 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(379, 'HALIANUS RUDIANTO', 'MAUMERE', '1972-12-31', 'Laki-laki', 'Jl. Kaktau, Kel. Beru Maumere-Flore 86111', '-', '-', '17102019093527-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721231 19920_ 1 _ _ _', '-', 1, 20, 236, 1, 1, 12, '', '', 'Masih Hidup'),
(380, 'HELMI SAYUTI', 'BENGKULU', '1972-06-21', 'Laki-laki', 'Jl. Danau Rt. VI No. 10 Jembatan Kecil Kodya Bengkulu', '-', '-', '17102019093752-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720621 19920_ 1 _ _ _', '-', 1, 8, 179, 1, 1, 12, '', '', 'Masih Hidup'),
(381, 'HENDRA FITRA ISMAIL', 'ALHAN PANJANG', '1971-08-10', 'Laki-laki', 'Ds. Tiga Sepakat Kec. Lembah Gumanti Kab. Solok, Sumatera Barat (Ubo-Batu Bagiriak)', '-', '-', '17102019094023-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970810 19920_ 1 _ _ _', '-', 1, 4, 166, 1, 1, 12, '', '', 'Masih Hidup'),
(382, 'HENDRA GUNAWAN', 'BANDUNG', '1972-03-01', 'Laki-laki', 'Jl. Jend. Gatot Subroto 116/126 G Rt 01 Rw 01 Binong Kulan Bandung 40275-Jawa Barat', '-', '-', '17102019094256-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720301 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 1, '', '', 'Masih Hidup'),
(383, 'HENDRA PUTRA', 'PEKANBARU', '1972-06-08', 'Laki-laki', 'Jl. Wonosari No. 140 A Pekanbaru-Riau', '-', '-', '17102019094525-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970608 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(384, 'HENDRA SETYAWAN', 'PADANG', '1972-07-10', 'Laki-laki', 'Jl. Banda Aceh No . 17 Wisma Indah IV Siteba Padang', '-', '-', '17102019095407-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720710 19920_ 1 _ _ _', '-', 1, 4, 29, 1, 1, 12, '', '', 'Masih Hidup'),
(385, 'HENDRI', 'LUBUK PASUNG', '1971-05-20', 'Laki-laki', 'Jl. Hilir Pasar Lubuk Basung No. 165 Agam-Sumatera Barat (26411)', '(0752) 76176', '-', '17102019095702-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710520 19920_ 1 _ _ _', '-', 1, 4, 167, 1, 1, 12, '', '', 'Masih Hidup'),
(386, 'HENDRI KUSYANTO', 'PADANG GENTING', '1973-05-06', 'Laki-laki', 'Padang Genting, Rimbo Kedui Kec. Seluma, Kab. Bengkulu Selatan Propinsi Bengkulu', '-', '-', '17102019100251-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730506 19920_ 1 _ _ _', '-', 1, 8, 180, 1, 1, 12, '', '', 'Masih Hidup'),
(387, 'HERMAN KUSDHARYANTO', 'SEMARANG', '1971-04-23', 'Laki-laki', 'Jl. Gaharu Utara I/2 Perumnas Banyumanik Semarang, Jawa Tengah', '-', '-', '17102019100518-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710423 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(388, 'HERNA SETIJADI', 'CILACAP', '1971-10-29', 'Laki-laki', 'Ex. Perumahan Superpospat No. 17 Cilacap, Jawan Tengah', '-', '-', '17102019100745-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711029 19920_ 1 _ _ _', '-', 1, 14, 123, 1, 1, 12, '', '', 'Masih Hidup'),
(389, 'HERIBERTUS LARAS KRISTIANTO', 'PURWOREJO', '1971-05-23', 'Laki-laki', 'Rt 02 Rw II Desa Banyuurip Purworejo-Jawa Tengah', '-', '-', '17102019101016-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710523 19920_ 1 _ _ _', '-', 1, 14, 125, 1, 1, 12, '', '', 'Masih Hidup'),
(390, 'HERO GUNAWAN', 'JAKARTA', '1971-12-10', 'Laki-laki', 'Komplek Nata Endah H228 Bandung', '-', '-', '17102019101146-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711210 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(391, 'HERI HERMAWAN', 'SUMEDANG', '1972-04-10', 'Laki-laki', 'Jl. Cikuray Sadakeling No. 08 Garut', '-', '-', '17102019101347-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720410 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(392, 'HERI SRI HASTUTIK', 'SIDOARJO', '1971-12-16', 'Perempuan', 'Jl. Raya Taman No. 24 Rt. XI Rw 02 Taman Sidoarjo-Jatim', '-', '-', '17102019101539-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711216 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(393, 'HERO SUKOTJO', 'SEMARANG', '1972-11-07', 'Laki-laki', 'Perbalan Purwosari I/642 E Semarang Utara, Jawa Tengah', '-', '-', '17102019101744-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721107 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(394, 'HERI SURYANTO', 'MARDIHARJO', '1972-07-17', 'Laki-laki', 'Ds. P.I. Mardiharjo, Perwk. Kec. Purwodadi Kab. Musi Rawas, Sumatera Selatan 31662', '-', '-', '17102019105011-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720717 19920_ 1 _ _ _', '-', 1, 7, 181, 1, 1, 12, '', '', 'Masih Hidup'),
(395, 'HERMAN SEMMY TETLEPTA', 'AMBON ', '1972-09-01', 'Laki-laki', 'Batugantung dalam, Jl. Lorong Sawi Sk 26/36 Ambon', '-', '-', '17102019105233-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720901 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(396, 'HERMAN SYUKUR ZEBUA', 'MEDAN', '1972-10-02', 'Laki-laki', 'Jl. Prof. Dr. Sutomo No. 39 Gunungsitoli Kab. Dati II Nias-Sumatera Utara', '-', '-', '17102019105442-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721002 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(397, 'HERMAN TEBAI', 'MAUWA', '1971-10-07', 'Laki-laki', 'Jl. Sub Dolong, Rt 08 Rk IV Kel. Mandala, Biak-Irian Jaya', '-', '-', '17102019105659-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711007 19920_ 1 _ _ _', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(398, 'HERMAWAN IRFAN ABBAS', 'UJUNG PANDANG', '1972-07-11', 'Laki-laki', 'Jl. Melati II No. 12 Sungguminasa Gowa-Sulawesi Selatan', '-', '-', '17102019105955-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720711 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(399, 'HERMES DAROSA COREIA BARROS', 'DILI', '1972-05-24', 'Laki-laki', 'Jl. Ainaro Manutasi Rt 01? Rw 04 Kabupaten Ainaro, Timor-Timur', '-', '-', '17102019110351-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720524 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(400, 'HERONIMUS I', 'PALANGKARAYA', '1972-05-11', 'Laki-laki', 'Asrama Kodim 1624 Larantuka Flores Timur-NTT 86215', '-', '-', '17102019110556-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720511 19920_ 1 _ _ _', '-', 1, 20, 153, 1, 1, 12, '', '', 'Masih Hidup'),
(401, 'HERRY GUNARA S.M', 'JAKARTA', '1971-09-11', 'Laki-laki', 'Komplek Kobekdam Jaya No. 43 Rt 02 Rw 12 Cililitan Jakarta-Timur', '-', '-', '17102019110952-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710911 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(402, 'HERRY PURNAMA', 'JAKARTA', '1972-12-31', 'Laki-laki', 'Jl. Harapan Mulya IV/2 Rt 06/Rw 05 Kel. Harapan Mulya-Kemayoran, Jak-pus', '-', '-', '17102019111205-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721231 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup');
INSERT INTO `alumni` (`id_alumni`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `mobile_phone`, `email`, `photo`, `nip`, `npp`, `fk_id_kementrian`, `fk_id_prov`, `fk_id_kab_kot`, `fk_id_kec`, `fk_id_kel`, `fk_id_pangkat`, `jabatan`, `instansi`, `meninggal`) VALUES
(403, 'HERRY PURNOMO', 'BANDUNG', '1972-02-01', 'Laki-laki', 'Jl. Krena No. 15 Bandung Kel. Arjuna Kec. Cicendo Kotamdya Bandung', '-', '-', '17102019111408-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720201 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(404, 'HERU BUDI SETIAWAN', 'SURABAYA', '1971-02-28', 'Laki-laki', 'Jl.Raya Kedamean No.29 RT.05/02 Kedamean Kab.Dati II Gresik Jawa Timur', '-', '-', '17102019131816-image.JPG', '19710228 19920_ 1 _ _ _', '-', 1, 16, 28, 1, 1, 12, '', '', 'Masih Hidup'),
(405, 'HERU MULYONO', 'KLATEN', '1972-04-20', 'Laki-laki', 'Jl.Sidodadi  No.51 Singosari Malang-Jatim Kampak RT.94 RW.23 Kalikotes Klaten Jawa Tengah', '-', '-', '17102019132106-image.JPG', '19720420 19920_ 1 _ _ _', '-', 1, 14, 69, 1, 1, 12, '', '', 'Masih Hidup'),
(406, 'HERU SUDARMANTO', 'TULUNGAGUNG', '1972-03-19', 'Laki-laki', 'Sukoharjo, Bandung, Tulungagung,Jatim 66274 Jl.H.Muhtar RT.003/01 No.80A Ciputat Tanggerang', '-', '-', '17102019132513-image.JPG', '19720319 19920_ 1 _ _ _', '-', 1, 17, 30, 1, 1, 12, '', '', 'Masih Hidup'),
(407, 'HERYAWAN', 'MENDAHARA', '1972-04-15', 'Laki-laki', 'Jl.Jalak Raya No.14 RT.27 Kel.Jeletung Kec.Jeletung-Jambi', '-', '-', '17102019132727-image.JPG', '19720415 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(408, 'HERY RUSNADI', 'SAMARINDA', '1972-12-13', 'Laki-laki', 'Jl.KH.Ahmad Dahlan No.88 Samarinda-Kaltim', '-', '-', '17102019132931-image.JPG', '19721213 19920_ 1 _ _ _', '-', 1, 24, 182, 1, 1, 12, '', '', 'Masih Hidup'),
(409, 'HIRAWAN DANAN PUTRA', 'SAMPIUH', '1973-04-22', 'Laki-laki', 'Jl.Jendral Soedirman Timur 801 Purwokerto', '-', '-', '17102019133139-image.JPG', '19730422 19920_ 1 _ _ _', '-', 1, 16, 183, 1, 1, 12, '', '', 'Masih Hidup'),
(410, 'IBNUSSALAM HARAHAP', 'GONTING JULU', '1971-08-06', 'Laki-laki', 'Desa Gontling Julu Kec.Barumun Tengah', '-', '-', '17102019133357-image.JPG', '19710806 19920_ 1 _ _ _', '-', 1, 3, 184, 1, 1, 12, '', '', 'Masih Hidup'),
(411, 'IBK. ALAMSYAH', 'GROBOGAN', '1973-09-15', 'Laki-laki', 'Rumah Dinas No.2 Perumka Sta.Doplang Kab.Blora-Jateng', '-', '-', '17102019133557-image.JPG', '19730915 19920_ 1 _ _ _', '-', 1, 14, 151, 1, 1, 12, '', '', 'Masih Hidup'),
(412, 'IBRAHIM CHAIDAR SAID', 'UJUNG PANDANG', '1971-01-08', 'Laki-laki', 'Jl.Andi Mappanyukki No.50 Ujung Pandang SulSel', '-', '-', '17102019133814-image.JPG', '19710108 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(413, 'IBRAHIM RASIMU', 'BUTON', '1972-01-18', 'Laki-laki', 'Jl.MT.Haryono No.42 Kendari', '-', '-', '17102019134002-image.JPG', '19720118 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(414, 'IDA R.A. ARSYAD', 'GALELA', '1973-02-02', 'Perempuan', 'Jl.Taman Makam Pahlawan Tologoda Soasio Galela - Maluku Utara', '-', '-', '17102019134207-image.JPG', '19730202 19920_ 1 _ _ _', '-', 1, 32, 158, 1, 1, 12, '', '', 'Masih Hidup'),
(415, 'IDING  SOLEHUDIN', 'ARGAPURA', '1971-12-02', 'Laki-laki', 'Sindangsari, Desa Sukasari Kidul Kec.Argapura Kab.Majalengka', '-', '-', '17102019134423-image.JPG', '19711202 19920_ 1 _ _ _', '-', 1, 13, 6, 1, 1, 12, '', '', 'Masih Hidup'),
(416, 'IIM NURAHIM', 'KUNINGAN', '1972-03-06', 'Laki-laki', 'Desa Karangsari RT.08 RW.01 Kec.Darma Kab.Kuningan', '-', '-', '17102019134608-image.JPG', '19720306 19920_ 1 _ _ _', '-', 1, 13, 140, 1, 1, 12, '', '', 'Masih Hidup'),
(417, 'I GEDE AGUS ARJAWA', 'CIPANAS', '1972-08-22', 'Laki-laki', 'Desa Bunutin Kec.Bangli Kab.Dati II Bangli-Bali 80613', '-', '-', '17102019134848-image.JPG', '19720822 19920_ 1 _ _ _', '-', 1, 18, 186, 1, 1, 12, '', '', 'Masih Hidup'),
(418, 'I KOMANG GDE WISNUADI', 'GIANYAR', '1973-04-30', 'Laki-laki', 'Jl.Suli No.3 Gianyar-Bali 80511', '-', '-', '17102019135105-image.JPG', '19730430 19920_ 1 _ _ _', '-', 1, 18, 187, 1, 1, 12, '', '', 'Masih Hidup'),
(419, 'I KOMANG AGUS ADINATA', 'MELAYA', '1973-08-11', 'Laki-laki', 'Jl.Mekar Sari No.24 Melaya Jembrana-Bali', '-', '-', '17102019135311-image.JPG', '19730811 19920_ 1 _ _ _', '-', 1, 18, 188, 1, 1, 12, '', '', 'Masih Hidup'),
(420, 'IKROMUL YASAK', 'SIDOARJO', '1972-08-30', 'Laki-laki', 'Ds.Pagerwojo RT.05 RW.02 Kec.Buduran Kab.Sidoarjo', '-', '-', '17102019135518-image.JPG', '19720830 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(421, 'AILHAM ABIDIN', 'KENDARI', '1972-05-16', 'Laki-laki', 'Jl.Bunga Matahari 30 Kendari-Sulawesi Tenggara', '-', '-', '17102019135718-image.JPG', '19720516 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(422, 'I MADE AGUS HARTHAWIGUNA', 'MARGA', '1973-08-14', 'Laki-laki', 'Pohgending Kawan Pitra Penebel Tabanan - Bali', '-', '-', '17102019135931-image.JPG', '19730814 19920_ 1 _ _ _', '-', 1, 18, 189, 1, 1, 12, '', '', 'Masih Hidup'),
(423, 'I MADE DARMAJA', 'TABANAN', '1972-04-02', 'Laki-laki', 'Jl.Gunung Batur Gg.Kaliasem No.8 Denpasar Barat-Bali', '-', '-', '17102019140133-image.JPG', '19720402 19920_ 1 _ _ _', '-', 1, 18, 190, 1, 1, 12, '', '', 'Masih Hidup'),
(424, 'I MADE SUGIARTHA', 'SIBETAN', '1972-08-21', 'Laki-laki', 'Dusun / Banjar Kereteg Ds.Sibetan Kec.Bebandem Karangasem-Bali', '-', '-', '17102019140412-image.JPG', '19720821 19920_ 1 _ _ _', '-', 1, 18, 191, 1, 1, 12, '', '', 'Masih Hidup'),
(425, 'I MADE WIRYANA', 'LAMPUNG TENGAH', '1971-12-23', 'Laki-laki', 'Jl.Raya 15 Belakang SBXV Sakti Buana Kec.Seputih Banyak Kab.DatiII-Lampung Tengah 34156', '-', '-', '17102019140629-image.JPG', '19711223 19920_ 1 _ _ _', '-', 1, 9, 192, 1, 1, 12, '', '', 'Masih Hidup'),
(426, 'IMAM CAHYADI', 'PROBOLINGGO', '1972-11-17', 'Laki-laki', 'Pandan Canggu No.100 RT.02 RW.25 Pare-Kediri 64217 Jawa Timur', '-', '-', '17102019140840-image.JPG', '19721117 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(427, 'IMAM MAHMUDI', 'CIREBON', '1971-11-30', 'Laki-laki', 'RT.05 RW.02 No.8 Ciawi-Palimanan Cirebon 45161 Jawa Barat', '-', '-', '17102019141050-image.JPG', '19711130 19920_ 1 _ _ _', '-', 1, 13, 111, 1, 1, 12, '', '', 'Masih Hidup'),
(428, 'IMAM NURWEDI', 'TULUNGAGUNG', '1972-05-04', 'Laki-laki', 'Jl.Pandean 08 Campurdarat Tulungagung-Jawa Timur', '-', '-', '17102019141252-image.JPG', '19720504 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(429, 'IMAM SUBEKTI', 'SURABAYA', '1973-07-09', 'Laki-laki', 'Wisma Tropodo BO 16 Waru-Sidoarjo Jatim', '-', '-', '17102019141521-image.JPG', '19730709 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(430, 'IMAM SUWOYO', 'TULUNGAGUNG', '1970-10-22', 'Laki-laki', 'Ds.Pinggirsari RT.03 RW.04 Kec.Ngantru-Tulungagung', '-', '-', '17102019141918-image.JPG', '19701022 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(431, 'IMAN HUD', 'UJUNG PANDANG', '1972-09-29', 'Laki-laki', 'Jl.Bonto Manai No.6 Gunungsari Baru Ujung Pandang', '-', '-', '17102019142127-image.JPG', '19720929 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(432, 'IMAN SAIMAN', 'BANDUNG', '1972-06-23', 'Laki-laki', 'Kp.Bojong Asih RT.02/18 Ds.Cicalengka Kec.Cicalengka Kab.Dati II Bandung Jawa Barat', '-', '-', '17102019142342-image.JPG', '19720623 19920_ 1 _ _ _', '-', 1, 13, 112, 1, 1, 12, '', '', 'Masih Hidup'),
(433, 'IMANUEL DJOBO', 'KALABAHI', '1972-04-03', 'Laki-laki', 'Jl.Perintis Kemerdekaan RT.27 RW.08 Kel.Kelapa Lima Walikota Baru Kupang-NTT', '-', '-', '17102019152632-image.JPG', '19720403 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(434, 'IMANUEL J.F. UNMEHOPA', 'MAMSOHI', '1971-07-11', 'Laki-laki', 'Aspol Perwira Jl.Taar Atas UN III Tual Maluku Tenggara', '-', '-', '17102019152904-image.JPG', '19710711 19920_ 1 _ _ _', '-', 1, 32, 152, 1, 1, 12, '', '', 'Masih Hidup'),
(435, 'IMRAN NUR', 'GOWA', '1971-09-04', 'Laki-laki', 'Jl.Makam Sultan Hasanuddin No.1 Kel.Katangka Kec.Somba Opu Kab.Gowa Sulawesi selatan 92114', '-', '-', '17102019153118-image.JPG', '19710904 19920_ 1 _ _ _', '-', 1, 28, 81, 1, 1, 12, '', '', 'Masih Hidup'),
(436, 'IMRON', 'JAKARTA', '1973-04-15', 'Laki-laki', 'Jakarta', '-', '-', '17102019153304-image.JPG', '19730415 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(437, 'INDAH ROHANI', 'PROBOLINGGO', '1972-03-08', 'Perempuan', 'Jl.Raya Panglima Sudirman X 33A Probolinggo Jatim 67217', '-', '-', '17102019153513-image.JPG', '19720308 19920_ 2 _ _ _', '-', 1, 16, 68, 1, 1, 12, '', '', 'Masih Hidup'),
(438, 'INDRA GUNAWAN', 'LUBUK ALUNG', '1971-05-08', 'Laki-laki', 'Jl.Kopodang 3 No190 RT.22 Perumnas Kotabaru Jambi', '-', '-', '17102019153729-image.JPG', '19710508 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(439, 'INDRA GUNAWAN', 'SURABAYA', '1971-02-11', 'Laki-laki', 'Jl.Kutisari I / 14 Kec.Tenggilis Mejoyo Surabaya Jatim', '-', '-', '17102019153933-image.JPG', '19710211 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(440, 'INDRA JONI', 'RENGAT', '1970-09-03', 'Laki-laki', 'Jl.Kelapa Sawit No.4 Kel.Tengkareng Selatan Kodya Pekanbaru Riau 28282', '-', '-', '17102019154140-image.JPG', '19700903 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(441, 'INDRA RESPATI', 'BANDUNG', '1970-12-02', 'Laki-laki', 'Jl.Buahdua No.3 Antapani Bandung', '-', '-', '17102019154330-image.JPG', '19701202 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(442, 'INDRA SH SIMAREMARE', 'TARUTUNG', '1972-03-30', 'Laki-laki', 'Jl.Sisingamaraja No.123A Siborongborong Tapanuli Utara Sumut', '-', '-', '17102019154541-image.JPG', '19720330 19920_ 1 _ _ _', '-', 1, 3, 194, 1, 1, 12, '', '', 'Masih Hidup'),
(443, 'HERU FARIANTO, S.Sos, M.Si.', 'MOJOKERTO', '1970-10-17', 'Laki-laki', 'Perumahan GRAHA CANDI AI-15\r\nRT 07 RW 08 Kel. Bakalan \r\nKec. Bugulkidul - Kota Pasuruan\r\nJawa Timur ', '081234331970 ', '-', '30102019085111-C360_2019-08-21-09-53-21-731_-_Heru_Farianto.jpg', '197010171992011001', '03.1297', 1, 16, 256, 1, 1, 13, 'Camat Pasrepan ', '', 'Masih Hidup'),
(444, 'INDRA WIJAYA', 'JAKARTA', '1971-09-20', 'Laki-laki', 'Jl. Albarkah II No. 1 Rt 02 Rw 03 Rawabuaya-Cengkareng Jakarta Barat', '-', '-', '17102019161107-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970720 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(445, 'I PUTU AGUS ARTANA PUTRA', 'TEGALCANGKRING', '1970-08-07', 'Laki-laki', 'Jl. Beji 232 B.B Agung Tegalcangkring Jembaran-Bali', '-', '-', '17102019161414-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970807 19920_ 1 _ _ _', '-', 1, 18, 249, 1, 1, 12, '', '', 'Masih Hidup'),
(446, 'I PUTU EKA SWARNAMA', 'TUKADAYA', '1971-12-09', 'Laki-laki', 'Ds. Tukadaya, Kec. Melaya, Jembarana-Bali', '-', '-', '17102019161719-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711209 19920_ 1 _ _ _', '-', 1, 18, 249, 1, 1, 12, '', '', 'Masih Hidup'),
(447, 'I PUTU DARTA', 'JATI BALI', '1972-11-08', 'Laki-laki', 'Desa Jati Bali Rt. 06/II, Kec, Ranomeeto-Kendari Sulawesi Tenggara 93372', '-', '-', '17102019162209-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721108 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(448, 'I PUTU WIDNYANA', 'SINGARAJA', '1974-02-06', 'Laki-laki', 'Jl. Mayor Metra Gg. XI Kel. Liligundi, Singaraja Bali (81119)', '-', '-', '17102019162406-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19740206 19920_ 1 _ _ _', '-', 1, 18, 195, 1, 1, 12, '', '', 'Masih Hidup'),
(449, 'IRA EKARIANI', 'PURWAKARTA', '1972-07-20', 'Perempuan', 'Jl. Jend. A. Yani No. 8 Purwakarta-41112', '-', '-', '17102019162623-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720720 19920_ 1 _ _ _', '-', 1, 13, 196, 1, 1, 12, '', '', 'Masih Hidup'),
(450, 'IRMA MUTHMAINNAH', 'JAYAPURA', '1972-10-09', 'Perempuan', 'Pondokan Pertiwi Pobox 181 Abepura-Jaya Pura-Irian Jaya', '-', '-', '17102019162814-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721009 19920_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(451, 'IRNAWATI', 'PONTIANAK', '1972-05-10', 'Perempuan', 'Jl. Dr. Wahidin Sudirohusodo Gg. Sepakat VIII No.4, Pontianak 78116 Kalbar', '(0561) 30609', '-', '25102019162156-irnawati.jpg', '19720510 19920_ 1 _ _ _', '-', 1, 21, 100, 1, 1, 12, 'Kepala Badan Pendapatan Daerah Kab. Pontianak', 'bapenda', 'Masih Hidup'),
(452, 'IRNIYUSNITA TANDJOE', 'MOUTONG', '1973-02-21', 'Laki-laki', 'Jl. Tombolotutu No.11 Moutong-Sulawesi Tengah', '-', '-', '17102019163531-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730221 19920_ 1 _ _ _', '-', 1, 27, 197, 1, 1, 12, '', '', 'Masih Hidup'),
(453, 'IRSYAD', 'NABIRE', '1971-08-08', 'Laki-laki', 'Jl. Mulawarman Kota Baru Nabire-Irian Jaya', '-', '-', '17102019163706-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710808 19920_ 1 _ _ _', '-', 1, 35, 198, 1, 1, 12, '', '', 'Masih Hidup'),
(454, 'IRWAN BUDIANA', 'CIAMIS', '1973-04-06', 'Laki-laki', 'Jl. Sindang Utara Rt 03 Rw 12 Link. Kertahayu, Kec. Sindangrasa Kec./Kab. Ciamis-Jawa Barat (46215)', '-', '-', '17102019164020-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730406 19920_ 1 _ _ _', '-', 1, 13, 117, 1, 1, 12, '', '', 'Masih Hidup'),
(455, 'IRWAN HARAHAP', 'PADANG', '1972-01-16', 'Laki-laki', 'Jl. Binjai KM. 10,8 Comp. Pardede No. 8 Medan', '-', '-', '17102019164326-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720116 19920_ 1 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(456, 'IRWAN SUSANTO', 'BOGOR', '1971-10-05', 'Laki-laki', 'Jl. Cendrawasih No.16 Nabire-98818', '-', '-', '17102019164506-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711005 19920_ 1 _ _ _', '-', 1, 35, 198, 1, 1, 12, '', '', 'Masih Hidup'),
(457, 'ISAK IRWAN LIMBONG', 'RANTEPAO', '1972-10-17', 'Laki-laki', 'Kampung Makasar Jl. Trikora Wosi Manokwari (Irian Jaya)-98312', '-', '-', '17102019164703-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721017 19920_ 1 _ _ _', '-', 1, 35, 80, 1, 1, 12, '', '', 'Masih Hidup'),
(458, 'ISAK PETRUS MUABUAY', 'SERUI', '1972-07-10', 'Laki-laki', 'Jl. Sumbawa Mess Pemda No.11 Wamena-Jaya Wijaya Irian Jaya-99501', '-', '-', '17102019164911-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720710 19920_ 1 _ _ _', '-', 1, 35, 199, 1, 1, 12, '', '', 'Masih Hidup'),
(459, 'IS FAHMIN', 'NIPA', '1973-10-10', 'Laki-laki', 'Jl. Pantai Bahagia Rt 18 Rw 08 Nipa Wera Barat Bima-NTB', '-', '-', '17102019165239-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731010 19920_ 1 _ _ _', '-', 1, 19, 129, 1, 1, 12, '', '', 'Masih Hidup'),
(460, 'ISKANDAR', 'SINGKAWANG', '1971-08-12', 'Laki-laki', 'Jl. Suhada No. 23 Rt 15 Rw 03 Kel. Condong, Kec. Rohan Kotif Singkawang 79111-Kalbar', '-', '-', '17102019165442-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '197108122 19920_ 1 _ _ _', '-', 1, 21, 84, 1, 1, 12, '', '', 'Masih Hidup'),
(461, 'ISKANDAR ZULKARNAIN I', 'P.SIDIMPUAN', '1973-04-22', 'Laki-laki', 'Jl. M. Thamrin No.85 P. Sidimpuan-Sumut', '-', '-', '17102019165708-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730422 19920_ 1 _ _ _', '-', 1, 3, 200, 1, 1, 12, '', '', 'Masih Hidup'),
(462, 'ISNAWA ADJI', 'JAKARTA', '1972-05-24', 'Laki-laki', 'Jl. Tebet Timur Dalam VIII L No.21 Tebet-Jakarta Selatan-12820', '-', '-', '17102019165858-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720524 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(463, 'ISWADI PRIBADI', 'SIDOARJO', '1971-12-08', 'Laki-laki', 'Jl. Diponegoro Rt 07 Rw 02 No. 246 Ds. Lebo Sidoarjo-Jatim', '-', '-', '17102019170043-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711208 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(464, 'ISWAHYUDI', 'JAKARTA', '1972-11-18', 'Laki-laki', 'Jl. Barkah Rt 10 Rw 05 No.7 Tebet, Jakarta-Selatan', '-', '-', '17102019173453-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721018 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(465, 'IRAWAN PANDU NEGARA', 'MEDAN', '1972-10-18', 'Laki-laki', 'Jl. Merak No.21 Suka Damai Banda Aceh-D.I. Aceh', '-', '-', '17102019173640-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721018 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(466, 'IWAN RIDWAN FATAHILLAH', 'SUMEDANG', '1972-10-19', 'Laki-laki', 'Jl. Rd. Sadikin N0.8 Sumedang Jawa Barat 45311', '(0261) 202294', '-', '17102019173834-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721019 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(467, 'I WAYAN BUDHA', 'KEROBOKAN', '1970-07-15', 'Laki-laki', 'Br. Anyar Kelod. Kel. Kerobokan Kuta', '-', '-', '17102019174157-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700615 19920_ 1 _ _ _', '-', 1, 18, 250, 1, 1, 12, '', '', 'Masih Hidup'),
(468, 'I WAYAN SUDARYA', 'BANTAS', '1971-05-17', 'Laki-laki', 'Bantas, Selemadeg Tabanan-Bali', '-', '-', '17102019174429-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710517 19920_ 1 _ _ _', '-', 1, 18, 189, 1, 1, 12, '', '', 'Masih Hidup'),
(469, 'JA. BAYU WIDJAYA', 'MALANG', '1971-07-31', 'Laki-laki', 'Jl. Mayang No. 08 Sumberpucung Malang-Jawa Timur', '-', '-', '17102019174643-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710731 19920_ 1 _ _ _', '-', 1, 16, 209, 1, 1, 12, '', '', 'Masih Hidup'),
(470, 'JABIR', 'PINRANG', '1970-10-11', 'Laki-laki', 'Jl. Pettana Rajeng No.33 Pinrang', '-', '-', '17102019174831-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19701011 19920_ 1 _ _ _', '-', 1, 28, 17, 1, 1, 12, '', '', 'Masih Hidup'),
(471, 'JAIME MAJA', 'ATABAE', '1972-11-29', 'Laki-laki', 'Comoro Dili Barat Rt IV Rw V Blok D No. 20 Kp. Baru-Dili', '-', '-', '17102019175016-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721129 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(472, 'JANUARI PANE', 'LAGUBOTI', '1971-01-01', 'Laki-laki', 'Rt 17 Rw 05 Kel. Pakuan Baru, Kodya Jambi Jl. K. Tadean 13 P.Sidimpuan, Sumatera Utara', '-', '-', '17102019175253-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710101 19920_ 1 _ _ _', '-', 1, 3, 200, 1, 1, 12, '', '', 'Masih Hidup'),
(473, 'JANUARIO MAGELHAENS', 'BABULO', '1969-03-05', 'Laki-laki', 'Ds. Babulo Rt 03 Rw 03 Kec. Uato-Lari Kab, Vinqueque Tim-Tim', '-', '-', '17102019175501-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19690305 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(474, 'JARNALIS', 'KEDARI', '1971-07-19', 'Laki-laki', 'Jl. Made Sabara 17 Kendari\r\n', '(0401) 22375-93111', '-', '17102019180229-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710619 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(475, 'JATMIKO NUGROHO IRYANTO', 'NABIRE', '1972-03-15', 'Laki-laki', 'Jl. Mulawarman No 2 (Komp. P&K) Nabire-Irian Jaya 98801', '(0964) 21176', '-', '17102019180536-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720315 19920_ 1 _ _ _', '-', 1, 35, 198, 1, 1, 12, '', '', 'Masih Hidup'),
(476, 'JEDITJIA HUWAE', 'ALLANG', '1972-01-13', 'Laki-laki', 'Jl. Pantai Rumah tiga No. 54 Ambon-Maluku', '-', '-', '17102019181739-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720113 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(477, 'JEFFRY J.D. LUSI', 'KUPANG', '1971-09-01', 'Laki-laki', 'Jl. Swakarya I Rt 35 Rw VII No. 23 Kuanino Kupang NTT', '-', '-', '17102019181938-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710901 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(478, 'JEMMY HARUN', 'GORONTALO', '1972-09-17', 'Laki-laki', 'Jl Sawah Besar No. 227 Oluhuta Kec. Kabila Gorontalo', '-', '-', '17102019182616-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720917 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(479, 'JEMS RIKLOF KAPUATE', 'KARLUTUWARASITA', '1972-06-05', 'Laki-laki', 'Rumah Tiga Rt 04 Rw 03 Link. Kusu-kusu Jl. Gadaria, Kodya Ambon', '-', '-', '17102019182830-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720605 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(480, 'JESUINA MARIA FERREIRA GOMES', 'ATSABE', '1972-04-26', 'Laki-laki', 'Jl. Merdeka No. 4A Dili Barat', '-', '-', '17102019183008-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720426 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(481, 'JOHN FISZGERARD LATUMETEN', 'AMBON', '1973-02-07', 'Laki-laki', 'Jl. Namla tu Seilale Kec. Nusaniwe Kodya Ambon', '-', '-', '17102019183155-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730207 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(482, 'JOHN HENDRY', 'KAMPAR', '1972-11-04', 'Laki-laki', 'Komplek Pasar Kampar 47 Kec./Kab. Kampar-Riau', '-', '-', '17102019183352-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721004 19920_ 1 _ _ _', '-', 1, 5, 202, 1, 1, 12, '', '', 'Masih Hidup'),
(483, 'JONNY HUTASOIT', 'BUNTURAJA', '1972-09-23', 'Laki-laki', 'Jl. Parogi No.65, Sidikalang Sumatera-Utara', '-', '-', '17102019183623-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720923 19920_ 1 _ _ _', '-', 1, 3, 203, 1, 1, 12, '', '', 'Masih Hidup'),
(484, 'JOHNY SAPTA PUTRA', 'BENGKALIS', '1972-06-07', 'Laki-laki', 'Jl. Hang Tuah N0.291 Rt 02 Rw IX Rejosari Pekanbaru-Riau', '-', '-', '17102019184112-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720607 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(485, 'JOHNY SETIABUDHIE', 'GARUT', '1972-09-10', 'Laki-laki', 'Ds. Sukagalih Rt. 07 Rw 05 Kec. Tarogong Kab. Garut', '-', '-', '17102019184321-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720910 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(486, 'JOHNY SOTAR PARGAULAN H', 'JAKARTA', '1971-09-03', 'Laki-laki', 'Jl. Kikir No.4 Kampung Ambon Jakarta Timur', '-', '-', '17102019184522-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710903 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(487, 'JONI IRWANTO', 'SUNGAI PINYUH', '1973-06-06', 'Laki-laki', 'Jl. Pendidikan No. 32 Sungai Pinyuh Kab. Dati II Pontianak-Kal-Bar', '-', '-', '17102019184740-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730606 19920_ 1 _ _ _', '-', 1, 21, 100, 1, 1, 12, '', '', 'Masih Hidup'),
(488, 'JOKO WALUYO', 'WONOGIRI', '1972-04-15', 'Laki-laki', 'Jetis Rt02 Rw V Wuryorejo, Wonogiri Jawa Tengah-57614', '-', '-', '17102019184924-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720415 19920_ 1 _ _ _', '-', 1, 14, 204, 1, 1, 12, '', '', 'Masih Hidup'),
(489, 'JOHN WINSTON D. KAKISINA', 'AMBON', '1969-08-09', 'Laki-laki', 'Jl. Pocut Baren 19 B, Banda Aceh Batu Gantung Dalam Lorong Sawi Sk 15/25 Ambon 97112', '-', '-', '17102019185152-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19690809 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(490, 'JOSE BELMARCO', 'LOSPALOS', '2019-10-17', 'Laki-laki', 'Dili, Timor -Timur', '-', '-', '17102019185430-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720706 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(491, 'JOSE PEREIRA VICENTE', 'BOBONARI', '1972-05-05', 'Laki-laki', 'Jl. Raya Comor Kp. Tuty Rt 03 Rw II, Ds. Comoro Dili Barat-Timor-Timur', '-', '-', '17102019185641-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720505 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(492, 'JOSEPH KUA\'BIB', 'Gianyar ', '1971-09-18', 'Laki-laki', 'Oelolok, Ainiut, Kec. Insana Kab. Timor Tengah Utara-NTT', '-', '-', '17102019185950-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710918 19920_ 1 _ _ _', '-', 1, 20, 107, 1, 1, 12, '', '', 'Masih Hidup'),
(493, 'JUARMAN', 'PEKANBARU', '1970-11-21', 'Laki-laki', 'Jl. Tanjung Batu No.53 Pekanbaru-Riau (28144)', '-', '-', '17102019190130-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19701121 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(494, 'JULIADI ZURDANI HARAHAP', 'RANTAU PRAPAT', '2019-11-26', 'Laki-laki', 'Jl. H. Lawan Matsum No.56 Tanjung Leidong 21475', '-', '-', '17102019190349-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720626 19920_ 1 _ _ _', '-', 1, 3, 205, 1, 1, 12, '', '', 'Masih Hidup'),
(495, 'JULI SANTOSO', 'KEDIRI', '1973-07-18', 'Laki-laki', 'Jl. Banjaran I No. 97 A Kediri-Jawa Timur', '-', '-', '17102019190711-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730718 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(496, 'JUNAEDY', 'PEKANBARU', '1972-06-28', 'Laki-laki', 'Jl. Kesehatan No. 67, Kel. Bandar Kec. Senapelan, Pekanbaru-Riau', '-', '-', '17102019190914-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720628 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(497, 'JUNAIDI', 'JAKARTA', '1973-10-22', 'Laki-laki', 'Jl. Kosambi III/5 Rt. 15 Rw 01 Kalibaru Cilincing, Jakarta Utara', '-', '-', '17102019191141-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731022 19920_ 1 _ _ _', '-', 1, 12, 251, 1, 1, 12, '', '', 'Masih Hidup'),
(498, 'JUNAIDI FIRRAWAN', 'TELUKBATANG', '1972-05-23', 'Laki-laki', 'Jl. Raya Teluk Batang Rt 07 Rw II Ketapang- Kalimantan Barat', '-', '-', '17102019191527-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720523 19920_ 1 _ _ _', '-', 1, 21, 206, 1, 1, 12, '', '', 'Masih Hidup'),
(499, 'JUPERAINTO MARBUN B.', 'BANDUNG', '1972-06-12', 'Laki-laki', 'Jl. PSM D7/97, Bandung Jawa Barat', '-', '-', '17102019191737-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720612 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(500, 'JURIADIN', 'EREKE', '1971-05-26', 'Laki-laki', 'Jl. Dr. Ratulangi 130, Kemaraya Kendari, Sulawesi Tenggara (93131)', '-', '-', '17102019192000-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710526 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(501, 'JUSUF JONI TODING', 'WAINGAPU', '1969-01-09', 'Laki-laki', 'Apo Bukit Rt 02 Rw II No.16 Jayapura-Irian Jaya ', '(0967) 34690', '-', '17102019192220-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19690109 19920_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(502, 'KADEK WIRATNATA', 'DENPASAR', '1972-02-20', 'Laki-laki', 'Jl. Gunung Agung Gg. IV No. 11A Denpasar-Bali', '-', '-', '17102019192357-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720220 19920_ 1 _ _ _', '-', 1, 18, 190, 1, 1, 12, '', '', 'Masih Hidup'),
(503, 'KADIR S', 'LIANG', '1972-09-03', 'Laki-laki', 'Kompleks Pasar Mardika LT. I Blok B No. 19-20, Kodya Ambon', '55511', '-', '17102019192607-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720903 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(504, 'KALSIUM SITEPU', 'KABANJAHE', '1972-05-23', 'Laki-laki', 'Kantor Seksi Dinas P&K Kec.Barusjahe Kab.karo Sumut', '-', '-', '17102019193155-image.JPG', '19720523 19920_ 1 _ _ _', '-', 1, 3, 207, 1, 1, 12, '', '', 'Masih Hidup'),
(505, 'KANTI BUDIARTI', 'JOMBANG', '1972-02-01', 'Perempuan', 'Jl.Darmo Permai Timur III/43 Surabaya', '-', '-', '17102019193346-image.JPG', '19720201 19920_ 2 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(506, 'KAREL E. HUWAE', 'TEHORU', '1971-03-03', 'Laki-laki', 'Jl.Karang Panjang RT.03', '-', '-', '17102019193542-image.JPG', '19710303 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(507, 'KARMANSYAH', 'TANJUNG KARANG', '1971-07-04', 'Laki-laki', 'Jl.Mangga No.21 Tanjung Karang Bandar Lampung', '-', '-', '17102019193707-image.JPG', '19710704 19920_ 1 _ _ _', '-', 1, 9, 74, 1, 1, 12, '', '', 'Masih Hidup'),
(508, 'KASMUDDIN', 'PALOPO', '1971-05-30', 'Laki-laki', 'Jl.Dr.Ratulagi Kotif Palopo Sulawesi Selatan 91914', '-', '-', '17102019193922-image.JPG', '19710530 19920_ 1 _ _ _', '-', 1, 28, 176, 1, 1, 12, '', '', 'Masih Hidup'),
(509, 'KHAIRIL ANWAR', 'LABUHAN RUKU', '1972-04-28', 'Laki-laki', 'Jl.Imam Bonjol No.177 Kel.Labuhan Ruku Kec.Talawi Kab.Asahan Sumatera Utara', '-', '-', '17102019194109-image.JPG', '19720428 19920_ 1 _ _ _', '-', 1, 3, 208, 1, 1, 12, '', '', 'Masih Hidup'),
(510, 'KHARIAL AZMI', 'PKL KAPAS', '1972-06-24', 'Laki-laki', 'Jl.Lettu Abd.Rahman No.141 Lipatkain Kec.Kampar Kiri Kab.Kampar Riau', '-', '-', '17102019194412-image.JPG', '19720624 19920_ 1 _ _ _', '-', 1, 5, 202, 1, 1, 12, '', '', 'Masih Hidup'),
(511, 'KHUSNA LINDARTI', 'BLITAR', '1972-11-05', 'Perempuan', 'Jabung RT.01 RW.02', '-', '-', '17102019194548-image.JPG', '19721105 19920_ 2 _ _ _', '-', 1, 16, 145, 1, 1, 12, '', '', 'Masih Hidup'),
(512, 'KHUZAIRI', 'MINAS', '1972-04-19', 'Laki-laki', 'Jl.Tiung No.9 Tangkerang Pekanbaru Riau', '-', '-', '17102019194713-image.JPG', '19720419 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(513, 'KOMARIAH', 'CIAMIS', '1972-09-20', 'Perempuan', 'Cijedil RT.16/04 No.11 Cugenang Cianjur', '-', '-', '17102019194848-image.JPG', '19720920 19920_ 2 _ _ _', '-', 1, 13, 141, 1, 1, 12, '', '', 'Masih Hidup'),
(514, 'KOMARU MA\'ARIF', 'BANTUL', '1972-05-18', 'Laki-laki', 'RT.01 RW.46 Krajan Poncosari Srandakan Bantul Yogyakarta', '-', '-', '17102019195031-image.JPG', '19720518 19920_ 1 _ _ _', '-', 1, 15, 210, 1, 1, 12, '', '', 'Masih Hidup'),
(515, 'KORNELIUS', 'NANGA SUNGAI', '1972-07-06', 'Laki-laki', 'Benua Martinus Kec.Embaloh Hulu Kab.Kapuas Hulu', '-', '-', '17102019195208-image.JPG', '19720706 19920_ 1 _ _ _', '-', 1, 21, 121, 1, 1, 12, '', '', 'Masih Hidup'),
(516, 'KOSWARA MULYANA', 'RANGKASBITUNG', '1971-06-09', 'Laki-laki', '-', '-', '-', '17102019195329-image.JPG', '19720609 19920_ 1 _ _ _', '-', 1, 13, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(517, 'KRISAWATI DJATMIKA', 'BANYUMAS', '1972-01-09', 'Perempuan', 'Jl.Raya Somagede No.283 RT.04/IX Som', '-', '-', '17102019195604-image.JPG', '19720109 19920_ 2 _ _ _', '-', 1, 14, 89, 1, 1, 12, '', '', 'Masih Hidup'),
(518, 'KRIS RISHART ORA', 'AMARASI', '1972-11-07', 'Laki-laki', 'Jl.John Amalo No.192 RT.13/II Kuanino Kupang NTT 85119', '-', '-', '17102019195735-image.JPG', '19721107 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(519, 'KRISTANTO', 'JEMBER', '1972-05-17', 'Laki-laki', 'Jl.S.Parman 12 Jember', '-', '-', '17102019195847-image.JPG', '19720517 19920_ 1 _ _ _', '-', 1, 16, 175, 1, 1, 12, '', '', 'Masih Hidup'),
(520, 'KUNTUM INDAH PERTIWI N.', 'SINGKAWANG', '1972-02-10', 'Perempuan', 'Jl.Veteran No.12A Roban Singkawang 79112', '-', '-', '17102019200035-image.JPG', '19720210 19920_ 2 _ _ _', '-', 1, 21, 84, 1, 1, 12, '', '', 'Masih Hidup'),
(521, 'KURNIAWAN SYAH PUTRA', 'PAYAKUMBUH', '1972-04-02', 'Laki-laki', 'Jl.Jeruk No.31 Payakumbuh Sumatera Barat', '-', '-', '17102019201402-image.JPG', '19720402 19920_ 1 _ _ _', '-', 1, 4, 119, 1, 1, 12, '', '', 'Masih Hidup'),
(522, 'KUSNA RAMDANI', 'SUMEDANG', '1971-12-04', 'Laki-laki', 'Margacinta No.92 Ds.Margamekar Kec.Sumedang Selatan Kab.Sumedang 45351', '-', '-', '17102019201548-image.JPG', '19711204 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(523, 'LALU BUDIMAN', 'SENGKOL', '1970-12-17', 'Laki-laki', 'Sedo Sengkol Pujut Lombok Tengah NTB', '-', '-', '17102019201718-image.JPG', '19721217 19920_ 1 _ _ _', '-', 1, 19, 211, 1, 1, 12, '', '', 'Masih Hidup'),
(524, 'LALU ILMIAWAN', 'MATARAM', '1972-05-03', 'Laki-laki', 'Jl.Dahlia No.8 Mataram Lombok Barat NTB', '-', '-', '17102019201831-image.JPG', '19720503 19920_ 1 _ _ _', '-', 1, 19, 174, 1, 1, 12, '', '', 'Masih Hidup'),
(525, 'LA MARWA', 'FAKFAK', '1971-02-04', 'Laki-laki', 'Jl.Teuku Umar Fakfak Utara Irian Jaya 98612', '-', '-', '17102019202009-image.JPG', '19710204 19920_ 1 _ _ _', '-', 1, 35, 90, 1, 1, 12, '', '', 'Masih Hidup'),
(526, 'LA MIMI ADAM', 'TONGKUNO', '1971-04-01', 'Laki-laki', 'Jl.W.Mongonsidi No.33 Rantepao Tana Toraja 91831 Kel.Lawarna Kec.Tonguno Kab.Muna Sulawesi Tenggara 93662', '21412', '-', '17102019202226-image.JPG', '19710401 19920_ 1 _ _ _', '-', 1, 29, 212, 1, 1, 12, '', '', 'Masih Hidup'),
(527, 'LA ODE ALIUDIN', 'WATALIKU', '1972-12-26', 'Laki-laki', 'Kp.Lendeo Ds.Kandito Kec.Kabawo Kab.Dari II Muna Sulawesi Tenggara', '-', '-', '17102019202353-image.JPG', '19721226 19920_ 1 _ _ _', '-', 1, 29, 212, 1, 1, 12, '', '', 'Masih Hidup'),
(528, 'LATIF MARADJABESSY', 'TOLOA', '1972-05-11', 'Laki-laki', 'Jl.Prikani No.26 RT.03 RW.09 Kotabaru Ternate Maluku Utara', '(0921) 21369', '-', '17102019202649-image.JPG', '19720511 19920_ 1 _ _ _', '-', 1, 32, 158, 1, 1, 12, '', '', 'Masih Hidup'),
(529, 'L.B. ANTON ERARI', 'MANOKWARI', '1971-01-31', 'Laki-laki', 'Jl.Ciliwung Sanggeng Manokwari 98312', '-', '-', '17102019202821-image.JPG', '19720131 19920_ 1 _ _ _', '-', 1, 35, 80, 1, 1, 12, '', '', 'Masih Hidup'),
(530, 'LEILANY MAKALEW', 'MANADO', '1972-06-28', 'Perempuan', 'Bumi Beringin Lingk.I/B Manado Sulawesi Utara 95115', '-', '-', '17102019203001-image.JPG', '19720628 19920_ 2 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(531, 'LIEN HERLINA', 'TASIKMALAYA', '1973-03-01', 'Perempuan', 'Jl.Atletik II No.22 Arcamanik Banduk 40293 Jawa Barat', '(022) 705877', '-', '17102019203250-image.JPG', '19730301 19920_ 2 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(532, 'LINDAWATY JAYA', 'PALEMBANG', '1972-10-01', 'Perempuan', 'Jl.Dwikora I Lrg. Karya III No.17161 Palembang 30129', '-', '-', '17102019203658-image.JPG', '19721001 19920_ 2 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(533, 'LONTAS SIANTURI', 'TAPANULI UTARA', '1973-09-20', 'Laki-laki', 'Jl.Dolokmartimbang 40 Siborongborong Tapanuli Utara Sumut 22474', '-', '-', '17102019203840-image.JPG', '19730920 19920_ 1 _ _ _', '-', 1, 3, 194, 1, 1, 12, '', '', 'Masih Hidup'),
(534, 'LUKAS LAWE', 'KEWAPANTE', '1971-03-02', 'Laki-laki', 'Desa Rubit Kec.Kewapante Maumere Flores NTT', '-', '-', '17102019204016-image.JPG', '19710302 19920_ 1 _ _ _', '-', 1, 20, 236, 1, 1, 12, '', '', 'Masih Hidup'),
(535, 'LUQMANUL HAKIM', 'SURABAYA', '1972-04-10', 'Laki-laki', 'Jl.D.I. Panjaitan RT.32 Rw.10 No.03/B Palembang 30265', '-', '-', '17102019204203-image.JPG', '19720410 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(536, 'LYNDA KRISTIANE', 'PALU', '1973-04-12', 'Perempuan', 'Jl.K.S. Tubun No.25A Palu 94111 Sulteng', '-', '-', '17102019204409-image.JPG', '19730412 19920_ 2 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(537, 'MACHFUL KOMAR', 'TANGGERANG', '1973-01-02', 'Laki-laki', 'Jl.Meteorologi No.1 Rt.002/05 Tanah Tinggi Tanggerang', '(021) 5524526', '-', '29102019142050-15682993599542794724296214952199_-_Raya_Andraya.jpg', '19730102199201002', '031901', 1, 17, 30, 1, 1, 11, 'Pelaksana', '', 'Masih Hidup'),
(538, 'MACHMUDAN', 'LAMONGAN', '1971-03-05', 'Laki-laki', 'Jl.K.H. Dewantara No.26 RT.08 Tenggarong Kutai Kaltim 75514', '-', '-', '17102019204740-image.JPG', '19710305 19920_ 1 _ _ _', '-', 1, 24, 213, 1, 1, 12, '', '', 'Masih Hidup'),
(539, 'M. DARWIS RITONGA', 'TAPANULI SELATAN', '1973-01-05', 'Laki-laki', 'Jl.Merdeka Gg.Madrasah No.298E P.Sidempuan Sumut', '-', '-', '17102019205006-image.JPG', '19730105 19920_ 1 _ _ _', '-', 1, 3, 200, 1, 1, 12, '', '', 'Masih Hidup'),
(540, 'MADDARESTI SALATIN', 'BULUKUMBA', '1971-12-14', 'Laki-laki', 'Jl.Teratai I No.10 Caile Bulukumba SulSel', '-', '-', '17102019205136-image.JPG', '19711214 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(541, 'MADE JUNIADI', 'SUKASADA', '1972-06-30', 'Laki-laki', 'Jl.Gunung Patas Gg.Anggrek V Lingk. Bakung Sukasada Singaraja Bali', '-', '-', '17102019205308-image.JPG', '19720630 19920_ 1 _ _ _', '-', 1, 18, 195, 1, 1, 12, '', '', 'Masih Hidup'),
(542, 'MAHRUP', 'JAMBI', '1973-02-28', 'Laki-laki', 'Jl.Parluhutan Lubis RT.28 RW.09 No.53 Kec.Telanaipura Jambi', '-', '-', '17102019205450-image.JPG', '19730228 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(543, 'M. ALI HASIBUAN', 'MEDAN', '1972-05-12', 'Laki-laki', 'Jl.Ibrahim Umar No.5 Medan Sumut 20233', '-', '-', '17102019205612-image.JPG', '19720512 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(544, 'MAMAN BADRUZAMAN', 'MAJALENGKA', '1972-02-10', 'Laki-laki', 'Ds.Ranji Kulon No.1 Kec.Dawuan Kab.Majalengka Jawa Barat', '-', '-', '17102019205742-image.JPG', '19720210 19920_ 1 _ _ _', '-', 1, 13, 6, 1, 1, 12, '', '', 'Masih Hidup'),
(545, 'MANAOR SILALAHI', 'PEMATANG SIANTAR', '1972-03-07', 'Laki-laki', 'Jl.Rambing-rambing No.19 Pematang Siantar Sumut 21151', '-', '-', '17102019205908-image.JPG', '19720307 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(546, 'MARCUS PHILIPUS BOTHA', 'BAJAWA', '1972-04-25', 'Laki-laki', 'Jl.Kecubung No.20 Oepura Kupang NTT 85117', '-', '-', '17102019210035-image.JPG', '19720425 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(547, 'MARIO FERNANDES KABRAL', 'LOSPALOS', '1970-08-25', 'Laki-laki', 'Ds.Mascaranhas RT.01/01 Kec.Dili TImur', '-', '-', '17102019210202-image.JPG', '19700825 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(548, 'MARJUKI', 'BAGASLOMBANG', '1972-12-29', 'Laki-laki', 'Jl.Sekolah No.7 Bagaslombang  Kec.Sipirok Kab.Tapanuli Selatan Sumut', '-', '-', '17102019210341-image.JPG', '19721229 19920_ 1 _ _ _', '-', 1, 3, 177, 1, 1, 12, '', '', 'Masih Hidup'),
(549, 'MARLINA', 'LUENG RIMBA', '1972-07-20', 'Perempuan', 'Ds. Lueng Bimba Kec.Meureudu Kab.Pidie D.I. Aceh', '-', '-', '17102019210546-image.JPG', '19720720 19920_ 2 _ _ _', '-', 1, 2, 214, 1, 1, 12, '', '', 'Masih Hidup'),
(550, 'MARTONO', 'CILACAP', '1971-03-13', 'Laki-laki', 'Jl.Ampera No.17 Sidareja Cilacap Jateng', '-', '-', '17102019210701-image.JPG', '19710313 19920_ 1 _ _ _', '-', 1, 14, 123, 1, 1, 12, '', '', 'Masih Hidup'),
(551, 'MARWAN NIKIULU', 'PETTA', '1971-03-14', 'Laki-laki', 'Petta Komplek SD Muhammadiyah Tabut Satal Sulut', '-', '-', '17102019211024-image.JPG', '19720314 19920_ 1 _ _ _', '-', 1, 26, 106, 1, 1, 12, '', '', 'Masih Hidup'),
(552, 'MARWOTO', 'BENGKALIS', '1972-12-06', 'Laki-laki', 'Jl.Arief Rahman 50 H Bengkalis Riau', '-', '-', '17102019211147-image.JPG', '19721206 19920_ 1 _ _ _', '-', 1, 5, 215, 1, 1, 12, '', '', 'Masih Hidup'),
(553, 'MASKUR', 'PRAYA', '1972-08-29', 'Laki-laki', 'Jl.Diponegoro Blk. SD 10 Praya Lombok Tengah', '-', '-', '17102019211536-image.JPG', '19720829 19920_ 1 _ _ _', '-', 1, 19, 211, 1, 1, 12, '', '', 'Masih Hidup'),
(554, 'MASSUKAT RIADI', 'KENDARI', '1971-04-24', 'Laki-laki', 'Jl.Drs.A.Siliondae No.140 Komp.Kantor Kel.Mandonga Kendari Sultra', '-', '-', '17102019211810-image.JPG', '19710424 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(555, 'M. ASWIN', 'UJUNG PANDANG', '1971-05-25', 'Laki-laki', 'Jl.Abdullah Dg. Sirua No.5 Ujung Pandang 90231', '-', '-', '17102019211948-image.JPG', '19710525 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(556, 'MATHEOS TAN', 'AMBON', '1972-04-25', 'Laki-laki', 'Jl.Sisingamangaraja Kodya Ambon Maluku', '-', '-', '17102019212113-image.JPG', '19720425 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(557, 'MAYELIA CUNHA', 'MAUMERE', '1972-02-06', 'Laki-laki', 'Talibura V/X Maumere Flores NTT 86183', '-', '-', '17102019212304-image.JPG', '19720206 19920_ 1 _ _ _', '-', 1, 20, 236, 1, 1, 12, '', '', 'Masih Hidup'),
(558, 'MEDISON MUSTIN', 'SOLOK', '1971-04-09', 'Laki-laki', 'Jl.Ps.Usang  Bukit Sileh Solok Sumbar 27383', '-', '-', '17102019212524-image.JPG', '19710409 19920_ 1 _ _ _', '-', 1, 4, 113, 1, 1, 12, '', '', 'Masih Hidup'),
(559, 'MEITABERNA P.L.W.G', 'MANADO', '1973-05-15', 'Laki-laki', 'Sario Lingk. IV Manado', '-', '-', '17102019212754-image.JPG', '19730515 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(560, 'MEIZAT AMRIL TAMIM', 'KENDARI', '1971-12-14', 'Laki-laki', 'Jl.H.Agus Salim No.25A Kendari', '-', '-', '17102019212957-image.JPG', '19711214 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(561, 'MEURAH ALI SIMAIL', 'LAWEIT', '1971-12-05', 'Laki-laki', 'Ds. Pante Cermin Aceh Barat', '-', '-', '17102019213413-image.JPG', '19711205 19920_ 1 _ _ _', '-', 1, 2, 118, 1, 1, 12, '', '', 'Masih Hidup'),
(562, 'MHD. SYAHRIR RAMBE', 'MEDAN', '1970-08-28', 'Laki-laki', 'Jl.Jend.Sudirman No.272 Perdagangan Kab.Simalungun Sumut', '-', '-', '17102019213600-image.JPG', '19700828 19920_ 1 _ _ _', '-', 1, 3, 216, 1, 1, 12, '', '', 'Masih Hidup'),
(563, 'M. IDRUS', 'UJUNG PANDANG', '1971-12-29', 'Laki-laki', 'Jl.Merak No.6 Ujung Pandang ', '(0411) 871692', '-', '17102019213801-image.JPG', '19711229 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(564, 'MIRSAL SABRI', 'TAPAKTUAN', '1971-12-06', 'Laki-laki', 'Jl.Jend.Sudirman No.55 Kel.Padang Tapaktuan Aceh Selatan(23713)', '-', '-', '17102019214008-image.JPG', '19711206 19920_ 1 _ _ _', '-', 1, 2, 162, 1, 1, 12, '', '', 'Masih Hidup'),
(565, 'M. ISMAEL PARENUS SINAGA', 'MEDAN', '1973-08-24', 'Laki-laki', 'Jl.Sutomo No.66 Pem.Raya Simalungun Sumut', '-', '-', '17102019214153-image.JPG', '19730824 19920_ 1 _ _ _', '-', 1, 3, 216, 1, 1, 12, '', '', 'Masih Hidup'),
(566, 'MISNAWATI LILY', 'KENDARI', '1973-12-28', 'Perempuan', 'Jl.Muh.Yamin No.28 Kendari Sulawesi Tenggara', '-', '-', '17102019214332-image.JPG', '19731228 19920_ 2 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(567, 'M. JUNAN HATALA', 'GESER', '1971-09-14', 'Laki-laki', 'Jl.J.G. Parera Kec. Seram Timur Geser Maluku Tengah Ambon', '-', '-', '17102019214509-image.JPG', '19710914 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(568, 'M. NAZARUDDIN FIKRI', 'MATARAM', '1973-02-15', 'Laki-laki', 'Jl.Perkutut 91 Mataram NTB', '-', '-', '17102019214627-image.JPG', '19730215 19920_ 1 _ _ _', '-', 1, 19, 59, 1, 1, 12, '', '', 'Masih Hidup'),
(569, 'MOCHAMAD AGUS', 'BANDUNG', '1972-08-23', 'Laki-laki', 'Jl.Sadang Babakan Sumedang RT.04/05 Bandung', '-', '-', '17102019214805-image.JPG', '19720823 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(570, 'MOCHAMAD JUSUF ANSYORI', 'JOMBANG', '1973-06-15', 'Laki-laki', 'Jl. Barabai 5 no 12 GKB Desa Suci Kec. Manyar , Gresik , Jatim', '081330294271', '-', '30102019085639-IMG_20181112_043748_-_Mochamad_Ansyori.jpg', '150671 199201 1 003', '03 1812', 1, 16, 28, 1, 1, 13, 'Camat Balongpanggang', '', 'Masih Hidup'),
(571, 'MOHAMAD HAVID LATUCONSINA', 'AMBON', '1972-03-06', 'Laki-laki', 'Jl.Benteng Atas H.99 Kel.Benteng Kodya Ambon', '-', '-', '17102019215325-image.JPG', '19720306 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(572, 'MOCHAMMAD YUSUF', 'KEDIRI', '1971-03-12', 'Laki-laki', 'Ds.Karangrejo Kec.Gampengrejo Kab.Kediri', '-', '-', '17102019215455-image.JPG', '19710312 19920_ 1 _ _ _', '-', 1, 16, 143, 1, 1, 12, '', '', 'Masih Hidup'),
(573, 'MOHAMAD IQBAL DAENG MACALLO', 'TAWAELI', '1972-01-23', 'Laki-laki', 'Jl.Panglima Polim No.33B Kel.Besusu Palu Sulteng 94111', '91159', '-', '17102019215713-image.JPG', '19720123 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(574, 'MOCH RIDWAN', 'MOJOKERTO', '1972-10-26', 'Laki-laki', 'Bungu Gg.I No.12 Ked.Gede Dlanggu Mojokerjo Jatim', '-', '-', '17102019215858-image.JPG', '19721026 19920_ 1 _ _ _', '-', 1, 16, 146, 1, 1, 12, '', '', 'Masih Hidup'),
(575, 'MOCH. IMRON', 'SIDOARJO', '1972-08-28', 'Laki-laki', 'Ds.Entalsewu RT.11/03 Kec.Buduran Sidoarjo Jatim', '-', '-', '17102019220033-image.JPG', '19720828 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(576, 'MOH. PRIHADI', 'KLATEN', '1972-06-01', 'Laki-laki', 'Buntalan RT.02 RW.09 Klaten Tengah Jateng 57419', '-', '-', '17102019220227-image.JPG', '19720601 19920_ 1 _ _ _', '-', 1, 14, 69, 1, 1, 12, '', '', 'Masih Hidup'),
(577, 'MOHAMAD BUDHIYANI', 'GROBOGAN', '1971-08-05', 'Laki-laki', 'Jl.Pocut Baren 19B Banda Aceh', '-', '-', '17102019220444-image.JPG', '19710805 19920_ 1 _ _ _', '-', 1, 2, 85, 1, 1, 12, '', '', 'Masih Hidup'),
(578, 'MOHAMMAD ERSYAD', 'SUMENEP', '1972-03-26', 'Laki-laki', 'Jl.Menari 637 Kepanjen Sumenep Madura Jatim 69451', '-', '-', '17102019220630-image.JPG', '19720326 19920_ 1 _ _ _', '-', 1, 16, 18, 1, 1, 12, '', '', 'Masih Hidup'),
(579, 'MOHAMMAD HADI SUTIKNO', 'JEMBER', '1971-10-21', 'Laki-laki', 'Utara Balai Desa Kemuningsari Kidul Kec. Jenggawah Jember Jatim', '-', '-', '17102019220809-image.JPG', '19711021 19920_ 1 _ _ _', '-', 1, 16, 175, 1, 1, 12, '', '', 'Masih Hidup'),
(580, 'MOHAMMAD ISHAK ABDUL RAUF', 'GARUT', '1971-09-07', 'Laki-laki', 'Kp.Patrol No.01 Sukakarya Kec.Tarogong Garut', '-', '-', '17102019220937-image.JPG', '19710907 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(581, 'MOHAMMAD MUSLECH', 'BANGKALAN', '1971-03-27', 'Laki-laki', 'Jl.Rajawali No.27/39 Blega Bangkalan Madura Jatim', '-', '-', '17102019221110-image.JPG', '19710327 19920_ 1 _ _ _', '-', 1, 16, 217, 1, 1, 12, '', '', 'Masih Hidup'),
(582, 'MOHAMAD RIDWAN', 'KEDIRI', '1973-10-01', 'Laki-laki', 'Jl.Argopuro 1 tertek Pare Kediri Jatim', '-', '-', '17102019221231-image.JPG', '19731001 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(583, 'MOHAMMAD RONI F.N', 'BINJAI', '1972-11-19', 'Laki-laki', 'Jl.Damai No.17 Binjai', '-', '-', '17102019221346-image.JPG', '19721119 19920_ 1 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(584, 'MOHAMMAD RIDWAN JUNUS', 'TERNATE', '1972-12-25', 'Laki-laki', 'Jl.Manggadua RT.22/10 Ternate Malutu Utara 97715', '-', '-', '17102019221517-image.JPG', '19721225 19920_ 1 _ _ _', '-', 1, 32, 158, 1, 1, 12, '', '', 'Masih Hidup'),
(585, 'MOHAMAD YANUARTI BRAMUDA', 'BANYUWANGI', '1973-01-26', 'Laki-laki', 'Jl.Raya Rogojampi No.98 Banyuwangi Jawa Timur 68462', '-', '-', '17102019221702-image.JPG', '19730126 19920_ 1 _ _ _', '-', 1, 16, 72, 1, 1, 12, '', '', 'Masih Hidup'),
(586, 'MOH. MUHTHOI', 'KEDIRI', '1973-10-28', 'Laki-laki', 'Dk.Selotopeng Ds.Banyakan Kec.Grogol Kab.Kediri Jatim 64151', '-', '-', '17102019221850-image.JPG', '19731028 19920_ 1 _ _ _', '-', 1, 16, 143, 1, 1, 12, '', '', 'Masih Hidup'),
(587, 'MOH SALEH RACHIM', 'UJUNG PANDANG', '1972-02-03', 'Laki-laki', 'Jl.Mannuruki No.42 Gunungsari Baru Ujung Pandang', '-', '-', '17102019222019-image.JPG', '19720203 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(588, 'MOCH POPPY NOPRIADI', 'BANDUNG', '1972-11-12', 'Laki-laki', 'Kodya DT II Bandung/Prov.Dati I Jabar Jl.Nana Rohana No.38/82 Bandung 40211', '-', '-', '17102019222207-image.JPG', '19721112 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(589, 'MONADI', 'DUSUN BARU', '1972-03-01', 'Laki-laki', 'Jl.Muradi No.38 Sungai Penuh Kerinci Jambi', '-', '-', '17102019222319-image.JPG', '19720301 19920_ 1 _ _ _', '-', 1, 6, 218, 1, 1, 12, '', '', 'Masih Hidup'),
(590, 'MOKSEN ALBRAM', 'GESER', '1973-04-24', 'Laki-laki', 'Geser Kec.Seram Timur Maluku Tengah Ambon 97594', '-', '-', '17102019222454-image.JPG', '19730424 19920_ 1 _ _ _', '-', 1, 32, 235, 1, 1, 12, '', '', 'Masih Hidup'),
(591, 'MOUSCHE W.J. WORIA', 'ANSUS', '1971-04-29', 'Laki-laki', 'Jl.Ternate No.3 Serui Irian Jaya 98211', '-', '-', '17102019222631-image.JPG', '19710429 19920_ 1 _ _ _', '-', 1, 35, 237, 1, 1, 12, '', '', 'Masih Hidup'),
(592, 'M. RASDY G.R.', 'UJUNG PANDANG', '1970-09-12', 'Laki-laki', 'Hertasning E. 15 No.16 Ujung Pandang 90222', '-', '-', '17102019222808-image.JPG', '19700912 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(593, 'M. REDHO', 'KETAPANG ', '1971-05-06', 'Laki-laki', 'Jl.R. Soeprapto No.155 Sampit Ketapang KalBar', '-', '-', '17102019222939-image.JPG', '19710506 19920_ 1 _ _ _', '-', 1, 21, 206, 1, 1, 12, '', '', 'Masih Hidup'),
(594, 'M. SABAR LOMPY', 'KENDARI', '1973-03-04', 'Laki-laki', 'Jl.Dr.Moh.Hatta No.17 Kendari', '-', '-', '17102019223112-image.JPG', '19730304 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(595, 'M. SADLY LESNUSA', 'PALU', '1972-02-25', 'Laki-laki', 'Jl.Hasanudin No.50/52 Palu Sulteng 94112', '-', '-', '17102019223242-image.JPG', '19720225 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(596, 'M. SYAHRIZAL ISKANDAR', 'JAKARTA', '1972-03-02', 'Laki-laki', 'Komplek Karya Indah Jl.Kenanga I No.54 Ps.V Jatikarya-Binjai Sumatera Utara 20746', '-', '-', '17102019223421-image.JPG', '19720302 19920_ 1 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(597, 'M. SYARIF FAJERIAN NOOR', 'BANJARBARU', '1973-04-01', 'Laki-laki', 'Jl.Seroja No.3 Banjarbaru 70711 KalSel', '-', '-', '17102019223559-image.JPG', '19730401 19920_ 1 _ _ _', '-', 1, 23, 219, 1, 1, 12, '', '', 'Masih Hidup'),
(598, 'MUAMMAR KHALIS', 'BANDA ACEH', '1972-12-04', 'Laki-laki', 'Jl.Tanjung II No.4 Ds.IE Masen Kayee Adang Lampineng Banda Aceh', '-', '-', '17102019223739-image.JPG', '19721204 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(599, 'MUCHAMAD CHASIN', 'KUDUS', '1972-06-29', 'Laki-laki', 'Papringan No.219A Rt.04/02 Kaliwungu Kudus 59361', '-', '-', '17102019223945-image.JPG', '19710629 19920_ 1 _ _ _', '-', 1, 14, 63, 1, 1, 12, '', '', 'Masih Hidup'),
(600, 'MUCHRIS ZULKAHFI', 'DONGGALA', '1972-01-08', 'Laki-laki', 'Jl.H.O.S Cokroaminoto No.24 Trenggalek Jawa Timur', '-', '-', '17102019224134-image.JPG', '19720108 19920_ 1 _ _ _', '-', 1, 16, 48, 1, 1, 12, '', '', 'Masih Hidup'),
(601, 'MUCHTARUDDIN', 'LHOKSEUMAWE', '1972-07-04', 'Laki-laki', 'Jl.Kuta Alam No.1B Banda Aceh', '-', '-', '17102019224253-image.JPG', '19720704 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(602, 'MUDAHALAM PURBA', 'PEMATANG SIANTAR', '1970-09-20', 'Laki-laki', 'Jl.Patuan Nagari No.55 P.Siantar Sumut', '-', '-', '17102019224440-image.JPG', '19700920 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(603, 'MUDARMAN', 'ANGGABERI', '1971-07-02', 'Laki-laki', 'Jl.Anggaberi No.1 Kec.Unaha Kendari Sultra', '-', '-', '17102019224553-image.JPG', '19710702 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(604, 'MUDJI SANTOSO SETIO HANDOKO', 'CIREBON', '1972-04-03', 'Laki-laki', 'Jl. Pamularsih Buntu No.7 Kompl. Ditjen Anggaran Semarang-Jawa Tengah', '-', '-', '18102019135323-image.JPG', '19720403 19920_ 1 _ _ _', '-', 1, 14, 111, 1, 1, 12, '', '', 'Masih Hidup'),
(605, 'MUDZAKIR WALAD', 'GROBOGAN', '1973-08-24', 'Laki-laki', 'Ds. Jono, Kec. Tawanghardjo Kab. Grobogan, Jawa Tengah', '-', '-', '18102019135535-image.JPG', '19730824 19920_ 1 _ _ _', '-', 1, 14, 220, 1, 1, 12, '', '', 'Masih Hidup'),
(606, 'MUHAJIR HANAPI', 'LUWUK', '1972-04-11', 'Laki-laki', 'Jl. Sungai Sadang No. 5, Luwuk Banggai-Sulawesi Tengah 94713', '-', '-', '18102019135733-image.JPG', '1972041119920_ 1 _ _ _', '-', 1, 27, 149, 1, 1, 12, '', '', 'Masih Hidup'),
(607, 'MUHAMAD AKBAR', 'UJUNG PANDANG', '1971-05-28', 'Laki-laki', 'Jl. Muh. Djufri 5 No. 30 Ujung Pandang', '-', '-', '18102019135937-image.JPG', '19710528 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup');
INSERT INTO `alumni` (`id_alumni`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `mobile_phone`, `email`, `photo`, `nip`, `npp`, `fk_id_kementrian`, `fk_id_prov`, `fk_id_kab_kot`, `fk_id_kec`, `fk_id_kel`, `fk_id_pangkat`, `jabatan`, `instansi`, `meninggal`) VALUES
(608, 'MUHAMAD AMALUDIN', 'BUTTON', '1973-09-23', 'Laki-laki', 'Jl. Sijawangkati No.10 Betoambari, Bau Bau Sul-Teng', '(0402) 22532', '-', '18102019140126-image.JPG', '19730923 19920_ 1 _ _ _', '-', 1, 29, 98, 1, 1, 12, '', '', 'Masih Hidup'),
(609, 'MUHAMAD AMINUDDIN', 'MARTAPURA', '1971-01-21', 'Laki-laki', 'Jl. Hidayatullah Gg. Namgka No.2 Martapura, Kal-Sel', '-', '-', '18102019140532-image.JPG', '19710121 19920_ 1 _ _ _', '-', 1, 23, 73, 1, 1, 12, '', '', 'Masih Hidup'),
(610, 'MUHAMAD AMRI HARAHAP', 'MEDAN', '1971-11-03', 'Laki-laki', 'Jl. Mapilindo No11/144 Medan Timur', '-', '-', '18102019140838-image.JPG', '19711203 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(611, 'MUHAMMAD ABDUH', '21-1-1972', '2019-10-18', 'Laki-laki', 'Jl. Waringin No.7 Labuh Baru-Pekanbaru', '-', '-', '18102019141537-image.JPG', '19720121 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(612, 'MUHAMAD ASLAMI', 'BANJARMASIN', '1972-01-23', 'Laki-laki', 'Jl. Antasan Kecil Barat No. 62 Rt.11 Banjarmasin', '-', '-', '18102019141723-image.JPG', '19720123 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(613, 'MUHAMAD ASRIL', 'MEDAN', '1973-06-26', 'Laki-laki', 'Jl. M. Yakub No. 59, Medan', '-', '-', '18102019141852-image.JPG', '19730626 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(614, 'MUHAMAD FADHLI', 'BENGKALIS', '1972-01-07', 'Laki-laki', 'Jl. HOS. Cokroaminoto Gg. Armur No. 10 Bengkalis-Riau', '-', '-', '18102019183348-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720107 19920_ 1 _ _ _', '-', 1, 5, 215, 1, 1, 12, '', '', 'Masih Hidup'),
(615, 'MUHAMMAD JOHN VERMAN', 'SELAT PANJANG', '1972-02-08', 'Laki-laki', 'Jl. Sultan Syarief Qasyim No. 10 A Kel. Pesisir-Pekanbaru', '-', '-', '18102019183747-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720208 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(616, 'MUHAMMAD JUAINI TAOFIK', 'RUMBUK', '1973-06-13', 'Laki-laki', 'Desa Rumbuk, Kec. sakra Kab. Lombok Timur-NTB', '-', '-', '18102019184040-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720613 19920_ 1 _ _ _', '-', 1, 19, 116, 1, 1, 12, '', '', 'Masih Hidup'),
(617, 'MUHAMMAD MARIO SAID', 'JAKARTA', '1973-05-23', 'Laki-laki', 'BTN Hartaco Indah Blok II A No. 29 Ujung Pandang (Sulawesi Selatan)', '-', '-', '18102019184247-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720523 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(618, 'MUHAMMAD MONANG S', 'PALEMBANG', '1973-06-06', 'Laki-laki', 'Jl. Mojopahit No. 44 Rt. 8A I Ulu Darat Palembang', '-', '-', '18102019184509-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720606 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(619, 'MUHAMMAD NUR FUAD FAUZI', 'NGAWI', '1973-12-22', 'Laki-laki', 'Jl. C. Telaga Wangi 19 Rt IV Rw 01 Kec. Lowokwaru-Malang', '-', '-', '18102019184813-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721222 19920_ 1 _ _ _', '-', 1, 16, 168, 1, 1, 12, '', '', 'Masih Hidup'),
(620, 'MUHAMMAD RIDWAN SALAM', 'UJUNG PANDANG', '1972-09-22', 'Laki-laki', 'Jl. Kapten Halim Gg. Benteng No. 59 Ds. Kertajaya, Pasawangan, Purwakarta, Jawa Barat', '-', '-', '18102019185002-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720922 19920_ 1 _ _ _', '-', 1, 13, 196, 1, 1, 12, '', '', 'Masih Hidup'),
(621, 'MUHAMMAD RIZAL KONO', 'TINOMBO', '1972-03-22', 'Laki-laki', 'Komp. Perum. UNTAD Bumi Bahari Lrg. I No. 7 Palu-94221', '-', '-', '18102019185527-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720323 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(622, 'MUHAMMMAD SAFEI', '-', '1972-01-16', 'Laki-laki', 'Jl. Sugimanuru No.1 Raha Sultra-Muna', '-', '-', '18102019185803-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720116 19920_ 1 _ _ _', '-', 1, 29, 212, 1, 1, 12, '', '', 'Masih Hidup'),
(623, 'MUHAMMAD SALEH DAULAY', 'AFD III MAYANG', '1972-09-15', 'Laki-laki', 'Jl. Sembada VI No. 35 Koserna, Padang Bulan, Medan', '-', '-', '18102019185957-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720915 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(624, 'MUHAMMAD SYUKUR BOEROE', 'AMBON', '1971-04-13', 'Laki-laki', 'Perumahan Pemda I Poka, Rt 05 Rw 01 Jl. Ir. M. Putuhena, Poka-Ambon', '-', '-', '18102019192944-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720413 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(625, 'MUHAMMAD YUSUF JATO', 'KENDARI', '1972-05-30', 'Laki-laki', 'Jl. Lasandara No.10 C Mandonga Kendari-Sulawesi Tenggara', '-', '-', '18102019193130-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720530 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(626, 'MUH. JAUN S. HADI', 'MAJENE', '1972-05-01', 'Laki-laki', 'Jl. Ammana Wewang 33 majene', '-', '-', '18102019193304-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720501 19920_ 1 _ _ _', '-', 1, 28, 222, 1, 1, 12, '', '', 'Masih Hidup'),
(627, 'MUJIANTO', 'BOJONEGORO', '1972-02-14', 'Laki-laki', 'Jl. M›H› Thamrin No. 7 Klangon Bojonegoro, Jawa Timur 62113', '-', '-', '18102019193441-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720214 19920_ 1 _ _ _', '-', 1, 16, 147, 1, 1, 12, '', '', 'Masih Hidup'),
(628, 'MUKHSAN', 'MAROS', '1973-08-08', 'Laki-laki', 'Jl. Makmur Dg. Sitakka No.17 Maros (90511)', '-', '-', '18102019193639-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730808 19920_ 1 _ _ _', '-', 1, 28, 130, 1, 1, 12, '', '', 'Masih Hidup'),
(629, 'MUKTI ABDULLATIF MILE', 'GORONTALO', '1972-01-24', 'Laki-laki', 'Jl. Taman Pend. No. 40 Rw II Rt II Link. V, Kel. Moodu, Kec. Kota Selatan Kodya Gorontalo', '-', '-', '18102019194326-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720124 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(630, 'MULYADIN MALIK', 'PALU', '1972-02-24', 'Laki-laki', 'Jl. Raden saleh No. 52 Palu (Sulawesi Tengah)-94111', '-', '-', '18102019194512-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720224 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(631, 'MULYADI', 'KERTABAYANG', '1972-02-21', 'Laki-laki', 'Jl. Mangga 320 Prabumulih (Sum-Sel)', '-', '-', '18102019194802-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720221 19920_ 1 _ _ _', '-', 1, 7, 223, 1, 1, 12, '', '', 'Masih Hidup'),
(632, 'MULYANTO', 'WANAREJAN', '1972-02-12', 'Laki-laki', 'Jl. Manggar Rt 07 Rw VI Ds. Wanarejan, Kec. Taman, Kab. Dati II Pemalang, Prop. Jateng', '-', '-', '18102019195009-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720212 19920_ 1 _ _ _', '-', 1, 14, 71, 1, 1, 12, '', '', 'Masih Hidup'),
(633, 'MURSYIDI', 'BARABAI', '1971-03-04', 'Laki-laki', 'Ds. Bukat Rt I No. 24 Barabai Kab. Hulu Sungai Tengah, Kalsel', '-', '-', '18102019195219-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720304 19920_ 1 _ _ _', '-', 1, 23, 224, 1, 1, 12, '', '', 'Masih Hidup'),
(634, 'MURYSID', 'SIMPANG KALAPING', '1972-02-12', 'Laki-laki', 'Jl. Takengon, Isaq Simpang Kelaping No.9 Kec. Pegasing Takengon (Aceh Tengah)', '-', '-', '18102019212045-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720212 19920_ 1 _ _ _', '-', 1, 2, 225, 1, 1, 12, '', '', 'Masih Hidup'),
(635, 'MURTADHO', 'SIDOARJO', '1971-11-02', 'Laki-laki', 'Ds. Katimang, Kec. Wonoayu Kab. Dati II Sidoarjo, Prop. Jawa Timur', '-', '-', '18102019212253-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721102 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(636, 'MUSANIF NIODE', 'GORONTALO', '1971-08-06', 'Laki-laki', 'Jl. Jend. Sudirman No. 35 Kel. Limba UI Kodya Gorontalo (Sulawesi Utara)', '-', '-', '18102019212601-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710806 19920_ 1 _ _ _', '-', 1, 26, 16, 1, 1, 12, '', '', 'Masih Hidup'),
(637, 'MUSDARSON', 'JAMBI', '1972-08-31', 'Laki-laki', 'Jl. Brigjen Katamso Rt 06 Rw 02 No.20 Kel. Tanjung Pinang, Kec. Jambi Timur Jambi', '-', '-', '18102019212812-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720831 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(638, 'MUSLICH HARIADI', 'SURABAYA', '1972-09-01', 'Laki-laki', 'Ploso VI/4E Surabaya Jawa Timur', '-', '-', '18102019213120-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720901 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(639, 'MUSTAMIN', 'WATAMPONE', '1972-10-12', 'Laki-laki', 'Bilae Desa Pacing, Kec. Awanpone Kab. Bone-Sulawesi Selatan', '-', '-', '18102019213335-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721012 19920_ 1 _ _ _', '-', 1, 28, 60, 1, 1, 12, '', '', 'Masih Hidup'),
(640, 'M. YUSUF HATALA', 'CAMPALAGIAN', '1972-04-11', 'Laki-laki', 'Jl. Ulihalawang No.63 Hila-Kaitetu Kec. Leihitu (97581), Ambon', '-', '-', '18102019213531-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720411 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(641, 'NAJAMUDIN', 'RANTAU PANJANG', '1972-07-14', 'Laki-laki', 'Ds. Rantau Panjang, Kec. Kaway XVI Kab. Aceh Barat Meulaboh', '-', '-', '18102019213719-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720714 19920_ 1 _ _ _', '-', 1, 2, 118, 1, 1, 12, '', '', 'Masih Hidup'),
(642, 'NANA MULYANA', 'CIPANAS-LEBAK', '1972-05-03', 'Laki-laki', 'Kp. Cilisung-Kab. Lebak Jawa Barat', '-', '-', '18102019213858-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720503 19920_ 1 _ _ _', '-', 1, 17, 52, 1, 1, 12, '', '', 'Masih Hidup'),
(643, 'NANANG HARYADI', 'JEMBER', '1970-12-08', 'Laki-laki', 'Jl. Kapas Krampung 116 A, Surabaya Jawa Timur', '-', '-', '18102019214054-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721208 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(644, 'NANANG HADI IRAWAN', 'LANGKAT', '1972-01-16', 'Laki-laki', 'Ds. Air Hitam, Kec. Gebang Langkat, Sumut', '-', '-', '18102019214728-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720116 19920_ 1 _ _ _', '-', 1, 3, 226, 1, 1, 12, '', '', 'Masih Hidup'),
(645, 'NANANG ISKANDAR ZULKARNAEN', 'TASIKMALAYA', '1972-07-07', 'Laki-laki', 'Kp. Salamnunggal Rt. 15 Rw 03 Parakannyasag, Indihiang Tasikmalaya, 46151', '-', '-', '18102019215105-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720707 19920_ 1 _ _ _', '-', 1, 13, 241, 1, 1, 12, '', '', 'Masih Hidup'),
(646, 'NANANG MULKANI', 'TANJUNG', '1972-03-06', 'Laki-laki', 'Jl. Anggrek IV No. 17 Komp. Perum Pembataan Tanjung Selatan (Murung Pudak), Kalimantan Selatan', '-', '-', '18102019215428-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720306 19920_ 1 _ _ _', '-', 1, 23, 139, 1, 1, 12, '', '', 'Masih Hidup'),
(647, 'NANDANG NUGRAHA', 'CIAMIS', '1972-09-10', 'Laki-laki', 'Dusun Manis Rt 02 Rw 05 Ds. Cinyasag Kec. Panawangan, Kab. Ciamis-Jabar', '085323721972', '-', '30102019081022-20190225_115957_3_-_D_4_NG_Nugraha.jpg', '19720910 199202 1 001', '03.1635', 1, 13, 117, 1, 1, 13, 'CAMAT', '', 'Masih Hidup'),
(648, 'NAWIR TANDAKO', 'ATINGOLA', '1971-01-20', 'Laki-laki', 'Bintan, Kec Atiigola, Kab. Gorontalo Sulut-96253', '-', '-', '18102019224756-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710102 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(649, 'NICOLAS A. SCHOUWTEN WAMBRAU', 'BIAK', '1971-09-27', 'Laki-laki', 'Jl. Yos Sudarso No.49 Kel. Mandala Keb. Biak-Numfor, Irian Jaya', '-', '-', '18102019225035-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720927 19920_ 1 _ _ _', '-', 1, 35, 135, 1, 1, 12, '', '', 'Masih Hidup'),
(650, 'NIXON WOLTER S.M.', 'MINAHASA', '1972-11-25', 'Laki-laki', 'Kel. Uner Link. VI/405 Kec. Kawangkoan Kab. Minahasa Sulawesi Utara', '-', '-', '18102019225314-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721125 19920_ 1 _ _ _', '-', 1, 26, 228, 1, 1, 12, '', '', 'Masih Hidup'),
(651, 'NINING RISKIANTI', 'PEKANBARU', '1972-05-04', 'Perempuan', 'Jl. Sempurna Gg. Zambrud 11 Tampan Pekanbaru-Riau', '-', '-', '18102019225522-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720504 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(652, 'N. NETA JULIANTINI', 'SUMEDANG', '1972-07-06', 'Perempuan', 'Jl. Empang Gg Slamet 14 Sumedang-45311', '-', '-', '18102019225737-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720706 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(653, 'NOERHONO', 'MOJOKERTO', '1972-10-08', 'Laki-laki', 'Jl. Gajah Mada No. 117 Mojokerto-Jawa Timur', '-', '-', '18102019225918-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721008 19920_ 1 _ _ _', '-', 1, 16, 146, 1, 1, 12, '', '', 'Masih Hidup'),
(654, 'NOVAL BUNGANDALI TAMBURAKA', 'KENDARI', '1972-09-26', 'Laki-laki', 'Komplek Aneka Tambang Nikel Pomala, Jl. Teluk Bone No.15 Pomala-Kolaka', '-', '-', '19102019075658-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720926 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(655, 'NOVELIJA', 'SURABAYA', '1971-11-14', 'Perempuan', 'Jalan Rangkah VI/42, Surabaya', '-', '-', '19102019075901-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721114 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(656, 'NOVERINTIWI DEWANTI', 'JAMBI', '1972-11-25', 'Perempuan', 'Jl. Barau-barau II Rt 22 No.40 Kel. Pakuan Baru-Jambi 36132', '-', '-', '19102019080047-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721125 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(657, 'NUGRAHARYADI', 'JAKARTA', '1973-05-02', 'Laki-laki', 'Jl. Kusen II No. 13, Kampung Ambon Rawamangun-Jak-Tim 13210', '-', '-', '19102019080251-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720502 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(658, 'NUGROHO', 'TUBAN', '1972-05-17', 'Laki-laki', 'Kebonharjo, Kec Jatirogo Kab. Tuban-Jawa Timur', '-', '-', '19102019080505-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720517 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(659, 'NUR ALIAH SYAM', 'BULUKUMBA', '1973-04-07', 'Perempuan', 'Jl. Bung Tomo No. 16B, Bulukumba Sulawesi Selatan', '-', '-', '19102019080711-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720407 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(660, 'NURBANI', 'DOMPU', '1972-11-21', 'Perempuan', 'Jl.Syech Abdul Gani No.6 Dompu-NTB', '-', '-', '19102019152353-image.JPG', '19721121 19920_ 2 _ _ _', '-', 1, 19, 229, 1, 1, 12, '', '', 'Masih Hidup'),
(661, 'NURDIN', 'KRUENG BATEE', '1973-06-17', 'Laki-laki', 'Ds.Krueng Batee Kec.Kuala Batee Kab.Aceh Selatan', '-', '-', '19102019152529-image.JPG', '19730617 19920_ 1 _ _ _', '-', 1, 2, 162, 1, 1, 12, '', '', 'Masih Hidup'),
(662, 'NURHADI', 'MALANG', '1971-06-04', 'Laki-laki', 'Jl.Purwa Senjata No.86 RT.04 RW.04 Ds.Bulukerto Kec.Bumiaji Kotatif Batu Malang-Jatim', '-', '-', '19102019152726-image.JPG', '19710604 19920_ 1 _ _ _', '-', 1, 16, 168, 1, 1, 12, '', '', 'Masih Hidup'),
(663, 'NURHAYATI', 'JAYAPURA', '1973-03-27', 'Perempuan', 'Jl.Kabupaten III/10 APO Jayapura-Irian Jaya 99112', '-', '-', '19102019153033-image.JPG', '19730327 19920_ 2 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(664, 'NURHRLMI SAVITRI', 'JAKARTA', '1973-10-24', 'Perempuan', 'Jl.Perintis Kemerdekaan RT.02 RW.04 No.45 Kelapa Gading Timur Jakarta Utara', '-', '-', '19102019154204-image.JPG', '19731024 19920_ 2 _ _ _', '-', 1, 12, 251, 1, 1, 12, '', '', 'Masih Hidup'),
(665, 'NUR HIDAYAT', 'YOGYAKARTA', '1971-11-19', 'Laki-laki', 'Dipowinatan MG I/259 Yogyakarta 55152', '-', '-', '19102019154635-image.JPG', '19711119 19920_ 1 _ _ _', '-', 1, 15, 252, 1, 1, 12, '', '', 'Masih Hidup'),
(666, 'NUR RAHMAN', 'MEDAN', '1972-06-17', 'Laki-laki', 'Simpang Empat No.105 Asahan Sumut 21271', '-', '-', '19102019155206-image.JPG', '19720617 19920_ 1 _ _ _', '-', 1, 3, 208, 1, 1, 12, '', '', 'Masih Hidup'),
(667, 'NURYADI', 'SITUBONDO', '1970-08-20', 'Laki-laki', 'Jl.Mawar RT.03 RW.01 Patokan Krajan II Situbondo Jatim', '-', '-', '19102019155341-image.JPG', '19700820 19920_ 1 _ _ _', '-', 1, 16, 99, 1, 1, 12, '', '', 'Masih Hidup'),
(668, 'NURUL HIDAYATI', 'BOYOLALI', '1971-09-19', 'Perempuan', 'Gunung RT.07 RW.02 Simo Boyolali Jateng', '-', '-', '19102019155517-image.JPG', '19710919 19920_ 2 _ _ _', '-', 1, 14, 137, 1, 1, 12, '', '', 'Masih Hidup'),
(669, 'NUR WAKIT ALIYUSRON', 'BLITAR', '1972-12-18', 'Laki-laki', 'Ds.Montong Sekar No.241 Kec.Monteng Kab.Tuban Jatim', '-', '-', '19102019155812-image.JPG', '19721218 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(670, 'OCTAVIANUS D.S. MANDAGI', 'TOMOHON (MINAHASA)', '1972-10-12', 'Laki-laki', 'Kleah Lk.IV Manado Sulawesi Utara', '-', '-', '19102019155951-image.JPG', '19721012 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(671, 'OKTAVIATMONO', 'SURAKARTA', '1972-12-29', 'Laki-laki', 'Jl.Kacer V/13 Gondang Barat Manahan Surakarta Jateng', '-', '-', '19102019160119-image.JPG', '19721229 19920_ 1 _ _ _', '-', 1, 14, 42, 1, 1, 12, '', '', 'Masih Hidup'),
(672, 'OKTRIVIYANTO SUBEKTI', 'CILACAP', '1973-10-14', 'Laki-laki', 'Jl.Veteran No.46 Cilacap', '-', '-', '19102019160240-image.JPG', '19731014 19920_ 1 _ _ _', '-', 1, 14, 123, 1, 1, 12, '', '', 'Masih Hidup'),
(673, 'OLIVIA RAO', 'KUPANG', '1971-09-01', 'Laki-laki', 'Jl.W.J.Lalamentik No.96 Oebobo Kupang', '-', '-', '19102019160631-image.JPG', '19710901 19920_ 2 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(674, 'OMAN', 'SUMEDANG', '1971-07-20', 'Laki-laki', 'Ds.Cilembu Kec.Tanjungsari Kab.Sumedang', '-', '-', '19102019160757-image.JPG', '19710720 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(675, 'C. PEREIRA GUTERRES', 'BAUGIA BAUCAU', '1970-12-18', 'Laki-laki', 'Jl.Beloy Bangdes Viqueque Kab.Viqueque Timor-Timur', '-', '-', '19102019160944-image.JPG', '19701218 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(676, 'OPIK HIDAYAT', 'KUNINGAN', '1972-08-10', 'Laki-laki', 'Desa Ciwaru RT.05 RW.10 Kec.Ciwaru Kab.Kuningan', '-', '-', '19102019161108-image.JPG', '19720810 19920_ 1 _ _ _', '-', 1, 13, 140, 1, 1, 12, '', '', 'Masih Hidup'),
(677, 'OYOK HARIMURTI', 'SURABAYA', '1971-03-22', 'Laki-laki', 'Com TNI-AL Jl.P.Rupat 40 Sawotrap Sidoarjo Jatim', '-', '-', '19102019161252-image.JPG', '19710322 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(678, 'PAIMAN BANIAR PURBA', 'PANEI TONGAH', '1971-11-20', 'Laki-laki', 'Jl.Pemb. No.8 Komp.Polsek Panei dan kantor Camat Panei D/A T.Purba Peg.Ktr.Camat Panei 21161', '-', '-', '19102019161452-image.JPG', '19711120 19920_ 1 _ _ _', '-', 1, 3, 216, 1, 1, 12, '', '', 'Masih Hidup'),
(679, 'PAISAL PAHMI HASIBUAN', 'MEDAN', '1973-11-21', 'Laki-laki', 'Jl.Kemiri III No.12 Medan', '-', '-', '19102019161610-image.JPG', '19731121 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(680, 'PAMUNGKAS TUNGGUL WASANA', 'KEBUMEN', '1973-01-10', 'Laki-laki', 'Kauman Gg.II/3 Kutosari Kebumen Jateng', '-', '-', '19102019161731-image.JPG', '19730110 19920_ 1 _ _ _', '-', 1, 14, 230, 1, 1, 12, '', '', 'Masih Hidup'),
(681, 'PARGIYAT', 'BANTUL', '1973-05-24', 'Laki-laki', 'Ds.Puton Jetis Bantul Yogyakarta', '-', '-', '19102019161852-image.JPG', '19730524 19920_ 1 _ _ _', '-', 1, 15, 210, 1, 1, 12, '', '', 'Masih Hidup'),
(682, 'PARMINTO', 'NGAWI', '1971-06-01', 'Laki-laki', 'Jl Simping No 8 Kel Bendogerit Kec Sananwetan Kota Blitar', '082231160087', '-', '30102019090749-FB_IMG_1568329700649_-_Pram_Parminto.jpg', '197106121993011001', '031741', 1, 16, 145, 1, 1, 13, 'Camat Kepanjenkidul', '', 'Masih Hidup'),
(683, 'PATRESIA RUTH M.', 'PEMATANG SIANTAR', '1972-05-02', 'Perempuan', 'Jl.Durian I No.238 Perumnas Batu Anam P.Siantar Sumut 21152', '-', '-', '19102019162306-image.JPG', '19720502 19920_ 2 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(684, 'PATRICIA BANJARNAHOR', 'MEDAN', '1973-02-06', 'Perempuan', 'Jl.Beringin Jaya 95 Medan 20124', '-', '-', '19102019162623-image.JPG', '19730206 19920_ 2 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(685, 'PERTIWI H.SIREGAR', 'SERBELAWAN', '1972-01-10', 'Perempuan', 'Jl.STM Pembanguan No.06 Kel.Sitirejo Medan 20219 Sumut', '-', '-', '19102019162801-image.JPG', '19720110 19920_ 2 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(686, 'PETRUS TRIYONO', 'SEMARANG', '1972-04-23', 'Laki-laki', 'Ds.Jimbaran RT.01 RW.01 No.19 Kec.Bawen Kab.Semarang Jateng', '-', '-', '19102019162938-image.JPG', '19720423 19920_ 1 _ _ _', '-', 1, 14, 109, 1, 1, 12, '', '', 'Masih Hidup'),
(687, 'P.G. AGUS ANTARA', 'BALI', '1972-04-27', 'Laki-laki', 'BR.Pasekan Kel.Kapal Kec.Mengwi Kab.Badung Bali', '-', '-', '19102019163115-image.JPG', '19720427 19920_ 1 _ _ _', '-', 1, 18, 201, 1, 1, 12, '', '', 'Masih Hidup'),
(688, 'PIETHER DONNY OWU', 'MANADO', '1972-10-23', 'Laki-laki', 'Jl.14 Februari 6 Teling Bawah Ling IV No.37 Manado 95119', '-', '-', '19102019224152-image.JPG', '19721023 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(689, 'PRAYITNO', 'WONOSOBO', '1971-06-23', 'Laki-laki', 'Kp.Campursari RT.28 RW.06 No.108 Jl.Leksono Km.01 Selomerto Wonosobo Jateng 56361', '-', '-', '19102019224448-image.JPG', '19710623 19920_ 1 _ _ _', '-', 1, 14, 124, 1, 1, 12, '', '', 'Masih Hidup'),
(690, 'PUDI ADJI TJAHJO WAHONO', 'MALANG', '1972-08-05', 'Laki-laki', 'Perum Jenggala Indah Blok P-8 Gogorante Kediri Jatim', '-', '-', '19102019224736-image.JPG', '19720805 19920_ 1 _ _ _', '-', 1, 16, 51, 1, 1, 12, '', '', 'Masih Hidup'),
(691, 'PUGUH SUPARDIJANTO', 'PONOROGO', '1971-09-11', 'Laki-laki', 'Jl.W.R.Supratman II/8 Ponorogo Jatim', '-', '-', '19102019224954-image.JPG', '19710911 19920_ 1 _ _ _', '-', 1, 16, 161, 1, 1, 12, '', '', 'Masih Hidup'),
(692, 'PUJI SETIYOWATI', 'BATANG', '1970-12-12', 'Perempuan', 'Jl.Gajah Mada Gg.Sriti 12 Legoksari Batang Jateng', '-', '-', '19102019225150-image.JPG', '19701212 19920_ 2 _ _ _', '-', 1, 14, 178, 1, 1, 12, '', '', 'Masih Hidup'),
(693, 'PURBIYANTORO', 'BROBOT', '1971-11-01', 'Laki-laki', 'Jl.Santosa Asih II No.7 Komp. Santosa Asih Jaya Bandung Jabar', '-', '-', '19102019225417-image.JPG', '19711101 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(694, 'PURNO WINARDI', 'BLITAR', '1971-01-21', 'Laki-laki', 'Jl.Abadi No.20 RT.04 RW.08 Kel. Kec. Nglegok Kab. Blitar Jatim', '-', '-', '19102019225654-image.JPG', '19710121 19920_ 1 _ _ _', '-', 1, 16, 145, 1, 1, 12, '', '', 'Masih Hidup'),
(695, 'PUTU  AYU REIKA NURHAENI', 'SINGARAJA', '1972-08-09', 'Perempuan', 'Jl.Pulau Aru No.56 Singaraja Bali 81151', '-', '-', '19102019225928-image.JPG', '19720809 19920_ 2 _ _ _', '-', 1, 18, 195, 1, 1, 12, '', '', 'Masih Hidup'),
(696, 'PUTU TRESNA BUDIANTARA', 'GIANYAR', '1970-11-11', 'Laki-laki', 'Jl.Tekukur No.19 Singaraja Bali', '-', '-', '19102019230323-image.JPG', '19701111 19920_ 1 _ _ _', '-', 1, 18, 195, 1, 1, 12, '', '', 'Masih Hidup'),
(697, 'RACHMAD', 'PALOPO', '1970-10-10', 'Laki-laki', 'Jl.Mannennungeng No.11 C Jl.Mannennungeng', '(010471)22393', '-', '19102019230627-image.JPG', '19720810 19920_ 1 _ _ _', '-', 1, 28, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(698, 'RACHMAD SANTOSO', 'SINGKAWANG', '1971-04-23', 'Laki-laki', 'Jl.Tirtasari No.47 Singkawang Kalbar', '-', '-', '19102019230919-image.JPG', '19710423 19920_ 1 _ _ _', '-', 1, 21, 84, 1, 1, 12, '', '', 'Masih Hidup'),
(699, 'RACHMAT SYARIFUDDIN', 'SIDOARJO', '1972-01-03', 'Laki-laki', 'Jl.Yos Sudarso Puncang Sidoarjo Jatim', '-', '-', '19102019231113-image.JPG', '19720103 19920_ 1 _ _ _', '-', 1, 16, 31, 1, 1, 12, '', '', 'Masih Hidup'),
(700, 'RACHMAN TAMRIN', 'SUMENEP', '1972-06-21', 'Laki-laki', 'Jl.Meranggi Gg.1/4 Kepanjin Sumnenp Madura 69415', '-', '-', '19102019232437-image.JPG', '19720621 19920_ 1 _ _ _', '-', 1, 16, 18, 1, 1, 12, '', '', 'Masih Hidup'),
(701, 'RACHMAT MAULANA', 'PALEMBANG', '1972-09-02', 'Laki-laki', 'Jl.Lebak Mulya RT.34 No.847 Sekip Ujung Palembang Sumsel', '-', '-', '19102019233842-image.JPG', '19720902 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(702, 'RACHMAT MULYADI', 'JAKARTA', '1972-07-03', 'Laki-laki', 'Jl.Jatipadang No.34 RT.13/05 Jagakarsa Jaksel ', '-', '-', '19102019235048-image.JPG', '19720703 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(703, 'RADEN HENDRIANA', 'CIAMIS', '1972-04-08', 'Laki-laki', 'Jl.Karya Bakti No.62 ', '73127', '-', '19102019235958-image.JPG', '19720408 19920_ 1 _ _ _', '-', 1, 13, 117, 1, 1, 12, '', '', 'Masih Hidup'),
(704, 'RADEN MOHAMMAD SYAIFUL AMIN', 'PAMEKASAN', '1971-03-25', 'Laki-laki', 'Jl.Cokroatmojo VI/4 Pamekasan Madura Jatim', '-', '-', '20102019000229-image.JPG', '19710325 19920_ 1 _ _ _', '-', 1, 16, 21, 1, 1, 12, '', '', 'Masih Hidup'),
(705, 'RAHADIYAN RIYADI', 'BANJARMASIN', '1973-05-08', 'Laki-laki', 'Jl.komp.Kayu Tangi II No.11 RT.15/A Banjarmasin 70124', '-', '-', '20102019000447-image.JPG', '19730508 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(706, 'RAHAYUNINGTYAS', 'BLITAR', '1973-05-25', 'Perempuan', 'Selokajang RT.15 RW.03 Kec.Srengat Kab.Blitar 66152', '-', '-', '20102019000651-image.JPG', '19730525 19920_ 2 _ _ _', '-', 1, 16, 145, 1, 1, 12, '', '', 'Masih Hidup'),
(707, 'RAHIMA ERNA', 'PEKANBARU', '1972-03-14', 'Perempuan', 'Jl.Slais No.12 Tangkerang Barat Pekanbaru Riau', '-', '-', '20102019002025-image.JPG', '19720314 19920_ 2 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(708, 'RAHMAT BURHANUDDIN', 'MAROS', '1972-02-02', 'Laki-laki', 'Jl.Hasanuddin No.10 Maros Kab.Maros SulSel', '-', '-', '20102019002641-image.JPG', '19720202 19920_ 1 _ _ _', '-', 1, 28, 130, 1, 1, 12, '', '', 'Masih Hidup'),
(709, 'RAHMADANIATY', 'BANDA ACEH', '1972-10-20', 'Perempuan', 'Jl.Langgar No.21 Ateuk Munjeung Banda Aceh 23244', '-', '-', '20102019002914-image.JPG', '19721020 19920_ 2 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(710, 'RAHMAD HIDAYAT', 'TANJUNG JATI', '1973-03-08', 'Laki-laki', 'Ds.Tanjung Jati Kec.Guguk Kab.50 Kota Sumbar', '-', '-', '20102019003349-image.JPG', '19730308 19920_ 1 _ _ _', '-', 1, 4, 232, 1, 1, 12, '', '', 'Masih Hidup'),
(711, 'RAHMAT HIDAYAT SIREGAR', 'PADANG SIDEMPUAN', '1971-04-24', 'Laki-laki', 'Jl.Meranti II No.11 Lingk.XI Kisaran Sumut 21216', '-', '-', '20102019003714-image.JPG', '19710424 19920_ 1 _ _ _', '-', 1, 3, 233, 1, 1, 12, '', '', 'Masih Hidup'),
(712, 'RAHMAT KADAFI', 'BANDA ACEH', '1972-04-10', 'Laki-laki', 'Jl.Potemeuruhom Ir.Plamboyan No.9 lamteh Banda Aceh', '-', '-', '20102019003952-image.JPG', '19720410 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(713, 'RAJWAN TAUFIQ', 'SLEMAN', '1973-03-02', 'Laki-laki', 'Sawahan RW.29 RT.04 No.103 Nogotirto Yogyakarta 55292', '-', '-', '20102019005443-image.JPG', '19730302 19920_ 1 _ _ _', '-', 1, 15, 252, 1, 1, 12, '', '', 'Masih Hidup'),
(714, 'RAKHMADI PERMANA', 'BANJARMASIN', '1972-11-27', 'Laki-laki', 'Kompl. Gatot Subroto Jl.Cengkeh No.25 RT.35 Banjarmasin 70235 Kalsel', '-', '-', '20102019010045-image.JPG', '19721127 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(715, 'RALDES EKA PUTRA', 'BENGKULU', '1971-12-07', 'Laki-laki', 'Jl.Merapi XV RT.03 No.60 Kebun Tebeng Bengkulu', '-', '-', '20102019010453-image.JPG', '19711207 19920_ 1 _ _ _', '-', 1, 8, 179, 1, 1, 12, '', '', 'Masih Hidup'),
(716, 'RAMLAN RASYIDI', 'KALABAHI', '1972-06-04', 'Laki-laki', 'Jl.Trikora RT.04 RW.02 Kel.Airmata Kupang NTT', '-', '-', '20102019011346-image.JPG', '19720604 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(717, 'RASMIN', 'TUBAN', '1971-03-18', 'Laki-laki', 'Sebelah Timur Terminal Bis No.2 Tuban 62314 Jatim', '-', '-', '20102019012841-image.JPG', '19710318 19920_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(718, 'RAY RATU D\'COME', 'SERUI', '1972-11-12', 'Laki-laki', 'Jl.Jend.Sudirman No.3A Serui Irian Jaya 98211', '-', '-', '20102019013704-image.JPG', '19721112 19920_ 1 _ _ _', '-', 1, 35, 237, 1, 1, 12, '', '', 'Masih Hidup'),
(719, 'RENA SUDRAJAT', 'SUMEDANG', '1972-08-24', 'Laki-laki', 'Jl.11 April Km.7 Ganeas RT.02/01 Kec. Sumedang Utara Kab.Sumedang', '-', '-', '20102019014112-image.JPG', '19720824 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(720, 'RENI SUSANTI', 'TABEK PATAH', '1972-05-16', 'Laki-laki', 'Ds.Tabek Patah Kec. Salimpang Kab.Tanah Datar Sumbar 27263', '-', '-', '20102019015706-image.JPG', '19720516 19920_ 2 _ _ _', '-', 1, 4, 136, 1, 1, 12, '', '', 'Masih Hidup'),
(721, 'RASMITA GINTING', 'PANGKALAN BRANDANG', '1971-04-23', 'Perempuan', 'Jl.Arif Rachman Hakim Gg.Kolam No.45A Medan 20216', '-', '-', '20102019015849-image.JPG', '19710423 19920_ 2 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(722, 'RETNO EKO SYAFARIATI NUGRAHENI', 'WONOSOBO', '1973-03-16', 'Perempuan', 'Kantor Kec.Mojotengah Wonosobo Jateng 56351', '-', '-', '20102019020142-image.JPG', '19730316 19920_ 2 _ _ _', '-', 1, 14, 124, 1, 1, 12, '', '', 'Masih Hidup'),
(723, 'RATU DIAN CHERRAWATI', 'JAKARTA', '1972-10-01', 'Perempuan', 'Jl.Mutiara No.6 Benungan Hilir Jakpus 10220', '-', '-', '20102019020323-image.JPG', '19721001 19920_ 2 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(724, 'RETNO PUJIASTUTI', 'BANDUNG', '1973-03-22', 'Perempuan', 'Jl.Halteu Utara Blk. 135/74 Bandung 40183', '-', '-', '20102019020515-image.JPG', '19730322 19920_ 2 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(725, 'REVO ANHAR MISKI', 'PALEMBANG', '1971-07-12', 'Laki-laki', 'Jl.husni Thamrin RT.11 No.68 Kodya Jambi 36122', '(0741) 6798', '-', '20102019022352-image.JPG', '19710712 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(726, 'RIDARMANTO', 'PEKANBARU', '1972-10-06', 'Laki-laki', 'Jl.Cendrawasih Nuri Gg.Punai No.43 Tengkareng Pekanbaru', '-', '-', '20102019022610-image.JPG', '19721006 19920_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(727, 'RIDWAN SAKTI', 'MEDAN', '1972-10-01', 'Laki-laki', 'Jl.Pukat II No.12 Kec.Medan Denai Medan', '-', '-', '20102019022741-image.JPG', '19721001 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(728, 'RIKA MIANA', 'BANJARMASIN', '1973-06-19', 'Perempuan', 'Jl.Banjar Permai III No.44 RT.27 Komp.Banjar Indah Permai Banjarmasin 70248 Kalsel', '-', '-', '20102019022930-image.JPG', '19730619 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(729, 'RINI SARTIKA', 'PADANG', '1973-08-28', 'Perempuan', 'Taman Cipadung Indah Jl.Buana No.2 Soekarno Hatta Cibiru Bandung 20614', '-', '-', '20102019023120-image.JPG', '19730828 19920_ 2 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(730, 'RIWAN LARAGA', 'GORONTALO', '1972-06-01', 'Laki-laki', 'Jl.Sawah Besar No.59 Kel.Tumbihe Kec.Kabila Kab.Gorontalo', '-', '-', '20102019023306-image.JPG', '19720601 19920_ 1 _ _ _', '-', 1, 26, 11, 1, 1, 12, '', '', 'Masih Hidup'),
(731, 'RIYOSO', 'PATI', '1971-11-20', 'Laki-laki', 'Ngemplak Kidul RT.04 RW.02 Kec.Margoyoso Kab.Pati Jateng', '-', '-', '20102019023524-image.JPG', '19711120 19920_ 1 _ _ _', '-', 1, 14, 164, 1, 1, 12, '', '', 'Masih Hidup'),
(732, 'RIZAL ARIF DARMAWAN', 'SURABAYA', '1973-10-31', 'Laki-laki', 'Jl.Raya Maospati No.342 Ds.Klagen Gambiran Kec.Maospati Kab.Magetan Jatim', '-', '-', '20102019023716-image.JPG', '19731031 19920_ 1 _ _ _', '-', 1, 16, 160, 1, 1, 12, '', '', 'Masih Hidup'),
(733, 'RONNY SYAIFUL LUBIS', 'MEDAN', '1972-06-02', 'Laki-laki', 'Jl.Akasia Raya Blok 2 No.11 Perumnas Hevetia Medan 20124 Kupang NTT 85116', '-', '-', '20102019023904-image.JPG', '19720602 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(734, 'ROLLYS KATILI', 'GORONTALO', '1972-06-08', 'Laki-laki', 'Jl.Pemuda No.89 Kel.Padebuolo Kec.Kota Selatan Kodya Gorontalo Sulut', '-', '-', '20102019024113-image.JPG', '19720608 19920_ 1 _ _ _', '-', 1, 26, 16, 1, 1, 12, '', '', 'Masih Hidup'),
(735, 'ROMMY PEDINAND R.', 'TULAP', '1972-02-18', 'Laki-laki', 'Tulap Kec.Kombi Kab.Minahasa Sulut', '-', '-', '20102019024250-image.JPG', '19720218 19920_ 1 _ _ _', '-', 1, 26, 228, 1, 1, 12, '', '', 'Masih Hidup'),
(736, 'ROSHADIAN PURNAMA', 'INDRAMAYU', '1973-07-16', 'Laki-laki', 'Jl.Gurame No.B28 Indramayu 45217', '-', '-', '20102019024427-image.JPG', '19730716 19920_ 1 _ _ _', '-', 1, 13, 132, 1, 1, 12, '', '', 'Masih Hidup'),
(737, 'ROZAMAN GEA', 'LOLOMBOLI', '1973-06-12', 'Laki-laki', 'Jl.Dr.Cipto Mangunkusumo No.5A Gunungsitoli Nias Sumut', '21165', '-', '20102019024715-image.JPG', '19730612 19920_ 1 _ _ _', '-', 1, 3, 248, 1, 1, 12, '', '', 'Masih Hidup'),
(738, 'RUBEN B.MORIOLKOSSU', 'MASOHI', '1973-05-03', 'Laki-laki', 'Passo RT.09 RW.02 Kec.Baguala Kodya Ambon', '-', '-', '20102019024909-image.JPG', '19730503 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(739, 'RUDDY TRI IRIAWAN S.', 'SERUI', '1972-03-29', 'Laki-laki', 'Kesatriaan TNI AL Sorido Kab.Biak Numfor Irian Jaya', '-', '-', '20102019025121-image.JPG', '19720329 19920_ 1 _ _ _', '-', 1, 35, 135, 1, 1, 12, '', '', 'Masih Hidup'),
(740, 'RUDI', 'WATANSOPENG', '1972-12-22', 'Laki-laki', 'Jl.Bila Selatan No.41 Watansopeng Sulsel', '-', '-', '20102019025345-image.JPG', '19721222 19920_ 1 _ _ _', '-', 1, 28, 234, 1, 1, 12, '', '', 'Masih Hidup'),
(741, 'RUDI SITORUS', 'PANEI TONGAH', '1972-04-29', 'Laki-laki', 'Jl.Pocut Baren 19B Banda Aceh ', '-', '-', '20102019025529-image.JPG', '19720429 19920_ 1 _ _ _', '-', 1, 2, 85, 1, 1, 12, '', '', 'Masih Hidup'),
(742, 'RUDY', 'SINGKAWANG', '1972-07-22', 'Laki-laki', 'Jl.U.Dahlan M.Suka No.62 Singkawang Kalbar', '-', '-', '20102019025711-image.JPG', '19720722 19920_ 1 _ _ _', '-', 1, 21, 84, 1, 1, 12, '', '', 'Masih Hidup'),
(743, 'RUDY DS SILALAHI', 'PEMATANG SIANTAR', '1972-10-31', 'Laki-laki', 'Jl.H.Ulakma S No.32 P.Siantar Sumut', '-', '-', '20102019025846-image.JPG', '19721031 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(744, 'RULLY EDWARD', 'BANDUNG', '1972-06-14', 'Laki-laki', 'Jl.Surapati Gg.Murla III No.27/144F RT.02 RW.05 Bandung', '-', '-', '20102019030025-image.JPG', '19720614 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(745, 'RULLY MAHAWIDJAYA', 'JAKARTA', '1972-02-21', 'Laki-laki', 'Jl.B. RT.06 RW.08 No.20 Cipinang Muara Jaktim', '-', '-', '20102019051114-image.JPG', '19720221 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(746, 'RUMONDANG RUMAPEA', 'PANEI TONGAH', '1972-09-28', 'Perempuan', 'Jl.Besar Panei Tongah No.286 Kec.Panei Kab.Simalungun Sumut', '-', '-', '20102019051320-image.JPG', '19720928 19920_ 2 _ _ _', '-', 1, 3, 216, 1, 1, 12, '', '', 'Masih Hidup'),
(747, 'RUSDI LUBIS', 'PADANG SIDEMPUAN', '1971-09-11', 'Laki-laki', 'Jl.S.Parman No.22 Padang Sidempuan Tapanuli Selatan', '-', '-', '20102019053824-image.JPG', '19710911 19920_ 1 _ _ _', '-', 1, 3, 177, 1, 1, 12, '', '', 'Masih Hidup'),
(748, 'RUSITO', 'CIHONJE', '1971-01-10', 'Laki-laki', 'RT.04 RW.07 Bbk Desa Cihonje Kec.Gumelar Kab.Banyumas Jateng', '-', '-', '20102019054032-image.JPG', '19710110 19920_ 1 _ _ _', '-', 1, 14, 89, 1, 1, 12, '', '', 'Masih Hidup'),
(749, 'RUSTAM', 'AMBON', '1971-10-10', 'Laki-laki', 'Jl.Binaya RT.XI No.34 Kel.Namaela Kec.Amahai Kab.Maluku Tengah Masohi 97511', '-', '-', '20102019054248-image.JPG', '19711010 19920_ 1 _ _ _', '-', 1, 32, 235, 1, 1, 12, '', '', 'Masih Hidup'),
(750, 'RUTINA SEMBIRING', 'KABANJAHE', '1973-05-31', 'Laki-laki', '', '-', '-', '20102019054502-image.JPG', '19730531 19920_ 1 _ _ _', '-', 1, 3, 207, 1, 1, 12, '', '', 'Masih Hidup'),
(751, 'SABAHATI GULO', 'TETEHOSI', '1971-03-16', 'Laki-laki', 'Jl.Anggrek No.18 Gunung Sitoli Nias Sumut', '-', '-', '20102019054712-image.JPG', '19710316 19920_ 1 _ _ _', '-', 1, 3, 102, 1, 1, 12, '', '', 'Masih Hidup'),
(752, 'SABARUDDIN YUSRAM', 'BARRU', '1972-06-10', 'Laki-laki', 'Jl.Dr.Ratulagi Compleks SMP Neg.2 Maros', '-', '-', '20102019054947-image.JPG', '19720610 19920_ 1 _ _ _', '-', 1, 28, 130, 1, 1, 12, '', '', 'Masih Hidup'),
(753, 'SAHABADI TELAUMBANUA', 'HILIWORIA', '1971-02-04', 'Laki-laki', 'Jl.Dwikora II No.32 RT.32 RW.15 Lorok Pakjo Palembang', '-', '-', '20102019055213-image.JPG', '19710204 19920_ 1 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(754, 'SAKRI', 'SERANG', '1971-05-26', 'Laki-laki', 'Ds. Citangkil Kec.Ciwandan Kotip Cilegon Banten 42442', '-', '-', '20102019055622-image.JPG', '19710526 19920_ 1 _ _ _', '-', 1, 17, 253, 1, 1, 12, '', '', 'Masih Hidup'),
(755, 'SALVATORE HENDRIKUS DIAZ', 'KAFAMENANU', '1970-09-13', 'Laki-laki', 'Jl.Paroki No.2 Manufui kafamenanu TImor NTT 85681', '-', '-', '20102019060442-image.JPG', '19700913 19920_ 1 _ _ _', '-', 1, 20, 20, 1, 1, 12, '', '', 'Masih Hidup'),
(756, 'SANDI SUKMAWAN', 'PURWAKARTA', '1972-09-17', 'Laki-laki', 'Jl.Kol.Kornel Singawinata Gg.Turi II No.16A Purwakarta Jabar', '-', '-', '20102019060849-image.JPG', '19720917 19920_ 1 _ _ _', '-', 1, 13, 196, 1, 1, 12, '', '', 'Masih Hidup'),
(757, 'SAPPE PAKPAHAN', 'MEDAN', '1972-11-11', 'Laki-laki', 'Jl.Mesjid Taufiq Gg.Tamtama 7B Medan Sumut', '-', '-', '20102019061155-image.JPG', '19720702 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(758, 'SAIFUL DANURI', 'SURABAYA', '1970-11-17', 'Laki-laki', 'Jl.Wonokromo Pasar Lama No.40 Surabaya', '-', '-', '20102019061346-image.JPG', '19701117 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(759, 'SANTOSA', 'NGAWI', '1972-02-24', 'Laki-laki', 'Tirtamandala Blok G No.1 Sukamaju Sukmajaya Depok II', '-', '-', '20102019061604-image.JPG', '19720224 19920_ 1 _ _ _', '-', 1, 13, 238, 1, 1, 12, '', '', 'Masih Hidup'),
(760, 'SAPTA NURIS RAMLAN', 'BANGKALAN ', '1971-11-07', 'Laki-laki', 'Jl.Panglima Sudirman II No.59A Bangkalan Madura Jatim', '-', '-', '20102019061755-image.JPG', '19711107 19920_ 1 _ _ _', '-', 1, 16, 217, 1, 1, 12, '', '', 'Masih Hidup'),
(761, 'SARWO WIDODO', 'TRENGGALEK', '1971-07-07', 'Laki-laki', 'RT.05 RW.01 Tasikmadu Watulimo Trenggalek Jatim 66382', '-', '-', '20102019062004-image.JPG', '19710707 19920_ 1 _ _ _', '-', 1, 16, 48, 1, 1, 12, '', '', 'Masih Hidup'),
(762, 'SATYA DHARMA NABABAN', 'LINTONG NIHUTA', '1973-05-01', 'Laki-laki', 'Jl.Dr.Tb.Simatupang No.42 Tarutung Sumut', '-', '-', '20102019062423-image.JPG', '19730573 19920_ 1 _ _ _', '-', 1, 3, 194, 1, 1, 12, '', '', 'Masih Hidup'),
(763, 'S.BARKAH', 'PADANG RATU', '1972-02-03', 'Laki-laki', 'Jl.A.Yani No.2459 Kec.Pringsewu Lampung Selatan', '-', '-', '20102019062612-image.JPG', '19720203 19920_ 1 _ _ _', '-', 1, 9, 239, 1, 1, 12, '', '', 'Masih Hidup'),
(764, 'SELLY SHIRLEY PORDIANA K.', 'AMBON', '1972-05-20', 'Laki-laki', 'Jl.Wolter Monginsidi No.8 Passo Ambon 97232', '-', '-', '20102019062812-image.JPG', '19720520 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(765, 'SAMUEL SAMPE ROMPON', 'TORAJA', '1972-11-10', 'Laki-laki', 'Jl.Jend.Sukawati II/18 Pinrang', '-', '-', '20102019062954-image.JPG', '19721110 19920_ 1 _ _ _', '-', 1, 28, 17, 1, 1, 12, '', '', 'Masih Hidup'),
(766, 'SETIAWAN ASWAD', 'UJUNG PANDANG', '1973-08-25', 'Laki-laki', 'Jl.Letjen Hertasning Blok E 16 No.4 Ujung Pandang', '-', '-', '20102019063152-image.JPG', '19730825 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(767, 'SHAHRANI', 'UJUNG PANDANG', '1971-04-15', 'Laki-laki', 'Jl.Perintis Kemerdekaan II BTN Antara BlokA 20/3 Sulsel', '-', '-', '20102019063418-image.JPG', '19710415 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(768, 'SHOBRAINI', 'KOTOJAYO', '1973-01-09', 'Laki-laki', 'Jl.Meringin RT.21 No.901 Bungo Timur Muara Bungo 37211 Jambi', '-', '-', '20102019063621-image.JPG', '19730109 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(769, 'SIGIT POERNOMO SOEDJONO', 'TULUNGAGUNG', '1971-07-06', 'Laki-laki', 'Ngranti 18 boyolangu Tulungagung', '-', '-', '20102019064050-image.JPG', '19710706 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(770, 'SILVINO SAMPAIO GONCALVES', 'LIQUISSA', '1970-05-13', 'Laki-laki', 'jl.Estrada De Veija Vili Verde Dili Timor Timur', '-', '-', '20102019064247-image.JPG', '19700513 19920_ 1 _ _ _', '-', 1, 36, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(771, 'SIMON LENDE', 'SUMBA', '1971-09-24', 'Laki-laki', 'Jl.Veteran No.18 Waikubabak Sumba Barat NTT 21545', '-', '-', '20102019064528-image.JPG', '19710924 19920_ 1 _ _ _', '-', 1, 20, 170, 1, 1, 12, '', '', 'Masih Hidup'),
(772, 'SI NGURAH MADE ARYA ASTAWA', 'DENPASAR', '1971-06-01', 'Laki-laki', 'Jl.Merak Gg.Gelatik 3 Denpasar', '-', '-', '20102019064748-image.JPG', '19710601 19920_ 1 _ _ _', '-', 1, 18, 190, 1, 1, 12, '', '', 'Masih Hidup'),
(773, 'SITTI HADIAH NARIDA', 'AMBON', '1972-05-07', 'Perempuan', 'Jl. Ina Tuni Gg. VII No. 10 Karang Panjang-Ambon', '-', '-', '20102019070741-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720507 19220_ 2 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(774, 'SLAMET DJUNIARTO SAMUEL', 'BIAK', '1971-06-23', 'Laki-laki', 'Jl. Sungai Musi No. 6798 Ridge II Biak (Irian Jaya)', '-', '-', '20102019071007-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720623 19220_ 1 _ _ _', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(775, 'SLAMET SUPRIYANTO', 'BANDUNG', '1971-04-09', 'Laki-laki', 'Jl. Master I, Bandung 40274', '-', '-', '20102019071149-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720409 19220_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(776, 'SONSON SUNDARA', 'TASIKMALAYA', '1974-11-18', 'Laki-laki', 'Kp. Cibolang Rt 06 Rw. 01 Desa/Kec. Cibolang, Kab. Tasikmalaya ', '-', '-', '20102019071428-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19741118 19220_ 1 _ _ _', '-', 1, 13, 131, 1, 1, 12, '', '', 'Masih Hidup'),
(777, 'SONY MUHAMMAD ICHSAN', 'BINJAI', '1972-03-15', 'Laki-laki', 'Jl. Cuti Nyak Dhin Gg. Langgar No. 20B Binjai-Sumatera Utara', '-', '-', '20102019071616-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720315 19220_ 1 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(778, 'SOPIAN HADI', 'BEKASI', '1971-06-25', 'Laki-laki', 'Jl. Karang Satria Ds. Satria Mekar Kec. Tambun, Kab. Bekasi-171750', '-', '-', '20102019071826-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720625 19220_ 1 _ _ _', '-', 1, 13, 242, 1, 1, 12, '', '', 'Masih Hidup'),
(779, 'SUGENG WINARNO', 'TUBAN', '1971-03-17', 'Laki-laki', 'Jl. D? Wahidin Sudirohusodo No. 420 Tuban-Jawa Timur (62314)', '-', '-', '20102019072023-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720317 19220_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(780, 'SUGIHARJO TIMBO', 'JAKARTA', '1972-03-19', 'Laki-laki', 'Jl. Rawamangun Tegalan No.14 Jakarta Timur', '-', '-', '20102019072244-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720319 19220_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(781, 'SUHENDAR Z', 'BANJAT NEGERI', '1971-11-06', 'Laki-laki', 'Jl. Kopral Bakhtiar No. 295 Banjar Negeri, Talang Padang Lampung Selatan ', '-', '-', '20102019072500-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721106 19220_ 1 _ _ _', '-', 1, 9, 239, 1, 1, 12, '', '', 'Masih Hidup'),
(782, 'SUNARDI', 'MEDAN', '1971-07-14', 'Laki-laki', 'Jl. Murni Gg. Warga No. 5 Tanjung Rejo, Medan Sumatera Utara', '-', '-', '20102019072648-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720714 19220_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(783, 'SUPRAPTO', 'TUBAN', '1970-06-13', 'Laki-laki', 'Jl. Kaki Singo No. 6 Mojokampung Bojonegoro, Jawa Timur 62116', '-', '-', '20102019072853-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720613 19220_ 1 _ _ _', '-', 1, 16, 12, 1, 1, 12, '', '', 'Masih Hidup'),
(784, 'SURYA INDRAGNI', 'PALU', '1973-03-04', 'Laki-laki', 'Jl. Anoa No.144 Palu Sulawesi Tengah', '-', '-', '20102019073045-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730304 19220_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(785, 'SUWANDI', 'SOPPENG', '1972-12-11', 'Laki-laki', 'Jl. Bakti No.25, Ujung Pandang Sulawesi Selatan (90231)', '-', '-', '20102019073225-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721211 19220_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(786, 'SUYADI WIDODO', 'SUKAHARJO', '1972-06-27', 'Laki-laki', 'Joho Rt 21 Rw 05 Mojolaban, Sukoharjho Jawa Tengah-57554', '-', '-', '20102019073420-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720627 19220_ 1 _ _ _', '-', 1, 14, 5, 1, 1, 12, '', '', 'Masih Hidup'),
(787, 'SUBARJILAN', 'KRETEK BANTUL', '1972-07-11', 'Laki-laki', 'Sono, Parangtritis, Kretek, Bantul Yogyakarta-55772', '-', '-', '20102019073616-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720711 19220_ 1 _ _ _', '-', 1, 15, 210, 1, 1, 12, '', '', 'Masih Hidup'),
(788, 'SUBUR PRIANTO', 'BANDUNG', '1972-10-23', 'Laki-laki', 'Jl. Pahlawan Gg. Seneng Hati II No.2 Bandung-Jawa Barat', '-', '-', '20102019073746-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721023 19220_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(789, 'NOVAL BUNGANDALI TAMBURAKA', 'KENDARI', '1972-09-26', 'Laki-laki', 'Komplek Aneka Tambang Nikel Pomalaa, Jl. Teluk Bone No. 15 Pomaala-Kolaka', '-', '-', '20102019074934-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720926 19220_ 1 _ _ _', '-', 1, 29, 86, 1, 1, 12, '', '', 'Masih Hidup'),
(790, 'SUBANDI', 'BOJONEGORO', '1972-09-25', 'Laki-laki', 'Kaliombo Rw 07, Rt 13, Purwosari Bojonegoro, Jawa Timur', '-', '-', '20102019075305-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720925 19220_ 1 _ _ _', '-', 1, 16, 147, 1, 1, 12, '', '', 'Masih Hidup'),
(791, 'SUDARTO', 'NGANJUK', '1972-12-08', 'Laki-laki', 'Desa Ngalaban Rt. 01 Rw. 01, Loceret, Nganjuk, Jawa Timur', '-', '-', '20102019075512-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721208 19220_ 1 _ _ _', '-', 1, 16, 148, 1, 1, 12, '', '', 'Masih Hidup'),
(792, 'SUDIRO S', 'DEMAK', '1972-10-05', 'Laki-laki', 'Jl. Bintoro 7B, Semarang Kel. Pandean Lamper Kec. Gayam Sari-Semarang', '-', '-', '20102019075703-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721005 19220_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(793, 'SUHARTO', 'SURABAYA', '1971-09-26', 'Laki-laki', 'Simo Pomahan Baru Barat IV No. 58 Surabaya', '-', '-', '20102019075934-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720926 19220_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(794, 'SUKARNO', 'KARANGNANAS', '1972-06-18', 'Laki-laki', 'Gg. Jati VI Blok A No. 118 Perumnas Waena II Jayapura Irian Jaya 99358', '(0967) 82452', '-', '20102019082400-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720618 19220_ 1 _ _ _', '-', 1, 35, 54, 1, 1, 12, '', '', 'Masih Hidup'),
(795, 'SULARNO', 'SOLO', '1970-10-26', 'Laki-laki', 'Jl. Singkawang No.34, Pekanbaru (Riau)', '-', '-', '20102019082537-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721026 19220_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(796, 'SULISTIO CAHYONO', 'JAKARTA', '1972-08-12', 'Laki-laki', 'Komp. Departemen Dalam Negeri II No. H. 24, Pondok Labu Cilandak, Jakarta Selatan', '-', '-', '20102019082730-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720812 19220_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(797, 'SUSWANTO', 'MALANG', '1971-12-17', 'Laki-laki', 'MALANG', '17-12-1971', '-', '20102019082847-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721217 19220_ 1 _ _ _', '-', 1, 16, 168, 1, 1, 12, '', '', 'Masih Hidup'),
(798, 'SUYADI', 'GUNUNG HALU', '1972-01-16', 'Laki-laki', 'Jl. Caringin Gg. Lumbung II No. 60 Rt.05 Rw.03, Bandung', '-', '-', '20102019083055-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720116 19220_ 1 _ _ _', '-', 1, 13, 112, 1, 1, 12, '', '', 'Masih Hidup'),
(799, 'SOEPRAPNO', 'PEKANBARU', '1972-03-19', 'Laki-laki', 'Jl. Pawon 14, Pekanbaru', '-', '-', '20102019083235-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720319 19220_ 1 _ _ _', '-', 1, 5, 57, 1, 1, 12, '', '', 'Masih Hidup'),
(800, 'SONNY HENDRAWAN', 'TEMANGGUNG ', '1973-01-05', 'Laki-laki', 'Jl. Anggrek Raya III/3, Walitelon, Temanggung, Jawa Tengah', '-', '-', '20102019083436-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720105 19220_ 1 _ _ _', '-', 1, 14, 150, 1, 1, 12, '', '', 'Masih Hidup'),
(801, 'SONY LISTON KAFIAR', 'BIAK', '1972-03-12', 'Laki-laki', 'Jl. Jeruk 193, Kel. Burokub Biak-Irian Jaya 98113', '(0961) 21722', '-', '20102019083700-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720312 19220_ 1 _ _ _', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(802, 'SRI WAHYUNIARTO', 'KULON PROGO', '1972-01-02', 'Laki-laki', 'Dukuh, Gerbosari, Samigaluh, Kulonprogo Daerah Istimewa Yogyakarta', '-', '-', '20102019084108-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720102 19220_ 1 _ _ _', '-', 1, 15, 55, 1, 1, 12, '', '', 'Masih Hidup'),
(803, 'STENNY ROCKY MATINDAS', 'MINAHASA', '1970-07-12', 'Laki-laki', 'Jl. Gunung Dua Saudara No.4 Kel. Rinegetan, Link. I, Kec. Tondano Minahasa-Sulut', '-', '-', '20102019084316-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720712 19220_ 1 _ _ _', '-', 1, 26, 228, 1, 1, 12, '', '', 'Masih Hidup'),
(804, 'STEPHEN E.F.R', 'MANADO', '1973-02-23', 'Laki-laki', 'Jl. Mawar No.36/II Sario Manado-Sulawesi Utara (95114)', '-', '-', '20102019084531-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720223 19220_ 1 _ _ _', '-', 1, 3, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(805, 'STEPINUS MARANDOF', 'BIAK', '1970-09-26', 'Laki-laki', 'Desa Yafdas Jl. Sriwijaya Biak-Irian Jaya', '-', '-', '20102019084709-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720926 19220_ 1 _ _ _', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(806, 'STEVEN DOMINGGUS', 'AMBON', '1973-09-16', 'Laki-laki', 'Komplek AURI Lanud Pattimura Laha Ambon, Maluku', '-', '-', '20102019084906-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1972091973 19220_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(807, 'SUGENG RIYADI', 'Purwosari I', '1972-02-05', 'Laki-laki', 'Purwosari Baru Km.6, Tamban Kab. Barito Kuala, Banjarmasin Kalimantan Selatan', '-', '-', '20102019085133-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720205 19220_ 1 _ _ _', '-', 1, 23, 243, 1, 1, 12, '', '', 'Masih Hidup'),
(808, 'SUMANTI MAKU', 'GORONTALO', '1970-08-15', 'Laki-laki', 'Jl. H. Agus salim No.174 Kel. Limba U II, Kodya Gorontalo Provinsi Sulawesi Utara (96115)', '-', '-', '20102019085422-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720815 19920_ 1 _ _ _', '-', 1, 26, 16, 1, 1, 12, '', '', 'Masih Hidup'),
(809, 'SUPRIYANTO', 'JAKARTA', '1971-02-28', 'Laki-laki', 'Jl. Bunga Rampai VII/6 No. 83 Perumnas Klender-Jakarta Timur', '-', '-', '20102019085641-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720228 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup');
INSERT INTO `alumni` (`id_alumni`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `mobile_phone`, `email`, `photo`, `nip`, `npp`, `fk_id_kementrian`, `fk_id_prov`, `fk_id_kab_kot`, `fk_id_kec`, `fk_id_kel`, `fk_id_pangkat`, `jabatan`, `instansi`, `meninggal`) VALUES
(810, 'SURADI', 'BANTUL', '1971-10-09', 'Laki-laki', 'Rt. 1 Rw 40 Bendo, Trimurti, Srandakan, Bantul, Yogyakarta', '-', '-', '20102019085842-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721009 19920_ 1 _ _ _', '-', 1, 15, 210, 1, 1, 12, '', '', 'Masih Hidup'),
(811, 'SURYA WIJAYA', 'BEKASI', '1973-05-04', 'Laki-laki', 'Jl. Pramuka No.27, Bekasi', '-', '-', '20102019090049-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720504 19920_ 1 _ _ _', '-', 1, 12, 242, 1, 1, 12, '', '', 'Masih Hidup'),
(812, 'SULAEMAN SAMAD', 'SUPPA', '1972-08-22', 'Laki-laki', 'Jl. H.M. Jafar No.9 Supra Kab. Pinang', '-', '-', '20102019090823-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720822 19920_ 1 _ _ _', '-', 1, 28, 17, 1, 1, 12, '', '', 'Masih Hidup'),
(813, 'SUMARLINAH', 'TEMANGGUNG', '1973-10-08', 'Laki-laki', 'Rt. 05 Rw. 04 Ds. Bulu, Kec. Bulu Kab. Temanggung, Jawa Tengah', '-', '-', '20102019091115-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721008 19920_ 1 _ _ _', '-', 1, 14, 150, 1, 1, 12, '', '', 'Masih Hidup'),
(814, 'SUNDRO BUDHI KARYANTO', 'SUKOHARJO', '1972-06-20', 'Laki-laki', 'Ringin Asri Rt. 06/VI No. 37 Kel. Bejen, Karanganyar-Solo', '-', '-', '20102019091351-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720620 19920_ 1 _ _ _', '-', 1, 14, 92, 1, 1, 12, '', '', 'Masih Hidup'),
(815, 'SUPRIYADI', 'TEGAL', '1972-09-11', 'Laki-laki', 'Jl. Imam Bonjol 304 Slawi, Tegal-Jateng', '-', '-', '20102019091528-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720911 19920_ 1 _ _ _', '-', 1, 14, 244, 1, 1, 12, '', '', 'Masih Hidup'),
(816, 'SUPRIYANTO', 'JOMBANG', '1970-10-13', 'Laki-laki', 'Jl. Anggrek No. 42, Ngoro Kab. Jombang-Jawa Timur', '-', '-', NULL, '19721013 19920_ 1 _ _ _', '-', 1, 16, 61, 1, 1, 12, '', '', 'Masih Hidup'),
(817, 'SURAIDAH', 'PALOPO', '1971-02-04', 'Perempuan', 'Kodya Padang, Sulawesi Selatan Lansinrang No. 24 B, Ujung Pandang', '-', '-', '20102019091903-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720204 19920_ 2 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(818, 'SURATI RINI WIDARTI', 'SLEMAN', '1973-04-22', 'Perempuan', 'Cemoroharjo Rt. 03 Rw. XIX Candibinangun Pakem, Sleman Yogyakarta-55582', '-', '-', '20102019092144-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720222 19920_ 2 _ _ _', '-', 1, 15, 91, 1, 1, 12, '', '', 'Masih Hidup'),
(819, 'SUTRISNO', 'TULUNGAGUNG', '1972-05-04', 'Laki-laki', 'Rt. 05 Rw.02 Sambirobyong Sumbergempol, Tulungagung Jawa Timur 66291', '-', '-', '20102019092336-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720504 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(820, 'SRI ISNAYANTI SUDIASIH', 'SLEMAN', '1971-12-11', 'Perempuan', 'Jlatren, Jogotirto, Berbah, Sleman Yogyakarta', '-', '-', '20102019092520-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721212 19920_ 1 _ _ _', '-', 1, 15, 91, 1, 1, 12, '', '', 'Masih Hidup'),
(821, 'SRI LUSI MASDIANY', 'KISARAN', '1973-05-07', 'Perempuan', 'Jl. P.Dipenogoro No. 188/257 Kisaran-Asahan', '-', '-', '20102019092711-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720507 19920_ 2 _ _', '-', 1, 3, 208, 1, 1, 12, '', '', 'Masih Hidup'),
(822, 'SRI MULYATI', 'CILIMUS', '1972-11-25', 'Perempuan', 'Kaliaren Rt. 12/IV No. 356-Cilimus Kab. Kuningan-Jawa Barat 45556', '-', '-', '20102019093005-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721125 19920_ 2 _ _ _', '-', 1, 13, 140, 1, 1, 12, '', '', 'Masih Hidup'),
(823, 'SRI RAHAYU', 'KUPANG', '1972-11-11', 'Perempuan', 'Jl. Gajah Mada No.52 Waingapu Sumba Timur-NTT', '-', '-', '20102019093414-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721111 19920_ 2 _ _ _', '-', 1, 20, 245, 1, 1, 12, '', '', 'Masih Hidup'),
(824, 'SRI WIDIASTUTI', 'JAKARTA', '1972-09-12', 'Perempuan', 'Jl.D. Baru Rt 07 Rw 4 No. 4 Jakarta Pusat', '-', '-', '20102019095956-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '1970912 19920_ 1 _ _ _', '-', 1, 12, 114, 1, 1, 12, '', '', 'Masih Hidup'),
(825, 'SRI WULANDARI', 'MEDAN', '1972-04-30', 'Perempuan', 'Jl. Muharto X/47, Malang-65127\r\n', '-', '-', '20102019100148-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720430 19920_ 1 _ _ _', '-', 1, 16, 168, 1, 1, 12, '', '', 'Masih Hidup'),
(826, 'SYAFRUDIN', 'SAMBAS', '1971-09-12', 'Laki-laki', 'Tsyafuiddin No.39 Kec. Sambas (Kal-Bar)', '-', '-', '20102019100330-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710912 19920_ 1 _ _ _', '-', 1, 21, 7, 1, 1, 12, '', '', 'Masih Hidup'),
(827, 'SYAHBIDIN NOOR', 'AMUNTAI', '1972-08-04', 'Laki-laki', 'Jl. Pasar I No. 13/35, Barabai Kalimantan Selatan', '-', '-', '20102019100642-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720804 19920_ 1 _ _ _', '-', 1, 23, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(828, 'SYAHRIZAL', 'BASTSER', '1972-12-30', 'Laki-laki', 'Jl. Wampu SD-4 Stabat 20814', '-', '-', '20102019100832-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721230 19920_ 1 _ _ _', '-', 1, 3, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(829, 'SYAIFUL HAYAT', 'JAKARTA', '1971-04-18', 'Laki-laki', 'Komp. PLN Klender No.43 Rt 01 Rw 02 Jakarta Timur-13930', '-', '-', '20102019101012-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720418 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(830, 'SYAMSUL ALAM', 'BULUKUMBA', '1972-12-27', 'Laki-laki', 'Jl. RE. Martadinata No. 27A Bulukumba, Sulawesi Selatan 92512', '-', '-', '20102019101200-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721227 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(831, 'SYAMSUL BAHRI', 'UJUNG PANDANG', '1972-05-03', 'Laki-laki', 'Jl. Tupai VI No. 7, Ujung Pandang', '-', '-', '20102019101401-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720503 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 11, '', '', 'Masih Hidup'),
(832, 'SYAMSUL JUHARI', 'JAMBI', '1970-12-30', 'Laki-laki', 'Jl. Muhamad ZTamim Gg. Padang Ratu Tanjung Karang-Bandar Lampung', '-', '-', '20102019101950-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19701223 19920_ 1 _ _ _', '-', 1, 9, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(833, 'SYAHRULI', 'JAKARTA', '1972-07-22', 'Laki-laki', 'Bhakti, Jl. Penas Tani IV No. 77 Barabai-&1371  (Kal-Sel)', '-', '-', '20102019102133-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720722 19920_ 1 _ _ _', '-', 1, 23, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(834, 'SYAHRUDDIN', 'RUMBUNG SIALANG TENGAH', '1972-06-24', 'Laki-laki', 'Palangsiang Estate, Ke. Ujung Bulu Kab. Bulukumba, Sul-Sel 92512', '-', '-', '20102019102434-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720624 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(835, 'SYARIFUDDIN', 'SOPPENG', '1973-03-04', 'Laki-laki', 'Jl. Loloe No. 58, Kel. Lala Bata Rilau Wata Soppeng, Sulawesi Selatan', '-', '-', '20102019102808-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730304 19920_ 1 _ _ _', '-', 1, 28, 234, 1, 1, 12, '', '', 'Masih Hidup'),
(836, 'SYARIFUDDIN AMIN', 'BULUKUMBA', '1973-01-25', 'Laki-laki', 'Jl. R. Suprapto No. 6A BuluKumba-92513', '-', '-', '20102019103008-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730125 19920_ 1 _ _ _', '-', 1, 28, 22, 1, 1, 12, '', '', 'Masih Hidup'),
(837, 'SYARIFUDIN B', 'JAKARTA', '1973-01-01', 'Laki-laki', 'Jl. PD. Bulak No.24 Rt 02 Rw 02 Ds. Pisangan, Kec. Ciputat, Kab. Tanggerang Jawa Barat', '-', '-', '20102019103255-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730101 19920_ 1 _ _ _', '-', 1, 17, 30, 1, 1, 12, '', '', 'Masih Hidup'),
(838, 'SYARMADANI', 'BENGKULU', '2019-10-20', 'Laki-laki', 'Jl. Timur Indah No. W.6/122 Rt. 13 Kodya Bengkulu, Bengkulu-38229', '41852', '-', '20102019103539-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720507 19920_ 1 _ _ _', '-', 1, 8, 179, 1, 1, 12, '', '', 'Masih Hidup'),
(839, 'SYARIF RUSTAMAN', 'BIMA', '1973-04-09', 'Laki-laki', 'Jl. Pemuda No. 45 Mataram, NTB', '-', '-', '20102019103652-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730409 19920_ 1 _ _ _', '-', 1, 19, 129, 1, 1, 12, '', '', 'Masih Hidup'),
(840, 'TAJUDDIN NOER', 'AMUNTAI (HSU)', '1972-01-01', 'Laki-laki', 'Jl. Melati III No.12 Kuala Kapuas, Kalimantan Tengah- 73514', '-', '-', '20102019103850-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720101 19920_ 1 _ _ _', '-', 1, 22, 246, 1, 1, 12, '', '', 'Masih Hidup'),
(841, 'TAUFIK HIDAYAT', 'CIAMIS', '1971-11-19', 'Laki-laki', 'Jl. Sadananya, Kec. Sadananya Kab. Ciamis', '-', '-', '20102019104013-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721119 19920_ 1 _ _ _', '-', 1, 13, 117, 1, 1, 12, '', '', 'Masih Hidup'),
(842, 'TEGUH HENDARWAN', 'BANDUNG', '1972-06-29', 'Laki-laki', 'Jl. Gelatik K-17 Komp. Hankam Slipi Jakarta Barat 11480', '5303621', '-', '20102019104614-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710629 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(843, 'TENGKU FAHRIZAL AZMI', 'STABAT', '1971-05-28', 'Laki-laki', 'Jl. KHZ. Arifin Gg. Maya No.11 Stabat, Sumatera Utara-20811', '(061) 91162', '-', '20102019105038-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710528 19920_ 1 _ _ _', '-', 1, 3, 226, 1, 1, 12, '', '', 'Masih Hidup'),
(844, 'TENGKU MUHAMMAD ZAKI AUFA', 'STABAT', '1973-04-26', 'Laki-laki', 'Jl. TS. Moch Sech No. 5, Pantai Gemi Stabat, Langkat, Sumatera Utara', '-', '-', '20102019105304-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19730426 19920_ 1 _ _ _', '-', 1, 3, 226, 1, 1, 12, '', '', 'Masih Hidup'),
(845, 'TERHAR LAWANDI', 'KOLONEDALE', '1971-11-30', 'Laki-laki', 'Jl. Tanjung Tururuka No. 7 Lolu Palu-Sulawesi Tengah (94112)', '(0451) 24152', '-', '20102019105525-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711130 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(846, 'TEUKU ISKANDAR', 'BANDA ACEH', '1971-12-23', 'Laki-laki', 'Komp. TNI-AD Lorpis No. 7 Peunitie-Banda Aceh', '-', '-', '20102019105740-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19711223 19920_ 1 _ _ _', '-', 1, 2, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(847, 'TEUKU MUHAMMAD SYUKRI', 'BANDA ACEH', '1972-03-09', 'Laki-laki', 'Jl. Seulawah No.11 Seutui, Banda Aceh', '-', '-', '20102019105913-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720309 19920_ 1 _ _ _', '-', 1, 2, 1, 1, 1, 11, '', '', 'Masih Hidup'),
(848, 'THEO JAFET ARWAM', 'BIAK', '1970-01-24', 'Laki-laki', 'Jl. Biut-Bilbar, Ds/Kel. Maryendi Rt. 02 / Rw. 02 Kec. Bial-City', '', '', NULL, '-', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(849, 'THOMAS AQUINAS', 'NGABANG', '1972-10-30', 'Laki-laki', 'Jl. R.A. Kartini No. 137 Ngabang, Kalimantan Barat-78357', '(0563) 21200', '-', '20102019110329-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721030 19920_ 1 _ _ _', '-', 1, 21, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(850, 'TIMOTIUS SURYADI', 'KARANGANYAR ', '1972-11-04', 'Laki-laki', 'Ds. Doplang, Rt 03/III Karangpandan Karanganyar, Surakarta, Jateng-57791', '-', '-', '20102019110548-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721104 19920_ 1 _ _ _', '-', 1, 14, 42, 1, 1, 12, '', '', 'Masih Hidup'),
(851, 'TINGGAL WUSONO', 'TEPUS, GUNUNG KIDUL', '1970-06-10', 'Laki-laki', 'Jl. Merdeka Rt 03/04 Kel. Karang Mulia Nabire Paniai, Irian Jaya', '-', '-', '20102019110940-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19700610 19920_ 1 _ _ _', '-', 1, 35, 198, 1, 1, 12, '', '', 'Masih Hidup'),
(852, 'TOM YANES SINGGAMUI', 'MAMBOR ', '1969-01-05', 'Laki-laki', 'Jl. Drs. Yan Mamoribo Nabire Irian Jaya', '-', '-', '20102019112249-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19690105 19920_ 1 _ _ _', '-', 1, 35, 198, 1, 1, 12, '', '', 'Masih Hidup'),
(853, 'TOMY FUDIHARTONO', 'JAKARTA', '1972-03-27', 'Laki-laki', 'Komplek Selapa Polri No. 16 Rt. 01 Rw. 09, Jl Ciputat Lama, Jakarta Selatan 12310', '-', '-', '20102019112458-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720327 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(854, 'TONNY KAPPUW', 'AMBON', '1972-08-17', 'Laki-laki', 'Jl. Karang Panjang Rt02 Rw 02 Ambon', '-', '-', '20102019112626-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720817 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(855, 'TOTOK SUPRIYADI', 'FAKFAK', '1973-11-10', 'Laki-laki', 'Jl. Imam Bonjol No. 5 Fak-Fak (Irian Jaya)', '-', '-', '20102019112758-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19731110 19920_ 1 _ _ _', '-', 1, 35, 90, 1, 1, 12, '', '', 'Masih Hidup'),
(856, 'TRI ANTORO', 'WONOSOBO', '1972-12-18', 'Laki-laki', 'Desa Randusari, Kec. Kepil, Kab. Wonosobo, Jawa Tengah (56374)?', '-', '-', '20102019112937-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19721218 19920_ 1 _ _ _', '-', 1, 14, 124, 1, 1, 12, '', '', 'Masih Hidup'),
(857, 'TRI KUSWIJAYANTO', 'JAKARTA', '1971-05-02', 'Laki-laki', 'Komplek POLRI Rt. 2 Rw. 05 No.6 Kel. Rambutan, Kec. Circas Jakarta Timur', '-', '-', '20102019113122-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19710502 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(858, 'TRI SURYANTORO', 'SEMARANG', '1972-01-30', 'Laki-laki', 'Duwet Gentong Rt 01 Rw 34, No. 03 Srimulyo, piyungan, Bantul Yogyakarta-55792', '-', '-', '20102019113339-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720130 19920_ 1 _ _ _', '-', 1, 15, 210, 1, 1, 12, '', '', 'Masih Hidup'),
(859, 'TRI WAHJU KUNTJORO', 'SURABAYA', '1972-05-25', 'Laki-laki', 'Jl. Untung Suropati No. 146 Bojonegoro-Jatim', '-', '-', '20102019113504-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720525 19920_ 1 _ _ _', '-', 1, 16, 147, 1, 1, 12, '', '', 'Masih Hidup'),
(860, 'TRI WANTORO', 'TALUNGAGUNG', '1972-04-13', 'Laki-laki', 'Jl. Pahlawan Gg. I No. 24 Rejoagung Rw. I Rt 07, Kedungwaru, Tulungagung-Jawa Timur', '-', '-', '20102019113653-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720413 19920_ 1 _ _ _', '-', 1, 16, 50, 1, 1, 12, '', '', 'Masih Hidup'),
(861, 'TRI WINARNI', 'LAMPUNG', '1972-02-10', 'Laki-laki', 'Jl. A. Yani Gg. Mulia II No. 15 ‹etro-Lampung Tengah', '-', '-', '20102019114124-WhatsApp_Image_2019-10-14_at_10_29_25.jpg', '19720210 19920_ 1 _ _ _', '-', 1, 9, 192, 1, 1, 12, '', '', 'Masih Hidup'),
(862, 'TRY KURNIA FRIHATINO', 'JAKARTA', '1973-06-24', 'Laki-laki', 'Jl.Sutra Ungu C II/15 Kelapa Gading Permai Jakarta Utara 14240', '-', '-', '20102019123839-image.JPG', '19730624 19920_ 1 _ _ _', '-', 1, 12, 251, 1, 1, 12, '', '', 'Masih Hidup'),
(863, 'TUAH M.SYAIFULLAH', 'TEMBILAHAN', '1971-11-30', 'Laki-laki', 'Jl.Gunung Daek RT.04/No.12 Tembilahan Riau 29212', '-', '-', '20102019124053-image.JPG', '19711130 19920_ 1 _ _ _', '-', 1, 5, 75, 1, 1, 12, '', '', 'Masih Hidup'),
(864, 'TULUS R. PRIYANTO', 'BOGOR', '1972-11-20', 'Laki-laki', 'Jl.Serodja No.3 RT.05/13 Srengseng Sawah Jagakarsa Jaksel 12640', '-', '-', '20102019124248-image.JPG', '19721120 19920_ 1 _ _ _', '-', 1, 12, 25, 1, 1, 12, '', '', 'Masih Hidup'),
(865, 'TUMPAL HASIHOLAN AGUSTINUS', 'JAKARTA', '1972-08-22', 'Laki-laki', 'Jl.Kikir No.4 Kamp.Ambon Kel.Kayu Putih Jaktim 13210', '-', '-', '20102019124507-image.JPG', '19720822 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(866, 'TUTUR P.T. SIMANJUNTAK', 'TARUTUNG', '1973-01-01', 'Laki-laki', 'Jl.Letjen Suprapto No.1/B TArutung Taput Sumut 22411', '-', '-', '20102019124741-image.JPG', '19730101 19920_ 1 _ _ _', '-', 1, 3, 194, 1, 1, 12, '', '', 'Masih Hidup'),
(867, 'TYAS NGAMBAR WIDYOWATI', 'KARANGANYAR', '1973-04-10', 'Perempuan', 'Jl.Lawu 47 Karanganyar Solo Jateng 57711', '-', '-', '20102019125004-image.JPG', '19730410 19920_ 2 _ _ _', '-', 1, 14, 92, 1, 1, 12, '', '', 'Masih Hidup'),
(868, 'UCU YOGASWARA', 'CIANJUR', '1973-01-29', 'Laki-laki', 'SImpang RT.01/01 Buniwangi Pagelaran Cianjur Jabar', '-', '-', '20102019125137-image.JPG', '19730129 19920_ 1 _ _ _', '-', 1, 13, 141, 1, 1, 12, '', '', 'Masih Hidup'),
(869, 'ULIASERS SINANU', 'SAPARUA', '1973-06-22', 'Laki-laki', 'Jl.Woltermonginsidi RT.02/01 Lateri Ambon Maluku', '-', '-', '20102019125332-image.JPG', '19730622 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(870, 'UMAR SURYA SUKMANA', 'SEMARANG', '1971-06-02', 'Laki-laki', 'Jl.Badak V/27 RT.10 RW.06 Semarang Jateng', '-', '-', '20102019125532-image.JPG', '19710602 19920_ 1 _ _ _', '-', 1, 14, 14, 1, 1, 12, '', '', 'Masih Hidup'),
(871, 'UMI MASITOH', 'SRAGEN', '1972-04-27', 'Perempuan', 'Jl.Citarum No.16 Sragen RT.01 Rw.23 Cantel Kulon Solo Jateng', '-', '-', '20102019125739-image.JPG', '19720427 19920_ 2 _ _ _', '-', 1, 14, 42, 1, 1, 12, '', '', 'Masih Hidup'),
(872, 'USMAN ACHMAD', 'SOPPENG', '1971-11-28', 'Laki-laki', 'Jl.Darul maarif Rk.3 RT.E Rappokalling Ujung Pandang', '-', '-', '20102019125946-image.JPG', '19711128 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(873, 'USMAN BUDI UTOMO', 'BIAK', '1973-04-19', 'Laki-laki', 'Komp.Perum TNI AL Lanal Biak Gd.Macan Kumbang 14 Biak Irian Jaya', '-', '-', '20102019130205-image.JPG', '19730419 19920_ 1 _ _ _', '-', 1, 35, 40, 1, 1, 12, '', '', 'Masih Hidup'),
(874, 'VARIAN BINTORO', 'SUMBAWA', '1972-01-23', 'Laki-laki', 'Asrama Polres Sumbawa Besar NTB', '-', '-', '20102019130329-image.JPG', '19720123 19920_ 1 _ _ _', '-', 1, 19, 58, 1, 1, 12, '', '', 'Masih Hidup'),
(875, 'VERRY ARDIANSYAH', 'JAMBI', '1973-02-23', 'Laki-laki', 'Jl.Sunan Giri RT.36 No.10 Kec.Kotabaru Kodya Jambi', '-', '-', '20102019130540-image.JPG', '19730223 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(876, 'VICTOR SURIPATTY', 'AMBON', '1974-02-04', 'Laki-laki', 'Hunuth RT.04/02 No.07 Kec.Teluk Ambon Baguala Kotamadya Ambon Maluku', '-', '-', '20102019130757-image.JPG', '19740204 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(877, 'VIETRA VAN HARLING', 'AMBON', '1972-02-28', 'Perempuan', 'Jl.Dr.Malaiholo RT.01/04 Benteng Ambon Maluku', '-', '-', '20102019130947-image.JPG', '19720228 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(878, 'VICTOR LIBRADI. HS', 'LAMPUNG', '1972-09-30', 'Laki-laki', 'Perumnas KORPRI Blok B.11 No.16 Sukarame Bandar Lampung', '-', '-', '20102019131136-image.JPG', '19720930 19920_ 1 _ _ _', '-', 1, 9, 74, 1, 1, 12, '', '', 'Masih Hidup'),
(879, 'VINCENSIUS REMIQIUS SAMA', 'KUPANG', '1970-07-19', 'Laki-laki', 'Jl.Belimbing RT.15 RW.06 Kel.Oeba Kupang NTT', '-', '-', '20102019131345-image.JPG', '19700719 19920_ 1 _ _ _', '-', 1, 20, 66, 1, 1, 12, '', '', 'Masih Hidup'),
(880, 'VIVI NOVITRIANI', 'PALEMBANG', '1972-11-10', 'Perempuan', 'Jl.Mayor Mahidin I RT.73 No.42 Palembang', '-', '-', '20102019131513-image.JPG', '19721110 19920_ 2 _ _ _', '-', 1, 7, 87, 1, 1, 12, '', '', 'Masih Hidup'),
(881, 'V.SUDARJANTO SUMITO', 'UJUNG PANDANG', '1970-11-14', 'Laki-laki', 'Jl.Gunung Merapi No.143B Ujung Pandang', '-', '-', '20102019131646-image.JPG', '19701114 19920_ 1 _ _ _', '-', 1, 28, 38, 1, 1, 12, '', '', 'Masih Hidup'),
(882, 'WARSITO EKO PUTRO', 'PEMALANG', '1973-03-09', 'Laki-laki', 'Jl.Anggur No.48 Ds.Bojongbata Kec.Pemalang Kab.Pemalang Jateng', '-', '-', '20102019132000-image.JPG', '19730309 19920_ 1 _ _ _', '-', 1, 14, 71, 1, 1, 12, '', '', 'Masih Hidup'),
(883, 'WAHYUDDIN', 'SUNGGUMINASA', '1972-11-24', 'Laki-laki', 'Jl.Andi Mallombasang 68A Sungguminasa Gowa', '-', '-', '20102019132201-image.JPG', '19721124 19920_ 1 _ _ _', '-', 1, 28, 81, 1, 1, 12, '', '', 'Masih Hidup'),
(884, 'WAHYUDIN YAHYA', 'RENGAT', '1972-03-31', 'Laki-laki', 'Jl.Diponegoro 46 Rengat Kab.Indragiri Hulu Riau', '-', '-', '20102019132330-image.JPG', '19720331 19920_ 1 _ _ _', '-', 1, 5, 156, 1, 1, 12, '', '', 'Masih Hidup'),
(885, 'WAHYONO', 'BREBES', '1971-07-15', 'Laki-laki', 'Jl.Urip Sumoharjo No.1 D Bukittinggi Sumbar Asrama Sub Den Pom I/6-1', '-', '-', '20102019132642-image.JPG', '19710715 19920_ 1 _ _ _', '-', 1, 4, 159, 1, 1, 12, '', '', 'Masih Hidup'),
(886, 'WAHYUNOTO LUKMAN', 'RAMBUNG SIALANG', '1972-05-26', 'Laki-laki', 'Jl.Dr.Kumpulan Pane No.56 Kotamadya Tebing Tinggi Sumut 20613', '-', '-', '20102019133218-image.JPG', '19720526 19920_ 1 _ _ _', '-', 1, 3, 254, 1, 1, 12, '', '', 'Masih Hidup'),
(887, 'WAHYU PRIASTANTO', 'JAKARTA', '1971-10-14', 'Laki-laki', 'Jl.Mawar Merah IV No.139 Blok 35 Klender Jaktim', '-', '-', '20102019134343-image.JPG', '19711014 19920_ 1 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(888, 'WAHYU SURYA K.P.S.', 'JAKARTA', '1972-12-25', 'Laki-laki', 'Jl.Sangihe raya No.97 Blok VIII Kel.Duren Jaya Bekasi Timur', '-', '-', '20102019134715-image.JPG', '19721225 19920_ 1 _ _ _', '-', 1, 13, 242, 1, 1, 12, '', '', 'Masih Hidup'),
(889, 'WALTER EDWARD MALAU', 'PEMATANG SIANTAR', '1972-12-07', 'Laki-laki', 'jl.Pattimura No.112 Kel.Tomuan Kodya Pematang Siantar Sumut 21133', '-', '-', '20102019135359-image.JPG', '19721207 19920_ 1 _ _ _', '-', 1, 3, 122, 1, 1, 12, '', '', 'Masih Hidup'),
(890, 'WIDI PURNAMA', 'KULON PROGO', '1973-09-20', 'Laki-laki', 'Dukuh Karangsari Pengasih Kulon Progo Yogyakarta', '-', '-', '20102019135629-image.JPG', '19730920 19920_ 1 _ _ _', '-', 1, 15, 55, 1, 1, 12, '', '', 'Masih Hidup'),
(891, 'WIDYAASTUTI PRATIWININGSIH', 'MAGELANG', '1972-10-28', 'Perempuan', 'Jl.Brigjen Katamso No.82 Purworejo kedu Jateng 54115', '-', '-', '20102019135936-image.JPG', '19721028 19920_ 2 _ _ _', '-', 1, 14, 125, 1, 1, 12, '', '', 'Masih Hidup'),
(892, 'WILLEM ANDREW DA COSTA', 'SERUI', '1972-03-21', 'Laki-laki', 'Jl.Pattimura No.2 Serui Irian Jaya 98211', '-', '-', '20102019140449-image.JPG', '19720321 19920_ 1 _ _ _', '-', 1, 1, 1, 1, 1, 12, '', '', 'Masih Hidup'),
(893, 'WITONTRO', 'NGAWI', '1970-07-20', 'Laki-laki', 'Jl.Rawa Indah RT.VI No.195 Air Putih Samarinda Kaltim', '-', '-', '20102019140654-image.JPG', '19700720 19920_ 1 _ _ _', '-', 1, 24, 182, 1, 1, 12, '', '', 'Masih Hidup'),
(894, 'WITOYO NINDYO TRIONO', 'PONOROGO', '1972-03-17', 'Laki-laki', 'Jl.Bung Tomo No.44 Ponorogo Jatim', '-', '-', '20102019140839-image.JPG', '19720317 19920_ 1 _ _ _', '-', 1, 16, 161, 1, 1, 12, '', '', 'Masih Hidup'),
(895, 'WITRI TENNY', 'SIJUNJUNG', '1973-09-01', 'Perempuan', 'Jl.Ir.H.Juanda No.52 Padang', '-', '-', '20102019141034-image.JPG', '19730901 19920_ 1 _ _ _', '-', 1, 4, 29, 1, 1, 12, '', '', 'Masih Hidup'),
(896, 'WOR WINDARI', 'JOMBANG', '1973-12-04', 'Perempuan', 'Ingaspendowo Kidul No.227 Sumobito Jombang Jatim', '-', '-', '20102019141217-image.JPG', '19731204 19920_ 1 _ _ _', '-', 1, 16, 61, 1, 1, 12, '', '', 'Masih Hidup'),
(897, 'WURYANTO', 'PEMALANG', '1972-09-25', 'Laki-laki', 'Jl.Pala Barat 4 No.1329 Mejasem Tegal', '-', '-', '20102019141402-image.JPG', '19720925 19920_ 1 _ _ _', '-', 1, 14, 71, 1, 1, 12, '', '', 'Masih Hidup'),
(898, 'YAFIZHAM PRINDURI', 'MEDAN', '1973-08-21', 'Laki-laki', 'Jl.Bengkel M 10 P.Brayan Bengkel Medan Sumut', '-', '-', '20102019141624-image.JPG', '19730821 19920_ 1 _ _ _', '-', 1, 3, 24, 1, 1, 12, '', '', 'Masih Hidup'),
(899, 'YAKOBUS', 'SABALOS', '1972-08-09', 'Laki-laki', 'Jl.Kom Yos Sudarso Gg.Goa No.111 Jeruju Pontianak Barat Kalbar', '-', '-', '20102019141811-image.JPG', '19720809 19920_ 1 _ _ _', '-', 1, 21, 100, 1, 1, 12, '', '', 'Masih Hidup'),
(900, 'YAKOBUS AK.MUDA MAKIN', 'B.BALI', '1969-02-14', 'Laki-laki', 'Lewopao RT.04 RW.07 No.64 Senadan Waiwerang Flores Timur NTT', '-', '-', '20102019142017-image.JPG', '19690214 19920_ 1 _ _ _', '-', 1, 20, 153, 1, 1, 12, '', '', 'Masih Hidup'),
(901, 'YANCE', 'BUOL', '1972-01-23', 'Laki-laki', 'Jl.Emy Saelan No.45 Palu Sulteng', '-', '-', '20102019142150-image.JPG', '19720123 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(902, 'YANETI', 'BUKITTINGGI', '1972-10-06', 'Perempuan', 'Jalan Melayu Padang Baru Lubuk Basung Kab. Agam', '087768246114', '-', '30102019082726-IMG_20190909_133226_-_Yaneti__Titi.jpg', '197210061992032003', '03.1412', 1, 4, 167, 1, 1, 13, 'Sekretaris Dinas ', 'Kominfo', 'Masih Hidup'),
(903, 'YANUARTI KANIA DEWI', 'GARUT', '1973-01-04', 'Perempuan', 'Jl.Arief Rachman Hakim No.46 Sumedang 201279', '-', '-', '20102019142452-image.JPG', '19730104 19920_ 1 _ _ _', '-', 1, 13, 3, 1, 1, 12, '', '', 'Masih Hidup'),
(904, 'YANU MARDIANTO', 'SURABAYA', '1972-01-30', 'Laki-laki', 'Jl.Simo Gunung Kramat Barat III/2 Surabaya 60255 Jatim', '-', '-', '20102019144026-image.JPG', '19720130 19920_ 1 _ _ _', '-', 1, 16, 62, 1, 1, 12, '', '', 'Masih Hidup'),
(905, 'YANTO HARYANTO', 'BANDUNG', '1970-08-05', 'Laki-laki', 'Perum Grha Wiratama No.22 Air Putih Samarinda Kaltim', '-', '-', '20102019144328-image.JPG', '19700805 19920_ 1 _ _ _', '-', 1, 24, 182, 1, 1, 12, '', '', 'Masih Hidup'),
(906, 'YAYAN SUHERYAN', 'SELAWI', '1972-06-01', 'Laki-laki', 'Serang RT.02 RW.01 Ds.Cigawir Kec.Selaawi Kab.Garut Jabar', '-', '-', '20102019144511-image.JPG', '19720601 19920_ 1 _ _ _', '-', 1, 13, 2, 1, 1, 12, '', '', 'Masih Hidup'),
(907, 'Y. EKO SUSANTO', 'JAKARTA', '1972-07-18', 'Laki-laki', 'Jl.Kapuk Pulo No.2 RT.06 RW.10 Kel.Kapuk Kec.Cengkareng Jakbar', '-', '-', '20102019144711-image.JPG', '19720718 19920_ 1 _ _ _', '-', 1, 12, 103, 1, 1, 12, '', '', 'Masih Hidup'),
(908, 'YERIKE', 'BANJARMASIN', '1972-08-28', 'Perempuan', 'Jl.Bali RT.8B No.55 Banjarmasin Kalsel', '-', '-', '20102019144905-image.JPG', '19720828 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 12, '', '', 'Masih Hidup'),
(909, 'YOGI METRO PENI', 'JAKARTA', '1972-12-30', 'Perempuan', 'Komp.Polri Cipinang Atas Blok A/8 Jaktim', '-', '-', '20102019145823-image.JPG', '19721230 19920_ 2 _ _ _', '-', 1, 12, 67, 1, 1, 12, '', '', 'Masih Hidup'),
(910, 'YOHANES ATET', 'BEDAHA', '1971-08-11', 'Laki-laki', 'Jl.Kom Yos Sudarso Gg.Bunut No.47 Pontianak Kalbar 78113', '-', '-', '20102019150010-image.JPG', '19710811 19920_ 1 _ _ _', '-', 1, 21, 100, 1, 1, 12, '', '', 'Masih Hidup'),
(911, 'YOHANES CAPISTRANO WATU', 'BAJAWA', '1971-03-28', 'Laki-laki', 'Jl.Budi Utomo RT.Mawar RW.II Kel.Tanalodu Bajawa Ngada Flores NTT', '-', '-', '20102019150230-image.JPG', '19710328 19920_ 1 _ _ _', '-', 1, 20, 128, 1, 1, 12, '', '', 'Masih Hidup'),
(912, 'YOHANNES SUPRAMONO', 'YOGYAKARTA', '1971-11-05', 'Laki-laki', 'Sanggrahan Tlogoadi Mlati Sleman Yogyakarta', '-', '-', '20102019150421-image.JPG', '19711105 19920_ 1 _ _ _', '-', 1, 15, 91, 1, 1, 12, '', '', 'Masih Hidup'),
(913, 'YONO PURNOMO', 'CIREBON', '1971-12-15', 'Laki-laki', 'Jl.Pancuran Daris No.730 Balerante Palimanan Cirebon', '-', '-', '20102019150557-image.JPG', '19711215 19920_ 1 _ _ _', '-', 1, 13, 111, 1, 1, 12, '', '', 'Masih Hidup'),
(914, 'YOPI EKO JATI WIBOWO', 'KARANGANYAR', '1972-01-25', 'Laki-laki', 'Perum Pelita A.50 Popongan Karanganyar Solo Jateng 57715', '-', '-', '20102019150754-image.JPG', '19720125 19920_ 1 _ _ _', '-', 1, 14, 92, 1, 1, 12, '', '', 'Masih Hidup'),
(915, 'YOS ARMY', 'JAMBI', '1972-10-14', 'Laki-laki', 'Jl.Rampai I RT.14 RW.05 No.23 Kel.SImpang IV Sipin Telanai Pura Jambi 36124', '-', '-', NULL, '19721014 19920_ 1 _ _ _', '-', 1, 6, 163, 1, 1, 12, '', '', 'Masih Hidup'),
(916, 'YOSEP LOBO', 'MAKALE', '1971-12-20', 'Laki-laki', 'Jl.Pongtiku No.179B Makale Tana Toraja', '-', '-', '20102019151636-image.JPG', '19721220 19920_ 1 _ _ _', '-', 1, 28, 46, 1, 1, 12, '', '', 'Masih Hidup'),
(917, 'YOSEP NUGRAHA', 'BANDUNG', '1973-06-28', 'Laki-laki', 'Ds.Sukamanah RT.02/08 Kec.Paseh Kab.Bandung', '-', '-', '20102019151811-image.JPG', '19720601 19920_ 1 _ _ _', '-', 1, 13, 112, 1, 1, 12, '', '', 'Masih Hidup'),
(918, 'YUDI RIDHANI', 'BANJARMASIN', '1972-03-26', 'Laki-laki', 'Komplek Bumi Pemurus Permai Jl.Krisna No.1 Banjarmasin', '-', '-', '20102019151944-image.JPG', '19720326 19920_ 1 _ _ _', '-', 1, 23, 77, 1, 1, 1, '', '', 'Masih Hidup'),
(919, 'YUDI RISTIAWAN', 'MAGELANG', '1971-11-27', 'Laki-laki', 'Jl.Sumbang Raya Ds.Pliken RT.02/03 No.289 Kec.Kembaran Kab.Banyumas Jateng 53182', '-', '-', '20102019153131-image.JPG', '19711127 19920_ 1 _ _ _', '-', 1, 14, 89, 1, 1, 12, '', '', 'Masih Hidup'),
(920, 'YUDI TEJAKUSUMAH', 'KARAWANG', '1971-04-28', 'Laki-laki', 'Sekejati VII No.39A Cikutra Bandung', '-', '-', '20102019153313-image.JPG', '19710428 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(921, 'YULIANUS ZAI', 'SAIWAHILI HILIADULO', '1973-07-17', 'Laki-laki', 'Jl.Diponegoro No.02 Idanogawo Nias', '-', '-', '20102019153509-image.JPG', '19730717 19920_ 1 _ _ _', '-', 1, 3, 248, 1, 1, 12, '', '', 'Masih Hidup'),
(922, 'YULIANUS IRAMA JAYA HAREFA', 'MAZINGO', '1971-07-09', 'Laki-laki', 'Jl.Anggrek No.10 Sukaramai Ilir Gunungsitoli Nias', '-', '-', '20102019153701-image.JPG', '19710709 19920_ 1 _ _ _', '-', 1, 3, 102, 1, 1, 12, '', '', 'Masih Hidup'),
(923, 'YULIANUS THEVY TONDOK', 'MAKALE', '1972-07-23', 'Laki-laki', 'Jl.Pasar Baru No.52 Makale Tana Toraja Sulawesi Selatan 91811', '-', '-', '20102019153919-image.JPG', '19720723 19920_ 1 _ _ _', '-', 1, 28, 46, 1, 1, 12, '', '', 'Masih Hidup'),
(924, 'YULIZAR. M.', 'LUBUK JAMBI', '1970-11-14', 'Laki-laki', 'Jl.Desa Pebaun Hulu No.72 Kuantan Mudik Inragiri Hulu Riau', '-', '-', '20102019154251-image.JPG', '19701114 19920_ 1 _ _ _', '-', 1, 5, 156, 1, 1, 12, '', '', 'Masih Hidup'),
(925, 'YUMARDI', 'DUMAI', '1973-03-28', 'Laki-laki', 'Jl.Teratai No.67 Dumai Riau', '-', '-', '20102019154800-image.JPG', '19730328 19920_ 1 _ _ _', '-', 1, 5, 9, 1, 1, 12, '', '', 'Masih Hidup'),
(926, 'YUNIAR SRI MURDASIH', 'KARANGANYAR', '1973-06-17', 'Perempuan', 'Perum Pelita B.19 Harjosari Karanganyar Surakarta Jateng', '-', '-', '20102019155020-image.JPG', '19730617 19920_ 1 _ _ _', '-', 1, 14, 92, 1, 1, 12, '', '', 'Masih Hidup'),
(927, 'YUNUS SESA', 'MASOHI', '1972-01-09', 'Laki-laki', 'Aspol SPN Passo Jl.Wolter Monginsidi Blok I No.1 Amboina Maluku 97232', '-', '-', '20102019155236-image.JPG', '19720109 19920_ 1 _ _ _', '-', 1, 32, 19, 1, 1, 12, '', '', 'Masih Hidup'),
(928, 'YUSEP SUDRAJAT', 'BANDUNG', '1972-01-06', 'Laki-laki', 'Komplek Margahayu Raya Blok B No.6/T70 Jl.Pluto Raya Bandung Jabar 40286', '-', '-', '20102019155438-image.JPG', '19720106 19920_ 1 _ _ _', '-', 1, 13, 110, 1, 1, 12, '', '', 'Masih Hidup'),
(929, 'YUSHILDA USMAN', 'BINJAI', '1973-01-20', 'Perempuan', 'Jl.Letjend Djamin Ginting No.37 Binjai Sumut', '-', '-', '20102019155615-image.JPG', '19730120 19920_ 2 _ _ _', '-', 1, 3, 32, 1, 1, 12, '', '', 'Masih Hidup'),
(930, 'YUSRI', 'BANGKINANG', '1972-03-05', 'Laki-laki', 'Jl.Muhammad Samin MuaraUai Bangkinang RT.01 RW.02', '-', '-', '20102019155830-image.JPG', '19720305 19920_ 1 _ _ _', '-', 1, 5, 202, 1, 1, 12, '', '', 'Masih Hidup'),
(931, 'ZAHARI BUSTANIL', 'BANDA ACEH', '1973-01-14', 'Laki-laki', 'Jl.Wedanan Lam Ara Keutapang Dua Banda Aceh', '-', '-', '20102019160008-image.JPG', '19730114 19920_ 1 _ _ _', '-', 1, 2, 65, 1, 1, 12, '', '', 'Masih Hidup'),
(932, 'ZAINAL', 'BUTON', '1972-09-21', 'Laki-laki', 'Jl.Jend.Sudirman No.2 Bau-bau Buton Sultra', '-', '-', '20102019160141-image.JPG', '19720921 19920_ 1 _ _ _', '-', 1, 29, 98, 1, 1, 12, '', '', 'Masih Hidup'),
(933, 'ZAINAL ABIDIN', 'KENDARI', '1972-07-20', 'Laki-laki', 'Jl.Gunung Jati No.36 Kendari Sulawesi Tenggara 93225', '-', '-', '20102019160321-image.JPG', '19720720 19920_ 1 _ _ _', '-', 1, 29, 8, 1, 1, 12, '', '', 'Masih Hidup'),
(934, 'ZULFIKAR', 'PADANG', '1970-06-24', 'Laki-laki', 'Komp.Perumdam III/IV Blok H No.10 Tunggul Hitam Padang', '-', '-', '20102019160455-image.JPG', '19700624 19920_ 1 _ _ _', '-', 1, 4, 29, 1, 1, 12, '', '', 'Masih Hidup'),
(935, 'ZETLEY FRANGKY PONTOAN', 'MANADO', '1972-09-11', 'Laki-laki', 'RT.33/15 No.15 Karombasan Lingk.V Manado Sulut', '-', '-', '20102019160649-image.JPG', '19720911 19920_ 1 _ _ _', '-', 1, 26, 165, 1, 1, 12, '', '', 'Masih Hidup'),
(936, 'ZULKIFLI', 'PALU', '1972-10-22', 'Laki-laki', 'Jl.H.Agus Salim No.11 Palu', '-', '-', '20102019160801-image.JPG', '19721022 19920_ 1 _ _ _', '-', 1, 27, 13, 1, 1, 12, '', '', 'Masih Hidup'),
(937, 'ZULFIKAR ADIJANA SAMMAN', 'UJUNG PANDANG', '1972-02-06', 'Laki-laki', 'Jl.KH.Wahid Hasyim 150 Sungguminasa Gowa Sulsel', '-', '-', '20102019160943-image.JPG', '19720206 19920_ 1 _ _ _', '-', 1, 28, 81, 1, 1, 12, '', '', 'Masih Hidup'),
(938, 'ZULFISYAH YANDA SIREGAR', 'TEBING TINGGI', '1972-04-08', 'Laki-laki', 'Jl.Gatot Subroto Km.2 Kodya Tebing Tinggi', '-', '-', '20102019161139-image.JPG', '19720408 19920_ 1 _ _ _', '-', 1, 3, 254, 1, 1, 12, '', '', 'Masih Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gal` int(11) NOT NULL,
  `nama_kegiatan` varchar(258) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_kegiatan` date DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `kategori` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gal`, `nama_kegiatan`, `keterangan`, `tgl_kegiatan`, `photo`, `kategori`) VALUES
(1, 'Kenangan saat bersama di kelas', 'Kenangan bersama kawan-kawan begitu gembira', '1991-01-31', '11102019030550-Kenangan-10.jpg', 'Album Kenangan'),
(2, 'Masa pendidikan pembentukan karakter', 'Pembentukan karaktek PP03', '1992-02-27', '11102019030956-Pendidikan-2.jpg', 'Album Pendidikan'),
(3, 'Kebersamaan PP03 di Kampus', 'Reuni PP03 tahun 2019', '2019-10-18', '21102019014007-slides.JPG', 'Banner'),
(4, 'Masa muda kami', 'Masa muda PP03 yang enerjik dan penuh semangat', '2019-10-01', '21102019015335-pamong_praja.JPG', 'Banner'),
(6, 'Pamong Praja Angkatan 03', 'Ini Kami lah, Barisan Para Pamong Praja Angkatan 03 tahun 1994 , STPDN !', '2019-09-16', '21102019125950-stpdn1994.PNG', 'Banner'),
(7, 'Reuni 2019', 'Pertemuan dalam aula STPDN', '2019-09-16', '21102019130414-img2.PNG', 'Album Kenangan');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten_kota`
--

CREATE TABLE `kabupaten_kota` (
  `id_kab_kot` int(11) NOT NULL,
  `nama_kab_kot` varchar(128) DEFAULT NULL,
  `fk_id_prov` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten_kota`
--

INSERT INTO `kabupaten_kota` (`id_kab_kot`, `nama_kab_kot`, `fk_id_prov`) VALUES
(1, '-', 1),
(2, 'KABUPATEN GARUT', 13),
(3, 'KABUPATEN SUMEDANG', 13),
(4, 'KOTA TIDORE', 33),
(5, 'KABUPATEN SUKOHARJO', 14),
(6, 'KABUPATEN MAJALENGKA', 13),
(7, 'KABUPATEN SAMBAS', 21),
(8, 'KOTA KENDARI', 29),
(9, 'KOTA DUMAI', 5),
(10, 'KABUPATEN LAMONGAN', 16),
(11, 'KABUPATEN GORONTALO', 26),
(12, 'KABUPATEN TUBAN', 16),
(13, 'KOTA PALU', 27),
(14, 'KOTA SEMARANG', 14),
(15, 'KOTA BOGOR', 13),
(16, 'KOTA GORONTALO', 26),
(17, 'KABUPATEN PINRANG', 28),
(18, 'KABUPATEN SUMENEP', 16),
(19, 'KOTA AMBON', 32),
(20, 'TIMOR TIMUR', 36),
(21, 'KABUPATEN PAMEKASAN', 16),
(22, 'KABUPATEN BULUKUMBA', 28),
(24, 'KOTA MEDAN', 3),
(25, 'KOTA JAKARTA SELATAN', 12),
(26, 'KABUPATEN MADIUN', 16),
(28, 'KABUPATEN GRESIK', 16),
(29, 'KOTA PADANG', 3),
(30, 'KOTA TANGGERANG', 17),
(31, 'KABUPATEN SIDOARJO', 16),
(32, 'KOTA BINJAI', 3),
(34, 'KABUPATEN REMBANG', 14),
(35, 'KOTA KOTAMOBAGU', 26),
(37, 'KABUPATEN SUBANG', 13),
(38, 'KOTA MAKASAR', 28),
(39, 'KABUPATEN LUMAJANG', 16),
(40, 'KOTA BIAK', 35),
(42, 'KOTA SURAKARTA', 14),
(44, 'KABUPATEN BANJARNEGARA', 14),
(46, 'KABUPATEN TANA TORAJA', 28),
(47, 'KABUPATEN JEPARA', 14),
(48, 'KABUPATEN TRENGGALEK', 16),
(50, 'KOTA TULUNGAGUNG', 16),
(51, 'KOTA KEDIRI', 16),
(52, 'KABUPATEN LEBAK', 17),
(53, 'KABUPATEN LAMPUNG UTARA', 9),
(54, 'KOTA JAYAPURA', 35),
(55, 'KABUPATEN KULON PROGO', 15),
(57, 'Kota Pekanbaru', 5),
(58, 'Kota Sumbawa Besar', 19),
(59, 'Kota Mataram', 19),
(60, 'Kabupaten Bone', 28),
(61, 'Kabupaten Jombang', 16),
(62, 'Kota Surabaya', 16),
(63, 'Kabupaten Kudus', 14),
(64, 'Kabupaten Wajo', 28),
(65, 'Kota Banda Aceh', 2),
(66, 'Kota Kupang', 20),
(67, 'Kota Jakarta Timur', 12),
(68, 'Kota Probolinggo', 16),
(69, 'Kabupaten Klaten', 14),
(70, 'Kota Pasuruan', 16),
(71, 'Kabupaten Pemalang', 14),
(72, 'Kabupaten Banyuwangi', 16),
(73, 'Kota Martapura', 23),
(74, 'Kota Bandar Lampung', 9),
(75, 'Kabupaten Indragiri Hilir', 5),
(76, 'Kota Sukabumi', 13),
(77, 'KOTA BANJARMASIN', 23),
(79, 'KABUPATEN OGAN KOMERING ILIR', 7),
(80, 'KABUPATEN MANOKWARI', 34),
(81, 'KABUPATEN GOWA', 28),
(82, 'KOTA TERNATE', 33),
(83, 'KABUPATEN SINDENRENG RAPPANG', 28),
(84, 'KOTA SINGKAWANG', 21),
(85, 'KABUPATEN ACEH UTARA', 2),
(86, 'KABUPATEN KOLAKA', 29),
(87, 'KOTA PALEMBANG', 7),
(88, 'KABUPATEN SUKABUMI', 13),
(89, 'KABUPATEN BANYUMAS', 14),
(90, 'KABUPATEN FAKFAK', 34),
(91, 'KABUPATEN SLEMAN', 15),
(92, 'KABUPATEN KARANGANYAR', 14),
(93, 'KABUPATEN ROTE NDAO', 20),
(94, 'KABUPATEN SINJAI', 28),
(95, 'KOTA PAREPARE', 28),
(96, 'KABUPATEN BONDOWOSO', 16),
(97, 'KABUPATEN SELUMA', 8),
(98, 'KOTA BAUBAU', 29),
(99, 'KABUPATEN SITUBONDO', 16),
(100, 'KOTA PONTIANAK', 21),
(101, 'KABUPATEN PANDEGLANG', 17),
(102, 'KOTA GUNUNGSITOLI', 3),
(103, 'KOTA JAKARTA BARAT', 12),
(104, 'KOTA MAGELANG', 14),
(105, 'KABUPATEN LAHAT', 7),
(106, 'KABUPATEN KEPULAUAN SANGIHE', 26),
(107, 'KABUPATEN TIMOR TENGAH UTARA', 20),
(108, 'KABUPATEN MERAUKE', 35),
(109, 'KABUPATEN SEMAMRANG', 14),
(110, 'KOTA BANDUNG', 13),
(111, 'KOTA CIREBON', 13),
(112, 'KABUPATEN BANDUNG', 13),
(113, 'KOTA SOLOK', 4),
(114, 'KOTA JAKARTA PUSAT', 12),
(115, 'KABUPATEN BUTON', 29),
(116, 'KABUPATEN LOMBOK TIMUR', 20),
(117, 'KABUPATEN CIAMIS', 13),
(118, 'KABUPATEN ACEH BARAT', 2),
(119, 'KOTA PAYAKUMBUH', 4),
(120, 'KABUPATEN DELI SERDANG', 3),
(121, 'KABUPATEN KAPUAS HULU', 21),
(122, 'KOTA PEMATANG SIANTAR', 3),
(123, 'KABUUPATEN CILACAP', 14),
(124, 'KABUPATEN WONOSOBO', 14),
(125, 'KABUPATEN PURWOREJO', 14),
(126, 'KABUPATEN HALMAHERA TENGAH', 33),
(127, 'KABUPATEN KARIMUN', 11),
(128, 'KABUPATEN NGADA', 20),
(129, 'KABUPATEN BIMA', 19),
(130, 'KABUPATEN MAROS', 28),
(131, 'KOTA TASIKMALAYA', 13),
(132, 'KABUPATEN INDRAMAYU', 13),
(133, 'KABUPATEN SRAGEN', 14),
(134, 'KABUPATEN PANIAI', 35),
(135, 'KABUPATEN BIAK NUMFOR', 35),
(136, 'KABUPATEN TANAH DATAR', 4),
(137, 'KABUPATEN BOYOLALI', 14),
(138, 'KOTA PADANG  PANJANG', 4),
(139, 'KOTA TANJUNG PINANG', 11),
(140, 'KABUPATEN KUNINGAN', 13),
(141, 'KABUPATEN CIANJUR', 13),
(142, 'KOTA TANJUNG BALAI KARIMUN', 11),
(143, 'KABUPATEN KEDIRI', 16),
(144, 'KOTA LUBUK LINGGAU', 7),
(145, 'KOTA BLITAR', 16),
(146, 'KABUPATEN MOJOKERTO', 16),
(147, 'KABUPATEN BOJONEGORO', 16),
(148, 'KABUPATEN NGANJUK', 16),
(149, 'KABUPATEN BANGGAI', 27),
(150, 'KABUPATEN TEMANGGUNG', 14),
(151, 'KABUPATEN BLORA', 14),
(152, 'KABUPATEN MALUKU TENGGARA', 32),
(153, 'KABUPATEN FLORES TIMUR', 20),
(154, 'KABUPATEN KENDAL', 14),
(155, 'KABUPATEN KEPULAUAN SANGIHE', 26),
(156, 'KABUPATEN INDRAGIRI HULU', 5),
(157, 'KABUPATEN PURBALINGGA', 14),
(158, 'KABUPATEN MALUKU UTARA', 32),
(159, 'KOTA BUKIT TINGGI', 4),
(160, 'KABUPATEN MAGETAN', 16),
(161, 'KABUPATEN PONOROGO', 16),
(162, 'KABUPATEN ACEH SELATAN', 2),
(163, 'KOTA JAMBI', 6),
(164, 'KABUPATEN PATI', 14),
(165, 'KOTA MANADO', 26),
(166, 'KABUPATEN SOLOK', 4),
(167, 'KABUPATEN AGAM', 4),
(168, 'KOTA MALANG', 16),
(169, 'KOTA RANTAU PRAPAT', 3),
(170, 'KABUPATEN SUMBA BARAT', 20),
(171, 'KABUPATEN SIKKA', 20),
(172, 'KABUPATEN KEPUALAUAN YAPEN', 35),
(173, 'KOTA PARIAMAN', 4),
(174, 'KABUPATEN LOMBOK BARAT', 19),
(175, 'KABUPATEN JEMBER ', 16),
(176, 'KOTA PALOPO', 28),
(177, 'KABUPATEN TAPANULI SELATAN', 3),
(178, 'KABUPATEN BATANG', 14),
(179, 'KOTA BENGKULU', 8),
(180, 'KABUPATEN BENGKULU SELATAN', 8),
(181, 'KABUPATEN MUSI RAWAS', 7),
(182, 'KOTA SAMARINDA', 24),
(183, 'KOTA PURWOKERTO', 14),
(184, 'KABUPATEN PADANG LAWAS ', 3),
(185, 'KABUPATEN HALMAHERA UTARA', 33),
(186, 'KABUPATEN BANGLI', 18),
(187, 'KABUPATEN GIANYAR', 18),
(188, 'KABUPATEN JEMBRANA', 18),
(189, 'KABUPATEN TABANAN', 18),
(190, 'KOTA DENPASAR', 18),
(191, 'KABUPATEN KARANGASEM', 18),
(192, 'KABUPATEN LAMPUNG TENGAH', 9),
(193, 'KOTA TUAL', 32),
(194, 'KABUPATEN TAPANULI UTARA', 3),
(195, 'KOTA SINGARAJA', 18),
(196, 'KABUPATEN PURWAKARTA', 13),
(197, 'KABUPATEN PARIGI MOUTONG', 27),
(198, 'KABUPATEN NABIRE', 35),
(199, 'KABUPATEN JAYAWIJAYA', 35),
(200, 'KOTA PADANG SIDEMPUAN', 3),
(201, 'KABUPATEN BADUNG', 18),
(202, 'KABUPATEN KAMPAR', 5),
(203, 'KABUPATEN DAIRI', 3),
(204, 'KABUPATEN WONOGIRI', 14),
(205, 'KABUPATEN LABUHANBATU UTARA', 3),
(206, 'KOTA KETAPANG', 21),
(207, 'KABUPATEN KARO', 3),
(208, 'KABUPATEN ASAHAN', 3),
(209, 'KABUPATEN MALANG', 16),
(210, 'KABUPATEN BANTUL', 15),
(211, 'KABUPATEN LOMBOK TENGAH', 19),
(212, 'KABUPATEN MUNA', 29),
(213, 'KABUPATEN KUTAI KARTANEGARA', 24),
(214, 'KABUPATEN PIDIE', 2),
(215, 'KABUPATEN BENGKALIS ', 5),
(216, 'KABUPATEN SIMALUNGUN', 3),
(217, 'KABUPATEN BANGKALAN', 16),
(218, 'KABUPATEN KERINCI', 6),
(219, 'KOTA BANJARBARU', 23),
(220, 'KABUPATEN GROBOGAN ', 14),
(221, 'KABUPATEN BANGGAI', 27),
(222, 'KABUPATEN MAJENE', 31),
(223, 'KOTA PRABUMULIH', 7),
(224, 'KABUPATEN HULU SUNGAI TENGAH', 23),
(225, 'KABUPATEN ACEH TENGAH', 2),
(226, 'KABUPATEN LANGKAT', 3),
(227, 'KABUPATEN TANAH LAUT', 23),
(228, 'KABUPATEN MINAHASA', 26),
(229, 'KABUPATEN DOMPU', 19),
(230, 'KABUPATEN KEBUMEN', 14),
(231, 'KABUPATEN NGAWI', 16),
(232, 'KABUPATEN LIMA PULUH KOTA', 4),
(233, 'KOTA KISARAN', 3),
(234, 'KABUPATEN SOPENG', 28),
(235, 'KABUPATEN MALUKU TENGAH', 32),
(236, 'KOTA MAUMERE', 20),
(237, 'KOTA SERUI', 35),
(238, 'KOTA DEPOK', 13),
(239, 'KABUPATEN LAMPUNG SELATAN', 9),
(240, 'KABUPATEN BUNGO', 6),
(241, 'KABUPATEN TASIKMALAYA', 13),
(242, 'KABUPATEN BEKASI', 13),
(243, 'KABUPATEN BARITO KUALA', 23),
(244, 'KOTA TEGAL', 14),
(245, 'KABUPATEN SUMBA TIMUR', 20),
(246, 'KABUPATEN KAPUAS', 22),
(247, 'KABUPATEN LANDAK', 21),
(248, 'KABUPATEN NIAS', 3),
(249, 'KABUPATEN JEMBARANA', 18),
(250, 'KOTA KUTA', 18),
(251, 'JAKARTA UTARA', 12),
(252, 'KOTA YOGYAKARTA', 15),
(253, 'KOTA CILEGON', 17),
(254, 'KOTA TEBING TINGGI', 3),
(255, 'KABUPATEN BOMBANA', 29),
(256, 'KABUPATEN PASURUAN', 16);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(11) NOT NULL,
  `nama_kecamatan` varchar(128) DEFAULT NULL,
  `fk_id_kab_kot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nama_kecamatan`, `fk_id_kab_kot`) VALUES
(1, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_keg` int(11) NOT NULL,
  `nama_kegiatan` varchar(258) DEFAULT NULL,
  `koordinator` varchar(128) NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_kegiatan` date DEFAULT NULL,
  `waktu` varchar(258) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `tempat` varchar(256) DEFAULT NULL,
  `kategori` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_keg`, `nama_kegiatan`, `koordinator`, `kontak`, `keterangan`, `tgl_kegiatan`, `waktu`, `photo`, `tempat`, `kategori`) VALUES
(1, 'Reuni 1 STPDN 03', 'Azi Izmal Maulana', '087711223344', 'Reuni Akbar pertama PP03', '2019-10-01', '08.00 s/d selesai', '11102019032622-Reuni-3.jpg', 'Dusun Bambu Lembang', 'Dokumentasi Kegiatan'),
(2, 'Kegiatan kabur bersama', 'Irpan Sudrajat Hakim', '08522112233', 'Kegiatan kabur loncat dinding', '2019-10-11', '08.00 s/d selesai', '11102019032832-Kenangan-1.jpg', 'Gedung Kampus A', 'Dokumentasi Kegiatan'),
(3, 'Pengumuman Reuni 2019', 'Vicki Ardian Subagja Sigarantang', '082262447992', 'Harap konfirmasi kepada koordinator', '2019-10-31', '08.00 s/d selesai', '12102019033558-Reuni-4.jpg', 'Bale Pancasona Kota Baru Parahyangan', 'Berita');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kel` int(11) NOT NULL,
  `nama_kelurahan` varchar(128) DEFAULT NULL,
  `fk_id_kec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kel`, `nama_kelurahan`, `fk_id_kec`) VALUES
(1, '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kementrian`
--

CREATE TABLE `kementrian` (
  `id_kementrian` int(11) NOT NULL,
  `nama_kementrian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kementrian`
--

INSERT INTO `kementrian` (`id_kementrian`, `nama_kementrian`) VALUES
(1, '-'),
(2, 'Kementerian Dalam Negeri'),
(3, 'Kementerian Luar Negeri'),
(4, 'Kementerian Pertahanan'),
(5, 'Kementerian Agamai'),
(6, 'Kementerian Hukum dan Hak Asasi Manusia'),
(7, 'Kementerian Keuangan'),
(8, 'Kementerian Pendidikan dan Kebudayaan'),
(9, 'Kementerian Riset, Teknologi dan Pendidikan Tinggi'),
(10, 'Kementerian Kesehatan'),
(11, 'Kementerian Sosial'),
(12, 'Kementerian Ketenagakerjaan'),
(13, 'Kementerian Perindustrian'),
(14, 'Kementerian Perdagangan'),
(15, 'Kementerian Energi dan Sumber Daya Mineral'),
(16, 'Kementerian Pekerjaan Umum dan Perumahan Rakyati'),
(17, 'Kementerian Perhubungan'),
(18, 'Kementerian Komunikasi dan Informatika'),
(19, 'Kementerian Pertanian'),
(20, 'Kementerian Lingkungan Hidup dan Kehutanan'),
(21, 'Kementerian Kelautan dan Perikanan'),
(22, 'Kementerian Desa, Pembangunan Daerah Tertinggal da'),
(23, 'Kementerian Agraria dan Tata Ruang'),
(24, 'Kementerian Perencanaan Pembangunan Nasional'),
(25, 'Kementerian Pendayagunaan Aparatur Negara dan Refo'),
(26, 'Kementerian Badan Usaha Milik Negara'),
(27, 'Kementerian Koperasi dan Usaha Kecil dan Menengah'),
(28, 'Kementerian Pariwisata'),
(29, 'Kementerian Pemberdayaan Perempuan dan Perlindunga'),
(30, 'Kementerian Pemuda dan Olahraga'),
(31, 'Kementerian Sekretariat Negara'),
(32, 'Kementerian Koordinator Bidang Politik, Hukum, dan'),
(33, 'Kementerian Koordinator Bidang Perekonomian'),
(34, 'Kementerian Koordinator Bidang Pembangunan Manusia'),
(35, 'Kementerian Koordinator Bidang Kemaritiman dan Sum');

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `nama_pangkat` varchar(50) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `nama_pangkat`, `golongan`, `ruang`) VALUES
(1, 'Juru Muda', 'I', 'a'),
(2, 'Juru Muda Tingkat I', 'I', 'b'),
(3, 'Juru', 'I', 'c'),
(4, 'Pengatur Muda', 'II', 'a'),
(5, 'Pengatur Muda Tingkat I', 'II', 'b'),
(6, 'Pengatur', 'II', 'c'),
(7, 'Pengatur Tingkat I', 'II', 'd'),
(8, 'Penata Muda', 'III', 'a'),
(9, 'Penata Muda Tingkat I', 'III', 'b'),
(10, 'Penata', 'III', 'c'),
(11, 'Penata Tingkat I', 'III', 'd'),
(12, 'Pembina', 'IV', 'a'),
(13, 'Pembina Tingkat I', 'IV', 'b'),
(14, 'Pembina Utama Muda', 'IV', 'c'),
(15, 'Pembina Utama Madya', 'IV', 'd'),
(16, 'Pembina Utama', 'IV', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` int(11) NOT NULL,
  `nama_provinsi` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama_provinsi`) VALUES
(1, '-'),
(2, 'ACEH'),
(3, 'SUMATERA UTARA'),
(4, 'SUMATERA BARAT'),
(5, 'RIAU'),
(6, 'JAMBI'),
(7, 'SUMATERA SELATAN'),
(8, 'BENGKULU'),
(9, 'LAMPUNG'),
(10, 'KEPULAUAN BANGKA BELITUNG'),
(11, 'KEPULAUAN RIAU'),
(12, 'DKI JAKARTA'),
(13, 'JAWA BARAT'),
(14, 'JAWA TENGAH'),
(15, 'DI YOGYAKARTA'),
(16, 'JAWA TIMUR'),
(17, 'BANTEN'),
(18, 'BALI'),
(19, 'NUSA TENGGARA BARAT'),
(20, 'NUSA TENGGARA TIMUR'),
(21, 'KALIMANTAN BARAT'),
(22, 'KALIMANTAN TENGAH'),
(23, 'KALIMANTAN SELATAN'),
(24, 'KALIMANTAN TIMUR'),
(25, 'KALIMANTAN UTARA'),
(26, 'SULAWESI UTARA'),
(27, 'SULAWESI TENGAH'),
(28, 'SULAWESI SELATAN'),
(29, 'SULAWESI TENGGARA'),
(30, 'GORONTALO'),
(31, 'SULAWESI BARAT'),
(32, 'MALUKU'),
(33, 'MALUKU UTARA'),
(34, 'PAPUA BARAT'),
(35, 'PAPUA'),
(36, 'LUAR NEGERI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `nip` varchar(128) DEFAULT NULL,
  `npp` varchar(128) DEFAULT NULL,
  `pangkat` int(11) DEFAULT NULL,
  `jabatan` int(11) DEFAULT NULL,
  `alamat` varchar(128) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `gol_ruangan` int(11) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kabupaten_kota` int(11) DEFAULT NULL,
  `kecamatan` int(11) DEFAULT NULL,
  `kelurahan` int(11) DEFAULT NULL,
  `meningal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`, `jenis_kelamin`, `nip`, `npp`, `pangkat`, `jabatan`, `alamat`, `mobile_phone`, `gol_ruangan`, `provinsi`, `kabupaten_kota`, `kecamatan`, `kelurahan`, `meningal`) VALUES
(9, 'PAD 1 KBB', 'pajakdaerah1.kbb@gmail.com', '29102019062358-IPDN.jpg', '$2y$10$07pDzkagGpr5vmNEAyES1OTH4zOoaOafMvum5Qd.zCIrP1bB3EPUC', 1, 1, 1552644004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Oki Prasetyo', 'oki.prasetyo45@gmail.com', '21102019041720-pp.jpg', '$2y$10$EF.37cfMrEfJbqwXXOW4COes43An1sg.v3DnNtD3yVotndYnihRH2', 1, 1, 1568605141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Oki Prasetyo 2', 'oki.prasetyo4591@gmail.com', '28102019011032-default.jpg', '$2y$10$3twFfQTeX7RYIY0sUDtaV.b/Cfbx/jGwo3ltB9uG5.YRiQkOYnCjS', 2, 1, 1570449646, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Pamong Praja', 'ppstpdn@ppstpdn.com', '14102019023104-default.jpg', '$2y$10$CWIjXiMnpUyjR5AhEViEHeEVCVS3xFL.zvyo0dFMJ4mm03jYI6pbm', 1, 1, 1571020265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Alumni PP03 STPDN', 'pp03@ppstpdn.com', '14102019023348-default.jpg', '$2y$10$usTY992Ass7lq2st4rLELefoam0Cnt5sljyvPn.Phwxsfst/ZXZ9S', 2, 1, 1571020428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Vicky Ardian S', 'ardian708@gmail.com', '17102019132813-me2.png', '$2y$10$N7ej8BihKQ3J/OqXMxIjGuI4f57DteJJC4eIa28FdFV6qElknoFEq', 1, 1, 1571044068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Vicky Ardian S', 'ardian708v2@gmail.com', '21102019041934-penjahat_kelamin.png', '$2y$10$NNNu13UJpdcXROndWHC.tOC2Yj1EZa0W0NCVVsmZvy9JPEcKPenjm', 2, 1, 1571318986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `nama_menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(9, 1, 'Wilayah', 'wilayah', 'fas fa-map-marker-alt', 1),
(10, 1, 'Form Alumnus', 'alumnus', 'fab fa-wpforms', 1),
(11, 1, 'Daftar Alumnus', 'alumnus/ajaxGetAlumni', 'fas fa-address-card', 1),
(12, 1, 'Pemangkatan', 'pemangkatan', 'fas fa-fw fa-star', 1),
(13, 1, 'Gallery', 'gallery', 'fas fa-fw fa-images', 1),
(14, 1, 'Kegiatan', 'kegiatan/kegiatan', 'fas fa-fw fa-running', 1),
(15, 2, 'Daftar Alumni', 'anggota', 'fas fa-fw fa-users', 1),
(16, 1, 'Tentang STPDN', 'about', 'fas fa-fw fa-id-card-alt', 1),
(17, 1, 'Management User', 'admin/ajaxGetUser', 'fas fa-fw fa-user', 1),
(19, 2, 'Beranda', 'home', 'fas fa-fw fa-home', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `token` varchar(128) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'oki.prasety4591@gmail.com', 'Fi26DxA5w7LkZziG5tJOwWL2v2JcE3mCufZXbaY1nBE=', 1570427817),
(4, 'oki.prasetyo4591@gmail.com', '+J5o7Q8lgA/dd3yCUcYDC9CzbzJuq1Lee1pMsoumubI=', 1570449856);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD KEY `fk_id_pangkat` (`fk_id_pangkat`),
  ADD KEY `fk_id_provinsi` (`fk_id_prov`),
  ADD KEY `fk_id_kabupaten_kota` (`fk_id_kab_kot`),
  ADD KEY `fk_id_kecamatan` (`fk_id_kec`),
  ADD KEY `fk_id_kelurahan` (`fk_id_kel`),
  ADD KEY `fk_id_kementrian` (`fk_id_kementrian`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gal`);

--
-- Indexes for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  ADD PRIMARY KEY (`id_kab_kot`),
  ADD KEY `fk_id_prov` (`fk_id_prov`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`),
  ADD KEY `fk_id_kab_kot` (`fk_id_kab_kot`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_keg`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kel`),
  ADD KEY `fk_id_kecamatan` (`fk_id_kec`);

--
-- Indexes for table `kementrian`
--
ALTER TABLE `kementrian`
  ADD PRIMARY KEY (`id_kementrian`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT for table `kementrian`
--
ALTER TABLE `kementrian`
  MODIFY `id_kementrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`fk_id_pangkat`) REFERENCES `pangkat` (`id_pangkat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`fk_id_prov`) REFERENCES `provinsi` (`id_prov`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumni_ibfk_3` FOREIGN KEY (`fk_id_kab_kot`) REFERENCES `kabupaten_kota` (`id_kab_kot`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumni_ibfk_4` FOREIGN KEY (`fk_id_kec`) REFERENCES `kecamatan` (`id_kec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumni_ibfk_5` FOREIGN KEY (`fk_id_kel`) REFERENCES `kelurahan` (`id_kel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumni_ibfk_6` FOREIGN KEY (`fk_id_kementrian`) REFERENCES `kementrian` (`id_kementrian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  ADD CONSTRAINT `kabupaten_kota_ibfk_1` FOREIGN KEY (`fk_id_prov`) REFERENCES `provinsi` (`id_prov`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`fk_id_kab_kot`) REFERENCES `kabupaten_kota` (`id_kab_kot`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `kelurahan_ibfk_1` FOREIGN KEY (`fk_id_kec`) REFERENCES `kecamatan` (`id_kec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
