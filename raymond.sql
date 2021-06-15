-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 05:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raymond`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` int(11) NOT NULL,
  `id_user` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `sosialmedia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `id_user`, `nama`, `instansi`, `tujuan`, `sosialmedia`) VALUES
(15, 4, 'Aditya Erlangga Wibowo', 'GAP YEAR', 'Kementerian Kesehatan', 'adityaerlanggaaaa'),
(16, 1, 'Aditya Erlangga Wibowo', 'GAP YEAR', 'Kementerian Kesehatan', 'adityaerlanggaaaa'),
(17, 7, 'Aditya Erlangga 1', '1', '1', '1'),
(18, 8, 'Administrator', 'CEO of PintarSKD.com', 'Pengusaha START UP', 'pintarskd'),
(19, 9, 'Aditya Erlangga Wibowo', 'Universitas Sriwijaya', 'Kementerian Luar Negeri', 'adityaerlanggaaaa'),
(20, 9, 'Aditya Erlangga Wibowo', 'Universitas Sriwijaya', 'Kementerian Luar Negeri', 'adityaerlanggaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `id_kuis` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuis`
--

INSERT INTO `kuis` (`id_kuis`, `judul`, `deskripsi`) VALUES
(1, 'CPNS Bagian 1', 'Keterangan : Benar +5'),
(2, 'CPNS Bagian 2', 'Keterangan : Benar +5');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `tipe` int(1) NOT NULL COMMENT '1=TIU,2=TWK,3=TKP',
  `gambar` varchar(255) NOT NULL COMMENT '0 = tidak pakai gambar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='a';

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_kuis`, `soal`, `a`, `b`, `c`, `d`, `jawaban`, `tipe`, `gambar`) VALUES
(112, 1, 'Siapakah tokoh diatas?', 'Donald Trump', 'Joe Biden', 'Ainun', 'Habibie', 'D', 1, '1618498048_150efd5d752b7e2b4f92.jpeg'),
(113, 1, 'Berapa Jumlah Provinsi Indonesia?', '33', '34', '35', '32', 'B', 1, '0'),
(117, 1, 'asdsadasd', 'asdasd', 'asdasd', 'asdasd', 'asdasdas', 'A', 2, '0'),
(118, 1, 'asdasd', 'asdasd', 'asdasdas', 'asdasdsdas', 'asda', 'D', 2, '0'),
(119, 1, 'asdasd', 'asdas', 'dasdas', 'dasdas', 'asdasd', 'A', 2, '0'),
(121, 1, 'bbbbb', 'bbbbb', 'bbbbbb', 'bbbb', 'bbbb', 'B', 2, '0'),
(122, 1, 'sssssss', 'aa', 'sss', 'sssss', 'sdasdasda', 'C', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tipstrick`
--

CREATE TABLE `tipstrick` (
  `id_tipstrick` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipstrick` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipstrick`
--

INSERT INTO `tipstrick` (`id_tipstrick`, `judul`, `tipstrick`) VALUES
(12, 'TIPS #1', '<p>Yakali ga ikut CPNS</p><p>HEHEHHEE</p><p>Lorem ipsumeakdbashvdhuasbdjasndmsad</p><p><br></p>'),
(13, 'TIPS #2', '<p class=\"MsoListParagraph\" style=\"margin-left:0in;mso-add-space:auto;line-height:\r\n150%\"><b><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif;mso-ansi-language:EN-US\">6.\r\nANALISIS HASIL PERCOBAAN<o:p></o:p></span></b></p>\r\n\r\n<span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">Pada Praktikum\r\n<b>Karakteristik FET</b> ini, kami melakukan 2 percobaan dengan menggunakan aplikasi\r\nLivewire, yaitu untuk mengetahui Karakteristik DC dari JFET Tipe-N dan MOSFET\r\nTipe-N. Percobaan pertama adalah Karakteristik DC dari JFET Tipe N, disini kami\r\nmenggunakan beberapa data pada VGS dan VDS yang berbeda-beda. VGS-nya\r\nberturut-turut adalah 0 V, 60 mV, 90 mV, 110 mV, dan 150 mV. Pada VDS 0.9 V,\r\nnilai arus drain-source(IDS) berturut-turut adalah 278.95 </span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 268.12 </span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 263.58 </span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 259.24</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, dan 251.39</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A. Pada VDS 1.5 V,\r\ndidapat nilai IDS berturut-turut adalah 374.95 </span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 357.28</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 346.85</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 340.17</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 329.75</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A. Pada VDS 2 V,\r\ndidapat nilai IDS berturut-turut adalah <span style=\"background-color: rgb(0, 255, 0);\">399.96</span></span><span lang=\"IN\" style=\"font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;, serif; background-color: rgb(0, 255, 0);\"> µ</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"><span style=\"background-color: rgb(0, 255, 0);\">A</span>, 377</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> <span lang=\"IN\">µ</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 363.86</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> <span lang=\"IN\">µ</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, 355.98</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> <span lang=\"IN\">µ</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A, dan 339.79</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA;mso-bidi-font-weight:bold\"> <span lang=\"IN\">µ</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold\">A. Dari data yang\r\ntelah didapat dapat disimpulkan bahwa semakin besar nilai VDS maka akan membuat\r\nnilai IDS akan semakin besar, namun apabila nilai VGS semakin besar, maka nilai\r\nIDS akan semakin kecil. Selanjutnya pada percobaan kedu, yaitu Karakteristik DC\r\ndari MOSFET Tipe-N. Kami menggunakan VGS berturut-turut 1 V, 2 V, 3 V, 4 V, dan\r\n5 V, dan VDS berturut-turut 0.7 V, 1 V, dan 2 V. Pada saat VGS bernilai 1 V, 2\r\nV, dan 3 V, tidak ada arus yang mengalir pada tegangan 0.7 V, 1V, dan 2 V. Pada\r\nsaat VGS bernilai 4 V, nilai IDS pada 0.7 V dan 1 V masih 0 A, sedangkan pada 2\r\nV nilainya adalah </span><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">159,9</span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:Calibri;mso-ansi-language:IN;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\"> x 10<sup>-</sup></span><sup><span style=\"font-size:\r\n12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:\r\nCalibri;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">3 </span></sup><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-ansi-language:\r\nEN-US;ms');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(8, 'admin', '$2y$10$TPVQpE79zrPoV6LhbQifX.zQRs2..BQV9KF6oYCnIJry3y.Dvshhq', 2),
(9, 'aditya', '$2y$10$t0V5jwkcPuRtNPh.p7kgd.VdRQohDz6r358YTfFMG/m75OiACI6ui', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id_kuis`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tipstrick`
--
ALTER TABLE `tipstrick`
  ADD PRIMARY KEY (`id_tipstrick`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id_biodata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id_kuis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `tipstrick`
--
ALTER TABLE `tipstrick`
  MODIFY `id_tipstrick` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
