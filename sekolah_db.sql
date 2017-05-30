-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2017 at 02:38 AM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sekolah_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendarevent`
--

CREATE TABLE IF NOT EXISTS `calendarevent` (
  `id` int(11) NOT NULL DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `eventTitle` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `EventDetail` text COLLATE latin1_general_ci,
  `color` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `calendarevent`
--

INSERT INTO `calendarevent` (`id`, `date_start`, `date_end`, `eventTitle`, `EventDetail`, `color`, `status`, `picture_id`, `file_id`) VALUES
(1, '2012-12-03 00:00:00', '2012-12-12 00:00:00', 'UTS', 'UTS KELAS X, XI dan XII ', '#FFFF33', 1, 1, 1),
(2, '2014-04-14 00:00:00', '2014-04-16 00:00:00', 'UN', 'Unian Nasional', '#FF0000', 1, 1, 1),
(3, '2014-04-23 00:00:00', '2014-04-25 00:00:00', 'UAS', 'UAS', '#009900', 1, 1, 1),
(4, '2014-04-29 00:00:00', '2014-04-29 00:00:00', 'IHT', 'IHT', '#CC33CC', 1, 1, 1),
(5, '2012-12-22 00:00:00', '2012-12-22 00:00:00', 'Pembagian Raport', 'Pembagian raport oleh wali kelas kepada masing-masing siswa', '#FFCCFF', 1, 1, 1),
(6, '2012-12-23 00:00:00', '2013-01-01 00:00:00', 'Liburan Semester 1', 'Liburan Semester 1 Tahun 2012/2013', '#FF0000', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `calendarevent_picture`
--

CREATE TABLE IF NOT EXISTS `calendarevent_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendarevent_id` int(11) NOT NULL DEFAULT '0',
  `picture_sm_name` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `picture_bg_name` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `picture_detail` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `calendarevent_picture`
--

INSERT INTO `calendarevent_picture` (`id`, `calendarevent_id`, `picture_sm_name`, `picture_bg_name`, `picture_detail`) VALUES
(7, 7, 'alan.gif', 'alanaa', 'saasa');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `ip` text COLLATE latin1_general_ci NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `ip`, `counter`, `hits`) VALUES
(1, '127.0.0.1-', 336, 9643);

-- --------------------------------------------------------

--
-- Table structure for table `soal_hasil`
--

CREATE TABLE IF NOT EXISTS `soal_hasil` (
  `idhasil` int(10) NOT NULL AUTO_INCREMENT,
  `idsoalutama` int(10) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `benar` int(3) NOT NULL,
  `salah` int(3) NOT NULL,
  `nilai` int(3) NOT NULL,
  `kesempatanjawab` int(2) NOT NULL,
  `lama` int(3) NOT NULL,
  `tglpengerjaan` datetime NOT NULL,
  PRIMARY KEY (`idhasil`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `soal_hasil`
--

INSERT INTO `soal_hasil` (`idhasil`, `idsoalutama`, `nis`, `benar`, `salah`, `nilai`, `kesempatanjawab`, `lama`, `tglpengerjaan`) VALUES
(1, 2, '070810119', 0, 0, 0, 1, 0, '2012-11-26 19:25:27'),
(2, 4, '070810119', 0, 2, 0, 1, 3, '2012-11-26 19:32:35'),
(3, 6, '070810119', 0, 5, 0, 1, 0, '2012-11-26 19:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `soal_jawab`
--

CREATE TABLE IF NOT EXISTS `soal_jawab` (
  `idjawab` int(10) NOT NULL AUTO_INCREMENT,
  `idhasil` int(10) NOT NULL,
  `idsoal` int(10) NOT NULL,
  `ket` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idjawab`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `soal_jawab`
--

INSERT INTO `soal_jawab` (`idjawab`, `idhasil`, `idsoal`, `ket`) VALUES
(1, 2, 1, 'Salah'),
(2, 2, 2, 'Salah'),
(3, 3, 1, 'Salah'),
(4, 3, 2, 'Salah'),
(5, 3, 3, 'Salah'),
(6, 3, 4, 'Salah'),
(7, 3, 5, 'Salah');

-- --------------------------------------------------------

--
-- Table structure for table `soal_kelas`
--

CREATE TABLE IF NOT EXISTS `soal_kelas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(10) DEFAULT NULL,
  `idsoalutama` int(10) DEFAULT NULL,
  `proses` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `soal_kelas`
--

INSERT INTO `soal_kelas` (`id`, `kelas`, `idsoalutama`, `proses`) VALUES
(1, 'X - 4', 1, '0'),
(2, 'X - 4', 2, '0'),
(4, 'X - 4', 3, '0'),
(5, 'X - 4', 4, '0'),
(6, 'X - 4', 5, '0'),
(7, 'X - 4', 6, '0');

-- --------------------------------------------------------

--
-- Table structure for table `soal_opsi`
--

CREATE TABLE IF NOT EXISTS `soal_opsi` (
  `idsoal` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(25) NOT NULL,
  `pertanyaan` text NOT NULL,
  `opsia` text NOT NULL,
  `opsib` text NOT NULL,
  `opsic` text NOT NULL,
  `opsid` text NOT NULL,
  `jawaban` text NOT NULL,
  `pembahasan` text NOT NULL,
  `status` int(1) NOT NULL COMMENT '1. Terbuka\r\n2. Tertutup',
  `pelajaran` varchar(30) DEFAULT NULL,
  `tingkat` int(1) DEFAULT NULL COMMENT '1. Mudah, 2.Sedang 3.Sulit',
  PRIMARY KEY (`idsoal`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `soal_opsi`
--

INSERT INTO `soal_opsi` (`idsoal`, `nip`, `pertanyaan`, `opsia`, `opsib`, `opsic`, `opsid`, `jawaban`, `pembahasan`, `status`, `pelajaran`, `tingkat`) VALUES
(1, '400001001', '<p>ibukota ntt adalah....</p>', '<p>bandung</p>', '<p>jakarta</p>', '<p>denpasar</p>', '<p>mataram</p>', '<p>kupang</p>', '<p>ibukota ntt adalah kupang&nbsp;</p>', 1, 'Matematika', 1),
(2, '400001001', '<p>siapa saya?</p>', '<p>guru</p>', '<p>polisi</p>', '<p>wirausaha</p>', '<p>direktur</p>', '<p>siswa</p>', '<p>anda adalah seorang pelajar anda disebut siswa</p>', 1, 'Matematika', 1),
(3, '400001001', '<p>siapa ketua panitia balitbang?</p>', '<p>Ms. Erwin</p>', '<p>Mr. Agung</p>', '<p>Mr. Dodi</p>', '<p>Mr. Candra</p>', '<p>Mr. Erwin</p>', '<p>Siapa ya,.....</p>', 1, 'Matematika', 1),
(4, '400001001', '<p>Dimana kegiatan Cms balitbang berlangsung?</p>', '<p>tmorrrrr</p>', '<p>tumor</p>', '<p>kangker</p>', '<p>ter</p>', '<p>t-more</p>', '<p>t-more dong</p>', 1, 'Matematika', 1),
(5, '400001001', '<p>siapakah instruktur yg baru dateng?</p>', '<p>bank erwin</p>', '<p>kang dodi</p>', '<p>kang agung</p>', '<p>mas okky</p>', '<p>mr candra</p>', '<p>mr candra lah</p>', 1, 'Matematika', 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal_test`
--

CREATE TABLE IF NOT EXISTS `soal_test` (
  `idsoaltest` int(10) NOT NULL AUTO_INCREMENT,
  `idsoalutama` int(10) NOT NULL,
  `idsoal` int(10) NOT NULL,
  PRIMARY KEY (`idsoaltest`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `soal_test`
--

INSERT INTO `soal_test` (`idsoaltest`, `idsoalutama`, `idsoal`) VALUES
(1, 3, 2),
(2, 3, 1),
(3, 2, 2),
(4, 2, 1),
(5, 4, 2),
(6, 4, 1),
(7, 5, 5),
(8, 5, 4),
(9, 5, 3),
(10, 5, 2),
(11, 5, 1),
(12, 6, 5),
(13, 6, 4),
(14, 6, 3),
(15, 6, 2),
(16, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal_utama`
--

CREATE TABLE IF NOT EXISTS `soal_utama` (
  `idsoalutama` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(25) NOT NULL,
  `thajar` varchar(10) NOT NULL,
  `sem` int(1) NOT NULL,
  `pel` varchar(30) NOT NULL,
  `jenis` int(2) NOT NULL COMMENT '1. Ulangan Harian\r\n2. Ulangan Blok\r\n3. Ulangan MID Semester\r\n4. Ulangan Akhir Semester\r\n5. Latihan Soal\r\n6. Remedial',
  `materi` varchar(50) NOT NULL,
  `jml_tampil` int(3) NOT NULL,
  `metode` int(1) NOT NULL COMMENT '1. Berurutan\r\n2. Acak',
  `psswd_soal` varchar(30) NOT NULL,
  `kesempatan` int(2) NOT NULL,
  `waktu` int(3) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  PRIMARY KEY (`idsoalutama`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `soal_utama`
--

INSERT INTO `soal_utama` (`idsoalutama`, `nip`, `thajar`, `sem`, `pel`, `jenis`, `materi`, `jml_tampil`, `metode`, `psswd_soal`, `kesempatan`, `waktu`, `tgl_mulai`, `tgl_akhir`) VALUES
(1, '400001001', '2010/2011', 1, 'Matematika', 1, 'logika', 20, 2, '12345', 1, 90, '2012-11-26', '2012-11-30'),
(2, '400001001', '2012/2013', 1, 'Matematika', 1, 'dd', 10, 2, '12345', 1, 90, '2012-11-24', '2012-11-30'),
(3, '400001001', '2010/2011', 1, 'Matematika', 1, 'ww', 5, 2, '12345', 1, 90, '2012-11-24', '2012-11-30'),
(4, '400001001', '2010/2011', 1, 'Matematika', 1, 'sssssssssssssss', 2, 1, '123', 2, 3, '2012-11-17', '2012-11-30'),
(5, '400001001', '2012/2013', 1, 'Matematika', 1, 'aljabar', 5, 2, '123', 0, 1, '2012-11-25', '2012-11-28'),
(6, '400001001', '2010/2011', 1, 'Matematika', 1, 'aljabar1', 5, 2, '123', 2, 0, '2012-11-24', '2012-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `t_absensi`
--

CREATE TABLE IF NOT EXISTS `t_absensi` (
  `idabsen` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `stabsen` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `tglabsen` date NOT NULL DEFAULT '0000-00-00',
  `terlambat` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idabsen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_artikel`
--

CREATE TABLE IF NOT EXISTS `t_artikel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `isi` longtext COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(80) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visits` int(10) NOT NULL DEFAULT '0',
  `admin` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `t_artikel`
--

INSERT INTO `t_artikel` (`id`, `tanggal`, `judul`, `isi`, `pengirim`, `visits`, `admin`) VALUES
(12, '16/08/2009', 'Cara Belajar Efektif', '<div>Belajar emang nggak seterusnya menyenangkan. kalu enak, ya beljar. tetapi sebaiknya setiap hari biasakanlah berdisiplin waktu untuk belajar. Berikut ini tips dari Mr. Tips gimana cara belajar efektif.</div>\r\n<p>&nbsp;</p>\r\n<div>&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div>Suasana Hati,Cipakanlah suasana yang positif untuk belajar. Bisa dilakukan dengan menentukan&nbsp;waktu, lingkungan dan sikap belajar yang sesuai dengan pribadimu. Buat ruang belajar kamu senyaman mungkin sehingga kmu bisa belajar dengan tenang dan konsentrasi penuh.</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Pemahaman</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />\r\nTandai informasi bahan pelajaran yang tidak kamu mengerti. Fokuskan perhatianmu pada bahan tersebut.&nbsp;<br />\r\nBentuk kelompok belajar yang anggotanya teman-teman yang kamu kenal, dalam artian jangan salah memilih&nbsp;<br />\r\nteman.<br />\r\n<br />\r\n<strong>Kilas Ulang</strong><br />\r\nSetelah belajar satu bagian, berhentilah dan ulangi bahan dari bagian tersebut dengan kata-kata yang kamu buat sendri. Cobalah buat tulisan-ulisan singkat mengenai bagian itu dalam sebuah catatanmu.<br />\r\n<br />\r\n<strong>Telaah dan Pelajari Kembali</strong><br />\r\nKalau ada beberapa bagian yang belum kamu mengerti juga, carilah bahan lain yang terkait dengan bagian itu. Bisa dari buku teks, artikel, internet, selebaran dan sumber-sumber lain yang bisa kamu percaya.&nbsp;&nbsp;</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Mengingat&nbsp;&nbsp;</strong> <br />\r\nSetelah belajar beberapa waktu. Tutuplah buku pelajaran tersebut dan kamu memejamkan mta untuk&nbsp;&nbsp;&nbsp;<br />\r\nmenggambarkan yang kamu baca tadi.</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Metode Menulis</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />\r\nKamu juga bisa belajar dengan cara menulis. Karena dengan menulis maka otak akan bisa lebih mengingat&nbsp;<br />\r\ndaripada sekedar dibaca apalagi dihapal, yang akan membuat kamu tambah pusing.</div>\r\n<p>&nbsp;</p>\r\n<div><strong>Membuat Ringkasan</strong></div>\r\n<p>&nbsp;</p>\r\n<div>Ini termasuk metode yang sangat lazim. namun kamu seharsnya membuat ringkasan yang lain dari&nbsp;<br />\r\nbiasanya. Ringkasan itu bisa saja hanya berupa bagan atau skema.&nbsp;<br />\r\n<br />\r\nSekian yang bisa disampaikan oleh Mr. Tips. Lain kali kita pasti bisa berjumpa lagi. Sayonara.</div>', '', 14, 3),
(13, '16/08/2009', 'Tiba Saatnya Mengakhiri Pendidikan?', '<p>MANA yang harus didahulukan antara anak dan pendidikan? Kedua isu tersebut tidak bisa didikotomikan karena setali tiga uang, terlebih jika kita memperbincangkan masa depan kita. Pendidikan merupakan bekal untuk menapaki masa depan anak cucu kita. <br />\r\n<br />\r\nNamun, bahwa dunia pendidikan kita belum menunjukkan gambaran yang menjanjikan. Menurut data dari Balitbang Departemen Pendidikan Nasional (2001) bahwa sekitar tujuh juta anak terancam berhenti sekolah. Mereka terpaksa menjadi pekerja anak sebagai akibat dari kemiskinan dan tekanan hidup. <br />\r\n<br />\r\nSementara itu, 15 juta anak- anak yang sekarang masuk kelas satu sekolah dasar (SD), diperkirakan hanya 70 persen yang dapat mencapai kelas enam. Dari yang lulus tersebut, hanya kurang dari separuhnya yang kemungkinan dapat meneruskan pendidikannya ke sekolah lanjutan. <br />\r\n<br />\r\nTak perlu heran bila saat ini terdapat sekitar 12 juta anak usia 7 hingga 15 tahun tidak bersekolah dan terancam putus sekolah. Lebih 3,5 juta anak di antaranya menjadi pekerja anak. Maka, realitas di atas telah memberi sedikit diskripsi apa yang terjadi sekarang. <br />\r\n<br />\r\nPENDIDIKAN merupakan tabungan masa depan bagi peradaban kita. Artinya baik-buruknya, makmur-sengsaranya, berkualitas-jeleknya wajah peradaban kita, tergantung proses pendidikan tersebut. Maka, wajah kita yang saat ini dipolesi oleh kemiskinan dan kebodohan menunjukkan kegagalan dari pendidikan kita. <br />\r\n<br />\r\nTingkat pengangguran yang tinggi, frekuensi kriminalitas yang menaik, dan keresahan sosial yang muncul dalam berbagai bentuk merupakan efek ganda (multifler effect) dari kemiskinan yang kita alami saat ini. Sedangkan kemiskinan dan kebodohan yang merupakan momok bagi negara berkembang seperti Indonesia, adalah rantai sosial pertama dalam kegagalan pendidikan kita. <br />\r\n<br />\r\nTahun 2000 lalu kualitas sumber daya manusia (human development index, HDI) kita menduduki peringkat rendah, yaitu 109 dari 174 negara. Dua tahun kemudian, Indonesia tidak jauh beda yakni peringkat 106 dari 170 negara. Angka ini jauh di bawah negara-negara ASEAN lainnya seperti Malaysia (peringkat 56), Filipina (77), Thailand (67), Singapura (22) dan Brunei Darussalam (25). Sehingga, dapat dipastikan tahun ini kita belum bisa keluar dari kualitas hidup yang rendah akibat beberapa stimulus-bom Bali; kenaikan harga BBM, TDL, dan telepon-yang justru kontraproduktif terhadap pertumbuhan ekonomi. <br />\r\n<br />\r\nMaka, upaya memberantas kebodohan dan kemiskinan tidak bisa tidak harus melewati jembatan emas yakni pendidikan. Dalam hal ini pendidikan harus melakukan reposisi dan refungsi kalau ingin menjadi perubah wajah peradaban kita yang tidak sehat ini. <br />\r\n<br />\r\nDalam UUD 1945 dijelaskan, pendidikan adalah hak warga negara, sehingga monopoli negara dalam dunia pendidikan menjadi pilihan yang pahit. Negara sebagai lembaga yang bertanggung jawab dalam proses pendidikan harus menempatkan pendidikan sebagai proses pencarian makna hidup yang lebih baik menuju keadilan dan kesejahteraan. <br />\r\n<br />\r\nSayangnya, pendidikan justru menjadi metode negara dalam mengontrol rakyat. Sehingga, pendidikan sering kali tidak lebih dari upaya setengah-setengah dari negara untuk mengubah peradaban miskin ini. <br />\r\n<br />\r\nDarodjah, Kepala TK Tarbiyatul Banin VIII Desa Pucung, Kecamatan Bancak, Kabupaten Semarang</p>', 'Darodjah', 37, 3),
(15, '16/08/2009', 'Pendidikan dan Proses Humanisasi', '<p>Manusia adalah sebagai makhluk sosial ( <em>Homo Sosius</em> ), yang dibekali Tuhan dengan akal, di mana akal akan menjadikan manusia mengetahui segala sesuatu. Sesuatu yang sepele terkadang terlupakan begitu saja dalam kehidupan. Manusia sering terfokus kepada persoalan besar, namun sering kali terlena pada permasalahan yang sepele.</p>\r\n<p>Padahal bila ditinjau secara filosofis, akan menjadi fondasi untuk membangun kesadaran intelektual. Maka dari itu manusia seharusnya memahami hakekat diri dan lingkungan dalam proses perubahan. Proses penyadaran di sini menjadi amat penting di dalam kehidupan manusia.</p>\r\n<p>Pendidikan merupakan proses yang dilakukan oleh sebagian masyarakat di belahan dunia manapun. Namun pendidikan yang diharapkan sebagai bagian dari proses kehidupan yang dapat mengentaskan manusia dari penindasan dan kesengsaraan ternyata menjadi bagian yang menindas manusia itu sendiri.</p>\r\n<p>Oleh karena itu bagaimana sekarang memposisikan proses pembelajaran sebagai hal yang suci dan sesuai dengan harapan masyarakat, yaitu sebuah proses pembelajaran yang tidak menindas dan tidak ada yang tertindas. Ketika seseorang merasakan hak-haknya dirampas, maka seharusnya ia menuntut.</p>\r\n<p>Pada dasarnya tidak ada yang dapat mengubah nasib kita kecuali diri kita sendiri. Oleh karena itu, setiap manusia harus berusaha keluar dari segala bentuk penindasan dan berusaha memerangi setiap bentuk penindasan. Selama ini kita melihat penindasan justru lahir dari dunia pendidikan yang selama ini kita banggakan.</p>\r\n<p>Sekolah selama ini dijadikan sebuah pabrik, di mana lulusan-lulusannya siap menjadi tenaga kerja siap pakai. Maka sebagian fungsi sekolah yang ada di Indonesia tidak lebih hanya sebagai cara untuk mencari bekal untuk kerja. Tidak mengherankan ketika siswa tidak menjadi semakin cerdas, tapi menjadi semakin beringas dan brutal.</p>\r\n<p>Tawuran pelajar terjadi dimana-mana dan banyak sekali penyalahgunaan NARKOBA yang dilakukan oleh pelajar. Hal itu merupakan bukti ketidakberhasilan sekolah untuk membentuk siswa menjadi manusia pembelajar. Pembelajar adalah individu-individu yang dapat memilah dan memilih mana yang baik dan yang buruk.</p>\r\n<p>Beberapa contoh di atas merupakan pertanda bahwa pendidikan hanya dijadikan ajang penindasan bagi siswa. Erat kaitannya dengan hal tersebut, Freire yang adalah seorang tokoh pendidikan menggagas adanya <em>concientizacao</em> ( kesadaran untuk melakukan ). <em>Concientizacao</em> adalah kesadaran untuk melakukan pembelaan kemanusiaan. Dapat memberantas buta huruf di kalangan orang dewasa misalnya, dimaknai sebagai usaha membebaskan manusia dari belenggu kebodohan.</p>\r\n<p>Freire mengklarifikasikan kesadaran dalam tiga hal. Pertama, kesadaran magis ( <em>magical conciousness</em> ) yaitu kesadaran yang tidak mampu melihat kaitan antara satu faktor dengan yang lainnya, dalam hal ini melihat faktor di luar manusia. Kedua, kesadaran naf (<em> Naival consciousness</em> ) yaitu manusia menjadi akar penyebab masalah masyarakat. Ketiga, kesadaran kritis (<em> critical conciousness</em> ) yaitu sistem dan struktur sebagai sumber masalah. Kritis penyadaran struktur dan sistem politik, sosial, ekonomi, budaya pada masyarakat. Hal ini menunjukan bahwa kritisme sangatlah penting di dalam pelembagaan penyadaran masyarakat.</p>\r\n<p>Sebuah kenyataan tidak harus menjadi suatu keharusan. Jika kenyataan menyimpang dari keharusan, maka tugas manusia untuk merubahnya, agar sesuai dengan apa yang seharusnya. Kenyataan tersebut sering disebut dengan fitrah. Fitrah manusia sejati adalah pelaku ( subyek ), bukan obyek atau penderita. Fitrah manusia adalah menjadi merdeka dan menjadi bebas. Kesemuanya itu sering disebut dengan tujuan humanisasi Freire.</p>\r\n<p>Freire juga menyebutkan pendidikan seharusnya berorientasi kepada pengenalan realitas dari manusia dan dirinya. Hal itu berarti bahwa pendidikan bukan hanya sebagai ajang<em> transfer of knowledge</em> akan tetapi bagaimana ilmu pengetahuan dijadikan sarana untuk mendidik manusia agar mampu membaca realitas sosial. Hal ini juga didukung oleh Lodge yang menyatakan<em> life is education, education is life</em>.</p>\r\n<p>*) Penulis adalah Benny Setiawan, mahasiswa fakultas Syari''ah Universitas Islam Negeri (UIN) Sunan Kalijaga, Yogyakarta.</p>', 'www.sekolahindonesia.com', 56, 3),
(23, '16/08/2009', 'Apa Itu Pemanasan Global', '<div>&quot;Panas banget ya hari ini!&rdquo; Seringkah Anda mendengar pernyataan tersebut terlontar dari orang-orang di sekitar Anda ataupun dari diri Anda sendiri? Anda tidak salah, data-data yang ada memang menunjukkan planet bumi terus mengalami peningkatan suhu yang mengkhawatirkan dari tahun ke tahun. Selain makin panasnya cuaca di sekitar kita, Anda tentu juga menyadari makin banyaknya bencana alam dan fenomena-fenomena alam yang cenderung semakin tidak terkendali belakangan ini. Mulai dari banjir, puting beliung, semburan gas, hingga curah hujan yang tidak menentu dari tahun ke tahun. Sadarilah bahwa semua ini adalah tanda-tanda alam yang menunjukkan bahwa planet kita tercinta ini sedang mengalami proses kerusakan yang menuju pada kehancuran! Hal ini terkait langsung dengan isu global yang belakangan ini makin marak dibicarakan oleh masyarakat dunia yaitu Global Warming (Pemanasan Global). Apakah pemanasan global itu? Secara singkat pemanasan global adalah peningkatan suhu rata-rata permukaan bumi. Pertanyaannya adalah: mengapa suhu permukaan bumi bisa meningkat?</div>\r\n<div>&nbsp;</div>\r\n<div><span style="font-size: small;"><b><span style="color: green;">Penyebab Pemanasan Global</span></b></span></div>\r\n<div>Penelitian yang telah dilakukan para ahli selama beberapa dekade terakhir ini menunjukkan bahwa ternyata makin panasnya planet bumi terkait langsung dengan gas-gas rumah kaca yang dihasilkan oleh aktifitas manusia. Khusus untuk mengawasi sebab dan dampak yang dihasilkan oleh pemanasan global, Perserikatan Bangsa Bangsa (PBB) membentuk sebuah kelompok peneliti yang disebut dengan International Panel on Climate Change (IPCC). Setiap beberapa tahun sekali, ribuan ahli dan peneliti-peneliti terbaik dunia yang tergabung dalam IPCC mengadakan pertemuan untuk mendiskusikan penemuan-penemuan terbaru yang berhubungan dengan pemanasan global, dan membuat kesimpulan dari laporan dan penemuan- penemuan baru yang berhasil dikumpulkan, kemudian membuat persetujuan untuk solusi dari masalah tersebut . Salah satu hal pertama yang mereka temukan adalah bahwa beberapa jenis gas rumah kaca bertanggung jawab langsung terhadap pemanasan yang kita alami, dan manusialah kontributor terbesar dari terciptanya gas-gas rumah kaca tersebut. Kebanyakan dari gas rumah kaca ini dihasilkan oleh peternakan, pembakaran bahan bakar fosil pada kendaraan bermotor, pabrik-pabrik modern, peternakan, serta pembangkit tenaga listrik.</div>\r\n<div>&nbsp;</div>\r\n<div><span style="font-size: small;"><b><span style="color: green;">Apa itu Gas Rumah Kaca?</span></b></span></div>\r\n<div>Atmosfer bumi terdiri dari bermacam-macam gas dengan fungsi yang berbeda-beda. Kelompok gas yang menjaga suhu permukaan bumi agar tetap hangat dikenal dengan istilah &ldquo;gas rumah kaca&rdquo;. Disebut gas rumah kaca karena sistem kerja gas-gas tersebut di atmosfer bumi mirip dengan cara kerja rumah kaca yang berfungsi menahan panas matahari di dalamnya agar suhu di dalam rumah kaca tetap hangat, dengan begitu tanaman di dalamnya pun akan dapat tumbuh dengan baik karena memiliki panas matahari yang cukup. Planet kita pada dasarnya membutuhkan gas-gas tesebut untuk menjaga kehidupan di dalamnya. Tanpa keberadaan gas rumah kaca, bumi akan menjadi terlalu dingin untuk ditinggali karena tidak adanya lapisan yang mengisolasi panas matahari. Sebagai perbandingan, planet mars yang memiliki lapisan atmosfer tipis dan tidak memiliki efek rumah kaca memiliki temperatur rata-rata -32o Celcius.</div>\r\n<div>Kontributor terbesar pemanasan global saat ini adalah Karbon Dioksida (CO2), metana (CH4) yang dihasilkan agrikultur dan peternakan (terutama dari sistem pencernaan hewan-hewan ternak), Nitrogen Oksida (NO) dari pupuk, dan gas-gas yang digunakan untuk kulkas dan pendingin ruangan (CFC). Rusaknya hutan-hutan yang seharusnya berfungsi sebagai penyimpan CO2 juga makin memperparah keadaan ini karena pohon-pohon yang mati akan melepaskan CO2 yang tersimpan di dalam jaringannya ke atmosfer. Setiap gas rumah kaca memiliki efek pemanasan global yang berbedabeda. Beberapa gas menghasilkan efek pemanasan lebih parah dari CO2. Sebagai contoh sebuah molekul metana menghasilkan efek pemanasan 23 kali dari molekul CO2. Molekul NO bahkan menghasilkan efek pemanasan sampai 300 kali dari molekul CO2. Gas-gas lain seperti chlorofluorocarbons (CFC) ada yang menghasilkan efek pemanasan hingga ribuan kali dari CO2. Tetapi untungnya pemakaian CFC telah dilarang di banyak negara karena CFC telah lama dituding sebagai penyebab rusaknya lapisan ozon.</div>\r\n<p>&nbsp;</p>\r\n<p>Sumber : http://pemanasanglobal.net</p>\r\n<p>&nbsp;</p>', 'Uswatun Hasanah', 56, 3),
(24, '16-12-2012 14:46', 'Pendidikan Sebagai Investasi Jangka Panjang', '<p align="justify"><span style="font-family: arial; font-size: x-small;">Profesor Toshiko Kinosita mengemukakan bahwa sumber daya manusia Indonesia masih sangat lemah untuk mendukung perkembangan industri dan ekonomi. Penyebabnya karena pemerintah selama ini tidak pernah menempatkan pendidikan sebagai prioritas terpenting. Tidak ditempatkannya pendidikan sebagai prioritas terpenting karena masyarakat Indonesia, mulai dari yang awam hingga politisi dan pejabat pemerintah, hanya berorientasi mengejar uang untuk memperkaya diri sendiri dan tidak pernah berfikir panjang (Kompas, 24 Mei 2002). </span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Pendapat Guru Besar Universitas Waseda Jepang tersebut sangat menarik untuk dikaji mengingat saat ini pemerintah Indonesia mulai melirik pendidikan sebagai investasi jangka panjang, setelah selama ini pendidikan terabaikan. Salah satu indikatornya adalah telah disetujuinya oleh MPR untuk memprioritaskan anggaran pendidikan minimal 20 % dari APBN atau APBD. Langkah ini merupakan awal kesadaran pentingnya pendidikan sebagai investasi jangka pangjang. Sedikitnya terdapat tiga alasan untuk memprioritaskan pendidikan sebagai investasi jangka panjang. </span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Pertama, pendidikan adalah alat untuk perkembangan ekonomi dan bukan sekedar pertumbuhan ekonomi. Pada praksis manajemen pendidikan modern, salah satu dari lima fungsi pendidikan adalah fungsi teknis-ekonomis baik pada tataran individual hingga tataran global. Fungsi teknis-ekonomis merujuk pada kontribusi pendidikan untuk perkembangan ekonomi. Misalnya pendidikan dapat membantu siswa untuk mendapatkan pengetahuan dan keterampilan yang diperlukan untuk hidup dan berkompetisi dalam ekonomi yang kompetitif. </span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Secara umum terbukti bahwa semakin berpendidikan seseorang maka tingkat pendapatannya semakin baik. Hal ini dimungkinkan karena orang yang berpendidikan lebih produktif bila dibandingkan dengan yang tidak berpendidikan. Produktivitas seseorang tersebut dikarenakan dimilikinya keterampilan teknis yang diperoleh dari pendidikan. Oleh karena itu salah satu tujuan yang harus dicapai oleh pendidikan adalah mengembangkan keterampilan hidup. Inilah sebenarnya arah kurikulum berbasis kompetensi, pendidikan life skill dan broad based education yang dikembangkan di Indonesia akhir-akhir ini. Di Amerika Serikat (1992) seseorang yang berpendidikan doktor penghasilan rata-rata per tahun sebesar 55 juta dollar, master 40 juta dollar, dan sarjana 33 juta dollar. Sementara itu lulusan pendidikan lanjutan hanya berpanghasilan rata-rata 19 juta dollar per tahun. Pada tahun yang sama struktur ini juga terjadi di Indonesia. Misalnya rata-rata, antara pedesaan dan perkotaan, pendapatan per tahun lulusan universitas 3,5 juta rupiah, akademi 3 juta rupiah, SLTA 1,9 juta rupiah, dan SD hanya 1,1 juta rupiah.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Para penganut teori human capital berpendapat bahwa pendidikan adalah sebagai investasi sumber daya manusia yang memberi manfaat moneter ataupun non-moneter. Manfaat non-meneter dari pendidikan adalah diperolehnya kondisi kerja yang lebih baik, kepuasan kerja, efisiensi konsumsi, kepuasan menikmati masa pensiun dan manfaat hidup yang lebih lama karena peningkatan gizi dan kesehatan. Manfaat moneter adalah manfaat ekonomis yaitu berupa tambahan pendapatan seseorang yang telah menyelesaikan tingkat pendidikan tertentu dibandingkan dengan pendapatan lulusan pendidikan dibawahnya. (Walter W. McMahon dan Terry G. Geske, Financing Education: Overcoming Inefficiency and Inequity, USA: University of Illionis, 1982, h.121).</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Sumber daya manusia yang berpendidikan akan menjadi modal utama pembangunan nasional, terutama untuk perkembangan ekonomi. Semakin banyak orang yang berpendidikan maka semakin mudah bagi suatu negara untuk membangun bangsanya. Hal ini dikarenakan telah dikuasainya keterampilan, ilmu pengetahuan dan teknologi oleh sumber daya manusianya sehingga pemerintah lebih mudah dalam menggerakkan pembangunan nasional. </span></p>\r\n<p><span style="font-family: arial; font-size: x-small;"> Nilai </span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Balik Pendidikan<br /> Kedua, investasi pendidikan memberikan nilai balik (rate of return) yang lebih tinggi dari pada investasi fisik di bidang lain. Nilai balik pendidikan adalah perbandingan antara total biaya yang dikeluarkan untuk membiayai pendidikan dengan total pendapatan yang akan diperoleh setelah seseorang lulus dan memasuki dunia kerja. Di negara-negara sedang berkembang umumnya menunjukkan nilai balik terhadap investasi pendidikan relatif lebih tinggi dari pada investasi modal fisik yaitu 20 % dibanding 15 %. Sementara itu di negara-negara maju nilai balik investasi pendidikan lebih rendah dibanding investasi modal fisik yaitu 9 % dibanding 13 %. Keadaan ini dapat dijelaskan bahwa dengan jumlah tenaga kerja terdidik yang terampil dan ahli di negara berkembang relatif lebih terbatas jumlahnya dibandingkan dengan kebutuhan sehingga tingkat upah lebih tinggi dan akan menyebabkan nilai balik terhadap pendidikan juga tinggi (Ace Suryadi, Pendidikan, Investasi SDM dan Pembangunan: Isu, Teori dan Aplikasi. Balai Pustaka: Jakarta, 1999, h.247).</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Pilihan investasi pendidikan juga harus mempertimbangkan tingkatan pendidikan. Di Asia nilai balik sosial pendidikan dasar rata-rata sebesar 27 %, pendidikan menengah 15 %, dan pendidikan tinggi 13 %. Dengan demikian dapat dikemukakan bahwa semakin tinggi tingkat pendidikan seseorang maka manfaat sosialnya semakin kecil. Jelas sekali bahwa pendidikan dasar memberikan manfaat sosial yang paling besar diantara tingkat pendidikan lainnya. Melihat kenyataan ini maka struktur alokasi pembiayaan pendidikan harus direformasi. Pada tahun 1995/1996 misalnya, alokasi biaya pendidikan dari pemerintah Indonesia untuk Sekolah Dasar Negeri per siswa paling kecil yaitu rata-rata hanya sekirat 18.000 rupiah per bulan, sementara itu biaya pendidikan per siswa di Perguruan Tinggi Negeri mendapat alokasi sebesar 66.000 rupiah per bulan. Dirjen Dikti, Satrio Sumantri Brojonegoro suatu ketika mengemukakan bahwa alokasi dana untuk pendidikan tinggi negeri 25 kali lipat dari pendidikan dasar. Hal ini menunjukkan bahwa biaya pendidikan yang lebih banyak dialokasikan pada pendidikan tinggi justru terjadi inefisiensi karena hanya menguntungkan individu dan kurang memberikan manfaat kepada masyarakat.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Reformasi alokasi biaya pendidikan ini penting dilakukan mengingat beberapa kajian yang menunjukkan bahwa mayoritas yang menikmati pendidikan di PTN adalah berasal dari masyarakat mampu. Maka model pembiayaan pendidikan selain didasarkan pada jenjang pendidikan (dasar vs tinggi) juga didasarkan pada kekuatan ekonomi siswa (miskin vs kaya). Artinya siswa di PTN yang berasal dari keluarga kaya harus dikenakan biaya pendidikan yang lebih mahal dari pada yang berasal dari keluarga miskin. Model yang ditawarkan ini sesuai dengan kritetia equity dalam pembiayaan pendidikan seperti yang digariskan Unesco.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Itulah sebabnya Profesor Kinosita menyarankan bahwa yang diperlukan di Indonesia adalah pendidikan dasar dan bukan pendidikan yang canggih. Proses pendidikan pada pendidikan dasar setidaknnya bertumpu pada empat pilar yaitu learning to know, learning to do, leraning to be dan learning live together yang dapat dicapai melalui delapan kompetensi dasar yaitu membaca, menulis, mendengar, menutur, menghitung, meneliti, menghafal dan menghayal. Anggaran pendidikan nasional seharusnya diprioritaskan untuk mengentaskan pendidikan dasar 9 tahun dan bila perlu diperluas menjadi 12 tahun. Selain itu pendidikan dasar seharusnya &ldquo;benar-benar&rdquo; dibebaskan dari segala beban biaya. Dikatakan &ldquo;benar-benar&rdquo; karena selama ini wajib belajar 9 tahun yang dicanangkan pemerintah tidaklah gratis. Apabila semua anak usia pendidikan dasar sudah terlayani mendapatkan pendidikan tanpa dipungut biaya, barulah anggaran pendidikan dialokasikan untuk pendidikan tingkat selanjutnya. </span></p>\r\n<p><span style="font-family: arial; font-size: x-small;"> Fungsi </span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Non Ekonomi<br /> Ketiga, investasi dalam bidang pendidikan memiliki banyak fungsi selain fungsi teknis-ekonomis yaitu fungsi sosial-kemanusiaan, fungsi politis, fungsi budaya, dan fungsi kependidikan. Fungsi sosial-kemanusiaan merujuk pada kontribusi pendidikan terhadap perkembangan manusia dan hubungan sosial pada berbagai tingkat sosial yang berbeda. Misalnya pada tingkat individual pendidikan membantu siswa untuk mengembangkan dirinya secara psikologis, sosial, fisik dan membantu siswa mengembangkan potensinya semaksimal mungkin (Yin Cheong Cheng, School Effectiveness and School-Based Management: A Mechanism for Development, Washington D.C: The Palmer Press, 1996, h.7).</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Fungsi politis merujuk pada sumbangan pendidikan terhadap perkembangan politik pada tingkatan sosial yang berbeda. Misalnya pada tingkat individual, pendidikan membantu siswa untuk mengembangkan sikap dan keterampilan kewarganegaraan yang positif untuk melatih warganegara yang benar dan bertanggung jawab. Orang yang berpendidikan diharapkan lebih mengerti hak dan kewajibannya sehingga wawasan dan perilakunya semakin demoktratis. Selain itu orang yang berpendidikan diharapkan memiliki kesadaran dan tanggung jawab terhadap bangsa dan negara lebih baik dibandingkan dengan yang kurang berpendidikan.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Fungsi budaya merujuk pada sumbangan pendidikan pada peralihan dan perkembangan budaya pada tingkatan sosial yang berbeda. Pada tingkat individual, pendidikan membantu siswa untuk mengembangkan kreativitasnya, kesadaran estetis serta untuk bersosialisasi dengan norma-norma, nilai-nilai dan keyakinan sosial yang baik. Orang yang berpendidikan diharapkan lebih mampu menghargai atau menghormati perbedaan dan pluralitas budaya sehingga memiliki sikap yang lebih terbuka terhadap keanekaragaman budaya. Dengan demikian semakin banyak orang yang berpendidikan diharapkan akan lebih mudah terjadinya akulturasi budaya yang selanjutnya akan terjadi integrasi budaya nasional atau regional.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Fungsi kependidikan merujuk pada sumbangan pendidikan terhadap perkembangan dan pemeliharaan pendidikan pada tingkat sosial yang berbeda. Pada tingkat individual pendidikan membantu siswa belajar cara belajar dan membantu guru cara mengajar. Orang yang berpendidikan diharapkan memiliki kesadaran untuk belajar sepanjang hayat (life long learning), selalu merasa ketinggalan informasi, ilmu pengetahuan serta teknologi sehingga terus terdorong untuk maju dan terus belajar.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Di kalangan masyarakat luas juga berlaku pendapat umum bahwa semakin berpendidikan maka makin baik status sosial seseorang dan penghormatan masyarakat terhadap orang yang berpendidikan lebih baik dari pada yang kurang berpendidikan. Orang yang berpendidikan diharapkan bisa menggunakan pemikiran-pemikirannya yang berorientasi pada kepentingan jangka panjang. Orang yang berpendidikan diharapkan tidak memiliki kecenderungan orientasi materi/uang apalagi untuk memperkaya diri sendiri.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Kesimpulan<br /> Jelaslah bahwa investasi dalam bidang pendidikan tidak semata-mata untuk mendongkrak pertumbuhan ekonomi tetapi lebih luas lagi yaitu perkembangan ekonomi. Selama orde baru kita selalu bangga dengan pertumbuhan ekonomi yang tinggi, namun pertumbuhan ekonomi yang tinggi itu hancur lebur karena tidak didukung oleh adanya sumber daya manusia yang berpendidikan. Orde baru banyak melahirkan orang kaya yang tidak memiliki kejujuran dan keadilan, tetapi lebih banyak lagi melahirkan orang miskin. Akhirnya pertumbuhan ekonomi hanya dinikmati sebagian orang dan dengan tingkat ketergantungan yang amat besar.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Perkembangan ekonomi akan tercapai apabila sumber daya manusianya memiliki etika, moral, rasa tanggung jawab, rasa keadilan, jujur, serta menyadari hak dan kewajiban yang kesemuanya itu merupakan indikator hasil pendidikan yang baik. Inilah saatnya bagi negeri ini untuk merenungkan bagaimana merencanakan sebuah sistem pendidikan yang baik untuk mendukung perkembangan ekonomi. Selain itu pendidikan juga sebagai alat pemersatu bangsa yang saat ini sedang diancam perpecahan. Melalui fungsi-fungsi pendidikan di atas yaitu fungsi sosial-kemanusiaan, fungsi politis, fungsi budaya, dan fungsi kependidikan maka negeri ini dapat disatukan kembali. Dari paparan di atas tampak bahwa pendidikan adalah wahana yang amat penting dan strategis untuk perkembangan ekonomi dan integrasi bangsa. Singkatnya pendidikan adalah sebagai investasi jangka panjang yang harus menjadi pilihan utama.</span></p>\r\n<p align="justify"><span style="font-family: arial; font-size: x-small;">Bila demikian, ke arah mana pendidikan negeri ini harus dibawa? Bagaimana merencanakan sebuah sistem pendidikan yang baik? Marilah kita renungkan bersama.</span></p>\r\n<p><span style="font-family: arial; font-size: x-small;">Nurkolis, Dosen Akademi Pariwisata Nusantara Jaya di Jakarta. </span></p>\r\n<p><span style="font-size: small;"><strong>Saya Drs. Nurkolis, MM setuju jika bahan yang dikirim dapat dipasang dan digunakan di Homepage Pendidikan Network dan saya menjamin bahwa bahan ini hasil karya saya sendiri dan sah (tidak ada copyright). . </strong></span></p>', 'Drs. Nurkolis, MM', 12, 3),
(25, '16-12-2012 06:08', '5 Gedung Tertinggi di Dunia ', '<p><img style="display: block; margin-left: auto; margin-right: auto;" title="Th-Makkah-Clock-Royal-Tower-2" src="../userfiles/image/1_gedung.jpg" alt="Th-Makkah-Clock-Royal-Tower-2" width="200" height="136" /></p>\r\n<p>Jika berbicara ketinggian gedung. banyak sekali perdebatan dan kebingungan dari berbagai kalangan dalam menentukan kriteria dan definisinya.<br />Karena bangunan-bangunan tinggi yang di bangun oleh manusia kebanyakan dari struktur menara broadcast radio atau televisi,yang raata-rata memiliki ketinggian sekitar 600 meter.<br />Adapun Hal-hal yang diperdebatkan adalah:<br />- Apakah struktur yang disanggah guy-wire dapat di hitung ketinggiannya?<br />- Apakah menghitung ketinggian hanya tempat yang dapat ditinggali?<br />- Apakah antena di atas-atap dapat dihitung?<br />- Apakah struktur yang berada di bawah air juga dihitung ketinggiannya?<br />Tetapi di balik perdebatan itu,di sini Khabuka hanya akan menulis daftar tertinggi dari bangunan yang berupa Gedung sesuai dengan judul di atas,dan mungkin itu termasuk dengan segala apa yang ada di atapnya.<br />Dan berikut Daftar 10 gedung tertinggi di dunia :<br /><br /><strong><span style="font-size: medium;">1. Burj Khalifa</span></strong><br />&nbsp;&nbsp;&nbsp; Lokasi : Dubai, Uni Emirat Arab<br />&nbsp;&nbsp;&nbsp; Di bangun tahun : 2004<br />&nbsp;&nbsp;&nbsp; Dibuka tahun : 4 -1-2010<br />&nbsp;&nbsp;&nbsp; Ketinggian : 828 m<br />&nbsp;&nbsp;&nbsp; Lantai teratas 6.213 m<br />&nbsp;&nbsp;&nbsp; Jumlah lantai : 160 lantai</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="Burj_Khalifa_building" src="../userfiles/image/2_gedung.jpg" alt="Burj_Khalifa_building" width="250" height="375" /></p>\r\n<p>&nbsp;</p>\r\n<p>Pada saat pembukaannya Burj Khalifa menjadi Gedung tertinggi dari bangunan apapun yang ada di dunia. Dan juga pada saat pembangunannya Burj Khalifa&nbsp; terus melewati bangunan-bangunan tertinggi lainnya, di antaranya :<br />Menggeser atau melewati posisi Taipei 101 sebagai Gedung tertinggi di dunia pada 21 Juli 2007. Pada waktu yang sama juga melewati ketinggian CN Tower sebagai struktur bebas (tanpa penyangga)tertinggi di dunia dan pada tanggal 7 April 2008 struktur tertinggi di dunia dari Menara KVLY-TV yang berada di Blanchard, North Dakota, Amerika Serikat berhasil dilewati. Menara Radio Warsawa 645,4 m (2.120 kaki) dibuat pada 1974 (namun runtuh pada saat renovasi pada 1991) berhasil dilewati pada 1 September 2008. Rekor lain dari Menara ini adalah mempunyai lift tercepat dengan kecepatan 60 km/jam atau 16.7 m/s. Dan bangunan dengan paling banyak lantai yaitu160 lantai.<br /><br /><strong><span style="font-size: medium;">&nbsp;2. Abraj Al-Bait</span></strong><br />&nbsp;&nbsp;&nbsp;&nbsp; Tinggi : 601 m<br />&nbsp;&nbsp;&nbsp;&nbsp; Lokasi : Mekah,Saudi Arabia<br />&nbsp;&nbsp;&nbsp;&nbsp; Jumlah lantai : 120 lantai<br />&nbsp;&nbsp;&nbsp; Tahun pembuatan : 2004-2012<br />&nbsp;&nbsp;&nbsp; Dibuka tahun : 2012</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="Th-Makkah-Clock-Royal-Tower-2" src="../userfiles/image/3_gedung.jpg" alt="Th-Makkah-Clock-Royal-Tower-2" width="514" height="351" /></p>\r\n<p>&nbsp;</p>\r\n<p>Abraj Al-Bait Tower atau dikenal juga dengan nama Mecca Royal Hotel Clock Tower. Hal menarik dari menara ini adalah letaknya yang berada dekat di selatan pintu masuk Masjidil Haram.<br />Terdapat tujuh menara dengan satu menara yang dinamakan Hotel Tower memiliki ketinggian di atas 6 menara lainnya(tinggi 601m) yang diperkhususkan untuk apartemen, Hotel Tower dijadikan hotel berbintang tujuh. Bangunan dibawah tujuh menara ini di isi dengan 5 lantai pusat perbelanjaan, ruang konferensi, dan fasilitas-fasilitas yang lain (termasuk ruang beribadah yang sanggup menampung hingga 10.000 orang)Konstruksi Abraj Al Bait ini dimulai pada tahun 2004 yang lalu, dan secara bertahap-tahap ketujuh menara ini diselesaikan dan yang paling terakhir selesai dari tujuh menara ini adalah menara Maqam.(Bisnis perhotelan yang semakin lama menjadi berkembang di kota ini juga tak terlepas dari banyaknya jamaah haji, oleh karena itu Menara Abraj Al Bait ini juga dirancang untuk mampu menampung sampai dengan 100.000 orang).<br /><br /><strong><span style="font-size: medium;">3. Taipei 101</span></strong><br />&nbsp;&nbsp;&nbsp; Tinggi : 509 m<br />&nbsp;&nbsp;&nbsp; Lokasi : Taipei, Taiwan<br />&nbsp;&nbsp;&nbsp; Jumlah lantai : 101<br />&nbsp;&nbsp;&nbsp; Pembukaan tahun : 31-12-2004</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="taipei" src="../userfiles/image/4_gedung.jpg" alt="taipei" width="660" height="487" /></p>\r\n<p>Dalam banyak aspek, gedung ini adalah salah satu pencakar langit yang paling maju yang pernah dibuat Manusia sampai sekarang. memiliki keunggulan yaitu fiber optik dan hubungan internet satelit yang dapat mencapai kecepatan 1 gigabyte per detik. Dua lift tercepat telah di sediakan oleh Toshiba yang mencapai kecepatan maksimum 1.010 m/min (63km/jam atau 39 mil/jam) berati mampu membawa pengunjung dari lantai dasar ke lantai 89 dalam waktu 39 detik. Sebuah pendulum seberat 800 ton dipasang di lantai 88,menstabilkan menara ini terhadap goyangan yang timbul dari gempa bumi,angin topan maupun gaya geser dari angin.<br /><br /><strong><span style="font-size: medium;">&nbsp;4. Shanghai World Financial Center</span></strong><br />&nbsp;&nbsp;&nbsp;&nbsp; Lokasi : Pudong , Shanghai , Cina<br />&nbsp;&nbsp;&nbsp;&nbsp; Di bangun tahun : 1997- 2008<br />&nbsp;&nbsp;&nbsp;&nbsp; Dibuka : 28 Agustus 2009<br />&nbsp;&nbsp;&nbsp; Tinggi : 494,3 m<br />&nbsp;&nbsp;&nbsp;&nbsp; Lantai teratas : 474,0 m<br />&nbsp;&nbsp;&nbsp; Jumlah lantai : 101</p>\r\n<p>&nbsp;<img style="display: block; margin-left: auto; margin-right: auto;" title="shanghai-world-financial-centre" src="../userfiles/image/5_gedung.jpg" alt="shanghai-world-financial-centre" width="512" height="361" /></p>\r\n<p>Fitur yang paling khas dari desain bangunan ini adalah aperture trapesium di puncak. Desain asli yang ditetapkan aperture yang melingkar, berdiameter 46m, untuk mengurangi tekanan dari tekanan angin, serta berfungsi sebagai subteks untuk desain, karena "mitologi Cina merupakan bumi dengan sebuah persegi dan langit dengan lingkaran ". Namun desain awal ini mulai menghadapi protes dari beberapa orang Cina, termasuk walikota Shanghai, Chen Liangyu, yang menganggap terlalu mirip dengan matahari terbit desain bendera Jepang . Pedersen kemudian mengusulkan bahwa jembatan ditempatkan di bagian bawah aperture untuk membuatnya kurang melingkar. Pada tanggal 18 Oktober 2005.dan yang lebih unik jika di perhatikan bangunan ini menyerupai raksasa pembuka botol.<br /><br /><span style="font-size: medium;"><strong>5.International Commerece Centre</strong></span><br />&nbsp;&nbsp; Tinggi :&nbsp; 484 m<br />&nbsp;&nbsp; Lokasi :&nbsp; West Kowloon , Hong Kong<br />&nbsp;&nbsp; Dibangun tahun : 2005-2010<br />&nbsp;&nbsp; Dibuka tahun : 2011<br />&nbsp;&nbsp; Jumlah lantai : 108&nbsp;</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" title="International_Commerce_Centre_201008" src="../userfiles/image/6_gedung.jpg" alt="International_Commerce_Centre_201008" width="250" height="563" />&nbsp;</p>\r\n<p>ICC Tower Ini adalah bagian dari Union Square proyek dibangun di atas Kowloon Station. Pembangunan ini dimiliki dan dikembangkan oleh MTR Corporation Limited dan Sun Hung Kai Properties. Saat ini ICC merupakan Gedung tertinggi kelima di dunia dengan tinggi badan, kedua bangunan tertinggi di dunia dengan jumlah lantai, serta menjadi bangunan tertinggi di Hong Kong .<br />Nama pembangunan formal adalah Union Square Phase 7 dan nama ICC secara resmi diumumkan pada tahun 2005.</p>\r\n<p>Sumber: http://khabuka.blogspot.com/2012/05/10-gedung-tertinggi-di-dunia.html</p>', '', 27, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_artikel_kom`
--

CREATE TABLE IF NOT EXISTS `t_artikel_kom` (
  `idkom` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `nama` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `komentar` text COLLATE latin1_general_ci,
  PRIMARY KEY (`idkom`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_artikel_kom`
--

INSERT INTO `t_artikel_kom` (`idkom`, `id`, `nama`, `email`, `tgl`, `komentar`) VALUES
(1, 23, 'aris', 'arisddg@gmail.com', '14/04/2014', 'test test komen artikel'),
(2, 25, 'Ryan', 'ryandevstudio@gmail.com', '25/05/2017', 'dfdfdf'),
(3, 25, 'Ryan Aunur', 'wildan@aunur.com', '25/05/2017', 'Walah walah');

-- --------------------------------------------------------

--
-- Table structure for table `t_banner`
--

CREATE TABLE IF NOT EXISTS `t_banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alt` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `visits` int(10) NOT NULL DEFAULT '0',
  `status` int(3) NOT NULL DEFAULT '0',
  `admin` int(10) NOT NULL DEFAULT '0',
  `aktif` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `t_banner`
--

INSERT INTO `t_banner` (`id`, `alt`, `url`, `visits`, `status`, `admin`, `aktif`, `jenis`) VALUES
(1, 'Kajian website', 'http://www.kajianwebsite.org', 2, 13, 3, '1', 'jpg'),
(3, 'edukasi', 'http://e-dukasi.net', 2, 12, 2, '1', 'jpg'),
(5, 'wikipedia Indonesia', 'http://id.wikipedia.org', 3, 12, 2, '1', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_belajar`
--

CREATE TABLE IF NOT EXISTS `t_belajar` (
  `idbelajar` int(11) NOT NULL AUTO_INCREMENT,
  `thajar` varchar(10) DEFAULT NULL,
  `sem` int(1) DEFAULT NULL,
  `pelajaran` varchar(30) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `tglawal` date DEFAULT NULL,
  `tglakhir` date DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idbelajar`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_belajar`
--

INSERT INTO `t_belajar` (`idbelajar`, `thajar`, `sem`, `pelajaran`, `nip`, `tglawal`, `tglakhir`, `status`, `ket`) VALUES
(1, '2012/2013', 1, 'Matematika', '400001001', '2012-11-01', '2012-11-30', '1', 'sel'),
(2, '2012/2013', 1, 'Matematika', '400001001', '2012-11-09', '2012-11-30', '1', 'sel2');

-- --------------------------------------------------------

--
-- Table structure for table `t_belajar_detail`
--

CREATE TABLE IF NOT EXISTS `t_belajar_detail` (
  `iddetail` int(11) NOT NULL AUTO_INCREMENT,
  `idbelajar` int(11) DEFAULT NULL,
  `materi` text,
  `jenis` varchar(2) DEFAULT NULL,
  `stshow` varchar(1) DEFAULT NULL,
  `pertemuan` int(2) DEFAULT NULL,
  `urut` int(2) DEFAULT NULL,
  PRIMARY KEY (`iddetail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_belajar_kls`
--

CREATE TABLE IF NOT EXISTS `t_belajar_kls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbelajar` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_belajar_kls`
--

INSERT INTO `t_belajar_kls` (`id`, `idbelajar`, `kelas`) VALUES
(1, 1, 'X - 4'),
(2, 1, 'X - 4'),
(3, 2, 'X - 4');

-- --------------------------------------------------------

--
-- Table structure for table `t_belajar_log`
--

CREATE TABLE IF NOT EXISTS `t_belajar_log` (
  `tglakses` datetime DEFAULT NULL,
  `nis` varchar(25) DEFAULT NULL,
  `idbelajar` int(11) DEFAULT NULL,
  `akses` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_bpbk`
--

CREATE TABLE IF NOT EXISTS `t_bpbk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `guru` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `kelas` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `sem` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `penilaian` text COLLATE latin1_general_ci,
  `ket` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_buku`
--

CREATE TABLE IF NOT EXISTS `t_buku` (
  `id_buku` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `komentar` text COLLATE latin1_general_ci,
  `posttime` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `postdate` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ipkom` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggapan` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_buku`
--

INSERT INTO `t_buku` (`id_buku`, `nama`, `email`, `alamat`, `komentar`, `posttime`, `postdate`, `ipkom`, `tanggapan`) VALUES
(1, 'aris', 'arisddg31@gmail.com', 'sukabumi', ' test  komentar   ', '22:34:11', '11/04/2014', '::1', NULL),
(2, 'aris munandar', 'arisddg31@gmail.com', 'sukabumi', ' uji  coba   ', '12:56:38', '12/04/2014', '::1', 'gimana sudah bagus belum'),
(3, 'andi', 'andi@gmail.com', 'jakarta', ' bang  mau  tanya  nich   ', '13:06:24', '12/04/2014', '::1', NULL),
(4, 'ridwan', 'ridwan@yahoo.co.id', 'bekasi', ' mau  tanya  lagi  nich   ', '13:08:18', '12/04/2014', '::1', 'monggo........'),
(5, 'rikat', 'rikat@gmail.com', 'bogor', ' mau  tanya  nich   ', '13:17:13', '12/04/2014', '::1', 'Silahkan mas mau tanya apa'),
(6, 'Ryan Aunur', 'ryandevstudio@gmail.com', 'Plandi Jombang', ' Website  nya  bagus  banget  om     ', '21:33:08', '30/05/2017', '127.0.0.1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_chat`
--

CREATE TABLE IF NOT EXISTS `t_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `to` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `message` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_download`
--

CREATE TABLE IF NOT EXISTS `t_download` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `kategori` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `file` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visit` int(10) NOT NULL DEFAULT '0',
  `ukuran` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `t_download`
--

INSERT INTO `t_download` (`id`, `judul`, `deskripsi`, `kategori`, `file`, `visit`, `ukuran`, `tanggal`) VALUES
(5, 'Tutorial MS. Word', 'Tulisan ini memuat tutorial singkat bagi pemula yang ingin belajar tentang Microsoft Word. Disertai dengan banyak gambar dan praktek langsung, sehingga memudahkan bagi pemula untuk mempelajari aplikasi Microsoft Word. \r\n\r\nTulisan Microsoft Word ini telah dipakai sebagai bahan materi untuk kegiatan kursus komputer dasar bagi para trainee Indonesia di Jepang. \r\nPenulis: Deddy Nurzaman dan Team Kursus Komputer Trainee Jepang\r\nPublisher: IlmuKomputer.Com', 'T I K', 'al5.zip', 1, '484,36 Kbytes', '12/07/2006 20:01:18'),
(6, 'Teknik dan Logika Pemrograman', 'Penulis: Findra Kartika Sari Dewi\r\nPublisher: IlmuKomputer.Com\r\n', 'T I K', 'al6.zip', 1, '145,00 Kbytes', '12/07/2006 20:01:32'),
(7, 'Tool Dasar Photoshop 7', 'Adobe Photoshop 7.0 menyediakan tool-tool yang terintegrasi dan tertata secara praktis untuk menciptakan dan menghasilkan karya dalam bentuk vektor dan teks yang sempurna. Bentuk grafik yang berdasarkan vektor dan teks bisa ditransfer menjadi image yang berdasarkan pixel untuk mendapatkan efek desain yang lebih sempurna. Pada tulisan ini akan diulas secara mendetail bagaimana cara menguasai adobe photoshop7.0. Disertai dengan banyak gambar dan contoh, sehingga mudah dimengerti.\r\nPenulis: Eko Purwanto\r\nPublisher: IlmuKomputer.Com', 'T I K', 'al7.zip', 1, '594,35 Kbytes', '12/07/2006 20:00:32'),
(8, 'Uji Kemampuan Fisika', 'Materi berupa animasi Flash yang di design untuk dipahami sendiri.', 'Fisika', 'al8.swf', 6, '157,19 Kbytes', '16/12/2012 09:33:25'),
(9, 'Uji Kemampuan Biologi', 'Animasi flash yang dirancang untuk memudahkan siswa dalam belajar mandiri.\r\nSumber : www.e-dukasi.net', 'Biologi', 'al9.swf', 3, '166,75 Kbytes', '16/12/2012 09:32:27'),
(10, 'Persamaan Kuadrat', 'Animasi flash yang dirancang untuk memudahkan siswa dalam belajar mandiri.\r\nSumber : www.e-dukasi.net', 'Matematika', 'al10.swf', 3, '76,90 Kbytes', '16/12/2012 09:32:17'),
(11, 'ATMOSFER (Cuaca dan Iklim)', 'Animasi flash yang dirancang untuk memudahkan siswa dalam belajar mandiri.\r\nSumber : www.e-dukasi.net', 'Geografi', 'al11.pdf', 6, '504,49 Kbytes', '16/12/2012 09:32:50'),
(13, 'Dinamika Partikel 1', 'Materi berupa penjelasan mengenai Dinamika Partikel bagian ke 1.\r\nSumber : www.e-dukasi.net', 'Fisika', 'al13.zip', 6, '522,53 Kbytes', '12/07/2006 20:20:29'),
(14, 'Kenali Tuturanmu', 'Materi tentang: Lafal Baku; Tekanan, Intonasi, dan Jeda; Jeda Mengubah Makna', 'Bahasa Indonesia', 'al14.pdf', 0, '574,51 Kbytes', '16/12/2012 16:41:36'),
(2, 'Prakondisi Terbentuknya Identitas Kebangsaan', 'Usaha-usaha Prakondisi agar dapat  Terbentuk Identitas Kebangsaan', 'PKn', 'al15.pdf', 0, '364,08 Kbytes', '16/12/2012 15:45:37'),
(3, 'Tool Dasar Photoshop 7', 'Adobe Photoshop 7.0 menyediakan tool-tool yang terintegrasi dan tertata secara praktis untuk menciptakan dan menghasilkan karya dalam bentuk vektor dan teks yang sempurna. Bentuk grafik yang berdasarkan vektor dan teks bisa ditransfer menjadi image yang berdasarkan pixel untuk mendapatkan efek desain yang lebih sempurna. Pada tulisan ini akan diulas secara mendetail bagaimana cara menguasai adobe photoshop7.0. Disertai dengan banyak gambar dan contoh, sehingga mudah dimengerti.\r\nPenulis: Eko Purwanto\r\nPublisher: IlmuKomputer.Com', 'T I K', 'al7.zip', 1, '594,35 Kbytes', '12/07/2006 20:00:32'),
(4, 'Wawasan Kebangsaan', 'Meteri tentang wawasan yang dikembangkan untuk menjaga keutuhan Negara Kesatuan Republik Indonesia', 'PKn', 'al14.pdf', 0, '186,13 Kbytes', '16/12/2012 15:37:51'),
(15, 'Membaca Cepat Untuk Permulaan', 'Materi tentang : Teknik Pemindaian (Scanning); Teknik Pelayapan (Skimming); Manfaat Membaca Cepat', 'Bahasa Indonesia', 'al15.pdf', 0, '361,66 Kbytes', '16/12/2012 16:44:22'),
(17, 'Expressing Possibility', 'Modul ini berisikan ungkapan tentang kemungkinan dalam bahasa Inggris.', 'Bahasa Inggris', 'al17.doc', 0, '101,37 Kbytes', '16/12/2012 16:47:55'),
(16, 'Asking for and Giving Permission', 'Materi tentang berbagai macam ungkapan cara meminta dan memberi ijin.', 'Bahasa Inggris', 'al16.doc', 0, '122,88 Kbytes', '16/12/2012 16:46:39'),
(19, 'Pembacaan Masalah Mekanik', 'Materi tentang tujuh besaran pokok berikut satuannya', 'Fisika', 'al19.pdf', 0, '460,13 Kbytes', '16/12/2012 16:56:09'),
(18, 'Sistem Satuan dan Pengukuran', 'Materi tentang pengukuran suatu\r\nbesaran beserta satuannya.', 'Fisika', 'al18.pdf', 0, '715,23 Kbytes', '16/12/2012 16:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `t_dsp`
--

CREATE TABLE IF NOT EXISTS `t_dsp` (
  `iddsp` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `tingkat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `dsp` int(11) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `tu` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ket` varchar(8) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`iddsp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_forum`
--

CREATE TABLE IF NOT EXISTS `t_forum` (
  `forum_id` int(10) NOT NULL AUTO_INCREMENT,
  `forum_nama` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `forum_ket` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_forum`
--

INSERT INTO `t_forum` (`forum_id`, `forum_nama`, `forum_ket`) VALUES
(1, 'Diskusi Pendidikan', 'Diskusi seputar dunia pendidikan di negara kita'),
(2, 'Diskusi Guru', 'Diskusi seputar aktivitas dan keluhan guru'),
(3, 'Diskusi Materi Pengajaran', 'Diskusi seputar materi pengajaran di sekolah / kurikulum sekolah'),
(4, 'Diskusi Lingkungan Sekolah', 'Diskusi seputar aktivitas sekolah-sekolah'),
(5, 'Diskusi Siswa', 'Diskusi seputar kegiatan siswa di berbagai sekolah'),
(6, 'Diskusi Pelayanan Pendidikan', 'Diskusi seputar pelayanan pendidikan di tingkat sekolah maupun kantor Dinas.');

-- --------------------------------------------------------

--
-- Table structure for table `t_forum_balas`
--

CREATE TABLE IF NOT EXISTS `t_forum_balas` (
  `balas_id` int(10) NOT NULL AUTO_INCREMENT,
  `balas_body` text COLLATE latin1_general_ci,
  `balas_tgl` datetime DEFAULT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `isi_id` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`balas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_forum_isi`
--

CREATE TABLE IF NOT EXISTS `t_forum_isi` (
  `isi_id` int(10) NOT NULL AUTO_INCREMENT,
  `isi_judul` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `isi_body` text COLLATE latin1_general_ci NOT NULL,
  `isi_tgl` datetime DEFAULT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`isi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_forum_moderator`
--

CREATE TABLE IF NOT EXISTS `t_forum_moderator` (
  `moderator_id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moderator_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_forum_moderator`
--

INSERT INTO `t_forum_moderator` (`moderator_id`, `userid`, `forum_id`) VALUES
(2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_galeri`
--

CREATE TABLE IF NOT EXISTS `t_galeri` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ket` text COLLATE latin1_general_ci NOT NULL,
  `idalbum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `t_galeri`
--

INSERT INTO `t_galeri` (`id`, `ket`, `idalbum`) VALUES
(11, 'Asik Belajar', 3),
(12, 'Asiknya', 3),
(13, 'Semangat', 3),
(14, 'Belajar Teknologi', 3),
(15, '', 3),
(16, 'kegiatan 1', 4),
(17, 'kegiatan 2', 4),
(18, 'kegiatan 3', 4),
(19, 'kegiatan 4', 4),
(20, 'serba serbi 1', 5),
(21, 'serba serbi 2', 5),
(22, 'serba serbi 3', 5),
(23, 'serba serbi 4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_galerialbum`
--

CREATE TABLE IF NOT EXISTS `t_galerialbum` (
  `idalbum` int(11) NOT NULL,
  `album` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_galerialbum`
--

INSERT INTO `t_galerialbum` (`idalbum`, `album`, `tanggal`) VALUES
(3, 'Ayo Belajar....', '12-12-2012'),
(4, 'kegiatan sekolah', '10-04-2014'),
(5, 'Serba Serbi', '22-04-2014');

-- --------------------------------------------------------

--
-- Table structure for table `t_gambaratas`
--

CREATE TABLE IF NOT EXISTS `t_gambaratas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `t_gambaratas`
--

INSERT INTO `t_gambaratas` (`id`, `judul`, `jenis`) VALUES
(7, 'gambar1', 'jpg'),
(8, 'gambar2', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_info`
--

CREATE TABLE IF NOT EXISTS `t_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isi` text COLLATE latin1_general_ci,
  `subject` text COLLATE latin1_general_ci,
  `postdate` varchar(12) COLLATE latin1_general_ci NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_info`
--

INSERT INTO `t_info` (`id`, `isi`, `subject`, `postdate`) VALUES
(2, '<p>Untuk menghadapi pekan olimpiade nasional maka sekolah akan menyelenggarakan seleksi olimpiade. Materi soal Olimpiade Matematika dan Sains Internasional tingkat dasar atau International Mathematics and Science Olympiad for Primary School yang diselenggarakan kedua kalinya, 14-19 November 2005, diarahkan untuk lebih menuntut kreativitas dan daya kritis peserta. </p>', 'Persiapan Pekan Olimpiade sekolah', '15/12/2012'),
(4, '<p>Rapat kerja tahun 2008 akan diselenggarakan pada tanggal 20 - 25 November 2008. Kegiatan akan membahas tentang RAPBS tahun 2008-2009 dan Pemilihan wakil kepala sekolah.</p>', 'Rapat Kerja Tahun 2008', '15/12/2012'),
(5, '<p style="text-align: center;"><strong><span class="berita"><img src="../userfiles/image/Snap1.jpg" alt="" /><br /> </span></strong></p>\r\n<p style="text-align: center;"><strong><span class="berita"><img src="../userfiles/image/Snap2.jpg" alt="" /></span></strong></p>\r\n<p>&nbsp;</p>', 'Pekan Ulangan Semester 1 Tahun 2008-2009', '15/12/2012'),
(6, '<p>Penerimaan raport (Laporan Hasil Belajar) Semester 1 Tahun Pelajaran 2012-2013 dijadwalkan pada hari Sabtu tanggal 22 Desember 2012. Raport langsung diterimakan kepada siswa oleh wali kelas di ruang kelasnya masing-masing pada jam 09.00 WIB.</p>\r\n<p>Liburan semester 1 ini mulai tanggal 23 Desember 2012 sampai dengan 1 Januari 2013. Sekolah berharap siswa dapat menggunakan hari libur untuk diisi dengan kegiatan-kegiatan yang bermanfaat.</p>', 'Penerimaan Raport Semester 1 Tahun 2012-2013', '16/12/2012');

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE IF NOT EXISTS `t_kategori` (
  `id_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `kategori`, `jenis`) VALUES
(1, 'Pemerintah', 0),
(2, 'Organiasasi', 0),
(3, 'Tutorial', 0),
(4, 'Project', 0),
(5, 'Sekolah', 0),
(6, 'Umum', 0),
(7, 'Lain-lain', 1),
(9, 'Soal Olimpiade', 2),
(8, 'Soal UN', 2),
(10, 'Soal UTS', 2),
(11, 'Univeristas', 0),
(12, 'Banner Depan 160 x 60 px', 3),
(13, 'Banner Depan 300 x 80 px', 3),
(14, 'Member Banner 160 x 60 px', 3),
(15, 'Banner Siswa Tengah', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE IF NOT EXISTS `t_kelas` (
  `kelas` varchar(13) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nip` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tingkat` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `program` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`kelas`, `nip`, `tingkat`, `program`) VALUES
('X - 1', '480137735', '1', '-'),
('X - 2', '131805943', '1', '-'),
('X - 3', '130896744', '1', '-'),
('X - 4', '400001001', '1', '-'),
('X - 5', '132126005', '1', '-'),
('X - 6', '130889465', '1', '-'),
('X - 7', '132068645', '1', '-'),
('X - 8', '132122047', '1', '-'),
('XI IPA 1', '132086211', '2', 'IPA'),
('XI IPA 2', '132108283', '2', 'IPA'),
('XI IPA 3', '132108312', '2', 'IPA'),
('XI IPA 4', '131975019', '2', 'IPA'),
('XI IPA 5', '132108298', '2', 'IPA'),
('XI IPS 1', '131630516', '2', 'IPS'),
('XI IPS 2', '132122049', '2', 'IPS'),
('XI IPS 3', '131813622', '2', 'IPS'),
('XII IPA 1', '400001002', '3', 'IPA'),
('XII IPA 2', '400001003', '3', 'IPA'),
('XII IPA 3', '132105436', '3', 'IPA'),
('XII IPA 4', '131975072', '3', 'IPA'),
('XII IPA 5', '131286221', '3', 'IPA'),
('XII IPS 1', '131850412', '3', 'IPS'),
('XII IPS 2', '132122031', '3', 'IPS'),
('XII IPS 3', '131683538', '3', 'IPS'),
('XI BHS 1', '400001001', '2', 'Bahasa'),
('XI BHS 2', '400001001', '2', 'Bahasa'),
('XII BHS 1', '400001002', '3', 'Bahasa'),
('XII BHS 2', '196805181995121004', '3', 'Bahasa'),
('X O 1', '400001001', '1', 'Otomotif'),
('X O 2', '131805943', '1', 'Otomotif'),
('XI O 1', '130896744', '2', 'Otomotif'),
('XI O 2', '400001001', '2', 'Otomotif'),
('XII O 1', '132126005', '3', 'Otomotif'),
('XII O 2', '130889465', '3', 'Otomotif'),
('X L 1', '132068645', '1', 'Listrik'),
('X L 2', '132122047', '1', 'Listrik'),
('XI L 1', '132086211', '2', 'Listrik'),
('XI L 2', '132108283', '2', 'Listrik'),
('XII L 1', '132108312', '3', 'Listrik'),
('XII L 2', '131975019', '3', 'Listrik'),
('X BSN 1', '132108298', '1', 'Busana'),
('X BSN 2', '131630516', '1', 'Busana'),
('XI BSN 1', '132122049', '2', 'Busana'),
('XI BSN 2', '131813622', '2', 'Busana'),
('XII BSN 1', '400001002', '3', 'Busana'),
('XII BSN 2', '400001003', '3', 'Busana'),
('X TKJ 1', '132105436', '1', 'TKJ'),
('X TKJ 2', '131975072', '1', 'TKJ'),
('XI TKJ 1', '131286221', '2', 'TKJ'),
('XI TKJ 2', '131850412', '2', 'TKJ'),
('XII TKJ 1', '132122031', '3', 'TKJ'),
('XII TKJ 2', '131683538', '3', 'TKJ'),
('X MM 1', '12345677', '1', 'MM'),
('X MM 2', '12345678', '1', 'MM'),
('XI MM 1', '12345679', '2', 'MM'),
('XI MM 2', '12345680', '2', 'MM'),
('XII MM 1', '12345680', '3', 'MM'),
('XII MM 2', '12345681', '3', 'MM');

-- --------------------------------------------------------

--
-- Table structure for table `t_laporan`
--

CREATE TABLE IF NOT EXISTS `t_laporan` (
  `idlap` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_kirim` date DEFAULT NULL,
  `judul` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `nip` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idlap`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_link`
--

CREATE TABLE IF NOT EXISTS `t_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ket` text COLLATE latin1_general_ci,
  `jenis` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_link`
--

INSERT INTO `t_link` (`id`, `alamat`, `ket`, `jenis`) VALUES
(7, 'www.ilmukomputer.com', 'website yang berisikan tutorial seputar TIK', 3),
(8, 'www.sekolahIndonesia.com', 'SekolahIndonesia.com adalah portal pendidikan yang memuat secara lengkap dan terperinci seluruh data sekolah dan murid yang telah menjadi anggota Proyek Sistem Informasi Akademik Sekolah Online.', 6),
(9, 'www.unpad.ac.id', 'website Universitas Padjadjaran', 11),
(10, 'www.dikmenum.go.id', 'Website resmi Dikmenum ', 1),
(3, 'www.jabar.go.id', 'Website resmi Propinsi Jawa Barat', 1),
(12, 'http://www.thinkquest.com', 'Thinkquest merupakan kumpulan project siswa-siswa sedunia yang dimiliki oleh ORACLE', 4),
(5, 'www.sekolah2000.or.id', '-', 2),
(6, 'www.kajianwebsite.net', 'website yang terdapat beberapa project interaktif untuk aktivitas siswa dengan beberapa negara', 4),
(2, 'www.bandung.go.id', 'Website resmi Kota Bandung', 1),
(1, 'www.kemdiknas.go.id', 'Website resmi Dinas Pendidikan Nasional', 1),
(11, 'http:/www.alcobindonesia.org', '-', 2),
(13, 'www.sman4bdg.sch.id', 'Website resmi SMA Negeri 4 Bandung', 5),
(14, 'www.smkyappi-wns.sch.id/', 'Website remsi SMK Yappi Gunung Kidul', 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_member`
--

CREATE TABLE IF NOT EXISTS `t_member` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgllahir` varchar(12) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kelamin` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kerja` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `alamat` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `negara` char(3) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `telp` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sekolah` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `homepage` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `profil` text COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pengingat` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jawaban` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kategori` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `status` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nis` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kelas` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ket` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `stblog` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `kunjungblog` int(10) NOT NULL DEFAULT '1',
  `point` int(11) DEFAULT '0',
  `stlogin` varchar(1) COLLATE latin1_general_ci DEFAULT '0',
  `totlogin` int(11) DEFAULT '0',
  `ip` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `stprofil` varchar(4) COLLATE latin1_general_ci DEFAULT 'open',
  `setfacebook` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `t_member`
--

INSERT INTO `t_member` (`userid`, `nama`, `tgllahir`, `kelamin`, `kerja`, `alamat`, `negara`, `telp`, `sekolah`, `homepage`, `profil`, `username`, `password`, `email`, `pengingat`, `jawaban`, `kategori`, `status`, `tgl_login`, `nis`, `kelas`, `ket`, `stblog`, `kunjungblog`, `point`, `stlogin`, `totlogin`, `ip`, `stprofil`, `setfacebook`) VALUES
(2, 'Dody Firmansyah', '01-01-1983', 'm', 'Guru', 'Jl. Kol Enjo Martadisastra No.15 Bogor', 'Ind', '081317579751', 'SMK Negeri 1 Bogor', 'www.kickdody.com', 'Web Programming, 3 Dimensi dan Visual Efek', 'kickdody@yahoo.com', '0004d0b59e19461ff126e3a08a814c33', 'kickdody@yahoo.com', '1', 'aa', '2', '1', '2009-10-29 15:22:47', '400001002', '-', 'Guru', '0', 1, 103, '0', 41, '127.0.0.1', 'open', NULL),
(1, 'BAYU ALI AKBAR', '03-02-1993', 'm', 'Siswa', 'Jl. Bojongkokosan No.24 Antapani Bandung2', 'Ind', '32423423', 'SMA NEGERI 4 BANDUNG', 'bayu.wordpress.com', 'saya adalah .....', '070810120', 'e10adc3949ba59abbe56e057f20f883e', 'alan@alanrm.net', '2', '123456', '1', '1', '2011-04-28 14:01:26', '070810120', '2009', 'Alumni', '1', 7, 823, '0', 174, '127.0.0.1', 'open', NULL),
(3, 'Alan Ridwan M', '01-01-1981', 'm', 'Guru', 'Jl. Bojongkokosan No.24 Antapani Bandung', 'Ind', '085624070482', 'SMA NEGERI 4 BANDUNG', 'www.alanrm.com', 'Web Programming', 'alanrm82@yahoo.com', '427e3427c5f38a41bb9cb26525b22fba', 'alanrm82@yahoo.com', '1', 'a', '3', '1', '2014-04-11 08:53:46', '400001001', 'undefined', 'Guru', '1', 7, 299, '0', 158, '::1', 'open', 'tidak'),
(7, 'Drs. Choirul Anam, S.ST', '01-01-1995', 'm', 'Guru', 'Jl. Tenggiri X/1 Minomartani, Sleman Yogyakarta.', 'ID', '08121563213', 'SMK YAPPI Wonosari', 'www.choirulyogya.wordpress.com', '-', 'choirulyogya', 'e10adc3949ba59abbe56e057f20f883e', 'choirulyogya@yahoo.com', '1', '1', '3', '1', '2009-10-29 15:25:25', '196105221984031005', '-', 'Guru', '0', 1, 4, '0', 3, '127.0.0.1', 'open', NULL),
(8, 'Warjana, S.Pd', '01-01-1995', 'm', 'Guru', 'Jl. Perum Taman Sedayu Blok B 12 A Bantul Yogyakarta', 'ID', '08157915641', 'SMK Negeri 2 Yogyakarta', 'www.warjana.wordpress.com', '-', 'wardjana', 'e10adc3949ba59abbe56e057f20f883e', 'wardjana@yahoo.com', '1', '1', '1', '1', '2009-10-29 15:26:15', '196605202006041001', '-', 'Guru', '0', 1, 2, '0', 1, '127.0.0.1', 'open', NULL),
(10, 'Yulianto Sri Utomo, S.Kom', '01-01-1995', 'm', '', 'Jl. Bimo martani ngemplak Yogyakarta', 'ID', '085697111588', '', '', '', 'tomi', 'e10adc3949ba59abbe56e057f20f883e', 'yulianto_sri_utomo@yahoo.com', '1', '1', '0', '1', '2009-10-29 15:28:14', '400001004', '-', 'Guru', '0', 1, 3, '0', 2, '127.0.0.1', 'open', NULL),
(4, 'Taufik N. Syah, S.Pd', '01-01-1995', 'm', 'Guru', 'Komplek Timah Jl. Margasatwa, Pondok Labu Jakarta Selatan ', 'ID', '08881869114', 'SMKN 41 Jakarta', '-', 'SMKN 41 Jakarta', 'taufik', 'e10adc3949ba59abbe56e057f20f883e', 'taufikns@cbn.net.id', '1', '1', '3', '1', '2009-10-29 15:21:37', '400001003', '-', 'Guru', '0', 1, 4, '0', 3, '127.0.0.1', 'open', NULL),
(12, 'Agung Purnomo', '01-01-1995', 'm', 'Guru', 'Bandung', 'ID', '-', '-', '-', '-', 'alumni', 'e10adc3949ba59abbe56e057f20f883e', 'root23it@yahoo.co.id', '1', '1', '1', '1', '2009-10-29 15:40:20', '-', '2008', 'Alumni', '0', 1, 3, '0', 2, '127.0.0.1', 'open', NULL),
(5, 'Siswanto, S.Pd', '01-01-1995', 'm', 'Guru', 'Jl. Kapi anala 4 Malang', 'Ind', '081233081768', 'SMA Negeri 10 Malang', 'www.tesdigital.com', 'siswanto-mlg@telkom.net', 'siswanto-mlg@telkom.net', '25d55ad283aa400af464c76d713c07ad', 'siswanto-mlg@telkom.net', '1', '1', '0', '1', '2014-04-12 09:03:25', '196805181995121004', 'undefined', 'Guru', '1', 1, 5, '0', 4, '::1', 'open', 'tidak'),
(9, 'Drs. H. Cucu Saputra, M.M.Pd', '01-01-1995', 'm', 'Guru', '-', 'Ind', '-', 'SMA NEGERI 4 BANDUNG', '-', '-', 'kepsek', '5d2c2cee8ab0b9a36bd1ed7196bd6c4a', 'cs_muasa@yahoo.com', '1', '1', '4', '1', '2009-10-29 15:40:03', '131853696', '', 'Admin', '0', 1, 9, '0', 8, '127.0.0.1', 'open', NULL),
(6, 'Wuryanta', '01-01-1995', 'm', 'Guru', 'Jl. Saluyu Indah XVII No 140 Riung Bandung', 'ID', '081320454229', 'SMA Negeri 4 Bandung', '-', '-', 'masjava', 'e10adc3949ba59abbe56e057f20f883e', 'mas_java2@yahoo.com', '1', '1', '3', '1', '2009-10-29 15:20:46', '196504281989121001', '-', 'Guru', '0', 1, 5, '0', 4, '127.0.0.1', 'open', NULL),
(11, 'Hafidz Muksin', '01-01-1995', 'm', '-', '-', 'ID', '-', '-', '-', '-', 'orangtua', 'e10adc3949ba59abbe56e057f20f883e', 'aa@aa.com', '1', '1', '1', '1', '2009-10-29 15:34:07', '05061005', '-', 'Orang Tua', '0', 1, 3, '0', 2, '127.0.0.1', 'open', NULL),
(16, 'ANNY MAULINA', '01/01/2008', 'f', '', '-', 'ID', '-', 'SMA Negeri 4 Bandung', '', '', '070810005', '95e62984b87e90645a5cf77037395959', 'aa@aa.com', '1', '1', '1', '1', '2012-11-26 08:34:48', '070810005', 'X - 1', 'Siswa', '0', 1, 3, '0', 3, '127.0.0.1', 'open', NULL),
(17, 'agung saja', '', 'm', '', '', 'ID', '085793259558', '', '', '', 'ii@ii.com', '5e7d00134ba3a8b3e37edf5038bc51fc', 'ii@ii.com', '1', '1', '2', '1', '2012-11-26 08:07:21', '070810005', 'X - 1', 'Orang Tua', '0', 1, 0, '0', 0, NULL, 'open', NULL),
(18, 'ADIMAS FIQRI RAMDHANSYA', '01/01/2008', 'm', '', '-', 'ID', '-', 'SMA Negeri 4 Bandung', '', '', '070810119', '6d9c547cf146054a5a720606a7694467', 'aa@aaaaaa.com', '1', '1', '1', '1', '2012-11-26 12:24:34', '070810119', 'X - 4', 'Siswa', '0', 1, 15, '1', 15, '127.0.0.1', 'open', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_memberfoto`
--

CREATE TABLE IF NOT EXISTS `t_memberfoto` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `idalbum` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `judul` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `stopen` varchar(1) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`idfoto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_memberfoto_album`
--

CREATE TABLE IF NOT EXISTS `t_memberfoto_album` (
  `idalbum` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `keterangan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idalbum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_memberfoto_kom`
--

CREATE TABLE IF NOT EXISTS `t_memberfoto_kom` (
  `idfotokom` int(11) NOT NULL AUTO_INCREMENT,
  `idfoto` int(11) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `komentar` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfotokom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup`
--

CREATE TABLE IF NOT EXISTS `t_membergroup` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `nmgroup` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `ket` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stgroup` varchar(1) COLLATE latin1_general_ci DEFAULT '0' COMMENT '0=terbuka atau 1=tertutup',
  `idjenis` int(11) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_anggota`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_anggota` (
  `idgroup` int(11) NOT NULL,
  `userid` int(10) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kategori` varchar(1) COLLATE latin1_general_ci DEFAULT '0' COMMENT '0=biasa , 1=petugas/moderator',
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT '0' COMMENT '0=diajak orang/invite ,1=ok,2=mengajukan ikut bergabung'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_diskusi`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_diskusi` (
  `idtopik` int(11) NOT NULL AUTO_INCREMENT,
  `idgroup` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(10) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `isi` text COLLATE latin1_general_ci,
  PRIMARY KEY (`idtopik`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_diskusibalas`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_diskusibalas` (
  `idbalas` int(11) NOT NULL AUTO_INCREMENT,
  `idtopik` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(10) DEFAULT NULL,
  `isi` text COLLATE latin1_general_ci,
  PRIMARY KEY (`idbalas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_info`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_info` (
  `idgroupinfo` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idgroup` int(11) DEFAULT NULL,
  `isi` text COLLATE latin1_general_ci,
  `userid` int(10) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idgroupinfo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_infokom`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_infokom` (
  `idinfokom` int(11) NOT NULL AUTO_INCREMENT,
  `idgroupinfo` int(11) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `komentar` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idinfokom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_membergroup_jenis`
--

CREATE TABLE IF NOT EXISTS `t_membergroup_jenis` (
  `idjenis` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idjenis`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_membergroup_jenis`
--

INSERT INTO `t_membergroup_jenis` (`idjenis`, `jenis`) VALUES
(1, 'Kelas di Sekolah'),
(2, 'Kegiatan Sekolah'),
(3, 'Mata Pelajaran'),
(4, 'Ekstrakurikuler'),
(5, 'Group Alumni'),
(6, 'Group Komunitas'),
(7, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `t_memberlihat`
--

CREATE TABLE IF NOT EXISTS `t_memberlihat` (
  `idlihat` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `userlihat` int(10) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlihat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AVG_ROW_LENGTH=1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_memberstatus`
--

CREATE TABLE IF NOT EXISTS `t_memberstatus` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pengirim` int(10) DEFAULT NULL,
  `pesan` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(1) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`idstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `t_memberstatus`
--

INSERT INTO `t_memberstatus` (`idstatus`, `userid`, `tanggal`, `pengirim`, `pesan`, `jenis`) VALUES
(1, 1, '2009-10-26 17:21:52', 1, 'akhiiirny ngntuuk juga', '0'),
(2, 3, '2009-10-29 14:52:07', 3, 'Hari yang melelahkan..tetap semangat', '0'),
(3, 5, '2009-10-29 15:04:34', 5, 'Malang...hujan gede...', '0'),
(4, 4, '2009-10-29 15:05:05', 4, 'Macet juga deh Depok...', '0'),
(5, 2, '2009-10-29 15:07:01', 2, 'mm...bogor ujan lagi...trusss', '0'),
(6, 6, '2009-10-29 15:09:08', 6, 'ya...ditinggal lagi dehhh...', '0'),
(7, 7, '2009-10-29 15:23:43', 7, 'Ayoo..Yogya..gabung yuu', '0'),
(8, 8, '2009-10-29 15:25:55', 8, 'Wah..dimana nihhh', '0'),
(9, 10, '2009-10-29 15:28:08', 10, 'waduh...kembali ke alam nihh', '0'),
(10, 11, '2009-10-29 15:28:33', 11, 'Haloo temen-temen', '0'),
(11, 12, '2009-10-29 15:30:31', 12, 'mm.. ngapain ya dikantor..?', '0'),
(12, 9, '2009-10-29 15:34:33', 9, 'Selamat Pagi..anak-anak..', '0'),
(13, 3, '2011-04-02 12:52:37', 3, 'test coba', '0'),
(14, 3, '2011-04-02 13:04:31', 3, 'teeessss', '0'),
(15, 3, '2011-04-02 13:05:15', 3, 'test lg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t_memberstatus_kom`
--

CREATE TABLE IF NOT EXISTS `t_memberstatus_kom` (
  `idstatuskom` int(11) NOT NULL AUTO_INCREMENT,
  `idstatus` int(11) NOT NULL,
  `userid` int(10) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `pesan` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idstatuskom`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AVG_ROW_LENGTH=1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_memberstatus_kom`
--

INSERT INTO `t_memberstatus_kom` (`idstatuskom`, `idstatus`, `userid`, `tanggal`, `pesan`) VALUES
(1, 11, 3, '2009-10-29 22:41:28', 'nah gitu kerja ya...'),
(2, 1, 3, '2009-10-29 22:47:36', 'belajar yang benar ya..'),
(3, 11, 3, '2009-12-21 15:08:52', 'dfgvds');

-- --------------------------------------------------------

--
-- Table structure for table `t_member_contact`
--

CREATE TABLE IF NOT EXISTS `t_member_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_master` int(10) NOT NULL DEFAULT '0',
  `id_con` int(10) NOT NULL DEFAULT '0',
  `status` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0' COMMENT '0=status blm distujui, 1=sudah ok\r\n2=blok',
  `host` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `t_member_contact`
--

INSERT INTO `t_member_contact` (`id`, `id_master`, `id_con`, `status`, `host`) VALUES
(1, 3, 2, '1', 0),
(2, 3, 7, '1', 0),
(3, 3, 6, '1', 0),
(4, 3, 10, '1', 0),
(5, 3, 5, '1', 0),
(6, 3, 8, '1', 0),
(7, 3, 11, '1', 0),
(8, 5, 3, '1', 0),
(9, 4, 3, '1', 0),
(10, 6, 3, '1', 0),
(11, 2, 3, '1', 0),
(12, 3, 4, '1', 0),
(13, 7, 3, '1', 0),
(14, 7, 2, '0', 0),
(15, 7, 4, '0', 0),
(16, 7, 6, '0', 0),
(17, 8, 3, '1', 0),
(18, 10, 3, '1', 0),
(19, 11, 3, '1', 0),
(20, 11, 2, '0', 0),
(21, 11, 4, '0', 0),
(22, 12, 3, '1', 0),
(23, 12, 9, '0', 0),
(24, 12, 11, '1', 0),
(25, 11, 12, '1', 0),
(26, 9, 12, '1', 0),
(27, 12, 9, '1', 0),
(28, 3, 12, '1', 0),
(29, 3, 1, '1', 0),
(30, 1, 3, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_member_custom`
--

CREATE TABLE IF NOT EXISTS `t_member_custom` (
  `userid` int(10) NOT NULL,
  `bgbody` text COLLATE latin1_general_ci,
  `widgetkanan` text COLLATE latin1_general_ci,
  `widgetkiri` text COLLATE latin1_general_ci,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_member_custom`
--

INSERT INTO `t_member_custom` (`userid`, `bgbody`, `widgetkanan`, `widgetkiri`) VALUES
(1, 'body { /* background gambar */\r\n	font-family: "Arial", serif;\r\n	font-size: 76%;\r\n	margin-top: 0px;\r\n	color:#666666;\r\n	background: #fff url(profil/back1.jpg);\r\n}\r\n#konten {   /* lebar layout web tengah */\r\n	width:900px;				\r\n	margin-left: auto;\r\n	margin-right: auto;\r\n	background-color:#FFFFFF;\r\n}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_member_games`
--

CREATE TABLE IF NOT EXISTS `t_member_games` (
  `idgames` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ket` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `visit` int(11) DEFAULT '0',
  `kategori` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(1) COLLATE latin1_general_ci DEFAULT '0' COMMENT '0=file flash, 1=iframe ke website laen',
  `link` varchar(225) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idgames`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `t_member_games`
--

INSERT INTO `t_member_games` (`idgames`, `judul`, `ket`, `visit`, `kategori`, `jenis`, `link`) VALUES
(1, '3D Rally', 'Balap mobil rally', 2, 'Balapan', '0', NULL),
(2, 'Virtual Champions League', 'Liga Sepakbola online', 1, 'Olahraga', '0', NULL),
(3, 'Motor Cross', 'Motor rintangan', 0, 'Balapan', '0', NULL),
(4, 'The Classroom', 'Games kondisi di ruang kelas', 0, 'Teka-teki', '0', NULL),
(5, 'Marios Adventure 2', 'Petualangan Mario Bross', 2, 'Petualangan', '0', NULL),
(6, 'Mini Pingpong', 'Bermain pingpong online', 1, 'Olahraga', '0', NULL),
(7, 'Bolling', 'Pemainan Bolling', 15, 'Olahraga', '0', NULL),
(8, 'Catur', 'Bermain catur dengan komputer', 1, 'Teka-teki', '0', NULL),
(9, 'Cheatmaster', 'Cheatmaster room', 0, 'Lain-lain', '0', NULL),
(10, 'Fish Tales', 'Permainan Ikan ', 1, 'Lain-lain', '0', NULL),
(11, 'Sudoku', 'Permainan menyusun angka', 0, 'Teka-teki', '0', NULL),
(12, 'Tennis Lapangan', 'Permainan Tennis Lapangan', 7, 'Olahraga', '0', NULL),
(13, 'The Farmer', 'Permainan berkebun', 1, 'Petualangan', '0', NULL),
(14, 'Burger Restaurant', 'Permainan Menjadi pelayanan restoran', 0, 'Petualangan', '0', NULL),
(15, 'Ambulance Race.', 'Balap Ambulan', 1, 'Balapan', '0', NULL),
(16, 'Fruit Twirls', 'Permainan seperti Zuma', 0, 'Teka-teki', '0', NULL),
(17, 'Uno Card', 'Permainan kartu', 0, 'Teka-teki', '0', NULL),
(18, 'Janes Hotel', 'Permainan menjadi pelayan di Hotel', 0, 'Petualangan', '0', NULL),
(19, 'Mommy Challenge', 'Permainan menjadi seorang Ibu', 0, 'Petualangan', '0', NULL),
(20, 'Penguin Diner', 'Permainan menjadi pelayanan ', 0, 'Petualangan', '0', NULL),
(21, 'Parkir Perfection', 'Parkir Perfection', 2, 'Lain-lain', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_member_pesan`
--

CREATE TABLE IF NOT EXISTS `t_member_pesan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pesan` text COLLATE latin1_general_ci,
  `userid` int(10) NOT NULL DEFAULT '0',
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0' COMMENT '0=baru ngirim, 1 udah dibuka',
  `semua` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '0' COMMENT '0=tidak semua, 1=semua teman dikirim',
  `tujuan_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_mengajar`
--

CREATE TABLE IF NOT EXISTS `t_mengajar` (
  `idajar` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kelas` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `pel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `program` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idajar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `t_mengajar`
--

INSERT INTO `t_mengajar` (`idajar`, `nip`, `kelas`, `pel`, `program`) VALUES
(1, '400001001', 'XII IPA 1', 'Matematika', NULL),
(2, '400001001', 'XII IPA 2', 'Matematika', NULL),
(7, '400001002', 'X - 2', 'B. Inggris', '-'),
(9, '400001001', 'X - 4', 'BK', '-'),
(13, '400001002', 'X - 4', 'Matematika', NULL),
(14, '400001001', 'X - 1', 'Matematika', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_news`
--

CREATE TABLE IF NOT EXISTS `t_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isi` longtext COLLATE latin1_general_ci,
  `subject` text COLLATE latin1_general_ci,
  `pengirim` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `posttime` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `postdate` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `t_news`
--

INSERT INTO `t_news` (`id`, `isi`, `subject`, `pengirim`, `posttime`, `postdate`, `visits`) VALUES
(17, '<div class="views-field-field-berita-isi-value">\r\n<div class="field-content">\r\n<p class="rtejustify">Jakarta --- Persiapan perubahan kurikulum sudah memasuki tahap uji publik pada Desember ini. Kemarin, (11/12), Menteri Pendidikan dan Kebudayaan Mohammad Nuh melaporkan perkembangan persiapan Kurikulum 2013 kepada Wakil Presiden Boediono, selaku Ketua Komite Pendidikan. &ldquo;Kami melaporkan yang sudah dan sedang dilaksanakan, dan yang akan datang di akhir tahun,&rdquo; ujar Mendikbud kemarin sore, di ruangannya.</p>\r\n<p class="rtejustify">Menteri Nuh melaporkan, persiapan kurikulum untuk standar kompetensi lulusan, perumusan kompetensi dasar, dan struktur kurikulum untuk tingkat SD dan SMP sudah selesai. Namun untuk tingkat SMA masih dalam proses. Kepada Wapres Boediono, ia juga memberikan laporan terkini tentang hasil Uji Publik Kurikulum 2013 secara online, melalui alamat <a href="http://kurikulum2013.kemdikbud.go.id/">http://kurikulum2013.kemdikbud.go.id</a>.</p>\r\n<p class="rtejustify">Berdasarkan data per 10 Desember 2012, pukul 15.00 WIB, terdapat sekitar enam ribu pengunjung aktif situs uji publik Kurikulum 2013. &ldquo;Ada 6172 yang aktif dan 3132 yang memberikan komentar. Komentarnya juga bukan sekedar komentar. Ini panjang-panjang. Itu yang menarik . Orang kalau nggak tertarik ngapain ngasih komentar,&rdquo; imbuhnya.</p>\r\n<p class="rtejustify">Ia menjelaskan, komentar-komentar yang masuk dari masyarakat tersebut sebagian besar bernada positif. Komentar-komentar tersebut akan disatukan menjadi buku, sesuai sistematika, sehingga bisa menjadi dokumen. &ldquo;Nanti ada bukti sejarah. Pertama kali kita mengembangkan kurikulum dengan uji publik. Hasil pandangan publik seperti ini. Itu menjadi dokumen. Sejarah. Ada partisipasi publik&rdquo;.</p>\r\n<p class="rtejustify">Selain melaporkan hasil uji publik, Menteri Nuh juga membahas strategi implementasi kurikulum baru dengan Wapres. Ada empat hal yang dibahas mengenai impelmentasi, yaitu dokumen kurikulum, persiapan buku, persiapan guru, dan jadwal induk. Namun, yang menjadi fokus pembicaraan dengan orang nomor dua di Indonesia tersebut adalah mengenai persiapan guru. Wapres Boediono meminta Mendikbud mematangkan konsep dalam persiapan guru menghadapi perubahan kurikulum. &ldquo;Wapres memberikan penekanan di situ,&rdquo; katanya. (DM)</p>\r\n</div>\r\n</div>', 'Mendikbud Laporkan Perkembangan Kurikulum ke Wapres', '3', '12:08:42', '12/16/2012', 15),
(24, '<div class="views-field-field-berita-isi-value">\r\n<div class="field-content">\r\n<p class="rtejustify">Jakarta --- Konsep pelatihan para guru dalam menghadapi kurikulum 2013 akan dilakukan dengan menggunakan metode master teacher. Guru-guru berprestasi dan memiliki skill atau kemampuan mengajar yang baik akan dilatih terlebih dahulu untuk kemudian menyampaikan ilmu yang didapat kepada guru yang lain. "Bisa guru juara lomba nasional, guru teladan nasional, guru terbaik di sekolah-sekolah swasta, negeri, sekolah internasional, ada juga sebagian dosen dan praktisi sebagai pelatih. Mereka yang akan memberikan pelatihan ke guru-guru yang akan menjadi master teacher," jelas Mendikbud Mohammad Nuh di ruangannya, pada Selasa (11/12) lalu.</p>\r\n<p>Tiga hal yang penting dalam pelatihan guru ini adalah materi pelatihan, target guru yang dilatih, dan metode pelatihan yang digunakan. Guru yang mendapat prioritas pelatihan adalah guru kelas I, IV, VII, dan X dengan materi seputar konsep kurikulum baru. "Sebenarnya, opsinya kan ada beberapa terkait teknis pelaksanaan. Tetapi, kemungkinan besar adalah diterapkan pada kelas I, IV, VII, dan X," ujar Menteri Nuh.</p>\r\n<p>Ia menjelaskan, setiap pelatihan nantinya akan selalu ada pre-test dan post test. "Dari situ kita lihat master teacher terbaik. Sehingga kita punya stok master teacher," katanya. Salah satu tujuan konsep master teacher ini adalah untuk menumbuhkan rasa percaya diri guru, dan memotivasi guru&nbsp; untuk berprestasi.</p>\r\n<p>Guru-guru yang akan dipilih untuk mengikuti pelatihan menjadi master teacher tidak hanya berasal dari kota besar, tetapi juga dari tingkat kabupaten. "Kita ingin membangun atmosfer supaya guru berlomba untuk berprestasi. Karirnya tidak hanya berupa tunjangan profesi, pangkat, tapi ada status yang lain, yaitu&nbsp;master teacher," tutur Menteri Nuh.</p>\r\n<p>Pelatihan guru akan dilakukan secara paralel dengan pelatihan master teacher, yaitu berupa angkatan. "Begitu angkatan satu master teacher selesai dan dinyatakan qualified, dia langsung terjun ke lapangan, training guru-guru di mana-mana," terang Mendikbud. Sementara angkatan master teacher yang pertama melakukan pelatihan untuk guru-guru, pelatihan angkatan kedua untuk master teacher terus dilakukan, dan seterusnya. Dalam menjalankan pelatihan guru tersebut, Kemdikbud akan terus menjamin quality control para guru yang menjadi peserta pelatihan. (DM)</p>\r\n</div>\r\n</div>', 'Master Teacher Jadi Konsep Pelatihan Guru untuk Hadapi Kurikulum 2013', '3', '13:05:09', '12/16/2012', 80),
(18, '<p>Program Pendataan Pendidikan Menengah hingga saat ini telah berjalan sesuai dengan yang diharapkan, meskipun masih terdapat kendala dalam proses pelaksanaannya.</p>\r\n<p>&nbsp;</p>\r\n<p>Salah satu kendala yang <strong>cukup mengganggu adalah tentang NPSN</strong> yang belum dimiliki oleh beberapa sekolah, dari data yang ada, sekitar 4000 sekolah masih belum memiliki NPSN.</p>\r\n<p>&nbsp;</p>\r\n<p>Di sisi yang lain ditemukan bahwa data nama sekolah yang masuk tidak sesuai dengan standar format (nomenklatur) penamaan sekolah, demikian juga halnya dengan referensi wilayah.</p>\r\n<p>&nbsp;</p>\r\n<p>Dari hasil evaluasi tersebut, maka telah di ambil kebijakan perihal<strong> penerbitan NPSN secara otomatis</strong> oleh sistem serta tindakan untuk melakukan perbaikan format penamaan sekolah berikut referensi wilayahnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Adapun layanan permintaan NPSN sudah dilakukan dengan system generate NPSN otomatis. Bagi sekolah yang belum memiliki NPSN ataupun sudah diharapkan mengecek ulang NPSN sekolah masing-masing dengan alamat link sebagai berikut http://pendataan.dikmen.kemdikbud.go.id/sipdikmen/html/npsn.php?id=npsn, sehingga dengan adanya NPSN tersebut diharapkan bagi sekolah yang belum mengirimkan/sinkron&nbsp; datanya untuk segera melakukan sinkronisasi keserver dikmen.(jls)</p>\r\n<p>&nbsp;</p>', 'Updating NPSN Pendataan Dikmen', '3', '13:09:43', '12/16/2012', 3),
(19, '<p><span class="upperdeck"><span style="font-size: medium;">Pembangunannya diprioritaskan di kawasan timur Indonesia. </span></span> <span class="deskripsi"><span class="deskripsi">YOGYAKARTA--Pemerintah tampaknya serius mengedapankan sektor pendidikan dalam pembangunan tahun depan. Setidaknya hal ini bisa dilihat dari rencana pemerintah yang akan membangun 10 ribu ruang kelas baru (RKB) dan unit sekolah baru (USB) untuk mendukung pelaksanaan dan penuntasan wajib belajar pendidikan dasar sembilan tahun.</span></span></p>\r<BR><p align="justify">''''Pembangunan RKB dan UKB akan dilakukan secara bertahap mulai 2006,'''' kata Dirjen Manajemen Pendidikan Dasar dan Menengah (Mandikdasmen) Departemen Pendidikan Nasional, Suyanto, di Yogyakarta, Sabtu (19/11). Menurut dia, di sela-sela <em>sharing</em> desentralisasi pendidikan di Universitas Muhammadiyah Yogyakarta (UMY), pembangunan RKB dan USB akan diprioritaskan pada daerah yang angka partisipasi pendidikannya masih rendah atau kurang dari 60 persen dan daerah perbatasan, terutama di Kawasan Timur Indonesia (KTI) dan luar Jawa.</p>\r<BR><p align="justify">Ia mengatakan, pembangunan RKB dan USB membutuhkan dana yang tidak sedikit. Untuk membangun satu USB beserta sarana dan prasarananya saja, lanjut Suyanto, dibutuhkan dana sekitar Rp 1,7 miliar.</p>\r<BR><p align="justify">Selain membangun ruang kelas dan sekolah baru, pemerintah, kata dia, juga akan mengangkat sekitar 110 ribu guru bantu menjadi pegawai negeri sipil (PNS). ''''Namun, pemerintah tidak akan menambah jumlah guru bantu,'''' tandas Suyanto yang juga Rektor Universitas Negeri Yogyakarta (UNY) ini.</p>\r<BR><p align="justify">Pada acara <em>sharing</em> desentralisasi pendidikan, Suyanto mengatakan, UU No 22/1999 mengenai Desentralisasi Pendidikan yang diberikan pada pemerintah daerah menyebutkan bahwa penyelenggaraan pendidikan bukan saja termasuk urusan yang didesentralisasikan, tetapi menjadi urusan wajib. ''''Artinya, pusat wajib menyerahkan penyelenggaraan urusan itu kepada daerah, dan daerah tidak bisa menolak dengan alasan apa pun untuk menyelenggarakannya,'''' katanya.</p>\r<BR><p align="justify">Menurut dia, penyelenggaraan desantralisasi pendidikan yang diserahkan ke daerah di antaranya meliputi pembiayaan, pengelolaan atau manajemen pendidikan, dan kurikulum. ''''Namun, kesiapan daerah untuk melaksanakan kebijakan itu ternyata beragam. Ada daerah yang siap untuk melaksanakannya, ada pula daerah yang menghadapi kendala dalam mengimplementasikannya,'''' katanya.</p>\r<BR><p align="justify"><strong>SMP Rintisan </strong> Sebanyak 27 Sekolah Menengah Pertama (SMP) berstatus sekolah rintisan, yaitu sekolah yang jumlah siswanya maksimal 90 orang, di Kabupaten Sleman, Provinsi Daerah Istimewa Yogyakarta, memperoleh dana Bantuan Khusus Sekolah (BKS) dari pemerintah pusat masing-masing sebesar Rp 25 juta.</p>\r<BR><p align="justify">Kepala Bidang Pendidikan SMP Dinas Pendidikan Kabupaten Sleman, Tri Pujantoro, mengatakan pemanfaatan dana bantuan tersebut belum ada petunjuknya. Tetapi dana itu hanya diperbolehkan untuk biaya pengadaan sarana fisik sekolah, seperti pembelian komputer, pengadaan sarana laboratorium, dan biaya kegiatan sekolah, misalnya dana penambahan jam belajar bagi siswa pada sore hari.</p>\r<BR><p align="justify">''''Prinsispnya dana bantuan itu dapat dipergunakan untuk apa saja, tetapi yang bersifat menunjang kemajuan pendidikan, bukan untuk membangun atau merehab gedung sekolah,'''' ujar Tri.</p>\r<BR><p align="justify">Kepada sekolah penerima bantuan ini diminta memanfaatkan dana itu sebaik mungkin, sehingga dapat meningkatkan kualitas pendidikan yang akhirnya dapat meningkatkan status ke jenjang berikutnya.</p>\r<BR><p align="justify">Menurut Tri, sekarang ini ada beberapa status jenjang pendidikan tingkat SMP dan SMA, yaitu sekolah berstatus rintisan, potensial, sekolah standar nasional (SSN), dan sekolah berstatus standar internasional (SSI). ''''SMP dinyatakan berstatus rintisan manakala sekolah bersangkutan jumlah seluruh siswanya dari kelas I-III maksimal 90 siswa, dan untuk jenjang berikutnya ditentukan oleh kualitas pendidikannya dan pemberian jenjang status tersebut berlaku untuk semua sekolah SMP dan SMA/SMK negeri dan swasta,'''' katanya. (ant ) <strong><span class="tgl">Republika Senin,&nbsp;21 Nopember 2005</span></strong></p>', 'Depdiknas Bangun 10 Ribu Kelas dan Sekolah Baru ', '1', '22:32:44', '11/23/2005', 12),
(20, '<p><font class="berita"> </font></p>\r\n<p><span style="font-size: medium;"><font class="berita"><strong><span class="judul">Banyak Guru-guru Lain yang Bisa Ditiru.</span></strong></font></span></p>\r\n<p><font class="berita">&quot;Hari<b> </b>yang bersejarah untuk saya,&quot; Begitu komentar Muslimah Hafsari Hamid binti K.A. Abdul Hamid (55), atau akrab disapa Bu Musmilah saat berbincang-bincang dengan Persda Network, di Jakarta, Selasa (2/12). </font></p>\r\n<p><font class="berita">Pernyataan itu dilontarkan Bu Muslimah sehubungan penghargaan Satyalencana Pendidikan yang baru saja diberikan Presiden Susilo Bambang Yudhoyono (SBY) pada acara puncak peringatan Hari Guru Nasional dan HUT Ke-63 PGRI, di Stadion Tennis Indoor, Gelora Bung Karno, Senayan pada pagi harinya. Selain Bu Muslimah, penghargaan serupa juga diberikan kepada ratusan guru lainnya.</font></p>\r\n<p><font class="berita">Terkait tokoh yang diceritakan dalam film dan novel laris Laskar Pelangi, karya Andrea Hirata, itu, SBY berpesan agar para guru meniru mental dan kreasi Bu Mulismah. Guru yang saat ini mengajar di SDN Gantong, Belitung, itu juga dianggap sebagai inspirator bagi Andrea Hirata. &quot;Jadilah bapak-bapak dan ibu-ibu menjadi Ibu Muslimah yang lain dengan banyak inisiatif, bermental baja untuk memberi semangat kepada murid-muridnya,&quot; kata SBY saat memberikan sambutan. <br />\r\nMendengar pernyataan tersebut, Muslimah mengaku bangga sekaligus kaget. Ia bangga karena menerima penghargaan satyalencana dan kaget mendengar pesan SBY.</font></p>\r\n<p><font class="berita">&quot;Banyak guru-guru lain yang bisa ditiru. Saya mohon maaf kepada guru-guru yang lain. Kalau memang ada yang bisa ditiru dan dicontoh, ya silakan saja. Saya tidak mengharapkan hal-hal yang berlebihan,&quot; ujar Muslimah.</font></p>\r\n<p><font class="berita">Muslimah mengatakan ia tidak pernah bermimpi untuk mendapatkan penghargaan Satyalencana Pendidikan. Penganugerahan itu pun diketahuinya sekitar dua minggu lalu lewat sebuah surat dari Departemen Pendidikan Nasional (Depdiknas). Dalam surat tersebut, Muslimah terlebih dahulu diminta mengirimkan sejumlah data.</font></p>\r\n<p><font class="berita">Ke depan, Muslimah mengaku akan berbuat lebih baik untuk dunia pendidikan tanah air, khususnya di tempat ia mengajar. Guru yang sebelumnya mengajar di SD Muhammadiyah Belitung itu juga mengajak seluruh guru di Indonesia melakukan hal yang sama. &quot;Mari kita berjuang semaksimal mungkin dengan hati,&quot; imbuhnya. (<strong>Persda Network/mun/ade</strong>)</font></p>\r\n<p><font class="berita">Sumber : http://tribunjabar.co.id</font></p>', 'Ibu Guru Laskar Pelangi Terima Satyalencana Pendidikan', '1', '07:29:46', '12/13/2008', 6),
(21, '<div align="justify" class="news">\r\n<p style="text-align: justify;"><strong>Jakarta, Selasa (7 Juli 2009) </strong>-- Pada Bulan Juli 2009 ini Indonesia kembali mengirimkan siswa - siswa sekolah menengah atas (SMA) ke olimpiade sains internasional. Sebanyak empat tim akan berlaga di bidang Fisika, Matematika, Biologi, dan Kimia.<br />\r\n<br />\r\nTim-tim yang akan berlaga membawa nama bangsa diterima Selasa (7/07/2009) oleh Direktur Jenderal Manajemen Pendidikan Dasar dan Menengah Depdiknas Suyanto di Gedung Depdiknas, Jakarta. <br />\r\n<br />\r\nPada bidang Fisika, Tim Olimpiade Fisika Indonesia (TOFI) akan berlaga di International Physics Olympiad (IPhO) ke-40 di Merida Yucatan, Meksiko pada 12 - 18 Juli 2009. Pembina pembina Yohanes Surya mengatakan, tim yang diberangkatkan adalah hasil seleksi Olimpiade Fisika Asia ke-10 di Bangkok, Thailand yang meraih dua medali emas, empat medali perak, dan dua medali perunggu. &quot;Targetnya meraih tiga medali emas,&quot; katanya. <br />\r\n<br />\r\nTOFI terdiri atas Paul Zakharia Fajar Hanakata, siswa SMAN 1 Denpasar, Bali; Dzuhri Radityo Utomo, siswa SMAN 1 Yogyakarta; Andri Pradana, siswa SMAK 1 BPK Penabur DKI Jakarta; Winson Tanputraman, siswa SMAK 1 BPK Penabur DKI Jakarta; dan Fernaldo Richtia Winnerdy, siswa SMAK BPK Penabur, Gading Serpong, Banten.<br />\r\n<br />\r\nPada bidang Matematika, Indonesia mengirim sebanyak enam siswa ke International Mathematical Olympiad (IMO) ke-50 yang diselenggarakan pada 10 - 22 Juli 2009 di Bremen, Jerman. Tim ditargetkan meraih dua medali perak dan empat medali perunggu.<br />\r\n<br />\r\nTim IMO Indonesia terdiri atas Joseph Andreas, siswa SMAK 1 BPK Penabur Jakarta; Aldrian Obaja, siswa SMAK 1 BPK Penabur Bandung; Andreas Dwi Maryanto Gunawan, siswa SMAK Kolese Santo Yusup Malang, Jawa Timur; Raja Oktovin, siswa SMAN 1 Pekanbaru, Riau; Ivan Wangsa Cipta Lingga, siswa SMAK 1 BPK Penabur Jakarta; dan Ronald Widjojo, siswa SMAK St.Louis 1 Surabaya.<br />\r\n<br />\r\nPada bidang Biologi, tim akan berlaga di arena kompetisi International Biology Olympiad (IBO) ke-20 &nbsp;pada 12 - 19 Juli 2009 di Tsukuba, Jepang. Tim IBO mengirimkan sebanyak empat siswa dan ditargetkan menyumbangkan medali emas. Ajang IBO diikuti oleh sebanyak 220 siswa dari 55 negara.<br />\r\n<br />\r\nTim IBO Indonesia terdiri atas Anugerah Erlaut, siswa kelas XII SMA Kharisma Bangsa, Tangerang; Irfan Haris, siswa kelas X SMAN 1 Pringsewu, Lampung; Danang Crysnanto, siswa kelas XI SMAN 1 Wonogiri, Jawa Tengah; dan Elbert Wijaya, siswa kelas XII SMAK Penabur DKI Jakarta.<br />\r\n<br />\r\nAdapun pada bidang Kimia, Tim Olimpiade Kimia Internasional (OKI) Indonesia akan bersaing di International Chemistry Olympiad (IChO) ke-41. Kompetisi akan berlangsung pada 18 - 27 Juli 2009 di London, Inggris. Tim OKI mengirimkan sebanyak empat siswa. Tim ditargetkan meraih medali setara penyelenggaraan IChO ke-40 di Budapest, Hungaria yaitu sebanyak satu medali emas, satu medali perak, dan satu medali perunggu atau minimal meraih dua medali perak dan dua medali perunggu. IChO akan diikuti sebanyak 66 negara peserta.<br />\r\n<br />\r\nTim OKI Indonesia terdiri atas Dimas Ramadhan Abdillah Fikri, siswa SMA Taruna Nusantara Magelang, Jawa Tengah; Ivana Polim, siswa SMA Sutomo 1 Medan, Sumatera Utara; Bening Tirta Muhammad, siswa SMAN 8 Pekanbaru, Riau; dan Adhitya Mangalaputra, siswa SMAK 1 BPK Penabur, Jakarta Barat.<br />\r\n<br />\r\nSuyanto berharap agar tim dapat mempertahankan perolehan medali yang selama ini telah diraih. Dia menyebutkan, sepanjang 2008 Indonesia telah memperoleh sebanyak 118 medali emas dari berbagai ajang olimpiade. &quot;Kepada tim Biologi, Fisika, dan Kimia agar membawa emas sebanyak - banyaknya. Khusus tim Matematika mudah - mudahan medali emasnya pecah tahun ini,&quot; katanya.***</p>\r\n</div>\r\n<em><br />\r\nSumber: Pers Depdiknas</em>', 'Indonesia Kirim Empat Tim ke Olimpiade Sains Internasional 2009', '2', '22:12:28', '07/10/2009', 10),
(22, '<p>Jaringan penelitian dan pengembangan (Jarlitbang) pendidikan merupakan wahana kerjasama lintas sektoral antara Pemerintah Pusat (Depdiknas) dan Pemerintah Daerah (Balitbangda/Bappeda, Dinas Pendidikan Propinsi/Kabupaten/Kota) dalam kegiatan penelitian dan pengembangan di bidang pendidikan.&nbsp;</p>\r<BR><p>Jarlitbang pada awalnya dikembangkan oleh Pusat Penelitian Kebijakan dan Inovasi Balitbang Depdiknas dengan sebutan jaringan penelitian (Jarlit). Setelah otonomi daerah dan adanya kepentingan bersama dalam mensinkronkan kebijakan pendidikan pusat dan daerah, pada tahun 2006 berkembang menjadi Jaringan Penelitian dan Pengembangan (Jarlitbang)<br />\r<BR>yang melibatkan Sekretariat dan seluruh pusat di lingkungan Balitbang Depdiknas, yaitu: Pusat Penelitian Kebijakan dan Inovasi Pendidikan (Puslitjaknov), Pusat Statistik Pendidikan (PSP), Pusat Kurikulum (Puskur), dan Pusat Penilaian Pendidikan (Puspendik).</p>\r<BR><p>Melalui Jarlitbang diharapkan dapat membantu pimpinan daerah dalam merencanakan dan melaksanakan serta memecahkan masalah-masalah kebijakan pendidikan di daerahnya. Hal ini sejalan dengan tuntutan dan kewenangan pemerintah daerah di era otonomi daerah. Oleh karena itu, keberadaaan Jarlitbang Pendidikan sangat diperlukan dalam upaya mensinkronkan berbagai kebijakan pendidikan nasional dan membantu memecahkan berbagai permasalahan pendidikan (melalui penelitian,<br />\r<BR>pendataan/statistik persekolahan, kurikulum, dan penilaian pendidikan).</p>\r<BR><p>Sejalan dengan itu, Balitbang Depdiknas merasa perlu melakukan sinkronisasi kebijakan pendidikan nasional di berbagai jenis dan jenjang pendidikan dengan pemerintah daerah agar terjadi sinergi penyelenggaraan kebijakan pendidikan antarpusat dan antardaerah. Hal ini perlu dilakukan secara sinergi mengingat institusi penelitian dan pengembangan bidang pendidikan (penelitian kebijakan, pendataan, kurikulum, penilaian dan akreditasi sekolah/madrasah) di pusat dan daerah telah terjadi jalinan kerjasama di bidang masing-masing.</p>\r<BR><p>Selain dari pada itu, Balitbang yang berperan memfasilitasi Badan Standar Nasional Pendidikan (BSNP), Badan Akreditasi Nasional Pendidikan Tinggi (BAN PT), Badan Akreditasi Nasional Sekolah/Madrasah (BAN S/M) dan Badan Akreditasi Nasional Pendidikan Non Formal (BAN PNF) perlu memberikan informasi dan dukungan agar pelaksanaan standar nasional pendidikan, akreditasi sekolah/madrasah, akreditasi pendidikan non formal, dan akreditasi perguruan tinggi berjalan secara optimal.</p>\r<BR><p>Di samping itu, untuk mewujudkan layanan pendidikan bagi seluruh lapisan masyarakat diperlukan komitmen seluruh pemangku kepentingan (stakeholder) pendidikan. Dalam kerangka mewujudkan komitmen seluruh pihak terkait dan sesuai dengan fungsi strategis Bappeda, Balitbangda, Dinas Pendidikan, dan LPMP dalam penetapan kebijakan daerah, maka instansi tersebut diharapkan mengkoordinasikan penelitian kebijakan, pendataan, kurikulum, penilaian dan akreditasi sekolah/madrasah di tingkat kabupaten/kota dan provinsi.</p>\r<BR><p>Dalam rangka mengkoordinasikan dan menyinkronkan seluruh proses pembangunan pendidikan dirasakan perlu melakukan koordinasi melalui Rapat Koordinasi Nasional dengan tema: &rdquo;Peningkatan peran Jaringan Penelitian dan Pengembangan Dalam Rangka Penuntasan Target Pembangunan Pendidikan Tahun 2009&rdquo;.</p>\r<BR><p>Kegiatan Rakornas Jarlitbang Pendidikan dilaksanakan selamat 3 (tiga) hari, pada hari Selasa sampai dengan Kamis, tanggal 26-28 Mei 2009, yang diselenggarakan di Hotel Patrajasa Semarang, Jawa Tengah.</p>\r<BR><p>Peserta yang diundang adalah anggota Jaringan Penelitian dan Pengembangan (Jarlitbang) yang dinilai aktif dalam waktu tiga tahun terakhir, dan seluruh Lembaga Penjaminan Mutu Pendidikan (LPMP) yang berjumlah sekitar 220 orang, yang terdiri dari:</p>\r<BR><p>1. Ketua Balitbangda/Bappeda Propinsi<br />\r<BR>2. Ketua Balitbangda/Bappeda Kabupaten/Kota<br />\r<BR>3. Kepala Dinas Pendidikan Propinsi/Kabupaten/Kota<br />\r<BR>4. Ketua LPMP seluruh Indonesia</p>\r<BR><p>Panitia Penyelenggara Rakornas Jarlitbang Pendidikan Tahun 2009 dibentuk berdasarkan Surat Keputusan Kepala Badan Penelitian dan Pengembangan Departemen Pendidikan Nasional Nomor 000/G/Kep/PG/2009 tanggal 1 April 2009.</p>\r<BR><p>Apabila peserta Rakornas Jarlitbang memerlukan informasi atau bantuan berkaitan dengan penyelenggaraan Rakornas Jarlitbang dapat menghubungi:</p>\r<BR><p>Sekretariat Balitbang Depdiknas<br />\r<BR>Gedung E Lantai 2<br />\r<BR>Jalan Jenderal Sudirman, Senayan - Jakarta<br />\r<BR>Telpon : 021-57900405, 5733129, 5737102<br />\r<BR>Fax: 021-5721245, 5721244<br />\r<BR>SMS : 0811-9999-80<br />\r<BR>Email : jarlitbang2009@yahoo.com</p>\r<BR><p>Penyelenggaraan Rapat Koordinasi Nasional Jaringan Penelitian Pendidikan Tahun 2009 merupakan kerjasama antara Balitbang Depdiknas Jakarta, Balitbang Propinsi Jawa Tengah dan Dinas Pendidikan Propinsi Jawa Tengah.</p>\r<BR><p>Sumber:&nbsp;Balitbang Depdiknas</p>', 'Rapat Koordinasi Nasional Jaringan Penelitian Dan Pengembangan Pendidikan Tahun 2009', '2', '22:18:30', '07/10/2009', 23),
(23, '<p>&nbsp;</p>\r<BR><p><strong>Jakarta, Senin (3 Agustus 2009)</strong> -- Presiden RI, Susilo Bambang Yudhoyono (SBY) menegaskan, pemerintah akan mempertahankan anggaran pendidikan minimal 20 persen dari Anggaran Pendapatan dan Belanja Negara (APBN). Kebijakan ini merupakan salah satu prioritas belanja pemerintah untuk mendukung sasaran - sasaran pembangunan sesuai rencana kerja pemerintah (RKP) 2010 dalam Rencana APBN 2010.<br /> <br /> "Dengan anggaran pendidikan yang mencapai 20 persen dari APBN kita berharap dapat meningkatkan mutu pendidikan di negeri kita guna membangun keunggulan dan daya saing bangsa di abad 21," katanya saat menyampaikan pokok - pokok Rancangan APBN tahun 2010 dan nota keuangan 2010 pada Rapat Paripurna Luar Biasa Dewan Perwakilan Rakyat (DPR) pada masa reses persidangan empat tahun sidang 2008/2009 di Ruang Rapat Paripurna, Gedung DPR RI, Senayan, Jakarta, Senin (3/08/2009).<br /> <br /> Hadir pada acara Ketua dan Wakil Ketua DPR RI, para anggota Dewan Perwakilan Daerah RI, Ketua, Wakil Ketua, dan anggota lembaga - lembaga negara, duta besar dan pimpinan perwakilan badan - badan dan organisasi internasional, serta para gubernur kepala daerah.<br /> <br /> Presiden SBY menyebutkan, prioritas lain belanja pemerintah adalah untuk memperbaiki kesejahteraaan aparatur negara dan pensiunan, melanjutkan seluruh program kesejahteraan rakyat seperti Program Nasional Pemberdayaan Masyarakat (PNPM), Bantuan Operasional Sekolah (BOS), Program Jaminan Kesehatan Masyarakat (Jamkesmas), Program Keluarga Harapan (PKH) dan beras bersubsidi atau tadinya disebut raskin. Selain itu, kata Presiden SBY, melanjutkan pembangunan infrastruktur transportasi, pertanian, energi, dan proyek padat karya lainnya. <br /> <br /> Prioritas lainnya, kata Predisen SBY, adalah mendorong revitalisasi industri dan pemulihan dunia usaha, meneruskan reformasi birokrasi guna mewujudkan tata kelola pemerintahan yang baik dan peningkatan pelayanan publik. Kemudian meningkatkan anggaran operasional, pemeliharaan, dan pengadaan alat tama sistem senjata Tentara Nasional Indonesia (Alutsista TNI), serta meningkatkan kualitas pengelolaan sumber daya alam dan kapasitas penanganan perubahan iklim. <br /> <br /> Presiden SBY mengatakan, sesuai dengan prioritas RKP 2010 dalam RAPBN tahun 2010 pemerintah mengalokasikan anggaran sebesar Rp.37 triliun untuk pemeliharaan kesejahteraan rakyat, serta penataan kelembagaan dan pelaksanaan sistem perlindungan sosial. "Sasaran yang hendak dicapai dari prioritas tersebut adalah menurunkan angka kemiskinan menjadi 12 sampai dengan 13,5 persen," katanya.<br /> <br /> Sementara itu, lanjut Presiden SBY, alokasi anggaran yang akan digunakan untuk meningkatkan kualitas sumber daya manusia(SDM) Indonesia pada tahun 2010 direncanakan mencapai Rp.51,2 triliun. Sasaran yang hendak dicapai dengan alokasi di anggaran tersebut antara lain adalah untuk bidang pendidikan. "Yaitu meningkatnya akses dan pemerataan pada jenjang pendidikan dasar yang berkualitas bagi semua anak usia tujuh sampai dengan lima belas tahun," katanya.<br /> <br /> Presiden SBY menyebutkan, sasaran lainnya adalah menurunnya angka putus sekolah, meningkatnya kualitas pendidikan, dan meningkatnya kesejahteraan pendidik. Selain itu, di bidang kesehatan yaitu tersedianya fasilitas kesehatan dasasr dan rujukan, serta terlayaninya seluruh penduduk miskin untuk mendapatkan pelayanan kesehatan dasar di Puskesmas dan jaringannya, serta di kelas III rumah sakit. <br /> <br /> Sasaran berikutnya adalah di bidang perbaikan gizi yaitu meningkatnya cakupan pemberian makanan pendamping air susu ibu (ASI) pada anak usia 6 sampai dengan 24 bulan keluarga miskin. "Bidang Keluarga Berencana (KB) yaitu terlayaninya peserta KB baru sekitar 7,1 juta peserta diantaranya 3,7 juta adalah peserta KB baru miskin dan meningkatkan peserta KB aktif menjadi sekitar 26,7 juta peserta diantaranya 11,9 juta adalah peserta KB aktif miskin," katanya. <br /> <br /> Lebih lanjut Presiden SBY menyampaikan, dari alokasi anggaran belanja pemerintah pusat tahun 2010 sebesar Rp.699,7 triliun, anggaran belanja direncanakan untuk seluruh kementerian negara dan lembaga mencapai Rp.327,6 triliun atau naik sebesar Rp.10,6 triliun dibandingkan dengan perkiraan realisasinya di tahun 2009. "Kenaikan anggaran belanja kementerian dan lembaga tersebut terutama untuk mendukung pencapaian sasaran-sasaran yang direncanakan dalam RKP tahun 2010," ujarnya.<br /> <br /> Presiden SBY mengatakan, berdasarkan prioritas RKP 2010, serta mempertimbangkan tugas pokok dan fungsi kementerian negara dan lembaga dalam RAPBN tahun anggaran 2010, terdapat beberapa kementerian negara atau lembaga yang mendapat alokasi anggaran yang cukup besar. Presiden SBY menyebutkan, Departemen Pendidikan Nasional (Depdiknas) dalam tahun 2010 mendatang direncanakan memperoleh alokasi anggaran sebesar Rp.51,8 triliun, Departemen Pertahanan (Dephan) Rp.40,7 triliun, Departemen Pekerjaan Umum (Dep PU) Rp.34,3 triliun, Departemen Agama (Depag) Rp.26 triliun, Kepolisian Negara RI Rp.25,8 triliun, Departemen Kesehatan (Depkes) Rp.20,8 triliun dan Departemen Perhubungan (Dephub) Rp.16 triliun.<br /> <br /> Presiden SBY menyampaikan, alokasi anggaran pendidikan yang besar pada Depdiknas dan Depag dimaksudkan terutama untuk menuntaskan pelaksanaan program wajib belajar pendidikan dasar 9 tahun , pemerataan dan perluasan akses pendidikan, serta peningkatan mutu, relevansi dan daya saing pendidikan. "Anggaran itu juga ditujukan untuk menaikkan kesejahteraan guru," kata Presiden SBY.<br /> <br /> Sementara, kata Presiden SBY, dalam rangka mendukung pelaksanaan desentralisasi fiskal dalam 2010 mendatang alokasi anggaran transfer ke daerah direncanakan mencapai Rp.309,8 triliun. "Dari jumlah tersebut alokasi dana perimbangan direncanakan mencapai Rp.293 triliun atau naik Rp.7,7 triliun," katanya. <br /> <br /> Presiden SBY menyebutkan, kenaikan terbesar dari dana perimbangan dalam tahun 2010 tersebut berasal dari rencana realokasi tunjangan profesi yang dialokasikan sebagai dana alokasi umum (DAU) tambahan untuk tunjangan profesi guru sebesar Rp.8,9 triliun. "Rencana realokasi tunjangan profesi guru ke dalam DAU mulai tahun 2010 sejalan dengan semangat Peraturan Pemerintah Nomor. 41 Tahun 2009 tentang Tunjangan Profesi Guru dan Dosen," katanya. <br /> <br /> Oleh karena itu, lanjut Presiden SBY, mulai tahun 2010 alokasi DAU dalam struktur APBN akan terdiri dari DAU murni yang dialokasikan dengan menggunakan formula murni dan DAU tambahan untuk tunjangan profesi guru. "Tunjangan tersebut diberikan kepada guru dan dosen yang memiliki sertifikat pendidik sebagai penghargaan atas profesionalitasnya sesuai dengan kewenangannya, " katanya.<br /> <br /> Disamping itu, kata Presiden SBY, untuk melanjutkan kebijakan yang diambil pada 2009 tentang penghasilan minimal golongan terendah guru sebesar Rp.2 jt per bulan maka dalam RAPBN 2010 masih dialokasikan dana penyesuaian berupa tambahan tunjangan kependidikan bagi guru sebesar Rp.7,9 triliun. "Kita semua berharap dengan ditingkatkannya alokasi anggaran ini kesejahteraan para guru dan dosen akan semakin membaik dan akhirnya sesuai dengan harapan rakyat Indonesia mutu pendidikan kita harus meningkat lebih tinggi lagi," katanya.<br /> <br /> Sebelumnya, Presiden SBY, menyampaikan pendapatan negara dan hibah direncanakan mencapai Rp.911,5 triliun atau meningkat Rp.38,8 triliun dari sasaran RAPBN Perubahan tahun anggaran 2009. Belanja negara direncanakan mencapai Rp.1.009,5 triliun yang berarti lebih tinggi sebesar 3,8 triliun rupiah dari yang dianggarkan dalam RAPBN-P tahun 2009. "Dengan demikian defisit anggaran dalam tahun 2010 direncanakan mencapai Rp.98 triliun atau 1,6 persen dari product domestic bruto (PDB)," katanya.<br /> <br /> Jumlah ini, kata Presiden SBY, mengalami penurunan sebesar Rp.35 triliun bila dibandingkan target yang direncanakan dalam RAPBN-P 2009 sebesar &Acirc;&nbsp;Rp.133 triliun atau 2,5 persen dari PDB. "Untuk mencapai sasaran pendapatan negara pada tahun anggaran 2010 mendatang, pemerintah akan terus melanjutkan langkah - langkah optimalisasi penerimaan baik penerimaan dari pajak maupun penerimaan negara bukan pajak (PNBP)," katanya.<br /> <br /> Presiden SBY menyebutkan, dari rencana pendapatan negara dan hibah yang ditargetkan mencapai Rp.911,5 triliun, dalam tahun 2010 penerimaan perpajakan direncanakan mencapai Rp.729,2 triliun, sedangkan PNBP diperkirakan mencapai Rp.180,9 triliun.***</p>\r<BR><p><em><br /> <em>Sumber: Pers Depdiknas</em></em></p>\r<BR><p>&nbsp;</p>\r<BR><p>&nbsp;</p>', 'Pemerintah Pertahankan Anggaran Pendidikan 20 Persen Dari APBN', '3', '11:43:29', '08/16/2009', 27),
(26, '<p>TEMPO.CO, Solo - Mobil Esemka laris manis selama pameran Esemka di Solo Techno Park, Surakarta. Sudah ratusan orang mengisi formulir pesanan mobil jenis Sport Utility Vehicle (SUV) dan pick up itu. "Selama pameran Esemka di Solo Techno Park, ada 500-an formulir pemesanan yang diisi," kata Humas PT Solo Manufaktur Kreasi, Dwi Budi Martono, di sela pameran, Senin, 12 November 2012.<br /><br />Ada sebagian calon pembeli yang langsung menghubungi Direktur PT SMK Sulistyo Rabono atau penanggung jawab produksi Joko Sutrisno untuk memesan Esemka Rajawali atau Bima. Menurut Sulistyo, total ada sekitar 2.000 unit Esemka yang sudah dipesan. "Pemesan sudah komitmen untuk menyerahkan uang tanda jadi Rp 2 juta," ujarnya.<br /><br />Selain tanda jadi, pemesan harus menyerahkan uang muka minimal 30 persen dari harga mobil. Sulistyo mengatakan harga jual Esemka Rajawali Rp 130-140 juta, sedangkan Esemka Bima tidak lebih dari Rp 80 juta. Dia menjanjikan inden mobil Esemka paling lama 6 bulan. "Kuartal pertama 2013, assembling line sudah selesai. Kemudian pada bulan ke-6, mobil sudah bisa diterima konsumen," katanya.<br /><br />Rencananya produksi dilakukan di Solo Techno Park dan di tempat rekanan PT SMK di Cikarang, Bekasi. Untuk tahap awal, kapasitas produksi diperkirakan 10-20 unit per bulan. Nantinya kapasitas produksi akan ditingkatkan hingga menjadi minimal 200 unit per bulan. <br /><br />Selain itu, ada rencana membangun pabrik perakitan di sekitar Solo. Saat PT SMK tengah mengincar lahan seluas 10 hektare di Boyolali. Jika lancar, ditargetkan pabrik perakitan di Boyolali bisa dibangun awal 2013 untuk membantu meningkatkan kapasitas produksi Esemka secara keseluruhan.<br /><br />Sulistyo mengatakan, sebagian pemesan adalah kalangan pengusaha kecil menengah dan koperasi. Harga Esemka yang relatif terjangkau memungkinkan pengusaha kalangan ini mendapatkan mobil operasional untuk usaha.<br /><br />UKKY PRIMARTANTYO&nbsp;</p>', 'Mobil Esemka Sudah Dipesan 2.000 Unit ', '3', '21:42:24', '12/15/2012', 7),
(27, '<p>Intel, sebuah perusahaan yang berpusat di negeri Paman Sam, Amerika Serikat merupakan sebuah perusahaan multinasional yang bergerak dibidang rancangan dan produksi mikroprosesor. Perusahaan yang didirikan pada tahun 1968 ini juga membuat chipset, komponen, kartu jaringan, serta produk-produk lainnya. Mungkin sobat sudah sering melihat logo Intel pada laptop maupun notebook sobat dengan seri prosesornya. Pada tahun 2011, Intel telah merilis beberapa prosesor terbaru mereka untuk generasi terbaru dari prosesor Core 2 Duo, Dual Core, Core i3, Core i5, dll. Dan kali ini, pada tahun 2012 nanti, Intel berencana merilis beberapa model prosesor yang menggunakan teknologi fabrikasi 22nm dari varian Ivy Bridge pada bulan April tahun 2012.<br /><br />Beberapa model prosesor yang akan diluncurkan meliputi prosesor untuk komputer desktop atau PC, notebook, laptop, serta ultrabook. Kabar perilisan model prosesor terbaru ini datang dari bocoran informasi dari salah seorang sumber yang bekerja di perusahaan perakit personal computer (PC) asal Taiwan. Selain prosesor, Intel juga akan merilis sebuah cip untuk komputer desktop, seperti Z77, H77, Z75, dan B75. Untuk cip seri Q77 dan Q75, kabarnya Intel baru akan merilisnya pada bulan Mei tahun depan. Sedangkan cip yang dkhususkan untuk notebook yang kabarnya akan dirilis pada bulan April tahun depan yaitu HM77, UM77, HM76, HM75, serta QS77 dan QM77 yang rencananya akan diluncurkan pada bulan Mei.</p>', 'Prosesor Terbaru Intel di Tahun 2012 ', '3', '21:53:39', '12/15/2012', NULL),
(28, '<p>Indonesia diprediksi akan memiliki gedung tertinggi kelima dunia setinggi 600 meter yang rampung 2017. Gedung ini akan dibangun di Sudirman Central Business District (SCBD), Jakarta.<br /><br />Proyek pembangunan gedung tertinggi masih terus dirancang. Gedung yang berada di kawasan bisnis terpadu SCBD Jakarta itu nantinya akan diberi nama Signature Tower direncanakan akan selesai dan beroperasi pada 2017. Demikian keterangan PT Danayasa Arthatama Tbk., dalam laporan keuangan 2011 di Jakarta (6/5).<br /><br />Signature Tower rencananya akan dibangun pada Lot 6 dan 7 di SCBD, Jakarta. Gedung ini dirancang setinggi 600 meter lebih dengan jumlah 111 lantai. Signature Tower akan merebut rekor menara tertinggi Indonesia yang saat ini dipegang Wisma 46 setinggi 262 meter.<br /><br />Arpin Wiradisastra, Direktur Utama PT Danayasa Arthatama, Tbk., mengungkapkan pada saat ini perusahaan masih dalam tahap perencanaan pengembangan konsep desain awal gedung Signature Tower. &ldquo;Nantinya Signature Tower memiliki 111 lantai,&rdquo; jelasnya.<br /><br />Lokasi Signature Tower berada di Lot 6 yang kini masih berdiri bangunan Automall. Automall merupakan tempat penjualan mobil dan motor mewah. Namun kini gedung ini telah kosong, dan nampak tidak ada aktivitas.<br /><br />Rencananya&nbsp; Signature Tower ini akan dijadikan kawasan&nbsp; mixed-use yang terdiri dari perkantoran dan hotel. Diatasnya akan ada observatory untuk para pengunjung sama halnya seperti gedung-gedung 100 lantai lainnya di dunia.<br /><br />Signature Tower berada di urutan kelima gedung tertinggi di 2020 versi The Council on Tall Buildings and Urban Habitat yang dirilis belum lama ini. Dalam daftar mereka, gedung tertinggi di tanah air diapit oleh Seoul Light DMC Tower dengan tinggi 640 meter di posisi ketiga, dan Shanghai Tower dengan tinggi 632 meter di posisi keempat.<br /><br />Haryanto</p>', 'Gedung Tertinggi di Indonesia Rampung 2017', '3', '22:07:51', '12/15/2012', 2),
(29, '<p>Metrotvnews.com, Surabaya: PT Jasa Marga akan menambah jalan tol baru rte Gempol-Pasuruan-Grati, Jawa Timur. Hal tersebut dikatakan Direktur Utama PT Transmarga Jatim, Hengki Herwanto, di sela-sela acara penandatanganan kontrak pembangunan jalan dengan tiga perusahaan.<br /><br />Pembangunannya dibagi dalam tiga sesi. PT Transmarga Jatim, anak perusahaan Jasa Marga, membangun sesi pertama dari Gempol-Rembang sepanjang 13,3 Km mulai awal Januari 2013. Dana investasinya sebesar Rp547 miliar.<br /><br />Selanjutnya PT Adhi Karya melanjutkan pembangunan fisik dan konsultan supervisi dengan nilai kontrak Rp299 miliar, PT Waskita sebesar Rp234 miliar, dan PT Multi Phi Beta Jo senilai Rp13 miliar.<br /><br />Menurut Hengki, pembangunan jalan memasuki proses pembebasan tanah yang baru mencapai 80 persen. Bila tak ada hambatan, katanya, jalan tol dapat segera dioperasikan.<br /><br />Jalan tol Gempol-Pasuruan seksi 1 merupakan bagian dari rangkaian jalur sepanjang 34,15 Km yang membentang dari Gempol ke Pasuruan. Seluruh pengerjaannya diperkirakan memakan waktu hingga tiga tahun.<br /><br />Seksi 2 dimulai dari titik rembang industri dan berakhir di Pasuruan. Sedangkan seksi 3 dari Kota Pasuruan menuju Kecamatan Grati, Kabupaten Pasuruan.<br /><br />Total dana pembangunan jalan tol itu sekitar Rp2,7 triliun dengan komposisi 30 persen modal Jasa Marga. Sisa modal berasal dari sindikasi Bank Jatim. Bank Mandiri, BNI, dan BRI.<br /><br />Sementara itu, Direktur PT Jasa Marga Adityawarman mengatakan akan menambah sembilan ruas jalan tol baru di Indonesia. Sehingga, Jasa Marga mengelola seribu kilometer jalan tol di Indonesia.<br /><br />Selain itu, katanya, Jasa Marga tertarik dengan proyek jalan tol tengah Surabaya menuju Tanjung Perak. Namun, Jasa Marga masih melakukan proses akuisisi.(Itong Suyanto/RRN)</p>', 'Pembangunan Tol Gempol-Pasuruan-Grati Dimulai Januari 2013', '3', '22:17:29', '12/15/2012', NULL),
(30, '<p>TRIBUNJOGJA.COM, SOLO - PT Kereta Api Indonesia (KAI) Daops VI Yogyakarta memberi sinyal positif mengenai pengoperasian kembali Sepur Kluthuk Jaladara di Kota Solo. Wakil Kepala PT KAI Daops VI Yogyakarta, Sri Astuti memungkinkan pengoperasian kereta api uap kuno tersebut pada awal tahun 2013 mendatang. "Diharapkan tahun 2013 bisa dijalankan," katanya akhir pekan ini di Solo.<br /><br />Pengadaan kereta wisata di Kota Solo tersebut atas kerjasama Pemerintah Kota (Pemkot) Solo dengan PT KAI. Pengoperasian kereta uap tersebut dihentikan sejak Oktober 2012 lalu seiring selesainya masa perjanjian kerjasama antara kedua belah pihak. Pemkot Solo telah mengajukan perpanjangan kerjasama sejak Juli 2012, namun sampai saat ini belum mendapat jawaban dari PT KAI.<br /><br />Astuti menjelaskan, sedianya kereta tersebut telah direncanakan kembali dioperasikan pada bulan Januari 2013. Namun, karena terjadi kerusakan pada lokomotif kereta, pihaknya memutuskan untuk menunda pengoperasian untuk memperbaiki kerusakan sekaligus melakukan pengecekan kondisi kereta api secara keseluruhan. "Sekarang perbaikan dan pengecekan sedang digarap. Diharapkan Februari 2013 sudah bisa beroperasi," katanya.<br /><br />Selain itu, pihaknya juga akan membahas ulang kontrak kerjasama PT KAI dengan Pemkot Solo, di antaranya yakni membahas biaya sewa kereta tersebut. Tarif ideal sewa kereta uap tersebut dalam satu kali perjalanan yakni Rp 5 juta. "Tidak bisa semuanya dibebankan kepada konsumen. Nanti akan kita bahas selisih dari biaya ini siapa yang menanggung," jelasnya.(*)</p>', 'Sepur Jaladara Beroperasi Lagi di Awal Tahun 2013', '3', '22:24:01', '12/15/2012', NULL),
(31, '<p>TRIBUN-MEDAN.com, Pendidikan menengah kejuruan berbasis seni atau kerajinan berpotensi mengembangkan industri kreatif di daerah. SMKN 5 Mataram membuktikannya dengan menciptakan tren batik di Nusa Tenggara Barat, yang dikenal dengan nama batik Sasambo. Ester Lince Napitupulu<br /><br />Batik Sasambo menggali desain dari seni, budaya, tradisi, kuliner, hingga alam dari tiga suku di Nusa Tenggara Barat (NTB), yakni Sasak, Samawa (Sumbawa), dan Mbojo (Bima). Batik yang didesain dan diproduksi guru serta siswa SMKN 5 Mataram sejak tahun 2008 ini dikenal dengan nama batik Sasambo.<br /><br />Motif batik Sasambo yang pertama adalah kangkung, sayuran yang menjadi makanan khas NTB. Motif lain yang diminati adalah lumbung, rumah adat Lombok, bebele (tanaman Ginkgo biloba), dan biota laut.<br /><br />Keseriusan SMKN 5 Mataram memproduksi batik Sasambo tampak dari galeri di sekolah yang diresmikan Gubernur NTB pada April 2010. Galeri buka selama Senin-Sabtu dan tak pernah sepi pengunjung, baik penduduk lokal maupun wisatawan.<br /><br />Di ruang galeri berukuran 13 meter x 23 meter itu terpajang beragam motif, bentuk, dan ukuran kain batik Sasambo, baik batik tulis, cap, maupun printing. Harga batik Sasambo bervariasi, dari Rp 60.000 per meter untuk batik printing hingga Rp 300.000 per helai ukuran 2 meter x 1,15 meter untuk batik tulis.<br /><br />&rdquo;Dulu, pendidikan SMK seni dan kriya hanya berkutat di tataran akademik sehingga pamornya turun dibandingkan otomotif ataupun teknik informatika dan komunikasi,&rdquo; kata Tri Budi Ananto, Kepala SMKN 5 Mataram. Sekolah lantas berupaya mengembangkan industri kreatif lewat batik Sasambo.<br /><br />Perkembangan bisnis dan produksi batik Sasambo SMKN 5 Mataram meningkat, termasuk pemesanannya. Batik itu jadi suvenir yang sering direkomendasikan kepada wisatawan.<br /><br />Para pejabat di NTB, mulai dari gubernur, wali kota, hingga pimpinan dinas, menghadiahi tamu mereka dengan batik Sasambo. Batik Sasambo SMKN 5 Mataram pernah dipakai Presiden Susilo Bambang Yudhoyono, Wakil Presiden Boediono, serta Menteri Pendidikan dan Kebudayaan saat kunjungan kerja ke wilayah NTB.<br /><br />Asyar Suharno, Wakil Kepala SMKN 5 Mataram Bidang Hubungan Industri dan Masyarakat, memaparkan, dukungan untuk mengembangkan batik Sasambo karya SMKN 5 Mataram datang dari Wali Kota Mataram. Ada surat edaran kepada semua dinas di Mataram agar pegawai menggunakan seragam batik Sasambo.<br /><br />Ajakan berpameran di tingkat kota, provinsi, hingga nasional menjadi ajang memamerkan batik Sasambo. Promosi lewat pameran dan dari mulut ke mulut membuat batik Sasambo makin dikenal luas.<br /><br />Salmah, Ketua Kompetensi Keahlian Kriya Tekstil SMKN 5 Mataram, menyebutkan, ada 300 motif yang diproduksi.<br /><br />Pengembangan desain menjadi tanggung jawab guru. Namun, para siswa dirangsang untuk mengembangkan motif batik yang menarik masyarakat.<br /><br />Wiwi Endang Sridwiyatmi, Wakil Kepala SMKN 5 Mataram Bidang Kurikulum, mengatakan, dalam mengembangkan produksi batik Sasambo, sekolah tidak melupakan pembelajaran bagi siswa. Sekolah melibatkan siswa untuk mengasah jiwa kewirausahaannya.<br /><br />Pendapatan dari bisnis batik Sasambo lebih dari Rp 200 juta per tahun digunakan untuk tambahan anggaran pendapatan dan belanja sekolah. Dengan suntikan dana itu, sekolah membantu 62 persen siswa tidak mampu. &rdquo;Dana rutin dari pemerintah daerah hanya sekitar Rp 95 juta per tahun. Biaya operasional sekolah, termasuk membeli bahan praktik, membayar guru honor, dan pengeluaran lain, lebih dari itu. Pendapatan dari batik Sasambo sangat membantu,&rdquo; ujar Tri.<br /><br />Ajak alumni<br /><br />Peningkatan permintaan batik Sasambo membuat sekolah kewalahan. Sekolah tidak bisa hanya mengandalkan siswa.<br /><br />Sekolah mempekerjakan 26 alumnus yang dinilai memenuhi syarat. Mereka bekerja di bengkel tekstil enam hari per minggu. Jika Minggu diminta masuk, dihitung lembur. Para alumnus diperlakukan sebagai pekerja profesional dengan gaji dari ratusan ribu rupiah hingga Rp 2 juta per bulan.<br /><br />&rdquo;Dengan menggandeng alumni, kami tidak perlu lama melatih. Mereka memproduksi batik secara rutin supaya ada stok batik di galeri,&rdquo; kata Salmah.<br /><br />Bagi alumni, lapangan kerja di sekolah membuat mereka lega. &rdquo;Senang, begitu lulus bisa kerja meski kerjanya di sekolah. Ini menambah pengalaman kerja. Saya berharap pesanan meningkat supaya kami bisa terus bekerja,&rdquo; ujar Yuliana (19), alumnus tahun 2012.<br /><br />Selain mempekerjakan alumni, kadang-kadang sekolah menggandeng sejumlah perempuan di sekitar sekolah yang membutuhkan pekerjaan. Pengerjaan batik bisa dilakukan para ibu rumah tangga di rumah.<br /><br />Sekolah berencana meningkatkan fasilitas ruangan produksi agar dapat meningkatkan jumlah produksi. Selain itu, mereka juga akan mengembangkan pemasaran ke luar NTB.<br /><br />Kemampuan SMKN 5 Mataram menjadikan sekolah sebagai sentra batik Sasambo membuat sekolah ini digandeng banyak pihak untuk pelatihan batik. Para guru diminta melatih perajin dan anak-anak putus sekolah. Sebaliknya, untuk meningkatkan kemampuan, pemerintah setempat membiayai enam siswa mengikuti pelatihan tekstil batik di Yogyakarta.<br /><br />Kerajinan lain<br /><br />Di antara ratusan batik Sasambo siap pakai, pengunjung galeri bisa menikmati hasil kerajinan lain karya siswa. Sesuai dengan program keahlian di SMKN 5 Mataram, siswa mengembangkan kriya kulit, kayu, keramik, dan logam.<br /><br />Siswa program kriya kayu sering mendapat permintaan untuk membuat furnitur, plakat kayu dengan sentuhan motif tradisional, atau membuat akar kayu menjadi karya seni yang menarik, seperti meja atau benda seni lain. Kerajinan kayu cukil serta ornamen kulit kerang mutiara di furnitur kayu yang dikerjakan siswa juga diminati.<br /><br />Program keahlian kriya keramik mampu mengembangkan kreativitas siswa. Sekolah ini pernah digandeng perusahaan keramik yang memasok kebutuhan hotel-hotel di sekitar Lombok.<br /><br />Permintaan pelatihan keramik juga dilayani sekolah. Pemerintah daerah menggandeng sekolah untuk membantu perajin gerabah mengembangkan desain dan motif baru hingga mengenalkan teknologi pengolahan dan pembakaran keramik yang lebih efektif.<br /><br />Permintaan tenaga untuk mendesain dan membuat perhiasan juga cukup potensial karena ada pusat-pusat perhiasan mutiara, seperti di Sekarbela, Mataram, Lombok.<br /><br />Dalam hal kriya kulit, para siswa mampu mendesain beragam kerajinan, seperti sepatu, tas, ikat pinggang, dompet, dan barang-barang lain dari kulit.<br /><br />Sekolah memanfaatkan potensi kriya yang dipelajari di sekolah untuk menunjukkan kepada masyarakat bahwa industri kreatif layak dilirik. Dengan demikian, NTB yang memiliki potensi wisata mendapat dukungan sumber daya manusia dan kreativitas, yang siap meraih kemajuan dan kesejahteraan dari keunikan di daerah terkait.<br /><br />Editor : Raden Armand Firdaus<br />Sumber : Kompas.com</p>', 'SMK Mengembangkan Industri Kreatif Batik', '3', '22:32:15', '12/15/2012', NULL);
INSERT INTO `t_news` (`id`, `isi`, `subject`, `pengirim`, `posttime`, `postdate`, `visits`) VALUES
(32, '<p>SURABAYA -Peringatan 100 Tahun ormas Islam Muhammadiyah diwarnai dengan peluncuran Mobil Tenaga Surya hasil karya Siswa-siswa SMK Muhammadiyah 7 Gondanglegi, Malang. Mobil tersebut diberi nama ''Smart Education Hybrid Solar Car''.<br /><br />Kepala Sekolah SMKM 7 Malang, Pahri&nbsp; mengatakan, mobil tenaga Surya ini memang sengaja dibuat yang dipersembahkan untuk Muhammadiyah. Total biaya yang dikeluarkan dari awal penelitian hingga selesai produksi mencapai Rp246 Juta.<br /><br />"Karena ini masih pertama sehingga sering salah dan kami terus melakukan perbaikan dan pembenahan membuat mobil tenaga Surya ini, meski hasilnya belum sempurana," ujar Pahri saat peluncuran Mobil Tenaga Surya ini di SD Muhammadiyah 4 Surabaya, Jum''at (2/11/2012) bersama Ketua Umum PP Muhammadiyah Din Syamsudin.<br /><br />Ia menjelaskan, awal pembuatan mobil ini dilakukan pada 12 Februari 2011 lalu. Sehingga untuk unit ini membutuhkan waktu sekitar 20 bulan. Mobil ini memiliki panjang 3,5 Meter dengan lebar 1,7 meter dan tinggi 1,6 Meter. Dan memiliki berat kosong 600 kilogram.<br /><br />Ia juga mengatakan, mobil ini murni menggunakan tenaga matahari. Cara kerjanya, panas dari matahari diserap dan tersimpan oleh kondensator yang disalurkan ke aki. Sehingga jika dalam kondisi mendung, tetap mampu jalan karena masih ada cadangan tenaga di dalam aki.<br /><br />Mobil dengan kapasistas dua penumpang ini memiliki Photovoltaic sebanyak 4 unit dengan tegangan 48 volt, arus peak power 3,5 ampere dan daya peak power 168 Watt.<br /><br />Perlu diketahui, sel photovoltaic, adalah sebuah alat semikonduktor mampu menciptakan cahaya matahari menjadi&nbsp; energi listrik yang berguna. Pengubahan ini disebut efek photovoltaic.<br /><br />"Kekuatannya mampu mencapai 12 jam perjalanan, atau untuk Surabaya ke Malang pulang pergi masih cukup kalau memiliki cadangan tenaga penuh," jelasnya.<br /><br />Pahri berharap, mobil ini mampu diproduksi secara massal dan menjadi perhatian khusus bagi pemerintah pusat dan sekaligus dapat dijadikan sebagai mobil nasional. Tentunya juga siap melalui sejumlah tahapan sertifikasi layak.<br /><br />"Ini buah karya anak bangsa yang sangat luar biasa dan semoga mendapat apresiasi," tuntasnya. (ian)</p>\r\n<p>Nurul Arifin - Okezone</p>', 'SMK Muhammadiyah 7 Malang, Luncurkan Mobil Tenaga Surya', '3', '22:38:00', '12/15/2012', NULL),
(25, '<p>TEMPO.CO, Jakarta - Pengembangan Kurikulum 2013 dilakukan empat tahap. Pertama, penyusunan kurikulum di internal Kementerian Pendidikan dan Kebudayaan (Kemdikbud), melibatkan pakar dan praktisi pendidikan. Kedua, pemaparan desain Kurikulum 2013 kepada Wakil Presiden selaku Ketua Komite Pendidikan, Selasa (13/11) dan Komisi X DPR RI Kamis (22/11). Ketiga, uji publik guna menyerap&nbsp; tanggapan masyarakat, lewat kurikulum2013. kemdikbud.go.id dan media massa cetak. Keempat, penyempurnaan untuk menjadi Kurikulum 2013. Orientasi Kurikulum 2013 adalah peningkatan dan keseimbangan antara kompetensi sikap, keterampilan dan pengetahuan, sesuai standar nasional yang disepakati. Alasan pengembangan Kurikulum 2013 adalah pembelajaran dari siswa diberi tahu menjadi pencari tahu; penilaian dari berbasis output menjadi berbasis proses dan output yang butuh tambahan jam pelajaran; banyak negara menambah jam pelajaran; dan jam pelajaran di Indonesia relatif lebih singkat.&nbsp; Inti pengembangan Kurikulum 2013, penyederhanaan, dan tematik-integratif. Siswa didorong lebih baik dalam observasi, bertanya, bernalar dan mengkomunikasikan materi pembelajaran. Diharapkan siswa memiliki kompetensi sikap, keterampilan, dan pengetahuan yang jauh lebih baik untuk menghadapi tantangan zaman.</p>', 'Pengembangan Kurikulum 2013', '3', '21:30:55', '12/15/2012', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_news_kom`
--

CREATE TABLE IF NOT EXISTS `t_news_kom` (
  `idkom` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `nama` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `komentar` text COLLATE latin1_general_ci,
  PRIMARY KEY (`idkom`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_news_kom`
--

INSERT INTO `t_news_kom` (`idkom`, `id`, `nama`, `email`, `tgl`, `komentar`) VALUES
(1, 24, 'arisddg', 'arisddg31@gmail.com', '10/03/2014', 'coba test komentar'),
(2, 24, 'arisddg', 'arisddg31@gmail.com', '10/03/2014', 'coba test lagi lagi gimana hasilnya ok'),
(3, 26, 'Ryan Aunur', 'ryandevstudio@gmail.com', '25/05/2017', 'Bla Bla');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai`
--

CREATE TABLE IF NOT EXISTS `t_nilai` (
  `kd_nilai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `pelajaran` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `semester` char(1) COLLATE latin1_general_ci NOT NULL,
  `ujian_ke` int(11) NOT NULL,
  `status` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `tgl_ujian` datetime DEFAULT NULL,
  `skbm` int(3) DEFAULT NULL,
  `guru` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ket` tinytext COLLATE latin1_general_ci,
  `kd_remedial` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `kelas` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kd_nilai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_nilai`
--

INSERT INTO `t_nilai` (`kd_nilai`, `pelajaran`, `semester`, `ujian_ke`, `status`, `tgl_ujian`, `skbm`, `guru`, `ket`, `kd_remedial`, `kelas`) VALUES
('1011000001', 'Matematika', '1', 1, '3', '2012-11-26 00:00:00', 70, '400001001', '', '1', 'X - 4'),
('1213000001', 'BK', '2', 2, '3', '2012-11-26 00:00:00', 70, '400001001', 'kd rt', '2', 'X - 4');

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_detail`
--

CREATE TABLE IF NOT EXISTS `t_nilai_detail` (
  `kd_nilai` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `NIS` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `no_ljk` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `nilai` decimal(5,0) DEFAULT NULL,
  `tuntas` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kd_nilai`,`NIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_nilai_detail`
--

INSERT INTO `t_nilai_detail` (`kd_nilai`, `NIS`, `no_ljk`, `nilai`, `tuntas`) VALUES
('1011000001', '070810119', '-', 90, '1'),
('1011000001', '070810120', '-', 0, '0'),
('1011000001', '070810121', '-', 0, '0'),
('1011000001', '070810122', '-', 0, '0'),
('1011000001', '070810123', '-', 0, '0'),
('1011000001', '070810124', '-', 0, '0'),
('1011000001', '070810125', '-', 0, '0'),
('1011000001', '070810126', '-', 0, '0'),
('1011000001', '070810127', '-', 0, '0'),
('1011000001', '070810128', '-', 0, '0'),
('1011000001', '070810129', '-', 0, '0'),
('1011000001', '070810130', '-', 0, '0'),
('1011000001', '070810131', '-', 0, '0'),
('1011000001', '070810132', '-', 0, '0'),
('1011000001', '070810133', '-', 0, '0'),
('1011000001', '070810134', '-', 0, '0'),
('1011000001', '070810135', '-', 0, '0'),
('1011000001', '070810136', '-', 0, '0'),
('1011000001', '070810137', '-', 0, '0'),
('1011000001', '070810138', '-', 0, '0'),
('1011000001', '070810139', '-', 0, '0'),
('1011000001', '070810140', '-', 0, '0'),
('1011000001', '070810141', '-', 0, '0'),
('1011000001', '070810142', '-', 0, '0'),
('1011000001', '070810143', '-', 0, '0'),
('1011000001', '070810144', '-', 0, '0'),
('1011000001', '070810145', '-', 0, '0'),
('1011000001', '070810146', '-', 0, '0'),
('1011000001', '070810147', '-', 0, '0'),
('1011000001', '070810148', '-', 0, '0'),
('1011000001', '070810149', '-', 0, '0'),
('1011000001', '070810150', '-', 0, '0'),
('1011000001', '070810151', '-', 0, '0'),
('1011000001', '070810152', '-', 0, '0'),
('1011000001', '070810153', '-', 0, '0'),
('1011000001', '070810154', '-', 0, '0'),
('1011000001', '070810155', '-', 0, '0'),
('1011000001', '070810156', '-', 0, '0'),
('1011000001', '070810157', '-', 0, '0'),
('1213000001', '070810119', '-', 50, '0'),
('1213000001', '070810120', '-', 0, '0'),
('1213000001', '070810121', '-', 0, '0'),
('1213000001', '070810122', '-', 0, '0'),
('1213000001', '070810123', '-', 0, '0'),
('1213000001', '070810124', '-', 0, '0'),
('1213000001', '070810125', '-', 0, '0'),
('1213000001', '070810126', '-', 0, '0'),
('1213000001', '070810127', '-', 0, '0'),
('1213000001', '070810128', '-', 0, '0'),
('1213000001', '070810129', '-', 0, '0'),
('1213000001', '070810130', '-', 0, '0'),
('1213000001', '070810131', '-', 0, '0'),
('1213000001', '070810132', '-', 0, '0'),
('1213000001', '070810133', '-', 0, '0'),
('1213000001', '070810134', '-', 0, '0'),
('1213000001', '070810135', '-', 0, '0'),
('1213000001', '070810136', '-', 0, '0'),
('1213000001', '070810137', '-', 0, '0'),
('1213000001', '070810138', '-', 0, '0'),
('1213000001', '070810139', '-', 0, '0'),
('1213000001', '070810140', '-', 0, '0'),
('1213000001', '070810141', '-', 0, '0'),
('1213000001', '070810142', '-', 0, '0'),
('1213000001', '070810143', '-', 0, '0'),
('1213000001', '070810144', '-', 0, '0'),
('1213000001', '070810145', '-', 0, '0'),
('1213000001', '070810146', '-', 0, '0'),
('1213000001', '070810147', '-', 0, '0'),
('1213000001', '070810148', '-', 0, '0'),
('1213000001', '070810149', '-', 0, '0'),
('1213000001', '070810150', '-', 0, '0'),
('1213000001', '070810151', '-', 0, '0'),
('1213000001', '070810152', '-', 0, '0'),
('1213000001', '070810153', '-', 0, '0'),
('1213000001', '070810154', '-', 0, '0'),
('1213000001', '070810155', '-', 0, '0'),
('1213000001', '070810156', '-', 0, '0'),
('1213000001', '070810157', '-', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `t_online`
--

CREATE TABLE IF NOT EXISTS `t_online` (
  `visit` int(10) NOT NULL DEFAULT '0',
  `time` int(10) DEFAULT NULL,
  `type` text COLLATE latin1_general_ci,
  PRIMARY KEY (`visit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_online`
--

INSERT INTO `t_online` (`visit`, `time`, `type`) VALUES
(10, 1122370277, 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `t_pelajaran`
--

CREATE TABLE IF NOT EXISTS `t_pelajaran` (
  `kode_pel` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `idpel` int(11) NOT NULL AUTO_INCREMENT,
  `pelajaran` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `program` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idpel`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `t_pelajaran`
--

INSERT INTO `t_pelajaran` (`kode_pel`, `idpel`, `pelajaran`, `pel`, `program`) VALUES
('AGAMA', 1, 'Pend. Agama', 'Pend. Agama', '-'),
('WRGNGR', 2, 'Pend. Kewarganegaraan', 'PKn', '-'),
('BHSIND', 3, 'Bhs. dan Sastra Indonesia', 'B. Indonesia', '-'),
('BHSING', 4, 'Bhs. Inggris', 'B. Inggris', '-'),
('MTK', 5, 'Matematika', 'Matematika', '-'),
('PENJAS', 6, 'Pend. Jasmani', 'Penjaskes', '-'),
('SJR', 7, 'Sejarah Nasional dan Umum', 'Sejarah', '-'),
('GEO', 8, 'Geografi', 'Geografi', '-'),
('EKO', 9, 'Ekonomi dan Akuntansi', 'Ekonomi', '-'),
('SOS', 10, 'Sosiologi', 'Sosiologi', '-'),
('FIS', 11, 'Fisika', 'Fisika', '-'),
('KIM', 12, 'Kimia', 'Kimia', '-'),
('BIO', 13, 'Biologi', 'Biologi', '-'),
('TIK', 14, 'Tek. Informasi & Komunikasi', 'T I K', '-'),
('BHSJER', 15, 'Bahasa Jerman', 'B. Jerman', 'Bahasa'),
('BK', 16, 'Bimbingan dan Konseling', 'BK', '-'),
('SMUSIK', 17, 'Pend. Seni Musik', 'Pendidikan Seni', '-'),
('AKUN', 18, 'Akuntansi', 'Akuntansi', '-'),
('PLH', 19, 'PLH', 'PLH', '-'),
('BSUN', 20, 'B. Sunda', 'B. Sunda', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t_pesan`
--

CREATE TABLE IF NOT EXISTS `t_pesan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pengirim` int(10) NOT NULL,
  `pesan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_pesan`
--

INSERT INTO `t_pesan` (`id`, `pengirim`, `pesan`, `waktu`) VALUES
(1, 3, 'body { /* background gambar */<br />\n	font-family: \\&quot;Arial\\&quot;, serif;<br />\n	font-size: 76%', '2012-06-13 18:03:31'),
(2, 3, 'ada', '2012-06-13 18:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `t_pesan_alum`
--

CREATE TABLE IF NOT EXISTS `t_pesan_alum` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pengirim` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `waktu` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `t_pesan_alum`
--

INSERT INTO `t_pesan_alum` (`id`, `pengirim`, `pesan`, `waktu`) VALUES
(15, 'alan', 'Reuni Akbar angkatan 1990 akan diadakan pada Tanggal 3 Novem', '2009-07-21 02:00:27'),
(16, 'alan', 'Control Panel atau Web Manager merupakan tool yang paling popular untuk mengelola website Anda. Dengan adanya Control Panel, Anda tidak perlu menggunakan metode manual lagi untuk mengelola website Anda. Anda juga tidak perlu lagi menghubungi staff kami untuk pembuatan alamat email baru, subdomain, backup, pembuatan database baru, pergantian password FTP/Control Panel dan sebagainya. Semuanya dapat Anda lakukan sendiri dengan login ke Control Panel kami. ', '2009-07-21 22:40:35'),
(17, 'Alan Ridwan M', '<p>\r\n	coba</p>\r\n', '2009-10-19 00:02:08'),
(18, 'Alan Ridwan M', '<p>\r\n	drfg sd fsdf</p>\r\n', '2009-10-19 00:02:29'),
(19, 'Alan Ridwan M', '<p>dssd sf sdf</p>', '2011-03-25 21:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `t_pos_menu`
--

CREATE TABLE IF NOT EXISTS `t_pos_menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `posisi` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `urut` int(2) DEFAULT NULL,
  `kategori` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `fungsi` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `sembunyi` char(1) COLLATE latin1_general_ci DEFAULT 't',
  `idtemp` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=61 ;

--
-- Dumping data for table `t_pos_menu`
--

INSERT INTO `t_pos_menu` (`id`, `menu`, `posisi`, `urut`, `kategori`, `fungsi`, `sembunyi`, `idtemp`) VALUES
(1, 'Jajak Pendapat', 'L', 3, 'depan', 'jajak', 't', 22),
(2, 'Agenda', 'L', 5, 'depan', 'tanggal', 'y', 23),
(3, 'Statistik', 'L', 4, 'depan', 'statistik', 't', 22),
(4, 'Info Sekolah', 'L', 0, 'depan', 'info', 't', 22),
(5, 'Materi Ajar', 'R', 3, 'profil', 'matpel', 'y', 1),
(6, 'Berita Terbaru', 'T', 0, 'depan', 'berita', 't', 0),
(7, 'Visi Misi Sekolah', 'T', 1, 'profil', 'visimisi', 'y', 22),
(50, 'Silabus', 'L', 2, 'siswa', 'silabus', 'y', 3),
(31, 'Agenda', 'L', 3, 'siswa', 'tanggal', 't', 22),
(8, 'Statistik', 'R', 2, 'profil', 'statistik', 'y', 1),
(9, 'Selayang Pandang Kepala Sekolah', 'L', 0, 'profil', 'profil', 'y', 22),
(10, 'Lokasi Sekolah', 'L', 2, 'profil', 'profil2', 't', 22),
(16, 'Banner', 'T', 2, 'guru', 'banner1', 't', 0),
(14, 'Info Sekolah', 'L', 1, 'guru', 'info', 't', 22),
(41, 'Materi Ajar Terbaru', 'R', 3, 'depan', 'materi', 't', 22),
(15, 'Materi Ajar Terbaru', 'L', 1, 'siswa', 'materi', 't', 22),
(38, 'Pencarian', 'L', 1, 'depan', 'cari', 'y', 23),
(39, 'Login Member', 'R', 0, 'depan', 'login', 't', 23),
(40, 'Login Member', 'L', 1, 'profil', 'login', 'y', 1),
(11, 'Jajak Pendapat', 'R', 2, 'guru', 'jajak', 'y', 1),
(19, 'Jajak Pendapat', 'L', 1, 'alumni', 'jajak', 'y', 22),
(13, 'Statistik', 'L', 3, 'guru', 'statistik', 'y', 1),
(42, 'Artikel Terbaru', 'T', 2, 'depan', 'artikel2', 'y', 22),
(49, 'SIlabus', 'R', 2, 'guru', 'silabus', 'y', 3),
(18, 'Banner', 'R', 1, 'depan', 'banner2', 't', 23),
(12, 'Agenda', 'L', 2, 'guru', 'tanggal', 't', 22),
(20, 'Agenda', 'L', 2, 'alumni', 'tanggal', 't', 22),
(51, 'Login Member', 'L', 1, 'siswa', 'login', 'y', 3),
(22, 'Info Sekolah', 'L', 1, 'alumni', 'info', 't', 22),
(23, 'Banner', 'T', 2, 'alumni', 'banner3', 't', 0),
(24, 'Pesan Alumni', 'L', 1, 'alumni', 'pesanalumni', 't', 22),
(21, 'Artikel', 'T', 1, 'alumni', 'artikel', 't', 2),
(43, 'Banner', 'T', 2, 'depan', 'banner1', 'y', 0),
(44, 'Banner', 'R', 1, 'profil', 'banner2', 'y', 1),
(47, 'Materi Uji', 'L', 1, 'siswa', 'soal', 't', 22),
(34, 'Info Sekolah', 'L', 1, 'profil', 'info', 't', 22),
(35, 'Agenda', 'L', 2, 'profil', 'tanggal', 'y', 1),
(48, 'Banner', 'R', 2, 'siswa', 'banner2', 'y', 3),
(37, 'Galeri Photo Terbaru', 'T', 4, 'depan', 'galeri', 't', 22),
(52, 'Ulang Tahun Siswa', 'L', 3, 'siswa', 'ultah', 'y', 22),
(53, 'Profil Guru', 'L', 0, 'guru', 'guru', 't', 22),
(54, 'Prestasi Siswa', 'T', 0, 'siswa', 'siswa', 't', 2),
(55, 'Banner', 'T', 2, 'siswa', 'banner3', 't', 0),
(56, 'Status Member', 'R', 4, 'depan', 'status_member', 't', 22),
(57, 'tab menu', 'T', 1, 'depan', 'tab_depan', 'y', 0),
(58, 'Galeri Photo Terbaru', 'T', 4, 'depan', 'galeri_depan', 'y', 22),
(59, 'Artikel Terbaru', 'T', 1, 'depan', 'tag_artikel', 't', 22);

-- --------------------------------------------------------

--
-- Table structure for table `t_prestasi`
--

CREATE TABLE IF NOT EXISTS `t_prestasi` (
  `id` int(10) NOT NULL DEFAULT '0',
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ket` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_prestasi`
--

INSERT INTO `t_prestasi` (`id`, `judul`, `ket`) VALUES
(1, 'Team Futsal ', 'Team Futsal  ini terdiri dari 10 siswa yang terlatih khusus selama beberapa hari.'),
(2, 'Juara 1 Lomba Cerdas Cermat AIDS Tingkat Kota Bandung', 'Juara 1 Lomba Cerdas Cermat AIDS  dalam Acara AIDS Sedunia'),
(3, 'Juara Olimpiade Komputer Nasional', 'SMAN 3 Kota Sukabumi kembali menjadi juara I Olimpiade Komputer tingkat Nasional'),
(4, 'Juara 1 Lomba Blog Tingkat Nasional', 'sman 3 kota sukabumi lagi-lagi menjadi juara di ajang bergengsi lomba blog tingkat nasional'),
(5, 'Juara Debat Bahasa Inggris', 'Juara SMANTI (sman 3 kota sukabumi) hebat euy');

-- --------------------------------------------------------

--
-- Table structure for table `t_profil`
--

CREATE TABLE IF NOT EXISTS `t_profil` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `isi` longtext COLLATE latin1_general_ci NOT NULL,
  `urut` int(11) DEFAULT NULL,
  `parent` int(5) DEFAULT '0',
  `link` varchar(100) COLLATE latin1_general_ci DEFAULT '0',
  `hide` int(1) NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE latin1_general_ci DEFAULT '_self',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `t_profil`
--

INSERT INTO `t_profil` (`id`, `judul`, `isi`, `urut`, `parent`, `link`, `hide`, `target`) VALUES
(9, 'PROFIL', '<p><img style="float: left;" src="../userfiles/ava1.jpg" alt="" width="120" height="121" /></p>\r\n<p>Era globalisasi dengan segala implikasinya menjadi salah satu pemicu cepatnya perubahan yang terjadi pada berbagai aspek kehidupan masyarakat, dan bila tidak ada upaya sungguh-sungguh untuk mengantisipasinya maka hal tersebut akan menjadi maslah yang sangat serius. Dalam hal ini dunia pendidikan mempunyai tanggung jawab yang besar, terutama dalam menyiapkan sumber daya manusia yang tangguh sehingga mampu hidup selaras didalam perubahan itu sendiri. Pendidikan merupakan investasi jangka panjang yang hasilnya tidak dapat dilihat dan dirasakan secara instan, sehingga sekolah sebagai ujung tombak dilapangan harus memiliki arah pengembangan jangka panjang dengan tahapan pencapaiannya yang jelas dan tetap mengakomodir tuntutan permasalahan faktual kekinian yang ada di masyarakat.</p>', 0, 0, '0', 0, '_self'),
(21, 'OSIS', '<p>&nbsp;</p>\r\n<div style="text-align: center;"><strong>OSIS SMA<br /></strong></div>\r\n<div style="text-align: center;">&nbsp;</div>\r\n<div style="text-align: justify;">OSIS (kepanjangannya adalah Organisasi Siswa Intra Sekolah) adalah suatu organisasi yang berada di tingkat sekolah di Indonesia yang dimulai dari Sekolah Menengah yaitu Sekolah Menengah Pertama((SMP)) dan Sekolah Menengah Atas((SMA)). OSIS diurus dan dikelola oleh murid-murid yang terpilih untuk menjadi pengurus OSIS. Biasanya organisasi ini memiliki seorang pembimbing seorang guru yang dipilih oleh pihak sekolah.<br /> <br /> Anggota OSIS adalah seluruh siswa yang berada pada satu sekolah tempat OSIS itu berada. Seluruh anggota OSIS berhak untuk memilih calonnya untuk kemudian menjadi pengurus OSIS.</div>\r\n<div style="text-align: center;">&nbsp;</div>\r\n<div style="text-align: center;"><strong>STRUKTUR KEPENGURUSAN OSIS SMA&nbsp; MASA BHAKTI 08-09</strong></div>\r\n<p>&nbsp;</p>\r\n<p>Ketua OSIS : Gia Haryza&nbsp;</p>\r\n<p>Wakil Ketua OSIS 1 : M. Isyraqi El-hakim&nbsp;</p>\r\n<p>Wakil Ketua OSIS 2 : Yunan Ahmad Taufik</p>\r\n<p>&nbsp;</p>\r\n<p>Sekretaris Umum : Hanifah&nbsp;</p>\r\n<p>Sekretaris 1 : Ridho Agung Nugraha&nbsp;</p>\r\n<p>Sekretaris 2 : Afriani Naidza Nurdianti</p>\r\n<p>&nbsp;</p>\r\n<p>Bendahara Umum : Ginar Amalia Hidayati</p>\r\n<p>Bendahara 1 : Ria Maria Nurhayati</p>\r\n<p>Bendahara 2 : Nada Fathia Mutiara</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Ketaqwaan Terhadap Tuhan YME</strong></p>\r\n<p>Ketua : Galih Ahmad Abdullah</p>\r\n<p>Wakil : Syauqi Nur Alifan Zaelani</p>\r\n<p>Anggota : Nilam Mustikaning Nagari - Faizah Aulia Rahmah</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p><strong>Sie. Wawasan Keilmuan</strong></p>\r\n<p>Ketua : Aulia Arip Rakhman</p>\r\n<p>Wakil : Mohammad Gilang Santika</p>\r\n<p>Anggota : Arie Permana Putra- Rivan Ardyanto Sutoyo - Nursyifa Kamilia</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Wawasan Kebangsaan</strong></p>\r\n<p>Ketua : Egie Sofyan Nuddin</p>\r\n<p>Wakil : Rashidah Noor Amalia</p>\r\n<p>Anggota : Meliana Lestari - Fransiska Paulina Kaha</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Kepribadian Budi Pekerti Luhur dan Kehidupan Berbangsa</strong></p>\r\n<p>Ketua : Muhamad Lukman Rusyana</p>\r\n<p>Wakil : Denantia Puriandini Winaya</p>\r\n<p>Anggota : Ambar Ratih Sahra -&nbsp; Maulana Rizky Putra</p>\r\n<p><strong><br /> </strong></p>\r\n<p><strong>Sie. Keterampilan dan Kewirausahaan</strong></p>\r\n<p>Ketua : Iqbal Ramadhan Zahid</p>\r\n<p>Wakil : Larasitha Nunis</p>\r\n<p>Anggota : Sofie Tsaurah Islami&nbsp;&nbsp; - Fitrias Rahayu Ramdhani</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Organisasi, Kepemimpinan, dan Demokrasi</strong></p>\r\n<p>Ketua : Freysha Intan Yulitasari</p>\r\n<p>Wakil : Nugraha Yanureza R.</p>\r\n<p>Anggota : Radithya Aldi Pradhana - Citra Riansyah</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Apresiasi , Budaya , dan Daya Kreasi</strong></p>\r\n<p>Ketua : Aditya Purna Nugraha</p>\r\n<p>Wakil : Syahdini Handiani</p>\r\n<p>Anggota : Ratifika Dewi Irianto - Reynald Aditya Utomo</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Sie. Kesehatan Jasmani</strong></p>\r\n<p>Ketua : Elmus Rahma</p>\r\n<p>Wakil : Wiriadiningrat</p>\r\n<p>Anggota : Tiara Pasca Noviera Robaeni - Lutfi Ahmad&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 4, 4, '0', 0, '_self'),
(11, 'Visi dan Misi', '<p><strong>VISI MISI SMA CINTA INDONESIA<br /></strong></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong>Visi :</strong><br /> Mewujudkan Sumber Daya Manusia yang Berakhlak Mulia yang Mampu Bersaing Secara Global</p>\r\n<p><strong>Misi :</strong></p>\r\n<ol>\r\n<li>Menciptakan suasana yang kondusif untuk mengembangkan potensi siswa melalui penekanan pada penguasaan kompetensi bidang ilmu pengetahuan dan teknologi serta Bahasa Inggris.</li>\r\n<li>Meningkatkan penguasaan Bahasa Inggris sebagai alat komunikasi dan alat untuk mempelajari pengetahuan yang lebih luas.</li>\r\n<li>Meningkatkan frekuensi dan&nbsp; kualitas kegiatan siswa yang lebih menekankan pada pengembangan ilmu pengetahuan dan teknologi serta keimanan dan ketakwaan yang menunjang proses belajar mengajar dan menumbuhkembangkan disiplin pribadi siswa.</li>\r\n<li>Menumbuhkembangkan nilai-nilai ketuhanan dan nilai-nilai kehidupan yang bersifat universal dan mengintegrasikannya dalam kehidupan</li>\r\n<li>Menerapkan manajemen partisipatif dengan melibatkan seluruh warga sekolah, Lembaga Swadaya Masyarakat, stake holders dan instansi serta institusi pendukung pendidikan lainnya.</li>\r\n</ol>\r\n<p align="center">&nbsp;</p>\r\n<p><strong>Tujuan</strong> :</p>\r\n<ul>\r\n<li>Tahun 2008 siswa memiliki kompetensi penguasaan konsep untuk seluruh mata pelajaran secara komprehensif dan benar sehingga mampu berkompetisi ditingkat nasional dan tahun 2012 mampu berkompetisi di tingkat internasional</li>\r\n<li>Tahun 2008 siswa mampu menggunakan Bahasa Inggris sebagai alat komunikasi untuk mendapatkan pengetahuan yang lebih luas</li>\r\n<li>Tahun 2008 siswa mampu membangun kebiasaan yang aktif untuk mencari informasi menggunakan teknologi informasi.</li>\r\n<li>Tahun 2008 sekolah memiliki sarana dan prasarana penunjang PBM yang lengkap.</li>\r\n<li>Tahun 2008 sekolah memiliki guru dan tenaga pendukung yang handal untuk mendukung seluruh manajemen sekolah.</li>\r\n<li>Sekolah memiliki hubungan kemitraan yang baik dengan seluruh warga sekolah, <em>stake holders</em> dan instansi serta institusi pendukung pendidikan lainnya.</li>\r\n<li>Siswa memiliki, mengaplikasikan dan meningkatkan nilai-nilai ketuhanan serta nilai-nilai kehidupan yang bersifat universal dalam kehidupannya.111</li>\r\n</ul>', 1, 2, '0', 0, '_self'),
(50, 'test 1', '<p>sdf s</p>', 1, 49, '', 0, '_self'),
(12, 'Sejarah Singkat', '<p><span style="font-size: medium;">SMA Cinta Indonesia Berdiri sejak tahun 1969</span></p>\r\n<p class="NoSpacing" style="text-align: justify; text-indent: 28.35pt; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">Pimpinan sekolah dapat diurutkan sebagai berikut :</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1969 dipimpin oleh Bapak R.K. Supriatna </span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1969&ndash;1972 dipimpin oleh Bapak Drs. E. Djarkasih</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1972 dipimpin oleh Bapak Dahlan Sumadidjaja</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;" lang="IT">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;" lang="IT">Tahun 1974 dipimpin oleh Ibu Dra. Nani Sukartini</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1985 dipimpin oleh Bapak Drs. Ahmad Hamid</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1989 dipimpin oleh Bapak Drs. Maman</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1994 dipimpin oleh Bapak Drs. Ihot Muslihat</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1997 dipimpin oleh Bapak Drs. R. Kiryodono</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 1999 dipimpin oleh Bapak Drs. Solichin Riva&rsquo;i</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tahun 2000 tidak ada pimpinan yang definitive (PYMT dijabat oleh Bapak Drs.Aceng Zenal dan PLH oleh Bapak Ace Kisna)</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;" lang="SV">Tahun 2002 dipimpin oleh Ibu Dra. Hj. </span><span style="line-height: 150%;">Yoyoh Komariah</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tanggal 1 April 2005 dipimpin oleh Bapak Drs. Uan Yuhana (PLT Kepala Sekolah)</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tanggal 19 April 2006 dipimpin oleh Drs. Nanang Krisnayadi.</span></span></span></p>\r\n<p class="NoSpacing" style="margin-left: 0.25in; text-align: justify; text-indent: -0.25in; line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tanggal 31 Maret 2008 dipimpin oleh Bapak Drs. H. Cucu Saputra,M.M.Pd.</span></span></span></p>\r\n<p><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;"><span style="font-size: small;"><span style="font-family: Verdana;"><span style="line-height: 150%;">&middot;<span style="font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; font-size-adjust: none; font-stretch: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="line-height: 150%;">Tanggal 22 Maret 2012 dipimpin oleh Bapak Drs. H. Akhmad Rubandi SP., M.M.Pd. Hingga Sekarang</span></span></span></span></span></span></p>', 2, 2, '0', 0, '_self'),
(13, 'Program Kerja', '<p><strong>Program Unggulan SMA CINTA INDONESIA<br /> </strong><br /> &nbsp;&nbsp; 1. Menjadi Sekolah Standar Nasional (SSN)<br /> &nbsp;&nbsp; 2. Mengembangkan Sikap dan Kompetensi Keagamaan<br /> &nbsp;&nbsp; 3. Mengembangkan Potensi Siswa Berbasis Multiple Intelligance<br /> &nbsp;&nbsp; 4. Mengembangkan Budaya daerah<br /> &nbsp;&nbsp; 5. Mengembangkan Kemampuan bahasa dan Teknologi Informasi<br /> &nbsp;&nbsp; 6. Meningkatkan Daya serap Ke Perguruan Tinggi Favorit<br /> <br /> <strong>Program Pengembangan Sarana Prioritas</strong><br /> <br /> &nbsp;&nbsp; 1. Membangun 5 Ruang kelas Belajar dengan konstruksi bangunan 3 tingkat<br /> &nbsp;&nbsp; 2. Membangun 1 ruang Belajar di lantai 2 gedung lama<br /> &nbsp;&nbsp; 3. Membangun Ruang Penglah Data<br /> &nbsp;&nbsp; 4. Pembangunan Kantin Siswa<br /> &nbsp;&nbsp; 5. Perbaikan dan Pengecetan Lapangan Olah Raga<br /> &nbsp;&nbsp; 6. Pengembangan Jaringan Infrastruktur LAN (Intranet dan Internet)<br /> &nbsp;&nbsp; 7. Pengembangan Sistem Informasi Sekolah (SIS)<br /> &nbsp;&nbsp; 8. Melengkapi Sarana dan Prasarana Perpustakaan dan Lab Komputer<br /> &nbsp;&nbsp; 9. Renovasi Aula<br /> &nbsp; 10. Renovasi Tampilan Depan Skolah/Gerbang Sekolah<br /> &nbsp; 11. Renovasi Koridor</p>', 8, 2, '0', 0, '_self'),
(14, 'Kepala Sekolah', '<h4 style="text-align: center;"><img src="../userfiles/image/Snap4.jpg" alt="" /></h4>\r\n<h4 style="text-align: left;"><span style="font-size: small;">Drs. H. Nusantara, M.M.Pd. &nbsp;adalah kepala SMA CINTA INDONESIA </span><span style="font-size: small;"> yang ke 16 sejak berdirinya sekolah ini pada tahun 1956. <span lang="IT">Lahir di</span><!--[if gte vml 1]><v:shapetype\r\nid="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t"\r\npath="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">\r\n<v:stroke joinstyle="miter"  />\r\n<v:formulas>\r\n<v:f eqn="if lineDrawn pixelLineWidth 0"  />\r\n<v:f eqn="sum @0 1 0"  />\r\n<v:f eqn="sum 0 0 @1"  />\r\n<v:f eqn="prod @2 1 2"  />\r\n<v:f eqn="prod @3 21600 pixelWidth"  />\r\n<v:f eqn="prod @3 21600 pixelHeight"  />\r\n<v:f eqn="sum @0 0 1"  />\r\n<v:f eqn="prod @6 1 2"  />\r\n<v:f eqn="prod @7 21600 pixelWidth"  />\r\n<v:f eqn="sum @8 21600 0"  />\r\n<v:f eqn="prod @7 21600 pixelHeight"  />\r\n<v:f eqn="sum @10 21600 0"  />\r\n</v:formulas>\r\n<v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"  />\r\n<o:lock v:ext="edit" aspectratio="t"  />\r\n</v:shapetype><v:shape id="_x0000_s1026" type="#_x0000_t75" alt=" " style=''position:absolute;\r\nmargin-left:35pt;margin-top:0;width:75pt;height:206.25pt;z-index:1;\r\nmso-wrap-distance-left:0;mso-wrap-distance-top:0;mso-wrap-distance-right:0;\r\nmso-wrap-distance-bottom:0;mso-position-horizontal:right;\r\nmso-position-horizontal-relative:text;mso-position-vertical-relative:line''\r\no:allowoverlap="f">\r\n<w:wrap type="square"  />\r\n</v:shape><![endif]--><!--[if !vml]--><!--[endif]--><span lang="IT"> Ciamis pada tahun 1964. Menghabiskan masa kecil sampai selesai tingkat SLTA di Ciamis. Jurusan Kimia IKIP Bandung membawanya menjadi seorang sarjana Kimia pada tahun 1988. Magister Manajemen Pendidikan diselesaikannya pada tahun 2003 di Universitas Islam Nusantara Bandung. </span></span></h4>\r\n<h4><span style="font-size: small;"><span class="sectiontablefooter"><span lang="IT"><br style="font-size: small;" /></span></span></span></h4>', 6, 2, '0', 0, '_self'),
(15, 'Struktur Organisasi', '<p align="center"><img class="img-responsive" src="../userfiles/image/Snap9.jpg" alt="" /></p>', 5, 2, '0', 0, '_self'),
(16, 'Prestasi', '<h3 align="center">PRESTASI SMA CINTA INDONESIA<br /> PERIODE 2002 s/d 2007</h3>\r\n<ul>\r\n<li>Juara<strong> </strong>Umum Olimpiade Sains (IMO, IPHO, IBO, ICHO, Informatika dan Astronomi) Tingkat Kabupaten Subang.</li>\r\n<li>Juara 1 Karya Ilmiah Remaja Tingkat Provinsi di ITB Bandung Tahun 2006.</li>\r\n<li>Juara III Karya Ilmiah Remaja Tingkat Nasional di UnBraw Malang tahun 2006.</li>\r\n<li>Juara I Siswa Teladan/Berprestasi Tingkat Provinsi Jawa Barat tahun 2005.</li>\r\n</ul>', 11, 2, '0', 0, '_self'),
(18, 'Kemitraan', '<ol>\r\n<li>Teacher Clearing House dengan SMA Negeri Jakarta. Merupakan kerjasama antar guru mata pelajaran untuk peningkatan kualitas guru dan pembelajaran. Dilaksanakan melalui media komunikasi telepon dan internet.</li>\r\n<li>Clearing House dengan The Manor CE Primary School South Gloucestershire, UK. Satu kerjasama yang diprakarsai oleh Depdiknas dan British Council untuk peningkatan kualitas pendidikan.</li>\r\n<li>Cosmopoint University Malaysia (dalam proses)</li>\r\n</ol>', 7, 2, '0', 0, '_self'),
(19, 'Kondisi Siswa', '<table style="width: 581px; height: 182px;" border="1" cellspacing="1" cellpadding="1">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;"><strong>No<br /> </strong></td>\r\n<td style="text-align: center;"><strong>Kelas<br /> </strong></td>\r\n<td style="text-align: center;"><strong>L</strong></td>\r\n<td style="text-align: center;"><strong>P</strong></td>\r\n<td style="text-align: center;"><strong>Jumlah</strong></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>1<br /> <br /> 2<br /> <br /> 3<br /> <br /> 4<br /> <br /> 5</p>\r\n</td>\r\n<td>Kelas X<br /> &nbsp; <br /> Kelas XI IPA<br /> <br /> Kelas XI IPS<br /> <br /> Kelas XII IPA<br /> <br /> Kelas XII IPS</td>\r\n<td>146<br /> <br /> 124<br /> <br /> 18<br /> <br /> 120<br /> <br /> 34</td>\r\n<td>172<br /> <br /> 162<br /> <br /> 27<br /> <br /> 172<br /> <br /> 34</td>\r\n<td>318<br /> <br /> 286<br /> <br /> 45<br /> <br /> 292<br /> <br /> 68</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"><strong>Total</strong></td>\r\n<td><strong>442</strong></td>\r\n<td><strong>567</strong></td>\r\n<td><strong>1009</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', 9, 2, '0', 0, '_self'),
(22, 'Komite Sekolah', '<p>Semenjak diluncurkannya konsep Manajemen Peningkatan Mutu Berbasis Sekolah dalam sistem manajemen sekolah, Komite Sekolah sebagai organisasi mitra sekolah memiliki peran yang sangat strategis dalam upaya turut serta mengembangkan pendidikan di sekolah. Kehadirannya tidak hanya sekedar sebagai stempel sekolah semata, khususnya dalam upaya memungut biaya dari orang tua siswa, namun lebih jauh Komite Sekolah harus dapat menjadi sebuah organisasi yang benar-benar dapat mewadahi dan menyalurkan aspirasi serta prakarsa dari masyarakat dalam melahirkan kebijakan operasional dan program pendidikan di sekolah serta dapat menciptakan suasana dan kondisi transparan, akuntabel, dan demokratis dalam penyelenggaraan dan pelayanan pendidikan yang bermutu di sekolah.</p>', 10, 2, '0', 0, '_self'),
(23, 'Prestasi Guru', '<ol>\r\n    <li>Inovasi Pembelajaran 2001 IV V Depdiknas</li>\r\n    <li>Keratifitas mengajar 2002 II V LIPI</li>\r\n    <li>Lomba Keberhasilan Guru dalam pembelajaran 2002 IV V Depdiknas</li>\r\n    <li>Lomba Keberhasilan Guru dalam pembelajaran 2003 Harapan III V Depdiknas</li>\r\n    <li>Sutarto Wasit Terbaik 2004 3 V KONI DKI</li>\r\n    <li>Sugeng S. Lomba Keberhasilan Guru dalam pembelajaran 2003 Finalis V Depdiknas</li>\r\n    <li>Sugeng S. Guru Berprestasi SMP / MTs 2004 III V Dinas P &amp; K Prop. Jawa Barat</li>\r\n    <li>Sugeng S. Guru Teladan 2004 I V Dinas P &amp; K Kabupaten Sukabumi</li>\r\n    <li>Bahar S. Lomba Keberhasilan Guru dalam pembelajaran 2005 Finalis V JSIT</li>\r\n    <li>Bahar S. Lomba Inovasi pembelajaran SMP 2006 III Balitbang Non Depdiknas</li>\r\n    <li>Bahar S. Guru Berprestasi SMP 2007 V Dinas P &amp; K Kabupaten</li>\r\n    <li>Bahar S. Lomba Keberhasilan Guru dalam pembelajaran 2007 Finalis V Depdiknas</li>\r\n    <li>Bahar S. Konferensi Guru Indonesia 2006 Pemakalah Terpilih V Sampurna Foundation Provisi Education</li>\r\n    <li>Bahar S. juara III,Lomba Guru Kreatif III se Jawa 2008,diselenggarakan di Semarang</li>\r\n</ol>', 5, 3, '0', 0, '_self'),
(24, 'Beasiswa', '<p><span class="gen"><font class="storytitle"><b><span>1. [Belgium] Kuliah <span name="IL_SPAN"><input type="hidden" name="IL_MARKER" />Master</span> di Belgia Cuma 1 Juta</span></b></font></span></p>\r\n<p><font class="storycontent">Beberapa universitas di Belgia seperti Universiteit Ghent dan Universiteit Hasselt telah menerapkan peraturan baru untuk biaya kuliah Program Master. Bagi student yang berasal dari negara-negara berkembang termasuk Indonesia, hanya diwajibkan untuk membayar uang kuliah sebesar 80 Euro pertahun untuk program Master.<br />\r\nUntuk informasi biaya kuliah 80 euro di Universitet Ghent dapat dilihat di halaman website:<br />\r\n<a href="http://www.ugent.be/en/teaching/studentadmin/tuition/overview.htm">http://www.ugent.be/en/teaching/studentadmin/tuition/overview.htm</a><br />\r\nAtau check satu per satu tuition fee utk master course di Ghent:<br />\r\n<a href="http://www.opleidingen.ugent.be/studiekiezer/nl/int/index.htm">http://www.opleidingen.ugent.be/studiekiezer/nl/int/index.htm</a><br />\r\nUtk melihat universitas yang lain di Belgia bisa search di:<br />\r\n<a href="http://www.univ.cc">http://www.univ.cc</a> (pilih Belgium) </font></p>\r\n<p><span style="font-weight: bold;">2. </span><span class="gen"><font class="storytitle"><b><font class="storytitle">Program Beasiswa TNI Calon Perwira Prajurit Karier Untuk Mahasiswa S1</font></b></font></span></p>\r\n<p><font class="storycontent">Masih kuliah dan punya cita-cita jadi perwira TNI? Mau dapat beasiswa dan tunjangan selama menyelesaikan kuliah? Sekarang saatnya. Ayo daftar! <br />\r\n<br />\r\nTentara Nasional Indonesia memberi kesempatan kepada Mahasiswa berprestasi untuk menjadi Perwira TNI melalui Program Mahasiswa Beasiswa TNI Calon Perwira Prajurit Karier (Pa PK). <br />\r\n<br />\r\nKepada mahasiswa yang berminat, dapat mendaftarkan diri dengan syarat-syarat meliputi Warga Negara Indonesia Pria/Wanita (bukan Prajurit TNI, anggota POLRI dan PNS). Calon juga harus bertaqwa kepada Tuhan Yang Maha Esa, Setia dan taat kepada Pancasila dan UUD 1945.<br />\r\n<br />\r\nUntuk Kedokteran Umum minimal sudah Sarjana Kedokteran, sedangkan S1 lainnya minimal mencapai 110 SKS dan D3 minimal mencapai 80 SKS. <br />\r\nIPK minimal 2,40 untuk S 1 (Kedokteran Umum), S1 lainnya 2,80 dan D3 2,70. Usia maksimal pada saat menerima tunjangan beasiswa untuk Kedokteran Umum 27 tahun, sedangkan S1 lainnya 25 tahun dan D3 23 tahun. <br />\r\nCalon juga harus berkelakuan baik, sehat jasmani, rohani dan bebas narkoba. Tinggi badan minimal 163 cm bagi pria dan 155 cm bagi wanita. Sanggup tidak menikah selama mengikuti Program Mahasiswa Beasiswa. <br />\r\nTunjangan yang diberikan Rp 750.000 per bulan dan bantuan skripsi Rp 1.000.000. Waktu mendapat tunjangan untuk Dokter Umum 4 tahun, S1 lainnya 3 tahun dan D3 2 tahun. <br />\r\nSetelah menyelesaikan program studi, wajib mengikuti Dikma Pa PK TNI. <br />\r\nPendaftaran dibuka pada bulan Desember 2008 bertempat di Ajendam/Ajenrem/Makodim/Lantamal/Lanal/Lanud setempat/terdekat. <br />\r\nPenjelasan lebih rinci dapat ditanyakan di tempat pendaftaran (Panitia Daerah di tiap Provinsi) atau website <a href="http://www.tni.mil.id">www.tni.mil.id</a>, email: sperstni@yahoo.com. <br />\r\nSelama proses pendaftaran tidak dipungut biaya. Gratis! </font></p>', 5, 4, '0', 0, '_self'),
(25, 'Ektrakurikuler', '<p>Kualitas tamatan sekolah dituntut untuk memenuhi standar kompetensi dunia kerja. Salah satunya, selain mampu menguasai materi pelajaran, siswa harus dapat berinteraksi dan aktif dalam hubungan sosial.</p>\r\n<p>Kegiatan ekstrakurikuler merupakan salah satu alat pengenalan siswa pada hubungan sosial. Di dalamnya terdapat pendidikan pengenalan diri dan pengembangan kemampuan selain pemahaman materi pelajaran.</p>\r\n<p>Berangkat dari pemikiran tersebut, di SMA Cinta Indonesia diselenggarakan berbagai kegiatan ekstrakurikuler.</p>\r\n<p>Selain OSIS sebagai induk kegiatan ektrakurikuler di sekolah, kegiatan ektrakurikuler lainnya adalah:</p>\r\n<ul>\r\n<li>Pramuka</li>\r\n<li>Paskibra</li>\r\n<li>Palang Merah Remaja (PMR)</li>\r\n<li>Patroli Keamanan Sekolah (PKS)</li>\r\n<li>Pecinta Alam (PA)</li>\r\n<li>Olahraga (Bola Voli, Bola Basket, Karate, Tenis Meja, Tenis Lapangan)</li>\r\n<li>Kerohanian / IRMA (Ikatan Remaja Mesjid Al-Forqon), dan</li>\r\n<li>Koperasi Sekolah (Kopsis)</li>\r\n</ul>', 3, 4, '0', 0, '_self'),
(20, 'Kalender Akademik', '<center>\r\n<p><img src="../userfiles/image/kalender1.jpg" alt="" /></p>\r\n<p><img src="../userfiles/image/kalender2.jpg" alt="" /></p>\r\n<p><img src="../userfiles/image/kalender3.jpg" alt="" /></p>\r\n<p><img src="../userfiles/image/kalender4.jpg" alt="" /></p>\r\n<p><img src="../userfiles/image/kalender5.jpg" alt="" /></p>\r\n<p><img src="../userfiles/image/kalender6.jpg" alt="" /></p>\r\n</center>', 6, 3, '0', 0, '_self'),
(17, 'Sarana & Prasarana', '<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td><a href="../images/denah24.jpg" target="_blank"><img src="../images/denah24.jpg" alt="" width="540" height="400" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /></p>\r\n<p><strong>Keterangan </strong></p>\r\n<table style="width: 100%;" border="0">\r\n<tbody>\r\n<tr>\r\n<td valign="top" width="120">1. Kls XII IPA 1<br /> 2. Kls XII IPA 2<br /> 3. Kls XII IPA 3<br /> 4. Kls XII IPA 4<br /> 5. Kls XII IPA 5<br /> 6. Kls XII IPS 3<br /> 7. Kls XII IPS 2<br /> 8. Kls XII IPS 1<br /> 9. Kls X-1/XI IPS 1<br /> 10. Kls X-2/XI IPS 2<br /> 11. Kls X-3/XI IPS 3<br /> 12. Kls X-4/XI IPA 1<br /> 13. Kls X-5/XI IPA 2<br /> 14. Kls X-6/XI IPA 3<br /> 15. Kls X-7/XI IPA 4</td>\r\n<td valign="top" width="120">16. Kls X-8/XI IPA 5<br /> 17. Perpustakan/ Warnet<br /> 18. Lab Komputer<br /> 19. Lab Biologi<br /> 20. Lab Bahasa<br /> 21. Lab Kimia<br /> 22. Lab Multimedia<br /> 23. Lab IPS<br /> 24. R. Kepsek<br /> 25. R. Tata Usaha<br /> 26. R. Lobi<br /> 27. R. Guru<br /> 28. R. OSIS<br /> 29. R. PMR<br /> 30. R. BK/BP</td>\r\n<td>31. R. Piket<br /> 32. R.Pramuka/Paskibra<br /> 33. R.Kapela/Bianglala<br /> 34. Gudang<br /> 35. Masjid<br /> 36. R. DKM<br /> 37. R. Satpam<br /> 38. R. UKS<br /> 39. Padepokan Seni<br /> 40. GreenHouse<br /> 41. Parkir<br /> 42. Mushala Guru<br /> 43. WC Guru<br /> 44. R. Cetak<br /> 45. R. Wakasek<br /> 46. Dapur</td>\r\n<td>47. WC Guru<br /> 48. WC Laki-laki<br /> 49. WC Perempuan<br /> 50. Koperasi<br /> 51. Kantin<br /> 52. WC Perempuan<br /> 53. WC Laki-laki<br /> 54. G. Olahraga<br /> 55. Gudang Biologi<br /> 56. Gudang Fiska<br /> 57. Gudang Kimia<br /> 58. R. EC<br /> 59. Panggung Terbuka<br /> 60. Lap. Olahraga<br /> 61. R. Server <br /> 62. R. KPMP TIK</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> <br /> <strong>Arsitektur Jaringan Komputer</strong></p>\r\n<table border="1" cellspacing="0" cellpadding="0" align="left">\r\n<tbody>\r\n<tr>\r\n<td><a href="../images/lan24.jpg" target="_blank"><img src="../images/lan24.jpg" alt="" width="540" height="380" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, 2, '0', 0, '_self'),
(10, 'Lokasi Sekolah', '<center><a href="../images/peta1.jpg" target="_blank"><img class="img-responsive" src="../images/peta1.jpg" alt="" width="400" height="320" /></a></center>', 0, 0, '0', 0, '_self'),
(26, 'Peta Situs', '<p><strong>Peta Situs Utama</strong></p>\r\n<p><strong>Profil</strong></p>\r\n<ol>\r\n    <li><a href=profil.php?id=profil&kode=4>Sejarah Singkat</a></li>\r\n    <li><a href=profil.php?id=profil&kode=3>Visi dan Misi</a></li>\r\n    <li><a href=profil.php?id=profil&kode=7>Struktur Organisasi</a></li>\r\n    <li><a href=profil.php?id=profil&kode=5>Program Kerja</a></li>\r\n    <li><a href=profil.php?id=profil&kode=11>Kemitraan</a></li>\r\n    <li><a href=profil.php?id=profil&kode=9>Sarana & Prasarana</a></li>\r\n    <li><a href=profil.php?id=profil&kode=12>Kondisi Siswa</a></li>\r\n    <li><a href=profil.php?id=profil&kode=6>Kepala Sekolah</a></li>\r\n    <li><a href=profil.php?id=profil&kode=8>Prestasi</a></li>\r\n    <li><a href=profil.php?id=profil&kode=21>Komite Sekolah</a></li>\r\n    <li><a href=profil.php?id=profil&kode=34>Kontak Sekolah</a></li>\r\n</ol>\r\n<p><strong><br />\r\nGuru</strong></p>\r\n<ol>\r\n    <li><a href=guru.php?id=dbguru>Direktori Guru</a></li>\r\n    <li><a href=guru.php?id=silabus>Silabus</a></li>\r\n    <li><a href=guru.php?id=materi>Materi Ajar</a></li>\r\n    <li><a href=guru.php?id=soal>Materi Evaluasi</a></li>\r\n    <li><a href=guru.php?id=profil&kode=14>Kalender Akademik</a></li>\r\n    <li><a href=guru.php?id=profil&kode=23>Prestasi Guru</a></li>\r\n</ol>\r\n<p><strong><br />\r\nSiswa</strong></p>\r\n<ol>\r\n    <li><a href=siswa.php?id=dbsiswa>Direktori Siswa</a></li>\r\n    <li><a href=siswa.php?id=prestasi>Prestasi Siswa</a></li>\r\n    <li><a href=siswa.php?id=profil&kode=24>Beasiswa</a></li>\r\n    <li><a href=siswa.php?id=profil&kode=24>OSIS</a></li>\r\n    <li><a href=siswa.php?id=profil&kode=25>Ektrakurikuler</a></li>\r\n</ol>\r\n<p><br />\r\n<strong>Alumni</strong></p>\r\n<ol>\r\n    <li><a href=alumni.php?id=data>Direktori Alumni</a></li>\r\n    <li><a href=alumni.php?id=info>Info Alumni</a></li>\r\n</ol>\r\n<p><strong><br />\r\nFitur</strong></p>\r\n<ol>\r\n    <li><a href=index.php?id=agenda>Agenda</a></li>\r\n    <li><a href=index.php?id=artikel>Artikel</a></li>\r\n    <li><a href=index.php?id=info>Info</a></li>\r\n    <li><a href=index.php?id=berita>Berita</a></li>\r\n    <li><a href=index.php?id=buku>Buku Tamu</a></li>\r\n    <li><a href=index.php?id=project>Opini</a></li>\r\n    <li><a href=index.php?id=dafblog>Daftar Blog</a></li>\r\n    <li><a href=index.php?id=link>Link</a></li>\r\n    <li><a href=index.php?id=galeri>Galeri Photo</a></li>\r\n</ol>\r\n<p><strong>Peta Situs Komunitas Sekolah</strong> (Member)</p>\r\n<ol>\r\n    <li><a href=../user/index.php?id=myprofil>Profil Member</a></li>\r\n    <li><a href=../user/index.php?id=conlist>Data Kontak</a></li>\r\n    <li><a href=../user/index.php?id=member>Anggota</a></li>\r\n    <li><a href=../user/index.php?id=message>Pesan</a></li>\r\n    <li><a href=../user/index.php?id=cek_login#>Chat</a></li>\r\n    <li><a href=../user/index.php?id=myproject>Opini</a></li>\r\n    <li><a href=../user/index.php?id=forum>Diskusi</a></li>\r\n    <li><a href=../user/index.php?id=infoalumni>Info Alumni</a></li>\r\n    <li><a href=../user/guru.php?id=materi>Materi Ajar</a></li>\r\n</ol>', 10, 6, '0', 0, '_self'),
(27, 'Kontak Sekolah', '<p>&nbsp;</p>\r\n<center><a href="../images/peta1.jpg" target="_blank"><img src="../images/peta1.jpg" alt="" width="300" height="200" /></a><br />\r\n<p><strong>SMA CINTA INDONESIA<br /></strong></p>\r\n<p>Alamat: Jl. Jendral Sudirman,Senayan Jakarta Indonesia</p>\r\n<p>Telepon: +62-021-6666666</p>\r\n<p>Fax: + 62-021-6666667</p>\r\n<p>Email: info@smacintaindonesia.sch.id</p>\r\n<p>Web: www.smacintaindonesia.sch.id</p>\r\n<p>Administrator:&nbsp;admin@smacintaindonesia.sch.id</p>\r\n</center>', 11, 6, '0', 0, '_self'),
(1, 'Home', '<p>-</p>', 1, 0, 'index.php', 0, '_self'),
(2, 'Profil', '<p>-</p>', 2, 0, 'profil.php', 0, '_self'),
(3, 'Guru', '-', 3, 0, 'guru.php', 0, '_self'),
(4, 'Siswa', '-', 4, 0, 'siswa.php', 0, '_self'),
(5, 'Alumni', '-', 5, 0, 'alumni.php', 0, '_self'),
(7, 'Blog', '-', 7, 0, '../blog/', 1, '_blank'),
(8, 'Elearning', '-', 8, 0, '../elearning/', 1, '_blank'),
(6, 'Fitur', '-', 6, 0, 'index.php', 0, '_self'),
(28, 'Direktori Guru', '<p>-</p>', 1, 3, 'guru.php?id=dbguru', 0, '_self'),
(29, 'Silabus', '-', 2, 3, 'guru.php?id=silabus', 0, '_self'),
(30, 'Materi Ajar', '-', 3, 3, 'guru.php?id=materi', 0, '_self'),
(31, 'Materi Uji', '-', 4, 3, 'guru.php?id=soal', 0, '_self'),
(32, 'Direktori Siswa', '-', 1, 4, 'siswa.php?id=dbsiswa', 0, '_self'),
(33, 'Prestasi Siswa', '-', 2, 4, 'siswa.php?id=prestasi', 0, '_self'),
(34, 'Direktori Alumni', '-', 1, 5, 'alumni.php?id=data', 0, '_self'),
(35, 'Info Alumni', '-', 2, 5, 'alumni.php?id=info', 0, '_self'),
(36, 'Agenda', '-', 1, 6, 'index.php?id=agenda', 0, '_self'),
(37, 'Artikel', '-', 2, 6, 'index.php?id=artikel', 0, '_self'),
(38, 'Info', '-', 3, 6, 'index.php?id=info', 0, '_self'),
(39, 'Berita', '-', 4, 6, 'index.php?id=berita', 0, '_self'),
(40, 'Buku Tamu', '-', 5, 6, 'index.php?id=buku', 0, '_self'),
(41, 'Opini', '-', 6, 6, 'index.php?id=project', 0, '_self'),
(42, 'Daftar Blog', '-', 7, 6, 'index.php?id=dafblog', 0, '_self'),
(43, 'Link', '-', 8, 6, 'index.php?id=link', 0, '_self'),
(44, 'Galeri Photo', '-', 9, 6, 'index.php?id=album', 0, '_self');

-- --------------------------------------------------------

--
-- Table structure for table `t_programahli`
--

CREATE TABLE IF NOT EXISTS `t_programahli` (
  `idprog` int(11) NOT NULL AUTO_INCREMENT,
  `program` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idprog`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `t_programahli`
--

INSERT INTO `t_programahli` (`idprog`, `program`) VALUES
(1, '-'),
(2, 'IPA'),
(3, 'IPS'),
(4, 'Bahasa'),
(5, 'MM');

-- --------------------------------------------------------

--
-- Table structure for table `t_project`
--

CREATE TABLE IF NOT EXISTS `t_project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `deskripsi` longtext COLLATE latin1_general_ci NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visit` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_project_com`
--

CREATE TABLE IF NOT EXISTS `t_project_com` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `komentar` text COLLATE latin1_general_ci NOT NULL,
  `id_project` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_semester`
--

CREATE TABLE IF NOT EXISTS `t_semester` (
  `idsem` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(2) DEFAULT NULL,
  PRIMARY KEY (`idsem`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_semester`
--

INSERT INTO `t_semester` (`idsem`, `semester`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_silabus`
--

CREATE TABLE IF NOT EXISTS `t_silabus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pelajaran` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `file` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visit` int(10) NOT NULL DEFAULT '0',
  `ket` text COLLATE latin1_general_ci NOT NULL,
  `kelas` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `semester` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_silabus`
--

INSERT INTO `t_silabus` (`id`, `pelajaran`, `file`, `visit`, `ket`, `kelas`, `tanggal`, `semester`) VALUES
(1, 'Fisika', '0', 12, 'Silabus ini dibuat untuk memperjelas rangkaian materi ajar yang dirancang oleh Guru-guru MGMP Kota Bandung', 'XI', '', 1),
(2, 'Matematika', 'sil2.rar', 24, 'Silabus ini terdiri dari beberapa ringkasan materi.', 'X', '07/05/2006 22:55:52', 2),
(6, 'B. Inggris', 'sil6.doc', 0, 'adasdsa', 'a', '11/01/2009 16:45:30', NULL),
(5, 'Biologi', 'sil5.doc', 3, 'sdas', 'X', '09/12/2008 00:13:32', 1),
(7, 'Akuntansi', 'sil7.zip', 0, 'asas', 'x-a', '17/04/2011 10:11:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE IF NOT EXISTS `t_siswa` (
  `user_id` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kelas` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `alamat` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_lahir` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '00/00/0000',
  `telp` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `agama` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kelamin` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_input` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sttb` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nem` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `wali` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  KEY `kelas` (`kelas`),
  KEY `kelas_2` (`kelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`user_id`, `nama`, `kelas`, `alamat`, `tgl_lahir`, `telp`, `agama`, `kelamin`, `tmp_lahir`, `tgl_input`, `sttb`, `nem`, `wali`) VALUES
('070810005', 'ANNY MAULINA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810006', 'ASSYIFA NOERLAELY MARYAM', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810007', 'AULIA TIARA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810008', 'BAYU INDRAJIT', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810009', 'DESTRINA ALIN SUDARSONO', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810010', 'DIAN ROSA LINA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810011', 'DWI APRIANTO NUGROHO', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810012', 'FIKRI HUMAM MANAR AMRI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810013', 'FLORENTIA THRISTIANTI', 'X - 1', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810014', 'GESTI SEPTIA SUWANDI PUTRI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810015', 'GWYNUFKE BELVA GUSTHA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810016', 'HAMZA AGUNG SEDAYU', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810017', 'HENRIAN STIAWAN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810018', 'IMAN LUKMANUL HAKIM', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810019', 'KAMILATUSSYAFIQOH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810020', 'LAKSITA RARASTRIA KHARIMA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810021', 'LUKMAN NUL HAKIM', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810022', 'MUHAMMAD FULKI FAUZAN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810023', 'MIDA RUYATI LAILA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810024', 'MOETCHIA RIZKY  SAFARO', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810025', 'MOHAMMAD SETYA WARDHANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810026', 'MUHAMAD RISFAN SYARID PRATAMA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810027', 'MUHAMMAD ABDUL IZZATUR RAHMAN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810028', 'MUHAMMAD AFFAN SYAHRUL', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810029', 'MUHAMMAD ICHSAN ABDILLAH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810030', 'NABILLA RHAMDANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810031', 'PENI NURVIANI YUNANSYAH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810032', 'PRITANIA SAVITRI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810033', 'RANDI PRATAMA PUTRA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810034', 'RANGGA DWIPUTRA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810035', 'RIFAN AHMAD FAUZI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810036', 'RISLI DIHYAT', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810037', 'RIZKI NUGRAHA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810038', 'SHINTA WILLIANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810039', 'WARDA MARISA FITHRI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810041', 'ABDILLAH SYAFAAT', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810042', 'ADAM PRIYADI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810043', 'ADHITYA DARMAWAN', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810044', 'ALGI DESTIA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810045', 'ALWIN MUHAMMAD REZA FAHMI H.', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810046', 'ANGGI NOVIA REGINA', 'X - 2', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810047', 'ARINI KURNIAWATI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810048', 'DEA FADILLAH DAMAI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810049', 'DEDEN YUSUP', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810050', 'EDWIN HERDIANSYAH', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810051', 'EKY SEPTIAN PRADANA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810052', 'ENNA AGUSTINA MARDIKA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810053', 'FAISAL AGUNG WASKITO', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810054', 'FITRI NURAENI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810055', 'HENDRA GUNAWAN', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810056', 'INTAN MUFIDAH', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810057', 'IRINA TRIANISA NURHASNI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810058', 'IRMA GUSRIANI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810059', 'MEKKA FITRIA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810060', 'MIRANDA AYU PUTRI RAMADHANTIE', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810061', 'NOVI UJIANNINGTYAS', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810062', 'NURIKA OKTAVIA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810063', 'NURLIA RUBIYANTI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810064', 'PUTRI HIDAYANI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810065', 'RANI RISKA MAULIDA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810066', 'RARA PRAWITA MUSTIKA ADYA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810067', 'RENDY RISYANDI S.', 'X - 2', '-', '01/01/2008', '-', 'PROTESTAN', 'L', '-', '-', '-', '-', '-'),
('070810068', 'RIFKI RAMDHAN', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810069', 'RINNY KOMARASARI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810070', 'RISKA PADMI DWI UTAMI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810071', 'RIZKY FADILLAH', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810072', 'SERAMBI DAMAI DWIKA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810073', 'TANIA YUNIARTI', 'X - 2', '-', '01/01/2008', '-', 'KRISTEN', 'P', '-', '-', '-', '-', '-'),
('070810074', 'UTAMI BUDIANI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810075', 'VANI MAULIDA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810076', 'VYANDA GRISHEILLA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810077', 'WAHYU PURNAMA', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810078', 'WIDA WIDIYANTI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810079', 'YENI FEBRIANTI', 'X - 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810080', 'ANDERA VERENA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810081', 'ANISA NUR AISAH', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810082', 'ANSHA CERBIA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810083', 'ARDHI RAHMAN FAUZI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810084', 'BUNGSU SAPTA PERBANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810085', 'CICI TRI SUPARNI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810086', 'DEDE DZURROTUN NISA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810087', 'DIAN WIDIANA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810088', 'EGGA GUNAWAN', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810089', 'ELFRIDA PUSPITASARI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810090', 'ERICK RAHMAT DENIAR', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810091', 'EUNEKE WIDYANINGSIH', 'X - 3', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810092', 'FERONIKA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810093', 'FEVI TUTIANA DEWI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810094', 'FIRDHA CAHYA ALAM', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810095', 'FITRIANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810096', 'HAFSARI DEWI FILONIA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810097', 'HENI MARDIANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810098', 'JEFF PRASETIA PAPAR', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810099', 'MOCHAMAD ARDIANSYAH', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810100', 'MUGI KHAIRUL MUSLIM', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810101', 'MUHAMMAD AL HASAN', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810102', 'NURISA FAZRI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810103', 'PERMANA NUGRAHA WIRASAPUTRA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810104', 'PRAWIRA YUDHA KOMBARA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810105', 'RADITYO GARRY', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810106', 'RAMDHAN SEPTIANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810107', 'REGINA REPTIANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810108', 'RESI ROSANTI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810109', 'RISKA ANGGRAENI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810110', 'RIZA CRISTY AGUSTIN', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810111', 'RIZKI PURNAMA DEWI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810112', 'SHALHA UBAID SALIM', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810113', 'SILMI SYAHIDAH', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810114', 'SILVINA GONISTILANI DEWI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810115', 'TIARA MEGAWATI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810116', 'VANIA RAKHMADHANI', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810117', 'VICKY RIANA DEVITA', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810118', 'WADA VALENTIN HARSONO', 'X - 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810119', 'ADIMAS FIQRI RAMDHANSYA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810120', 'ANDRE ARIESMANSYAH', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810121', 'ANGGI AMANDA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810122', 'ARINALDI TEGAR PRAKOSA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810123', 'ARNI WILARNI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810124', 'ASRI LASIDO ALAWIYAH WAHYU', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810125', 'BOMBI KAMANGGARA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810126', 'DANIEL EKO SAPUTRA MANURUNG', 'X - 4', '-', '01/01/2008', '-', 'KATHOLIK', 'L', '-', '-', '-', '-', '-'),
('070810127', 'DIAZ SYAFITRI RISDIANI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810128', 'DINI MALIANTI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810129', 'DITA DISAINA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810130', 'EKA ANDIKA PUTRI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810131', 'ENI ROHAENI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810132', 'FANY ADHIATI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810133', 'FEMY NURYANTI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810134', 'GERRY YOKA PURNAMA  PUTRA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810135', 'GHINA LUTHFY NURUTAMI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810136', 'GUMELAR AHMAD MUHLIS', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810137', 'HANDOKO PRAMULYO', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810138', 'HERAWATI MURTI GUSTIANI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810139', 'HILMAN ARRASYID', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810140', 'KHOIRUL ANAM GUMILAR WINATA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810141', 'MEGA NUR OCTAVIA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810142', 'MILA YANUAR PERTIWI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810143', 'NENI AMELIA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810144', 'NINA KURNIATI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810145', 'RINRIN RINA ESTIANA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810146', 'RIZKY IKHWANUSHAFA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810147', 'ROSMAYANTI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810148', 'SELLY ANGRIANI PUTRI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810149', 'SISKA ARLIANI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810150', 'SUCI WULANSARI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810151', 'SUMIATY', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810152', 'SYAMSUL MAARIF', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810153', 'TANTYO WICAKSONO', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810154', 'TINI YUNIAR', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810155', 'TITA RAHAYU', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810156', 'TRESNA FAISA SUWANJANA', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810157', 'YOGA TAUFIQ RAMDHANI', 'X - 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810158', 'ALRIEN SYAUMI UTAMI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810159', 'ANNIS YURIANTI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810160', 'ASTI OKTAVIANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810161', 'AYU WAHYUNI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810162', 'CINDY ANGGELINA CAHYADI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810163', 'DESI HERLIANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810164', 'DINI AYU LESTARI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810165', 'DJAELANI SHIDIQ', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810166', 'DYLAN RIZKY KURNIAWAN MUNTHE', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810167', 'ELSYA FERADINA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810168', 'ERNI NURPRATIWI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810169', 'FEBBY ANJANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810170', 'FULKI BRAMANTYA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810171', 'ILYAS GUNA WIJAYA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810172', 'INCHAN PRATIWI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810173', 'INTAN PERMATA INDAH', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810174', 'KAUTSAR NAJLA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810175', 'MUHAMAD RYAN PERMANA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810176', 'MUHAMMAD ANWAR ROSYIDIN', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810177', 'NICKEN BUDI AYU', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810178', 'NUR KUMALADEWI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810179', 'PERMANA JAYA HIKMAT', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810180', 'PUJI ARTI RACHMAWATI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810181', 'RACHMAT ADI SUPRAPTO', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810182', 'RINA TRI UTARI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810183', 'RISMA HANDAYANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810184', 'RIZKA AULIA AFIFAH', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810185', 'SANDY AIDUL AMMARULLAH', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810186', 'SHINTA ROHMATIKA KOSMAGA', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810187', 'SOVIA DEWI MULIASARI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810188', 'SULAIMAN', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810189', 'TIAN PRADIANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810190', 'VENANSIUS ANDREA RAHMOYO PUTRO', 'X - 5', '-', '01/01/2008', '-', 'KATHOLIK', 'L', '-', '-', '-', '-', '-'),
('070810191', 'VETTY FATIMAH', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810192', 'VIAN MULYANI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810193', 'WAARITSU', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810194', 'YASOKA DEWI', 'X - 5', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810195', 'YUDHI DWI PERMADI', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810196', 'ZACKI ERFIYANTO', 'X - 5', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810197', 'ABI RIKOBI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810198', 'ARI PRATAMA PUTRA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810199', 'ASTRI LESTARI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810200', 'BAGJA GUMILAR', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810201', 'BINA NGUMBARA BENJAMIN', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810202', 'BUDI SETIADY', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810203', 'DEA PRAHASTI RACHMI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810204', 'DESTIANTY NUR ARTIANINGSIH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810205', 'DEWI NURAISYAH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810206', 'DINA HIRTASARI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810207', 'DWIKA ANDJANI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810208', 'EGGI DARMAWAN', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810209', 'ERNA YULIANA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810210', 'EVI  PRATIWI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810211', 'FADLI APRIANTO', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810212', 'FITRI RIZKIA GAHARI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810213', 'GUSTIANI SAFITRI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810214', 'HERIKA SURYA PRATAMA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810215', 'IIH CARLA RAHMAYANTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810216', 'IIS MAESAROH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810217', 'IRWAN MULYANA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810218', 'JERIZAL YULIANTO', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810219', 'MOCHAMMAD ARIF RACHMAN HERNOMO', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810220', 'MUTAMINAH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810221', 'NAJMIA RAHMA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810222', 'NOVI RASMAYANTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810223', 'NURAMALIA MURSYIDAH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810224', 'NURUL ULA SAYYIDATUNNISA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810225', 'REDHA ASHADI NOVANDRA', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810226', 'REVI PEBRIAN', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810227', 'RINDI CAHYA WULANDARI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810228', 'RUDY SULAEMAN', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810229', 'SEILEN HAFDARA NURDIN', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810230', 'SUCI HARTANTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810231', 'TAUFIK MAULANA ABDILLAH', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810232', 'TRIE DAMAYANTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810233', 'VANIA DECONE JOLANDA', 'X - 6', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810234', 'WIDIARTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810235', 'WULAN IKE TRISNAYANTI', 'X - 6', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810236', 'AFGHAN MUHAMMAD JIHAD', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810237', 'ANNEKE PUTRI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810238', 'ANNISA MUTHOHAROH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810239', 'ARIS BAHTIAR', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810240', 'AYI KULSUM ZAM ZAM', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810241', 'DEA DINAR BIMBI HARDIANTI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810242', 'DEVI MELINDA DWI PUTRI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810243', 'DIMAS ALPARIZI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810244', 'DINY FEBRIANY HASANAH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810245', 'DONA HAYUNNALITA RUSMANA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810246', 'GEBY FERARIANA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810247', 'IKBAL SAEFUL AZIS', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810248', 'INDRIYANTI HANDAYANI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810249', 'KAHFI ALI PERDANA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810250', 'KEYNE  HADRIAN', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810251', 'LEA AMELIA LESTARI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810252', 'MOCHAMAD HILMY RAMADHAN', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810253', 'M. NUR ADNAN', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810254', 'MAYA CYTA PUSPITA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810255', 'MUHAMAD RIDWAN FAUZI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810256', 'MUHAMMAD FAKHRI FARGHANI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810257', 'NADYA SALSA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810258', 'NOVITA NURAENI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810259', 'NURI NURMALASARI KUSUMAH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810260', 'NURUNISA ALAWIYAH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810261', 'OVTA REZKA AMIJAYA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810262', 'PRASETYO WICAKSONO DARMAWAN', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810263', 'RADEN DELIQUE DIERATU KAMAN', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810264', 'REZHA WIDIATMAJA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810265', 'RINI SUTINI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810266', 'RIZKI DWI SYAHRIZAL', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810267', 'RUDINI HADI WIBOWO', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810268', 'SEPTIANI WAHYUNING PRATIWI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810269', 'SONI SONJAYA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810270', 'SYAFIRA AMELIA SUDARSYAH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810271', 'THIO ANGGA PRAKOSO', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810272', 'TINA NUR FAIDAH', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810273', 'TRISTI LARASATI', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810274', 'WIDA KANIA KHULSUM', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810275', 'WINDA PURNAMA', 'X - 7', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810276', 'ADITHYA NUGRAHA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810277', 'ADITYA RAHMAT GUMILAR', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810278', 'ANANTIA FIRDA ATHIANA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810279', 'APRILLIA AYU LESTARI PERMANA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810280', 'ASTRI ARYANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810281', 'AYU TRILISTIANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810282', 'BAYU YOGATAMA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810283', 'CHAERUNISSA RIZKY MAULIDA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810284', 'CHANDRAWAN SATRIA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810285', 'CICILIA NATALIA', 'X - 8', '-', '01/01/2008', '-', 'KATHOLIK', 'P', '-', '-', '-', '-', '-'),
('070810286', 'CINDY PIRU DWINTASARI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810287', 'CUCU SAEPUDIN', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810288', 'DEBBY PERMATASARI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810289', 'DEVI MEILIA', 'X - 8', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('070810290', 'DIAN MEGA PRATIWI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810291', 'DWI PAWESTRI SULISTIANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810292', 'ERWIN ADITYA PRAWIRANATA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810293', 'FANY APRILLIANY S.', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810294', 'FRISDI STAMANDA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810295', 'ILHAM JUANDA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810296', 'INDRABAYU', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810297', 'INSAN ANUGRAH GUSTI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810298', 'INTAN SITI NUGRAHA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810299', 'KOMALA SRI HERYANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810300', 'L.A. ARIF NUGRAHA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810301', 'MOCHAMAD DZULKIFLY AL SATRIA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810302', 'MALINDA IRIANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810303', 'MISNI MABRUROH', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810304', 'NENENG HOERUNNISA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810305', 'NINDYA DEVI MENTARI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810306', 'NOVI NURWANTY', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810307', 'NUR RISKI KINTARTI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810308', 'NURHADI FIRMANA', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810309', 'NURINA NURDINI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810310', 'PRASETYO HADI NUGROHO', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810311', 'RESTI INDRIARTI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810312', 'RISCA NUR FITRIANI', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070810313', 'SEPTIAN NUR JAMAL', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070810314', 'WULANDARI SUKMANING TASRIPIN', 'X - 8', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071191', 'MOCHAMAD ILHAM', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071236', 'MOHAMMAD RIZALUL FIKRI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071275', 'MUHAMMAD IQBAL', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071276', 'MUHAMMAD RHEZA ALFIN', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071277', 'NANIK SEPTIANUR', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071240', 'NOVI GINANJAR RAHAYU', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071195', 'NOVYA NOFIYANTY NURYANTI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071278', 'NURUL AMANAH SOLIHAT', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071282', 'PRIMA HARTIO', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071284', 'PUTRI WULANDARI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811328', 'R. ZAKI MIFTAHUL FASA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071197', 'RADEN LUCKY DARMAWAN', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071072', 'RISKA NURBAYA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071287', 'RIZGIA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071201', 'RIZKY RESTAFAUZI SUPANDI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071162', 'SHADAM HUSSAERI HANDY PRATAMA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071250', 'SUGIH PRATAMA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071251', 'TAUFIK ARIANSYAH', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071330', 'THIOREDI PUTRA HERMAWAN', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071332', 'ULFAH OKTA ADITYA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071295', 'YOSEF HERY HIDAYAT', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071335', 'YOVITA YUNIAR RAMLY', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071336', 'YULIANTI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071337', 'YUSI NUR RAMADHAN', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811329', 'ADITYAN AGUNG S.', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811330', 'AINI NURUL IMAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071170', 'ALDY NOVA DYANSYAH', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811331', 'ANJAR BIMA PRAKOSO', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071215', 'ASDIT LEONITARA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071087', 'AYU KUSUMANINGTYAS', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811332', 'BADAR TEGUH MANSIK', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071217', 'BANGKIT ERAWAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071011', 'DEWI SUSLIANA FAUZANI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071049', 'DHANDY ARDIANSYAH', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071050', 'DICKY BAGJA RAMADHAN', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071091', 'DINAR YUANISA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071093', 'EKA RAHMAWATI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071370', 'FAKHMI FAKHRUR RAZI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071097', 'FIKA ANDINA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071014', 'HAEKAL WARDANA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071016', 'IRMA TRI SAFARINA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071017', 'JOSI MEIKA MUTMAINAH', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071018', 'KANIA WIDYATAMI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071019', 'KATHARINA RISKA WULANDARI', 'XI IPA 1', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('06071020', 'LAILY HERNI KURNIAWATI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071021', 'MARTINA ANISA DEWI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071373', 'MOHAMMAD KEVIN ARNAS', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071022', 'MUFTI MUHTADI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071111', 'NADIA FARHANI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071026', 'PIA ZAKIYAH', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071066', 'PUSPASARI RESPATININGTYAS', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071027', 'RAHMI FATHONAH', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071070', 'RENI KUSTINA SANDI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071028', 'RENNY UTAMININGSIH HARSANTO', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071029', 'RIRI AYU DERIARI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071071', 'RISA DEWI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071033', 'RIZKI ALIEF FAJARINI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071160', 'RUNI RACHMALINA UTARI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071034', 'SRI MULYANI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071081', 'TEGUH ALAM PUTRA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071035', 'TEGUH NUGRAHA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071037', 'VERNIDA MUFIDAH', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071166', 'VINDA DWI OKTOVIYANDA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071294', 'WILDAN AHMAD FIRDAUS', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071039', 'YULIANI HAJIMINAWATI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071040', 'YURI INDRIYANI YEUYANAN', 'XI IPA 1', '-', '01/01/2008', '-', 'KATOLIK', 'P', '-', '-', '-', '-', '-'),
('06071168', 'YUSUF BUHORI MAULANA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071041', 'ZAIM SIDQI ISLAMI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071042', 'ZILKA PRIANDITYO', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071254', 'AGYS SISKA GICIA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071211', 'AHMAD SUPRIANTO', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071300', 'ALDI RHINALDI ABDUL GANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071212', 'ALVIANDO RESTU PRATAMA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071130', 'AMALIA NURPITRIYANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071301', 'ANDARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071375', 'APRILITA LESTARI RESCHO', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071385', 'DESI SUSANTI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071096', 'FEDY FADILAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071311', 'FITRIA ENDAH PERMATA SARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071053', 'FUJA PRATAMA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071055', 'GILAR DWIGUNA ARIEF RACHMAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071265', 'HANA ROVIANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071101', 'INDRA HERMAWAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071104', 'ISTI SOFIA INSANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071057', 'KINSYA ABDURRAHMAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071150', 'LASTRI RAHAYU', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071190', 'LUKMAN GALIH NUGRAHA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071058', 'MARDIANA PURWA RIZKI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071318', 'MEILANI NUR HASANAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071108', 'MITA PERMANASARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811315', 'MUHAMMAD DENDI A.', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071061', 'MURSYIDAH AMNIATI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071320', 'NICKI SELVIA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071321', 'NITA PERMATASARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071112', 'NOFALIA NURFITRIANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071194', 'NOVITA SARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071281', 'PRATIWI ROKHMAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071065', 'PURNAMA NUR RACHMAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071283', 'PUSPITA HANDAYANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071114', 'PUTRI NURFUADAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811316', 'PUTRI NURLIANA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071323', 'PUTRI PERMATASARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071324', 'RADEN RANGGA PRATAMA PUTRA DJU', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071326', 'RATIH NURJANAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071380', 'RIDWAN ANGGA KUSUMA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071159', 'RISKA YUNITA PRATAMI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071074', 'RIZNA NOFITASARI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071119', 'SARAH ISMI KAMILAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071120', 'SHEILLA FITRIAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071077', 'SHINTA NOVIA NURJANAH', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811317', 'SILAHUDIN NASIRI N.', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071204', 'SISCA YULIA MAHANANI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071121', 'SURAHMAN', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071252', 'TIKA AYU BUDIARTI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071082', 'UTARI DIANA PUTRI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071126', 'WANDA KARROMA', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071209', 'WIDYA SUSANTI', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071128', 'ADY SYAF PUTRA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071129', 'AFIFAH NURIYANI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071043', 'ALI MUTASHIM AULIARROHMAN', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071256', 'AMMI DAMAYANTI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071085', 'ANI SUMARNI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071134', 'AYU YUNIARTI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071218', 'BELINA ANGGIA GUSTAMI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811318', 'BIMO AULIA RAHMAN', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071137', 'CHAERUL ANWARI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071045', 'DAFIT BAGUS MAHA BEKTI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071219', 'DENY MAULANA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071260', 'DESSY DESSYANTI NURAIDA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071090', 'DIAN ANDRIANI SAFITRI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071092', 'DWI PUJIARTI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071051', 'ERLINA CINTIYA DEWI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071143', 'FACHRIZAL CAHYA P.', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071145', 'GANIS PANJI YAHYA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071146', 'HANIF JALAMANAH', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071102', 'INTAN SYAPINATIN NAJA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071148', 'ISMA RISMAWATI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071149', 'ISTIKASARI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071188', 'LENNY WIDIA MUKAROMAH', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071105', 'LIA ROSLIANA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071189', 'LISTYA DWINA APRILIANI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071232', 'LULU PANGESTI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071106', 'M. ANJAR SHEVTIAN', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071271', 'MAYA OKTAVIA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071107', 'MEGA FAJARWATI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811319', 'MIQYASSARA DIANDRA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071154', 'MUTIARA SARI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071238', 'NISA NUR RAHMAH', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071113', 'NOURMA MELATI LARAS', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071155', 'NOVIYANTI KAMALELA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071156', 'ONNY PADMANTARA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071280', 'PERMATA SARI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071196', 'R.R ESTI SUPRIYATI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071325', 'RADEN YUNIAWATI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071202', 'RUDI PRADISETIA SUDIRDJA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071078', 'SISKA KARLINA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071079', 'SOFYAN RAMADHANI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-');
INSERT INTO `t_siswa` (`user_id`, `nama`, `kelas`, `alamat`, `tgl_lahir`, `telp`, `agama`, `kelamin`, `tmp_lahir`, `tgl_input`, `sttb`, `nem`, `wali`) VALUES
('06071080', 'SUNDUS MIRROTIN', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071329', 'SUSANTI AMALIA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071124', 'TIARA MULYA NINGRUM', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071207', 'TOMMY MULYANA', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071125', 'TRI BAGUS AJI PAMUNGKAS', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071208', 'TRI CHANDRA WULAN SARI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071165', 'VERA SYAPRIATI DEWI', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071210', 'WISNU ADITYA MUIZ', 'XI IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071299', 'AHMAD LUQMAN HAKIM', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071381', 'AKBAR BUDIMAN', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811320', 'ANGGARA EFFENDI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071171', 'ANISAPUTRI SYAFARINAH HAKIM', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071213', 'ANITA MEGAMARINTI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071132', 'ANITA NUZUL DIAH FIASIH', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071302', 'ANTONI ARIF KURNIA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071172', 'ARI BUDIANTO', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071214', 'ARIANDHINI LESTARI HARYADI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071258', 'ARIEF', 'XI IPA 4', '-', '01/01/2008', '-', 'PROTESTAN', 'L', '-', '-', '-', '-', '-'),
('06071216', 'AYUTIA PERTIWI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071135', 'BAGUS WIDIANTO', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071136', 'BUDI DANIAR', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071089', 'DESSY RATHRY YULYANTHY', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071304', 'DESTIANA CHAIRUNNISA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071141', 'DINI INDRIANI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071223', 'EKKY OKTORA SANTOSO', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071052', 'FEBI LARASWATI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071263', 'FITRI MARIMA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071382', 'GILANG MATRIANSYAH DWI PUTRA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071227', 'HARDI FERDIAN SABAR', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071099', 'HERLINA PUSPA DEWI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071229', 'HILDA FARIDA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071230', 'IWAN FATHUROKHMAN', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071231', 'JAENUDIN', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071151', 'MAYURA FIRLANDARI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071235', 'MOCHAMAD HARIS ALAMSYAH', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811321', 'MUH. ASHARI EKASWARI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811322', 'MUHAMMAD NIZAR F.', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071110', 'MUHAMMAD RIZKI GORBYANDI NADI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071062', 'NIKEN DEWI NAGARANA', 'XI IPA 4', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '-', '-', '-', '-'),
('06071237', 'NISA NUR FRAZTY', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071239', 'NOLIS FAUZIAH', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071064', 'PELITA ISMAYA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071243', 'PRIMA SIDIQ NUGRAHA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071067', 'PUTRI KRISNA NURHAPSARI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071244', 'RANNISA TRIASA MIFTAH', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071158', 'RIKA NURKEMALASARI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071245', 'RIKE ANDRIKNI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071246', 'RINA RUSDI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071247', 'RIZKA SUCI UTAMI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071288', 'SANTI SRI WARDHANI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071291', 'SETIYA ARUM WULANDARI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071167', 'YARA AYU INDRIYANI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071338', 'YUSUF ADI NUGRAHA', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071084', 'YUYUN MIRANUR ADELIANI', 'XI IPA 4', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071296', 'ADE YUYUN YULIANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071297', 'ADRI SYAEPUL MILAH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071044', 'ANE KUSTIANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071086', 'ANISA AYU SANDI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071174', 'BELA LIESTIAWATI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071175', 'CAMAR REMOA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071303', 'DADAN MOCHAMAD RAMDHANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071177', 'DEFIA SHOLIHATUN NISSA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071305', 'DHANI RAMADHAN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071178', 'DINI BUDIARTI SALAM', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071179', 'DISE AMALIA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811323', 'DISTI FAUZIA SUKANDAR', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071142', 'EDLIN SUMARLIN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071225', 'FAJRI FAUZAN HAQ', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071180', 'FITRI IDAYANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071312', 'FITRIANTA B.R GINTING', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071098', 'GHEA GRISTANNIA GRANDISTIN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071054', 'GIAN NUR ALAMSYAH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071056', 'HESTI RAHMAWATI ASRI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071183', 'ILHAM IHSANANDA RASPATI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071147', 'IMAM MUTTAQIN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071184', 'INTANIA RIZANTY DEWI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071269', 'IRA HIMAWATI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071185', 'IRMA SEPTIANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071186', 'KRESNAWAN HUSSEIN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071378', 'LUKI LUKMAN HAKIM', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071234', 'LYA MULYA MARTINI SUTISNA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071059', 'MELAWATI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071192', 'MUHAMAD ZAMZAMI MUTAQIEN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071319', 'MUTIARA MAHARANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071063', 'NUR SYIFA ROSHIDA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811324', 'RAHMAT RAMADHAN', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071198', 'RATNA YULIYANTI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811325', 'RENDRA WIBAWA S.', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071116', 'RENDY EKA SAPUTRA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071199', 'RIKE RACHMAYATI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071327', 'RISA SRI UTAMI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071200', 'RISNA KARTIKA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071286', 'RITA SETIADI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071075', 'ROSI SITI NURJANAH', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071203', 'SAEDI BAWANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071290', 'SELLY RIZKI FITRIANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071249', 'SOFI HUDA NURANI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071122', 'TATIK CITRA WULANDARI', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071253', 'WILDAN PRAYOGO', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071083', 'WINA MARTIANA', 'X - 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071127', 'ADE ROCHMAT', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071298', 'AHMAD BOBBY HERNAWAN', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071002', 'AMALIA RAHMANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071133', 'ANITA TRI ASTUTI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071176', 'CITRA ANGGIANI WAHYUDIN', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071010', 'DADAN FITRI AMINDANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071048', 'DEWI ROSDIANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071140', 'DINA NURUL UTAMI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071383', 'DINDA GNATINI HERNAWATI BAGJAN', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071376', 'ELDA HAMDANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071012', 'EVI SEPTIANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071013', 'FAKHRUDIN NOOR', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071391', 'FANNY YULIAN PRIMALIA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071310', 'FITRI AFRIAN KAMESWARA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071144', 'FITRIANI DEWI ARYANTI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071015', 'HENDY HADIANSYAH', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071100', 'ILHAM AZENAL SACABRATA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071314', 'INE TRISNAWATI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071316', 'KATON PRABOWO', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071273', 'MELINDA DEWI RAMADHIANTY', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071384', 'MOCHAMAD RYAN ANUGRAH', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071023', 'MUHAMMAD IBRAHIM RIYONO RAHARJ', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071024', 'MUHAMMAD IMAN PRATAMA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071109', 'MUHAMMAD IQBAL MAULUDI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071153', 'MUHAMMAD REZZA ANGGA PRADANA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071025', 'NOVI RIANTI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071241', 'NOVIYANTI ESTIYA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071242', 'PANCA LUKITA ANANTO', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071068', 'RAMZI TASHA MANSOOR', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071069', 'RANGGA EKAPUTRA BANAWA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811336', 'REX AVIANTARA N', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071030', 'RISA DWI AIDARIANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071031', 'RISKI ISKONJAYA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071032', 'RISYA ANNISA KUDUS', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071073', 'RIZKI KURNIAWAN', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071328', 'RIZKIA APSARI ANDARANESWARI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071289', 'SELINDA NOVIANTI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071076', 'SEPTY YULIANI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071292', 'SINTA NUR LATIFAH', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071163', 'SONIA SITI SUNDARI', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071293', 'SRI RAHAYU', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071206', 'SYIFA MAULINA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071164', 'TIA SOFIANA', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071036', 'TITO NURFITRAH RAMDHANU', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071331', 'TRI NURSARIFAH', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071333', 'WIDIANTI NURWALIYAH', 'XI IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071255', 'AHMAD WILIANA WIBAWA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071257', 'ANISA BELAWINI CIPTA DEWI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071259', 'ATTY NURSANTI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071088', 'BAYU PRAMONO', 'XI IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071371', 'BELIA RACHMANI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811326', 'BETRIAKARI PUTRI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071046', 'DENDEN KHULDUN MABRUR', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071047', 'DEVY MEYLIANI EFFENDI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071261', 'DIMAS TANJUNG', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071307', 'ERNI APRIYANI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071262', 'FANNY FEBRIANTY', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071264', 'FITRI NUR WULANDARI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071181', 'GANIA PURNAMASARI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071372', 'GIANA ROSANTI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811327', 'GILANG DIMAS', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071266', 'IDA MAYASARI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071103', 'IQBAL FAUZAN', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071377', 'JABBAR ARNASTY', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071270', 'JOKO TRIONO', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071187', 'LANI WIDIA ASTUTI', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071274', 'MITA KARLINA', 'XI IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071001', 'ABDULRACHMAN HASAN', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071131', 'AMALIANTY', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071003', 'AMALLYA FITRA APRIANTI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071004', 'AMELINDA DYAH RAHMASARI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071005', 'ANISA SONIA FATMAWATI ADHA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071006', 'ARINDA PUSPITA RACHMAN', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071007', 'AYU AULIA SEPTIANI', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071008', 'BERLIAN AGUNG DIPANUSA', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071009', 'CINDY MUTIARATU', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071139', 'DEA IBRAHIM ARSYAD', 'XI IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071306', 'DIAN ENDARNO', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071220', 'DIAN MIRA WANTI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071221', 'DWI YUNIARTI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071094', 'EKKY ANGGRYAWAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071224', 'ENITRIA ASTRIANI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071226', 'FAJRIYAH MULIAZANAH', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071095', 'FANDJI NOOR ZAKARIA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071309', 'FAUJI LESMANA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071228', 'HARDIANTI MAULIDA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071182', 'HENI HESKANIA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071313', 'HERU ROSMANTO', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071267', 'IIS NURHAYATI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071268', 'INDRA TRI SEPTIAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071315', 'JUNAEDI INDRIANA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071317', 'LINGGA SASTRAWIJAYA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071233', 'LUSI MELLIANA SENI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071272', 'MEGA TIARA YUNIAR', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071386', 'MOCHAMAD RIVAN ANUGRAH', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071060', 'MUHAMAD ARIF AL FAJAR', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071152', 'MUHAMMAD DAEROBI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071374', 'MUSTIKA QODAR A.', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811333', 'NENENG KARTIKA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071193', 'NICO SEPTIYAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('070811334', 'NITA HADIAN', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071322', 'NUNIK SRY RAHAYU', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071279', 'OVI WULANDARI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('070811335', 'PREVIRA TIRANI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071157', 'RADEN YULIA MARLINA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071115', 'RANI PUSFITA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071285', 'RIAN DWI CAHYO', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071117', 'RIZAL INDRA ARIFIYANTO', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071118', 'SANTI YULIANTI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071161', 'SELA OKTORA', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071248', 'SENDI SAPUTRA SUHENDI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '-', '-', '-', '-'),
('06071205', 'SITI NURHALIFAH', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071123', 'TIA NOVIAWATI', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('06071334', 'WIWIN WINARSIH', 'XI IPS 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '-', '-', '-', '-'),
('05061043', 'ADITYA HERDIANTO SYAFII', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061001', 'ADNAN NANANG RAGIL SUSILO', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061002', 'AGUNG NURRAHMAN', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061003', 'ANDZAR MUHAMMAD FAUZI', 'XII IPA 1', '-', '01/04/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061250', 'ARIS PRATAMA PUTRA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061171', 'ARTI BUDIARTI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061214', 'ARTI YAN NURMALASARI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061215', 'BAMBANG HERMANTO', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061005', 'BAYU ALI AKBAR', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061216', 'CHARLES HERBERT MANAHAN PARDOM', 'XII IPA 1', '-', '01/01/2008', '-', 'PROTESTAN', 'L', '-', '', '-', '-', '-'),
('05061048', 'DESI DESTIANI GUNTARI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061218', 'DESI SUMEGAR', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061220', 'DEWI ANGGRAENI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061252', 'DINA CITRA KHARISMA SARI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061052', 'DINNA DEA ANGRAINI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061222', 'ELISABETH NATALIA SURYANI', 'XII IPA 1', '-', '01/01/2008', '-', 'KATHOLIK', 'P', '-', '', '-', '-', '-'),
('05061054', 'ENING DESI SUSILAWATI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061184', 'FAHMA FIQHIYYAH NUR AZIZAH', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061349', 'FAJAR AZHARI SALEH', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061255', 'FARIS AMARULLAH', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061185', 'FIESTY UTAMI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061186', 'FITRI AFRIYANTI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061060', 'GEASA SENA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061019', 'HIKMAT HIDAYAT', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061261', 'LIA FITRIANI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061235', 'LUTHFI MERDIANDANI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061193', 'MAWADDI LUBBY', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061307', 'MIA FITRIA UTAMI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061265', 'MILA KUMALASARI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061022', 'MUHAMAD KANZU SATRIO', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061310', 'MUHAMMAD ZAKKI FUADI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061269', 'NADYA LARASATI KARTIKA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061023', 'NIDA MAISA ZAKIYYA', 'XII IPA 1', '-', '01/04/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061155', 'NIRA NURIKA SYAWINA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061276', 'RAMIZIA AZHAR HERDIST', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061028', 'RATU GUSTINI NUR JANNAH', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061033', 'RIFKI RAMDAN HIDAYAT', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061346', 'RIKE ARDIANTI WULAN', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061280', 'RINA SURYANI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061281', 'RIRIN EKA PERMATASARI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711339', 'RISKA DWIHARDINI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061075', 'RYNAL FERDIANSYAH', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061242', 'SEPTYANA DEWI VIERGITANINGRUM', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061205', 'SUGIH PURNAMA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061246', 'SYAHRUL MUNAWAR ALBANA', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061077', 'TAUFIK ALI MUKTI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061207', 'VIANADIA PUSPA DEWI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061080', 'WINDA RAMDHANI', 'XII IPA 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061042', 'ADITA FAHMI HANIF', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061248', 'ALLAMAH YAHYA QOLBUN SALIM', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061045', 'CONSISTANIA DEMAWATI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061175', 'DANDA IRAWAN WIBOWO', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061046', 'DANI NIRWANTO', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061217', 'DEO FERNALI ARNANDA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061131', 'DIAN MELINA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061181', 'DIANA MUSTIKASARI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061053', 'EKO NUGROHO BUDIYANTO', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061011', 'FANI ABDUL HAFIZ', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061256', 'FITRIA ATMOJOWATI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061059', 'FRISKA ELSA VALENTINA SIMANJUN', 'XII IPA 2', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '', '-', '-', '-'),
('05061187', 'GAMMA ABDUL JABBAR', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061139', 'GINA MARIANA DEWI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061144', 'INDATI FADILAH', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061229', 'IVAN LUKMAN', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061230', 'LAILA SRI UTAMI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061231', 'LENI KARMILAWATI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061234', 'LUTHFI HELMI LAZUARDY', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711340', 'MOHAMAD RESHA YUDIESTIRA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061267', 'MOHAMMAD IQBAL', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061197', 'MUHAMMAD ABDUL AZIZ ALMUJAHID', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061309', 'MUHAMMAD HAFIDZ PRATAMA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061068', 'MUHAMMAD LUQMAN HASAN', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061311', 'NABILA GANI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061156', 'NOBY SATRIO DWI PURNOMO HADI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061069', 'NURY WINARTI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061352', 'RACHMI UTAMI RACHMATYANI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061315', 'RADEN RYAN SEPTIAN CHANDRA PUR', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061072', 'RESKA PRASETYO', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061160', 'RINI AGUSTIN', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061074', 'RIZSCA ARTNESA FITRY', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061321', 'SAFAAH MAHMUDAH', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061076', 'SELLY NOVIA ANGGARI', 'XII IPA 2', '-', '01/01/2008', '-', 'KATHOLIK', 'P', '-', '', '-', '-', '-'),
('060711341', 'SHANDY GUSTAV EKA SATRIA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061243', 'SISKA JANUAR RACHMAN', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061204', 'SITI HASANAH', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061165', 'TONNY FAHRUROJI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061037', 'TYAS PUTRI UTAMI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061323', 'UZMA TAJMALA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061287', 'VIERA DEWI PRATIWI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061166', 'WAHYU KHOERUTTAMAM', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061082', 'WINDI SHINTIA FANDINI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061039', 'WIWIT CATUR SUTEJO', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061247', 'YEULA HARYDA', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061327', 'YKA MEI SETYONINGRUM', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061040', 'YULLY FITRIANI', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061167', 'ZAKA ZAENUDIN', 'XII IPA 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061289', 'ABDURRACHMAN ALDILA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061290', 'ADE LESTARI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061347', 'AHMAD FUAD HANIF', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711342', 'ARADEA WIRADIREJA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711343', 'ASIH PURWANDARI WAHYOE  P', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061172', 'BAGAS AJI BAWONO', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061129', 'BRANJANG TALIADJI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061251', 'CHAIRUNNISA SAUMI ARIPIN', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061049', 'DESWITA AYUNINGTYAS', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061007', 'DEVY WULANDARI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061180', 'DIAN RAMDHANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061183', 'DWI WAHYUDI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061298', 'EGNAS SUKMA FATHUROHMAWATI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061133', 'EKO HARDANI WIBOWO', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061134', 'ELITA LESTARI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061254', 'EVA SITI ADIYANTI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061300', 'FAJAR GUMILAR EKAPUTRA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061013', 'FENI NURVITAWATI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061016', 'GHANI HAKIM RAMDHANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061224', 'GHEA ARDILIA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061137', 'GIESTHA GUSTIAWINATA SETIAWATI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061142', 'HARRY MUHARAM', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061226', 'HEGI PRASETYO', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061062', 'IKA MEILATY', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061258', 'IRVINA LESTARI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061146', 'ISMA DWI MAHARANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061147', 'ISNA MAULLA RAHMA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061148', 'JOSEPH JEVON MART', 'XII IPA 3', '-', '01/01/2008', '-', 'KATHOLIK', 'L', '-', '', '-', '-', '-'),
('05061260', 'KYAGUS ABDUL WAHID', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061262', 'LULU BRIANNI PUTERI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061263', 'MEGA LEVIANA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061195', 'MOHAMAD FAUZY', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061271', 'NURHASANAH', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061274', 'PRETTY SISKA BUDHIYATI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061199', 'PRIMA NANDA FAUZIAH', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061026', 'RACHMY FITRIANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061278', 'RESTI RAMADHANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061240', 'RIDWAN FAUZY HIDAYAT', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061034', 'RISKY ERWANDA BANJARNAHOR', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061282', 'RIZAL RAHMAWAN SETIABUDI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061319', 'ROBI SUGANDA', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711344', 'ROSI NURJANAH', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061350', 'RUNA WIRANURRACHMAN', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061320', 'RYAN ADHITIA MUSLIM', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061283', 'SANDRO FEBRINO', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711345', 'SANNY NURBHAKTI ZAKIYYAH', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061244', 'SOFIA NOVIANTI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061285', 'TRESNA TRI DESTIANI', 'XII IPA 3', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061292', 'ALFAQIH NUR NUGROHO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061345', 'ANGGA RIDWAN', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061173', 'BELAWAN JABAR', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061044', 'CHANDRA DWIPRASTIO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711352', 'CITRA KHARISMA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061130', 'DESTI ILMIANTI SALEH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061348', 'DEWI SUKMAWATI SURYANA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061132', 'DINI ASTRILIA RACHMAN', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061182', 'DWI UMAYA SARI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061299', 'ERICK WIDARA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061058', 'FANNY WULANDARI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061014', 'FRISKA KHARUNIA FAUZIAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711353', 'GALIH PERSIANA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061136', 'GANJAR RIZKIANA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061302', 'GHUFRON AKMAL WIBISANA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711354', 'GILANG NURRAKHMAT IRIANTO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061188', 'GINA MARDIAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061140', 'GUMILANG RAMADHAN', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061304', 'HILMAN NUGRAHIM', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061063', 'ILHAM DWI FIRMANSYAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061259', 'ITA ROSITA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061149', 'LESTARI MADYANINGATI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711355', 'LIDIA NATALIA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061232', 'LILIK PEBRIANTI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061067', 'MICHAEL TAOFIQ SANYANG', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061194', 'MOCH. FAHRUR ROZI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061268', 'MUHAMMAD NOOR HANAFIAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711387', 'MUHAMMAD ULUL ALBAB', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061270', 'NIA JUNIAWATI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061024', 'NURUL APRILLIA HIDAYAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061025', 'OSCAR SATRYO RASPATI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061070', 'PARYONO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711356', 'PEPI HIDAYATTULLOH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061313', 'PRIMA SATRIA WAHYU PUTRA SUDIO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711357', 'RYAN NUGRAHA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061162', 'SARI NOVI SANTOSO', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061202', 'SELVIA EFRIYANI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061203', 'SENJA TRI HERMAWAN', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061164', 'SISKA SISMAYANTI MULYANI', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061284', 'SITI NURJANAH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061078', 'TETEN CHOMARA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061325', 'WIDA NINGSIH', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061083', 'YUAN FINDER TRIATMADJA', 'XII IPS 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061084', 'ABI NURCAHYO', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061291', 'AGNES PARADHYTA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061088', 'AMELIA LISARA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061047', 'DERA UNGGARANI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061176', 'DESI NOVITA SARI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061008', 'DHIKA PRAMADI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061091', 'DITA PRATIWI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061095', 'ERICK ANDI SYAPUTRA M', 'XII IPS 2', '-', '01/01/2008', '-', 'PROTESTAN', 'L', '-', '', '-', '-', '-'),
('05061100', 'FITRA ALIMMA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061017', 'GIANVALDO', 'XII IPS 2', '-', '01/01/2008', '-', 'KATHOLIK', 'L', '-', '', '-', '-', '-'),
('05061138', 'GILANG RAMADHAN', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061101', 'GINTA JUMEIGI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061102', 'GUNAWAN MOCHAMMAD NATSIR', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061018', 'HANDI FIRMANSYAH', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061103', 'HERFINA ROSHALINE', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061189', 'HERLIANA ANGGRAENI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061064', 'INNE NURLIA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061021', 'MARISA MAHLIA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061105', 'MAULIDA CITADYANA RAHMAWATI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061066', 'MELIA SAGITA PUTRI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061151', 'MERISA SRI RAHAYU', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061264', 'MEUTHIA LENGGOGENI TANJUNG', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711388', 'MUHAMAD RIZKY FANDIARI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711358', 'MUHAMMAD DICKY NURZAMAN', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061107', 'NELMA FEBRIANTY', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061272', 'NURHAYATI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061071', 'RAEY SETEA MERDIANI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061111', 'RAFIKA ANGLING SARI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711390', 'RAIZA MALIK', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061277', 'REDI SETIAWAN', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061317', 'RINI WULANDARI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061073', 'RIZKI BUDHI PRIYONO', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061114', 'RIZKY AULYA AKBAR', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061161', 'ROMI GUANDI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061163', 'SHINTA KHARISMA', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061123', 'WIDYA OKTAVIA RAHMAWATI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061079', 'WILMA NURBANDINI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061081', 'WINDA SULISTIYANI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061124', 'YENYEN PEBRIANI', 'XII IPS 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('234', 'JOKO', 'VII A', 'BALEN', '12/12/1994', '331675', 'ISLAM', 'L', 'BOJONEGORO', '', '', '', 'JOKO'),
('235', 'IKA', 'VII A', 'BALEN', '12/12/1994', '331675', 'ISLAM', 'L', 'BOJONEGORO', '', '', '', 'JULI'),
('236', 'SUKI', 'VII A', 'BALEN', '12/12/1994', '331675', 'ISLAM', 'L', 'BOJONEGORO', '', '', '', 'IKA'),
('23123', 'ssdfsdf', '111', 'dasdas', '03/12/2011', 'asdasd', 'dasd', 'L', 'asdas', '', '', '', ''),
('12345', 'riki', 'X - 1', 'sukabumi', '11/25/1909', '-', 'Islam', 'L', 'SUKABUMI', '', '', '', 'rusdi'),
('05061085', 'ACHMAD RIZAL FAKHRUDIN', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061086', 'ADITYA CAHYADI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061087', 'ALWI ERLANGGA PRAKOSO', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061089', 'ANDIKA HERIYANDI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061293', 'ANDY PRATAMA NUGRAHA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061127', 'ANITA RAHMAYANTI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711365', 'DEASTIKA BAYUNING SUDJASMARA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061050', 'DEVI REGINA PURI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061090', 'DHEA RIZKY NURHADI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061360', 'DIANING PERTIWI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061092', 'DWI ARIE KURNIAWAN', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061093', 'ENDAH PURNAMASARI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061094', 'ENDRIO NUR PUTRA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061096', 'ERMA NURUL HIDAYATI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061057', 'EVIRA AGUSTINA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061097', 'FARIDA RENDRAYANI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-');
INSERT INTO `t_siswa` (`user_id`, `nama`, `kelas`, `alamat`, `tgl_lahir`, `telp`, `agama`, `kelamin`, `tmp_lahir`, `tgl_input`, `sttb`, `nem`, `wali`) VALUES
('05061098', 'FATIA HANIFAH ZAHRA FIRDAUS', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061099', 'FERINA ROSIANA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061301', 'FERMI DWI WICAKSONO', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061141', 'HANA SITI NURAINUN', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061143', 'IMAM SARTONO HADI WIJAYA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061065', 'LATHIFAH GHOIDA AZHAR', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061150', 'MARLIANA NOVIANTY', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061104', 'MAULANA SUBHAN FUAD', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061153', 'MUHAMMAD ADAM RAMDHANI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061106', 'MUTIA NURUL HAMIDAH', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061108', 'NENENG LULU WALUYANINGTIAS', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061154', 'NINDY METTA MAYANGSWARI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061109', 'NISSA FADILLAH SOMANTRI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061110', 'RACHMI GHALIFA MANSOOR', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061030', 'RD. DUNDEN GILANG MUHARAM', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061031', 'RENI ERNAWATI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061112', 'RESTY MAYSEPTHENY HERNAWATI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061032', 'REZKY MUKTI MUHAMMAD SAHID', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061113', 'RIA AYU PRATIWI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061241', 'RIZAL RIZKY AKBAR', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061115', 'RONI SETIA LEKSONO', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061116', 'SATITI BUDI NURKUSUMAWANTI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061117', 'SATRIO ADHI PRAMONO', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061118', 'SEPTIOADI ANGGARA PUTRA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061119', 'SOFI SYAMILATUL FAHMI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061120', 'TIFFANY CAESAREZA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061121', 'TOMMY ADITYA KOMARA', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061122', 'TRI EDLIANI LESTARI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711346', 'VALDIS REINALDO AGNAR', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061125', 'YULIANI ASTIKASARI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061328', 'YUNIA NOVIANTI', 'X TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061168', 'A. PURNAMA YOGASWARA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061209', 'ADITHYO DWI PUTRA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061249', 'ANDHIKA RAMDHAN NUGRAHA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061212', 'ANGGA AHMAD MAULANA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061213', 'ANGGORO SUSETYO ZATI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061004', 'ARIEFDHIANTY VIBIE HAPSARI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061128', 'ASTRIATI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061174', 'BOBBY RIYANDI WIDYANJAYA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061296', 'BUDI MULIA KURNIAWAN', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711347', 'DENDY JATMIKA WIBISANA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061178', 'DEWI QODARIAH', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061297', 'DIAN PRASETYO UTOMO', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061179', 'DIAN PUSPITA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061221', 'DILA FATMALA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061253', 'EMA ANALISIA ROSTIANA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061009', 'ERIAN SUWANDI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711348', 'ERNA RUSNIATI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061056', 'ERWINA KOSMAWATI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061351', 'FAHRIAN DESCA AZTIELEN', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061010', 'FAIZAL ABDUL AZIS', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061061', 'GENTA GEMA TAMZIL GEMILANG', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061015', 'GENTA JANUARY', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061303', 'HANI MAULANIA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061225', 'HARRY LUKMAN KURNIAWAN', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061145', 'INDRA RAMADHAN BATAMA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061191', 'IRARA ULENG', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061227', 'IRMA RAHMAWATI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061228', 'ISNA YULITSA SARI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061305', 'LIA AMELIA JUWITA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061192', 'LINDUNG KRISMIN HAPSARI', 'XI TKJ 1', '-', '01/01/2008', '-', 'PROTESTAN', 'P', '-', '', '-', '-', '-'),
('060711349', 'LISSA ADHISTY MUCHNI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061196', 'MUHAMAD MULIA RAMADHAN', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061308', 'MUHAMAD RANDI NUGRAHA SAPUTRA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061237', 'MUHAMMAD ERLANGGA MAULANA YUSU', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061198', 'NIRWAN NURSABDA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711350', 'NITA ANDRIANI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061239', 'NOPA NOPIYANI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061314', 'PUJI SRI BADRIYAH', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061344', 'RABBY RADHIYA JANUARIZKI GUMAY', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061275', 'RAHMAT IMADUDDIN', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711351', 'RANGGA CIPTA NUGRAHA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061316', 'RIAN ADI PUTRA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061318', 'RISKI RAFIKA', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061322', 'SANDY ROZAK SETIABUDI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061036', 'SITI ROBIATUL ADHAWIYAH', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061286', 'TSAMROTUL NURUL SHOLIHAH', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061324', 'VERAYANI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061041', 'YUSI HERLIANI', 'XI TKJ 1', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061169', 'ACEP SUTRISNO', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061126', 'ADAM JANUAR FIRMANSYAH SYARBIN', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711368', 'AHDIE AHMADI SOLEH', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061170', 'AI AISAH', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061359', 'ALMIRA DEVINA', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061210', 'ALYSSA PUTRISARI', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061211', 'ANDRI DJUANDA SUNARY', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061294', 'ANGGI RIYANTO RIDWAN', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711364', 'ARIEF RUSDIANA', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061295', 'ARYANTI', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711367', 'DESI FRASTIKA DEWI', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061177', 'DEVI SUCIATI JUHARI', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061219', 'DEVY SUKMAWATI', 'X MM 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061051', 'DYNA NANDYANI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061055', 'ERNA PUSPITA SARI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061223', 'FANI ANDRIANI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061012', 'FANIDA FIRDAUSI FAUZIYAH', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061257', 'GILANG AGUNG PRASETIA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061190', 'HILAL RAMADHAN MAHMUD', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061020', 'IRWIN REZKA FIRMANSYAH', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711366', 'MARISA DWI ARDANI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061236', 'MEILIA KARLINA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061306', 'MEITA DEWI ILMIA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('060711359', 'MIRANTI SYLVIANI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061152', 'MOHAMMAD ALI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061266', 'MUHAMMAD AZMI KAMARULLAH', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061238', 'NENG KIKI AMALIA PRATIWI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061312', 'PASQA MUHAMMAD', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061158', 'PIKI SUTANTO ADI SAPUTRA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061159', 'PRIMANITA HANIFAH', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061029', 'RADEN DEWINTA DIESTARINA KAMAN', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061027', 'RAFIJRISKA RATNAKUMALADEWI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061201', 'RIAN TAUFIK', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711360', 'RICA ARIYANTI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061279', 'RIKA OKTAVIA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061035', 'SARAH NUR FEBRIANA RAHMAYANTI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061245', 'SURYANA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('05061206', 'SYAIKHU NUR KAMALSYAH', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'L', '-', '', '-', '-', '-'),
('060711361', 'WARTINI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061038', 'WIDI LESTARI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061326', 'YENYEN AGUSTIYANI SUHERMAN', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061208', 'YUDHIT ANATHA', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-'),
('05061288', 'YULINAR PRATIWI', 'XII TKJ 2', '-', '01/01/2008', '-', 'ISLAM', 'P', '-', '', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t_soal`
--

CREATE TABLE IF NOT EXISTS `t_soal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `kategori` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `file` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `visit` int(10) NOT NULL DEFAULT '0',
  `ukuran` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `t_soal`
--

INSERT INTO `t_soal` (`id`, `judul`, `deskripsi`, `kategori`, `file`, `visit`, `ukuran`, `tanggal`) VALUES
(1, 'soal ulungan umum 1', 'tertert', 'T I K', 'soal1.doc', 2, '19,96 Kbytes', '16/02/2009 00:45:29'),
(2, 'soal ulungan umum 2', 'dsad', 'B. Indonesia', 'soal2.jpg', 0, '5,56 Kbytes', '22/02/2009 23:39:20'),
(3, 'soal latihan 1', 'fafsf', 'T I K', 'soal3.jpg', 0, '7,38 Kbytes', '11/07/2009 10:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `t_spp`
--

CREATE TABLE IF NOT EXISTS `t_spp` (
  `idspp` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `bulan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `tingkat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `iuran` int(11) DEFAULT NULL,
  `tu` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ket` varchar(8) COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`idspp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_staf`
--

CREATE TABLE IF NOT EXISTS `t_staf` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nip` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kelamin` char(2) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `alamat` varchar(60) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tugas` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `telp` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `hp` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `pelajaran` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_lahir` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pangkat` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `kategori` char(1) COLLATE latin1_general_ci DEFAULT '0',
  `profilstaf` longtext COLLATE latin1_general_ci,
  `nuptk` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=165 ;

--
-- Dumping data for table `t_staf`
--

INSERT INTO `t_staf` (`user_id`, `nama`, `nip`, `kelamin`, `alamat`, `tugas`, `telp`, `hp`, `email`, `pelajaran`, `tgl_lahir`, `tmp_lahir`, `kode`, `pangkat`, `kategori`, `profilstaf`, `nuptk`) VALUES
(1, 'Drs. H. Cucu Saputra, M.M.Pd', '131853696', 'L', '-', '-', '-', '-', '-', 'Kimia', '3/31/1964', 'Ciamis', '-', '-', '0', NULL, ''),
(2, 'Alan Ridwan M', '400001001', 'L', '-', '-', '-', '-', '-', 'Penjaskes', '4/2/1964', 'Garut', '-', '-', '0', '', '123'),
(3, 'Taufik N. Syah, S.Pd', '400001003', 'L', '-', '-', '-', '-', '-', 'B. Jerman', '2/6/1951', 'Bandung', '-', '-', '0', NULL, ''),
(4, 'Siswanto, S.Pd', '196805181995121004', 'L', '-', '-', '-', '-', '-', 'BK', '12/14/1955', 'Bandung', '-', '-', '0', NULL, ''),
(5, 'Wuryanta', '196504281989121001', 'L', '-', '-', '-', '-', '-', 'Biologi', '10/9/1961', 'Bandung', '-', '-', '0', NULL, ''),
(6, 'Drs. Choirul Anam, S.ST', '196105221984031005', 'L', '-', '-', '-', '-', '-', 'PKn', '11/5/1962', 'Malang', '-', '-', '0', NULL, ''),
(7, 'Warjana, S.Pd', '196605202006041001', 'L', '-', '-', '-', '-', '-', 'B. Indonesia', '6/9/1962', 'Jakarta', '-', '-', '0', NULL, ''),
(9, 'Yulianto Sri Utomo, S.Kom', '400001004', 'L', '-', '-', '-', '-', '-', '-', '-', '-', '-', '0', '0', '', ''),
(8, 'Dody Firmansyah', '400001002', 'L', '-', '-', '-', '-', '-', 'T I K', '1/1/2000', 'Bandung', '-', '-', '0', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_statistik`
--

CREATE TABLE IF NOT EXISTS `t_statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_statistik`
--

INSERT INTO `t_statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-09-17', 18, '1316269188'),
('118.96.41.123', '2011-09-17', 7, '1316271711'),
('66.249.72.46', '2011-09-17', 37, '1316320710'),
('66.249.72.123', '2011-09-17', 113, '1316320610'),
('223.255.227.7', '2011-09-17', 10, '1316273008'),
('180.253.204.31', '2011-09-17', 1, '1316275602'),
('216.104.15.130', '2011-09-17', 1, '1316276481'),
('120.162.2.223', '2011-09-17', 4, '1316278533'),
('180.253.96.147', '2011-09-17', 2, '1316279326'),
('202.152.194.228', '2011-09-17', 2, '1316284386'),
('182.7.91.34', '2011-09-17', 1, '1316285543'),
('182.2.100.101', '2011-09-17', 1, '1316290493'),
('180.76.5.27', '2011-09-17', 1, '1316292056'),
('180.76.5.107', '2011-09-17', 1, '1316292909'),
('110.139.56.35', '2011-09-17', 1, '1316293879'),
('174.129.228.67', '2011-09-17', 9, '1316320931'),
('114.79.58.178', '2011-09-17', 2, '1316304086'),
('180.76.5.17', '2011-09-17', 1, '1316306742'),
('111.94.52.188', '2011-09-17', 10, '1316311177'),
('125.161.24.19', '2011-09-17', 1, '1316312771'),
('64.255.180.204', '2011-09-17', 3, '1316312965'),
('180.245.247.149', '2011-09-17', 2, '1316313878'),
('39.211.30.102', '2011-09-17', 1, '1316315241'),
('64.233.182.81', '2011-09-17', 1, '1316318689'),
('118.96.151.219', '2011-09-17', 1, '1316319450'),
('66.249.72.123', '2011-09-18', 290, '1316408174'),
('66.249.72.46', '2011-09-18', 72, '1316407805'),
('180.253.162.155', '2011-09-18', 2, '1316322999'),
('125.166.234.64', '2011-09-18', 2, '1316323859'),
('174.129.228.67', '2011-09-18', 11, '1316405683'),
('110.139.96.38', '2011-09-18', 1, '1316328042'),
('207.46.12.75', '2011-09-18', 1, '1316328402'),
('202.152.194.185', '2011-09-18', 8, '1316329428'),
('120.165.63.153', '2011-09-18', 1, '1316331153'),
('120.166.27.13', '2011-09-18', 1, '1316335267'),
('120.166.22.68', '2011-09-18', 1, '1316336819'),
('180.254.5.146', '2011-09-18', 3, '1316338019'),
('180.241.141.73', '2011-09-18', 13, '1316338671'),
('110.138.216.207', '2011-09-18', 6, '1316339024'),
('206.53.148.18', '2011-09-18', 1, '1316345829'),
('206.53.148.17', '2011-09-18', 1, '1316345928'),
('110.138.251.159', '2011-09-18', 1, '1316347119'),
('202.152.194.187', '2011-09-18', 1, '1316349240'),
('110.139.51.198', '2011-09-18', 1, '1316353742'),
('202.152.194.225', '2011-09-18', 1, '1316353825'),
('66.249.67.14', '2011-09-18', 1, '1316354663'),
('114.79.51.13', '2011-09-18', 1, '1316359821'),
('180.76.5.26', '2011-09-18', 1, '1316361538'),
('157.55.17.146', '2011-09-18', 1, '1316363592'),
('180.253.246.99', '2011-09-18', 1, '1316364753'),
('182.7.198.249', '2011-09-18', 1, '1316365709'),
('180.76.5.182', '2011-09-18', 1, '1316370161'),
('180.76.5.177', '2011-09-18', 1, '1316371009'),
('180.76.5.57', '2011-09-18', 1, '1316372725'),
('180.76.5.62', '2011-09-18', 1, '1316373588'),
('180.252.112.61', '2011-09-18', 1, '1316392967'),
('121.52.87.34', '2011-09-18', 30, '1316408283'),
('118.97.169.18', '2011-09-18', 1, '1316396292'),
('180.253.214.245', '2011-09-18', 1, '1316399684'),
('66.249.71.15', '2011-09-18', 1, '1316402358'),
('180.245.239.42', '2011-09-18', 2, '1316402595'),
('222.124.56.180', '2011-09-18', 1, '1316407087'),
('202.152.194.232', '2011-09-18', 1, '1316407193'),
('66.249.72.123', '2011-09-19', 227, '1316494404'),
('192.251.226.206', '2011-09-19', 1, '1316409630'),
('141.0.10.44', '2011-09-19', 5, '1316410831'),
('66.249.72.46', '2011-09-19', 53, '1316492615'),
('182.2.8.177', '2011-09-19', 1, '1316415524'),
('121.52.87.34', '2011-09-19', 2, '1316492914'),
('223.255.230.78', '2011-09-19', 10, '1316424399'),
('139.195.108.222', '2011-09-19', 1, '1316420397'),
('207.46.204.216', '2011-09-19', 1, '1316420795'),
('180.245.248.45', '2011-09-19', 1, '1316421352'),
('202.152.201.147', '2011-09-19', 1, '1316423373'),
('118.96.203.100', '2011-09-19', 2, '1316423461'),
('110.139.79.9', '2011-09-19', 1, '1316425680'),
('202.138.246.3', '2011-09-19', 2, '1316426884'),
('114.79.52.115', '2011-09-19', 3, '1316426299'),
('180.253.181.27', '2011-09-19', 3, '1316428391'),
('202.152.194.174', '2011-09-19', 1, '1316429164'),
('202.152.194.175', '2011-09-19', 1, '1316430205'),
('118.96.218.19', '2011-09-19', 2, '1316432138'),
('125.164.93.155', '2011-09-19', 1, '1316432985'),
('120.166.23.114', '2011-09-19', 1, '1316433281'),
('141.0.8.165', '2011-09-19', 1, '1316435084'),
('114.79.55.78', '2011-09-19', 1, '1316439167'),
('180.247.119.69', '2011-09-19', 1, '1316442471'),
('141.0.8.204', '2011-09-19', 1, '1316443229'),
('180.252.132.128', '2011-09-19', 1, '1316443481'),
('180.253.215.71', '2011-09-19', 4, '1316444075'),
('180.253.147.84', '2011-09-19', 1, '1316444839'),
('110.136.148.4', '2011-09-19', 1, '1316445458'),
('118.96.200.175', '2011-09-19', 2, '1316447169'),
('150.70.97.38', '2011-09-19', 2, '1316448187'),
('202.152.194.227', '2011-09-19', 7, '1316451477'),
('223.255.229.77', '2011-09-19', 1, '1316450343'),
('157.55.17.146', '2011-09-19', 3, '1316463040'),
('207.46.194.133', '2011-09-19', 1, '1316463746'),
('202.138.245.32', '2011-09-19', 1, '1316488171'),
('125.162.113.75', '2011-09-19', 1, '1316489317'),
('180.253.238.23', '2011-09-19', 1, '1316492850'),
('118.137.216.137', '2011-09-19', 1, '1316493705'),
('66.249.72.123', '2011-09-20', 103, '1316517802'),
('180.245.239.42', '2011-09-20', 2, '1316495027'),
('66.249.72.46', '2011-09-20', 55, '1316517787'),
('121.52.87.34', '2011-09-20', 8, '1316498861'),
('118.99.64.243', '2011-09-20', 3, '1316498814'),
('180.253.214.120', '2011-09-20', 1, '1316498728'),
('180.246.54.152', '2011-09-20', 2, '1316503435'),
('110.136.177.74', '2011-09-20', 3, '1316504904'),
('211.25.44.13', '2011-09-20', 1, '1316508385'),
('110.137.243.71', '2011-09-20', 1, '1316509255'),
('180.253.146.55', '2011-09-20', 6, '1316510269'),
('118.96.252.49', '2011-09-20', 1, '1316510395'),
('157.55.112.207', '2011-09-20', 1, '1316511587'),
('180.246.66.250', '2011-09-20', 3, '1316517623'),
('125.163.48.196', '2011-09-20', 1, '1316511900'),
('66.249.71.143', '2011-09-20', 98, '1316581141'),
('66.249.71.235', '2011-09-20', 73, '1316578399'),
('180.253.155.23', '2011-09-20', 7, '1316522039'),
('120.165.2.98', '2011-09-20', 1, '1316523243'),
('180.253.187.1', '2011-09-20', 18, '1316523812'),
('180.253.253.153', '2011-09-20', 1, '1316524672'),
('141.0.8.225', '2011-09-20', 1, '1316524853'),
('141.0.9.45', '2011-09-20', 2, '1316526513'),
('110.137.180.117', '2011-09-20', 1, '1316531286'),
('121.235.161.119', '2011-09-20', 6, '1316532293'),
('141.0.9.128', '2011-09-20', 1, '1316533272'),
('114.79.2.205', '2011-09-20', 1, '1316538564'),
('206.53.152.166', '2011-09-20', 1, '1316545379'),
('174.129.228.67', '2011-09-20', 1, '1316548609'),
('79.0.220.115', '2011-09-20', 2, '1316549170'),
('114.79.13.107', '2011-09-20', 1, '1316550001'),
('208.76.50.70', '2011-09-20', 1, '1316550100'),
('180.252.144.70', '2011-09-20', 1, '1316552595'),
('208.76.50.67', '2011-09-20', 1, '1316560292'),
('180.76.5.53', '2011-09-20', 1, '1316566895'),
('125.166.213.12', '2011-09-20', 1, '1316568515'),
('180.246.117.29', '2011-09-20', 1, '1316568925'),
('141.0.9.38', '2011-09-20', 2, '1316569006'),
('208.115.113.82', '2011-09-20', 1, '1316572263'),
('125.165.169.218', '2011-09-20', 4, '1316575008'),
('223.255.230.28', '2011-09-20', 6, '1316575312'),
('118.97.69.146', '2011-09-20', 1, '1316575142'),
('117.102.110.10', '2011-09-20', 3, '1316578169'),
('180.246.169.41', '2011-09-20', 1, '1316578614'),
('125.164.93.186', '2011-09-20', 1, '1316579876'),
('141.0.9.220', '2011-09-20', 1, '1316579945'),
('125.162.236.114', '2011-09-20', 3, '1316581073'),
('125.167.185.179', '2011-09-20', 1, '1316580945'),
('180.76.5.139', '2011-09-21', 1, '1316581219'),
('66.249.71.143', '2011-09-21', 96, '1316664577'),
('66.249.71.235', '2011-09-21', 27, '1316659011'),
('141.0.10.39', '2011-09-21', 1, '1316583056'),
('157.55.17.146', '2011-09-21', 2, '1316588947'),
('110.138.65.4', '2011-09-21', 2, '1316585635'),
('114.79.5.180', '2011-09-21', 2, '1316585696'),
('180.242.24.174', '2011-09-21', 1, '1316585708'),
('182.7.137.198', '2011-09-21', 1, '1316587555'),
('206.53.148.145', '2011-09-21', 1, '1316588384'),
('182.6.194.111', '2011-09-21', 10, '1316592240'),
('180.246.46.31', '2011-09-21', 1, '1316591249'),
('180.245.239.66', '2011-09-21', 1, '1316595151'),
('118.96.14.194', '2011-09-21', 1, '1316597864'),
('114.79.51.229', '2011-09-21', 1, '1316598241'),
('110.139.113.219', '2011-09-21', 4, '1316598651'),
('222.124.198.172', '2011-09-21', 1, '1316599211'),
('180.241.159.195', '2011-09-21', 1, '1316599927'),
('118.97.44.218', '2011-09-21', 1, '1316601123'),
('180.254.89.98', '2011-09-21', 1, '1316607465'),
('202.138.251.145', '2011-09-21', 26, '1316609419'),
('202.152.194.231', '2011-09-21', 1, '1316609649'),
('207.46.204.169', '2011-09-21', 1, '1316614145'),
('180.253.182.8', '2011-09-21', 2, '1316617823'),
('118.96.135.135', '2011-09-21', 1, '1316618603'),
('180.253.246.14', '2011-09-21', 17, '1316623221'),
('118.97.15.21', '2011-09-21', 1, '1316623407'),
('180.251.42.21', '2011-09-21', 15, '1316624299'),
('223.255.226.140', '2011-09-21', 2, '1316627134'),
('208.115.113.82', '2011-09-21', 2, '1316658504'),
('121.52.87.34', '2011-09-21', 6, '1316652507'),
('110.137.116.126', '2011-09-21', 1, '1316653587'),
('180.253.200.25', '2011-09-21', 4, '1316656809'),
('222.124.156.242', '2011-09-21', 1, '1316658214'),
('180.76.5.168', '2011-09-21', 1, '1316659673'),
('180.254.11.204', '2011-09-21', 1, '1316662731'),
('202.152.48.138', '2011-09-21', 2, '1316665109'),
('202.152.45.198', '2011-09-21', 4, '1316665913'),
('125.163.52.72', '2011-09-21', 1, '1316666142'),
('119.252.163.155', '2011-09-21', 3, '1316667598'),
('125.162.81.132', '2011-09-22', 4, '1316668952'),
('66.249.71.143', '2011-09-22', 260, '1316753846'),
('180.253.204.119', '2011-09-22', 7, '1316670952'),
('27.124.91.2', '2011-09-22', 1, '1316670984'),
('66.249.71.235', '2011-09-22', 53, '1316753678'),
('110.138.179.115', '2011-09-22', 1, '1316675968'),
('182.5.214.175', '2011-09-22', 6, '1316676934'),
('203.24.76.131', '2011-09-22', 3, '1316677283'),
('125.162.124.189', '2011-09-22', 1, '1316679307'),
('118.96.130.213', '2011-09-22', 1, '1316679980'),
('223.255.231.8', '2011-09-22', 2, '1316709306'),
('223.255.231.10', '2011-09-22', 1, '1316681037'),
('118.97.44.218', '2011-09-22', 5, '1316684796'),
('180.76.5.96', '2011-09-22', 1, '1316681899'),
('180.245.137.153', '2011-09-22', 2, '1316683195'),
('110.139.7.151', '2011-09-22', 2, '1316683459'),
('180.247.53.4', '2011-09-22', 1, '1316683409'),
('180.253.200.67', '2011-09-22', 2, '1316685694'),
('125.165.172.31', '2011-09-22', 4, '1316686299'),
('110.137.252.248', '2011-09-22', 3, '1316688052'),
('180.253.141.242', '2011-09-22', 4, '1316688188'),
('222.124.114.14', '2011-09-22', 1, '1316689089'),
('180.76.5.12', '2011-09-22', 1, '1316692664'),
('180.253.159.124', '2011-09-22', 4, '1316692977'),
('207.46.204.163', '2011-09-22', 1, '1316693052'),
('180.246.31.166', '2011-09-22', 2, '1316694628'),
('110.137.214.14', '2011-09-22', 2, '1316694481'),
('110.76.147.33', '2011-09-22', 1, '1316700450'),
('222.124.198.172', '2011-09-22', 2, '1316703619'),
('180.252.135.196', '2011-09-22', 1, '1316705032'),
('141.0.9.180', '2011-09-22', 3, '1316709502'),
('182.0.161.26', '2011-09-22', 1, '1316713714'),
('180.243.92.252', '2011-09-22', 2, '1316721558'),
('180.253.143.172', '2011-09-22', 1, '1316739899'),
('180.253.153.164', '2011-09-22', 1, '1316744167'),
('110.138.240.245', '2011-09-22', 4, '1316744708'),
('202.162.33.8', '2011-09-22', 1, '1316748287'),
('121.52.87.34', '2011-09-22', 2, '1316752369'),
('180.249.59.123', '2011-09-22', 1, '1316753066'),
('66.249.71.235', '2011-09-23', 65, '1316839182'),
('223.255.231.13', '2011-09-23', 2, '1316754930'),
('125.163.66.32', '2011-09-23', 1, '1316754897'),
('110.136.149.235', '2011-09-23', 1, '1316755109'),
('66.249.71.143', '2011-09-23', 59, '1316840330'),
('212.113.37.105', '2011-09-23', 1, '1316755265'),
('180.253.173.31', '2011-09-23', 1, '1316759898'),
('180.253.210.248', '2011-09-23', 1, '1316760477'),
('115.178.50.10', '2011-09-23', 1, '1316761760'),
('202.148.16.34', '2011-09-23', 8, '1316764115'),
('180.245.250.217', '2011-09-23', 1, '1316764425'),
('110.139.75.5', '2011-09-23', 1, '1316764516'),
('180.252.113.38', '2011-09-23', 1, '1316764985'),
('110.76.147.222', '2011-09-23', 1, '1316767278'),
('110.138.240.21', '2011-09-23', 2, '1316768812'),
('180.253.233.49', '2011-09-23', 1, '1316775073'),
('180.245.203.27', '2011-09-23', 1, '1316776399'),
('182.7.26.180', '2011-09-23', 1, '1316776662'),
('141.0.8.54', '2011-09-23', 1, '1316779189'),
('223.255.226.142', '2011-09-23', 2, '1316779731'),
('118.96.208.149', '2011-09-23', 2, '1316779981'),
('61.94.201.183', '2011-09-23', 2, '1316783759'),
('180.245.251.156', '2011-09-23', 1, '1316783649'),
('110.136.198.246', '2011-09-23', 1, '1316784297'),
('39.211.253.180', '2011-09-23', 6, '1316787963'),
('180.253.140.77', '2011-09-23', 6, '1316787652'),
('207.46.204.216', '2011-09-23', 1, '1316787191'),
('180.253.98.138', '2011-09-23', 3, '1316791669'),
('180.253.108.77', '2011-09-23', 5, '1316789497'),
('202.152.194.146', '2011-09-23', 1, '1316789566'),
('182.4.42.76', '2011-09-23', 1, '1316791044'),
('180.245.143.214', '2011-09-23', 5, '1316792916'),
('125.160.102.13', '2011-09-23', 1, '1316799388'),
('39.208.115.93', '2011-09-23', 1, '1316806256'),
('110.139.207.153', '2011-09-23', 2, '1316813920'),
('180.252.128.214', '2011-09-23', 1, '1316818223'),
('180.253.118.244', '2011-09-23', 2, '1316818588'),
('180.247.6.220', '2011-09-23', 1, '1316823846'),
('207.46.199.52', '2011-09-23', 1, '1316824921'),
('118.97.44.218', '2011-09-23', 492, '1316832901'),
('182.0.23.62', '2011-09-23', 2, '1316831329'),
('39.208.240.94', '2011-09-23', 5, '1316838811'),
('199.15.234.132', '2011-09-23', 4, '1316833546'),
('118.96.196.54', '2011-09-23', 1, '1316835587'),
('118.96.228.142', '2011-09-23', 2, '1316837929'),
('114.79.49.63', '2011-09-23', 2, '1316838440'),
('125.161.240.100', '2011-09-23', 1, '1316839507'),
('66.249.71.235', '2011-09-24', 72, '1316924656'),
('66.249.68.237', '2011-09-24', 1, '1316840496'),
('66.249.71.143', '2011-09-24', 283, '1316924734'),
('195.189.143.55', '2011-09-24', 2, '1316840672'),
('125.161.240.100', '2011-09-24', 1, '1316841416'),
('180.252.145.82', '2011-09-24', 2, '1316845911'),
('110.137.212.69', '2011-09-24', 1, '1316847515'),
('180.245.202.92', '2011-09-24', 8, '1316852078'),
('118.96.132.127', '2011-09-24', 1, '1316851377'),
('222.124.198.172', '2011-09-24', 5, '1316924126'),
('180.244.243.20', '2011-09-24', 42, '1316858939'),
('180.76.5.57', '2011-09-24', 1, '1316857832'),
('180.253.123.174', '2011-09-24', 1, '1316861609'),
('180.253.229.151', '2011-09-24', 1, '1316862316'),
('61.94.39.226', '2011-09-24', 22, '1316867179'),
('125.163.66.86', '2011-09-24', 6, '1316867748'),
('125.163.52.167', '2011-09-24', 1, '1316870277'),
('125.164.10.252', '2011-09-24', 1, '1316870775'),
('182.8.144.250', '2011-09-24', 6, '1316871964'),
('182.7.245.249', '2011-09-24', 4, '1316872102'),
('39.209.239.225', '2011-09-24', 1, '1316873236'),
('180.253.223.207', '2011-09-24', 2, '1316877291'),
('180.253.12.170', '2011-09-24', 1, '1316877731'),
('180.253.118.229', '2011-09-24', 1, '1316879443'),
('125.161.31.190', '2011-09-24', 3, '1316880003'),
('180.253.114.57', '2011-09-24', 1, '1316881131'),
('207.46.204.218', '2011-09-24', 1, '1316882768'),
('120.165.63.241', '2011-09-24', 1, '1316882789'),
('125.162.153.195', '2011-09-24', 1, '1316888735'),
('119.18.157.2', '2011-09-24', 9, '1316891670'),
('141.0.9.200', '2011-09-24', 1, '1316903855'),
('110.136.110.246', '2011-09-24', 3, '1316908104'),
('121.213.28.165', '2011-09-24', 1, '1316910651'),
('118.96.200.52', '2011-09-24', 1, '1316916379'),
('39.208.192.232', '2011-09-24', 1, '1316918123'),
('141.0.10.25', '2011-09-24', 2, '1316919305'),
('180.254.70.248', '2011-09-24', 1, '1316919883'),
('222.124.156.242', '2011-09-24', 1, '1316920021'),
('125.163.164.41', '2011-09-24', 1, '1316920386'),
('118.96.203.95', '2011-09-24', 1, '1316923349'),
('207.46.199.52', '2011-09-24', 1, '1316923383'),
('202.152.243.96', '2011-09-24', 1, '1316923819'),
('118.96.144.199', '2011-09-24', 1, '1316925224'),
('125.163.161.189', '2011-09-24', 1, '1316925228'),
('39.210.186.248', '2011-09-25', 2, '1316929405'),
('222.124.198.172', '2011-09-25', 1, '1316928781'),
('110.136.135.90', '2011-09-25', 3, '1316929805'),
('66.249.71.143', '2011-09-25', 332, '1317012871'),
('118.96.37.214', '2011-09-25', 1, '1316932775'),
('125.167.113.24', '2011-09-25', 2, '1316933089'),
('61.94.142.35', '2011-09-25', 1, '1316934231'),
('66.249.71.235', '2011-09-25', 51, '1317012858'),
('202.69.108.2', '2011-09-25', 1, '1316938376'),
('207.46.199.52', '2011-09-25', 3, '1316954894'),
('125.161.30.209', '2011-09-25', 1, '1316942366'),
('114.79.63.214', '2011-09-25', 1, '1316943429'),
('66.249.68.195', '2011-09-25', 1, '1316944236'),
('110.138.211.136', '2011-09-25', 1, '1316944530'),
('118.96.229.123', '2011-09-25', 2, '1316945466'),
('180.245.142.249', '2011-09-25', 2, '1316947524'),
('114.79.54.252', '2011-09-25', 2, '1316947606'),
('182.1.232.125', '2011-09-25', 1, '1316952938'),
('125.162.217.235', '2011-09-25', 2, '1316954475'),
('118.97.15.21', '2011-09-25', 1, '1316954197'),
('180.253.169.146', '2011-09-25', 1, '1316954744'),
('180.245.136.207', '2011-09-25', 23, '1316958566'),
('223.255.230.1', '2011-09-25', 2, '1316955355'),
('182.1.131.86', '2011-09-25', 15, '1316957699'),
('222.124.156.242', '2011-09-25', 1, '1316956288'),
('125.164.128.103', '2011-09-25', 1, '1316956755'),
('182.7.139.163', '2011-09-25', 2, '1316957288'),
('110.139.92.101', '2011-09-25', 1, '1316957174'),
('182.13.61.184', '2011-09-25', 1, '1316964346'),
('157.55.112.201', '2011-09-25', 1, '1316970227'),
('202.146.253.4', '2011-09-25', 3, '1316973149'),
('141.0.10.22', '2011-09-25', 3, '1316990043'),
('208.115.113.82', '2011-09-25', 1, '1316990075'),
('118.137.148.28', '2011-09-25', 1, '1316994922'),
('180.76.5.94', '2011-09-25', 1, '1317000114'),
('175.45.184.136', '2011-09-25', 2, '1317004837'),
('61.94.133.191', '2011-09-25', 3, '1317008769'),
('116.197.131.2', '2011-09-25', 6, '1317010288'),
('121.52.87.34', '2011-09-25', 7, '1317010718'),
('222.124.193.133', '2011-09-25', 1, '1317012458'),
('66.249.71.143', '2011-09-26', 13, '1317026168'),
('66.249.71.235', '2011-09-26', 3, '1317016527'),
('118.96.24.190', '2011-09-26', 8, '1317016196'),
('91.203.96.117', '2011-09-26', 1, '1317015457'),
('61.94.133.191', '2011-09-26', 17, '1317017578'),
('61.5.110.252', '2011-09-26', 1, '1317018247'),
('110.136.191.6', '2011-09-26', 2, '1317019738'),
('202.138.242.41', '2011-09-26', 490, '1317024300'),
('110.138.216.95', '2011-09-26', 1, '1317021716'),
('82.145.209.162', '2011-09-26', 1, '1317023030'),
('110.138.72.50', '2011-09-26', 1, '1317023759'),
('202.152.243.83', '2011-09-26', 2, '1317023787'),
('180.241.183.223', '2011-09-26', 1, '1317023913'),
('180.253.210.249', '2011-09-26', 1, '1317026192'),
('121.52.87.34', '2011-09-26', 1, '1317026342'),
('127.0.0.1', '2011-09-26', 1, '1317027235'),
('127.0.0.1', '2011-09-27', 1, '1317075819'),
('127.0.0.1', '2011-09-30', 2, '1317321760'),
('127.0.0.1', '2011-10-24', 1, '1319429154'),
('127.0.0.1', '2011-10-25', 6, '1319543731'),
('127.0.0.1', '2011-10-27', 103, '1319683248'),
('127.0.0.1', '2012-06-13', 56, '1339606734'),
('127.0.0.1', '2012-06-14', 11, '1339610915'),
('127.0.0.1', '2012-11-23', 2, '1353684172'),
('127.0.0.1', '2012-11-26', 19, '1353932633'),
('127.0.0.1', '2012-12-15', 16, '1355582715'),
('127.0.0.1', '2012-12-16', 93, '1355668614'),
('12.12.12.24', '2012-12-16', 2, '1355632862'),
('12.12.12.109', '2012-12-16', 1, '1355632883'),
('::1', '2014-03-08', 122, '1394287764'),
('::1', '2014-03-09', 89, '1394362883'),
('::1', '2014-03-10', 135, '1394465018'),
('::1', '2014-03-11', 266, '1394556224'),
('::1', '2014-03-12', 86, '1394614833'),
('::1', '2014-03-13', 28, '1394692918'),
('::1', '2014-03-14', 2, '1394798449'),
('::1', '2014-03-15', 53, '1394892937'),
('::1', '2014-03-16', 16, '1394945622'),
('::1', '2014-03-17', 60, '1395045259'),
('::1', '2014-03-18', 10, '1395127797'),
('::1', '2014-03-19', 1, '1395192153'),
('::1', '2014-03-24', 11, '1395610023'),
('::1', '2014-04-01', 152, '1396342276'),
('::1', '2014-04-02', 27, '1396443158'),
('::1', '2014-04-03', 1, '1396510689'),
('::1', '2014-04-06', 3, '1396780911'),
('::1', '2014-04-07', 1, '1396874622'),
('::1', '2014-04-10', 76, '1397139633'),
('::1', '2014-04-11', 80, '1397232762'),
('::1', '2014-04-12', 193, '1397294091'),
('::1', '2014-04-14', 23, '1397444457'),
('127.0.0.1', '2011-09-17', 18, '1316269188'),
('118.96.41.123', '2011-09-17', 7, '1316271711'),
('66.249.72.46', '2011-09-17', 37, '1316320710'),
('66.249.72.123', '2011-09-17', 113, '1316320610'),
('223.255.227.7', '2011-09-17', 10, '1316273008'),
('180.253.204.31', '2011-09-17', 1, '1316275602'),
('216.104.15.130', '2011-09-17', 1, '1316276481'),
('120.162.2.223', '2011-09-17', 4, '1316278533'),
('180.253.96.147', '2011-09-17', 2, '1316279326'),
('202.152.194.228', '2011-09-17', 2, '1316284386'),
('182.7.91.34', '2011-09-17', 1, '1316285543'),
('182.2.100.101', '2011-09-17', 1, '1316290493'),
('180.76.5.27', '2011-09-17', 1, '1316292056'),
('180.76.5.107', '2011-09-17', 1, '1316292909'),
('110.139.56.35', '2011-09-17', 1, '1316293879'),
('174.129.228.67', '2011-09-17', 9, '1316320931'),
('114.79.58.178', '2011-09-17', 2, '1316304086'),
('180.76.5.17', '2011-09-17', 1, '1316306742'),
('111.94.52.188', '2011-09-17', 10, '1316311177'),
('125.161.24.19', '2011-09-17', 1, '1316312771'),
('64.255.180.204', '2011-09-17', 3, '1316312965'),
('180.245.247.149', '2011-09-17', 2, '1316313878'),
('39.211.30.102', '2011-09-17', 1, '1316315241'),
('64.233.182.81', '2011-09-17', 1, '1316318689'),
('118.96.151.219', '2011-09-17', 1, '1316319450'),
('66.249.72.123', '2011-09-18', 290, '1316408174'),
('66.249.72.46', '2011-09-18', 72, '1316407805'),
('180.253.162.155', '2011-09-18', 2, '1316322999'),
('125.166.234.64', '2011-09-18', 2, '1316323859'),
('174.129.228.67', '2011-09-18', 11, '1316405683'),
('110.139.96.38', '2011-09-18', 1, '1316328042'),
('207.46.12.75', '2011-09-18', 1, '1316328402'),
('202.152.194.185', '2011-09-18', 8, '1316329428'),
('120.165.63.153', '2011-09-18', 1, '1316331153'),
('120.166.27.13', '2011-09-18', 1, '1316335267'),
('120.166.22.68', '2011-09-18', 1, '1316336819'),
('180.254.5.146', '2011-09-18', 3, '1316338019'),
('180.241.141.73', '2011-09-18', 13, '1316338671'),
('110.138.216.207', '2011-09-18', 6, '1316339024'),
('206.53.148.18', '2011-09-18', 1, '1316345829'),
('206.53.148.17', '2011-09-18', 1, '1316345928'),
('110.138.251.159', '2011-09-18', 1, '1316347119'),
('202.152.194.187', '2011-09-18', 1, '1316349240'),
('110.139.51.198', '2011-09-18', 1, '1316353742'),
('202.152.194.225', '2011-09-18', 1, '1316353825'),
('66.249.67.14', '2011-09-18', 1, '1316354663'),
('114.79.51.13', '2011-09-18', 1, '1316359821'),
('180.76.5.26', '2011-09-18', 1, '1316361538'),
('157.55.17.146', '2011-09-18', 1, '1316363592'),
('180.253.246.99', '2011-09-18', 1, '1316364753'),
('182.7.198.249', '2011-09-18', 1, '1316365709'),
('180.76.5.182', '2011-09-18', 1, '1316370161'),
('180.76.5.177', '2011-09-18', 1, '1316371009'),
('180.76.5.57', '2011-09-18', 1, '1316372725'),
('180.76.5.62', '2011-09-18', 1, '1316373588'),
('180.252.112.61', '2011-09-18', 1, '1316392967'),
('121.52.87.34', '2011-09-18', 30, '1316408283'),
('118.97.169.18', '2011-09-18', 1, '1316396292'),
('180.253.214.245', '2011-09-18', 1, '1316399684'),
('66.249.71.15', '2011-09-18', 1, '1316402358'),
('180.245.239.42', '2011-09-18', 2, '1316402595'),
('222.124.56.180', '2011-09-18', 1, '1316407087'),
('202.152.194.232', '2011-09-18', 1, '1316407193'),
('66.249.72.123', '2011-09-19', 227, '1316494404'),
('192.251.226.206', '2011-09-19', 1, '1316409630'),
('141.0.10.44', '2011-09-19', 5, '1316410831'),
('66.249.72.46', '2011-09-19', 53, '1316492615'),
('182.2.8.177', '2011-09-19', 1, '1316415524'),
('121.52.87.34', '2011-09-19', 2, '1316492914'),
('223.255.230.78', '2011-09-19', 10, '1316424399'),
('139.195.108.222', '2011-09-19', 1, '1316420397'),
('207.46.204.216', '2011-09-19', 1, '1316420795'),
('180.245.248.45', '2011-09-19', 1, '1316421352'),
('202.152.201.147', '2011-09-19', 1, '1316423373'),
('118.96.203.100', '2011-09-19', 2, '1316423461'),
('110.139.79.9', '2011-09-19', 1, '1316425680'),
('202.138.246.3', '2011-09-19', 2, '1316426884'),
('114.79.52.115', '2011-09-19', 3, '1316426299'),
('180.253.181.27', '2011-09-19', 3, '1316428391'),
('202.152.194.174', '2011-09-19', 1, '1316429164'),
('202.152.194.175', '2011-09-19', 1, '1316430205'),
('118.96.218.19', '2011-09-19', 2, '1316432138'),
('125.164.93.155', '2011-09-19', 1, '1316432985'),
('120.166.23.114', '2011-09-19', 1, '1316433281'),
('141.0.8.165', '2011-09-19', 1, '1316435084'),
('114.79.55.78', '2011-09-19', 1, '1316439167'),
('180.247.119.69', '2011-09-19', 1, '1316442471'),
('141.0.8.204', '2011-09-19', 1, '1316443229'),
('180.252.132.128', '2011-09-19', 1, '1316443481'),
('180.253.215.71', '2011-09-19', 4, '1316444075'),
('180.253.147.84', '2011-09-19', 1, '1316444839'),
('110.136.148.4', '2011-09-19', 1, '1316445458'),
('118.96.200.175', '2011-09-19', 2, '1316447169'),
('150.70.97.38', '2011-09-19', 2, '1316448187'),
('202.152.194.227', '2011-09-19', 7, '1316451477'),
('223.255.229.77', '2011-09-19', 1, '1316450343'),
('157.55.17.146', '2011-09-19', 3, '1316463040'),
('207.46.194.133', '2011-09-19', 1, '1316463746'),
('202.138.245.32', '2011-09-19', 1, '1316488171'),
('125.162.113.75', '2011-09-19', 1, '1316489317'),
('180.253.238.23', '2011-09-19', 1, '1316492850'),
('118.137.216.137', '2011-09-19', 1, '1316493705'),
('66.249.72.123', '2011-09-20', 103, '1316517802'),
('180.245.239.42', '2011-09-20', 2, '1316495027'),
('66.249.72.46', '2011-09-20', 55, '1316517787'),
('121.52.87.34', '2011-09-20', 8, '1316498861'),
('118.99.64.243', '2011-09-20', 3, '1316498814'),
('180.253.214.120', '2011-09-20', 1, '1316498728'),
('180.246.54.152', '2011-09-20', 2, '1316503435'),
('110.136.177.74', '2011-09-20', 3, '1316504904'),
('211.25.44.13', '2011-09-20', 1, '1316508385'),
('110.137.243.71', '2011-09-20', 1, '1316509255'),
('180.253.146.55', '2011-09-20', 6, '1316510269'),
('118.96.252.49', '2011-09-20', 1, '1316510395'),
('157.55.112.207', '2011-09-20', 1, '1316511587'),
('180.246.66.250', '2011-09-20', 3, '1316517623'),
('125.163.48.196', '2011-09-20', 1, '1316511900'),
('66.249.71.143', '2011-09-20', 98, '1316581141'),
('66.249.71.235', '2011-09-20', 73, '1316578399'),
('180.253.155.23', '2011-09-20', 7, '1316522039'),
('120.165.2.98', '2011-09-20', 1, '1316523243'),
('180.253.187.1', '2011-09-20', 18, '1316523812'),
('180.253.253.153', '2011-09-20', 1, '1316524672'),
('141.0.8.225', '2011-09-20', 1, '1316524853'),
('141.0.9.45', '2011-09-20', 2, '1316526513'),
('110.137.180.117', '2011-09-20', 1, '1316531286'),
('121.235.161.119', '2011-09-20', 6, '1316532293'),
('141.0.9.128', '2011-09-20', 1, '1316533272'),
('114.79.2.205', '2011-09-20', 1, '1316538564'),
('206.53.152.166', '2011-09-20', 1, '1316545379'),
('174.129.228.67', '2011-09-20', 1, '1316548609'),
('79.0.220.115', '2011-09-20', 2, '1316549170'),
('114.79.13.107', '2011-09-20', 1, '1316550001'),
('208.76.50.70', '2011-09-20', 1, '1316550100'),
('180.252.144.70', '2011-09-20', 1, '1316552595'),
('208.76.50.67', '2011-09-20', 1, '1316560292'),
('180.76.5.53', '2011-09-20', 1, '1316566895'),
('125.166.213.12', '2011-09-20', 1, '1316568515'),
('180.246.117.29', '2011-09-20', 1, '1316568925'),
('141.0.9.38', '2011-09-20', 2, '1316569006'),
('208.115.113.82', '2011-09-20', 1, '1316572263'),
('125.165.169.218', '2011-09-20', 4, '1316575008'),
('223.255.230.28', '2011-09-20', 6, '1316575312'),
('118.97.69.146', '2011-09-20', 1, '1316575142'),
('117.102.110.10', '2011-09-20', 3, '1316578169'),
('180.246.169.41', '2011-09-20', 1, '1316578614'),
('125.164.93.186', '2011-09-20', 1, '1316579876'),
('141.0.9.220', '2011-09-20', 1, '1316579945'),
('125.162.236.114', '2011-09-20', 3, '1316581073'),
('125.167.185.179', '2011-09-20', 1, '1316580945'),
('180.76.5.139', '2011-09-21', 1, '1316581219'),
('66.249.71.143', '2011-09-21', 96, '1316664577'),
('66.249.71.235', '2011-09-21', 27, '1316659011'),
('141.0.10.39', '2011-09-21', 1, '1316583056'),
('157.55.17.146', '2011-09-21', 2, '1316588947'),
('110.138.65.4', '2011-09-21', 2, '1316585635'),
('114.79.5.180', '2011-09-21', 2, '1316585696'),
('180.242.24.174', '2011-09-21', 1, '1316585708'),
('182.7.137.198', '2011-09-21', 1, '1316587555'),
('206.53.148.145', '2011-09-21', 1, '1316588384'),
('182.6.194.111', '2011-09-21', 10, '1316592240'),
('180.246.46.31', '2011-09-21', 1, '1316591249'),
('180.245.239.66', '2011-09-21', 1, '1316595151'),
('118.96.14.194', '2011-09-21', 1, '1316597864'),
('114.79.51.229', '2011-09-21', 1, '1316598241'),
('110.139.113.219', '2011-09-21', 4, '1316598651'),
('222.124.198.172', '2011-09-21', 1, '1316599211'),
('180.241.159.195', '2011-09-21', 1, '1316599927'),
('118.97.44.218', '2011-09-21', 1, '1316601123'),
('180.254.89.98', '2011-09-21', 1, '1316607465'),
('202.138.251.145', '2011-09-21', 26, '1316609419'),
('202.152.194.231', '2011-09-21', 1, '1316609649'),
('207.46.204.169', '2011-09-21', 1, '1316614145'),
('180.253.182.8', '2011-09-21', 2, '1316617823'),
('118.96.135.135', '2011-09-21', 1, '1316618603'),
('180.253.246.14', '2011-09-21', 17, '1316623221'),
('118.97.15.21', '2011-09-21', 1, '1316623407'),
('180.251.42.21', '2011-09-21', 15, '1316624299'),
('223.255.226.140', '2011-09-21', 2, '1316627134'),
('208.115.113.82', '2011-09-21', 2, '1316658504'),
('121.52.87.34', '2011-09-21', 6, '1316652507'),
('110.137.116.126', '2011-09-21', 1, '1316653587'),
('180.253.200.25', '2011-09-21', 4, '1316656809'),
('222.124.156.242', '2011-09-21', 1, '1316658214'),
('180.76.5.168', '2011-09-21', 1, '1316659673'),
('180.254.11.204', '2011-09-21', 1, '1316662731'),
('202.152.48.138', '2011-09-21', 2, '1316665109'),
('202.152.45.198', '2011-09-21', 4, '1316665913'),
('125.163.52.72', '2011-09-21', 1, '1316666142'),
('119.252.163.155', '2011-09-21', 3, '1316667598'),
('125.162.81.132', '2011-09-22', 4, '1316668952'),
('66.249.71.143', '2011-09-22', 260, '1316753846'),
('180.253.204.119', '2011-09-22', 7, '1316670952'),
('27.124.91.2', '2011-09-22', 1, '1316670984'),
('66.249.71.235', '2011-09-22', 53, '1316753678'),
('110.138.179.115', '2011-09-22', 1, '1316675968'),
('182.5.214.175', '2011-09-22', 6, '1316676934'),
('203.24.76.131', '2011-09-22', 3, '1316677283'),
('125.162.124.189', '2011-09-22', 1, '1316679307'),
('118.96.130.213', '2011-09-22', 1, '1316679980'),
('223.255.231.8', '2011-09-22', 2, '1316709306'),
('223.255.231.10', '2011-09-22', 1, '1316681037'),
('118.97.44.218', '2011-09-22', 5, '1316684796'),
('180.76.5.96', '2011-09-22', 1, '1316681899'),
('180.245.137.153', '2011-09-22', 2, '1316683195'),
('110.139.7.151', '2011-09-22', 2, '1316683459'),
('180.247.53.4', '2011-09-22', 1, '1316683409'),
('180.253.200.67', '2011-09-22', 2, '1316685694'),
('125.165.172.31', '2011-09-22', 4, '1316686299'),
('110.137.252.248', '2011-09-22', 3, '1316688052'),
('180.253.141.242', '2011-09-22', 4, '1316688188'),
('222.124.114.14', '2011-09-22', 1, '1316689089'),
('180.76.5.12', '2011-09-22', 1, '1316692664'),
('180.253.159.124', '2011-09-22', 4, '1316692977'),
('207.46.204.163', '2011-09-22', 1, '1316693052'),
('180.246.31.166', '2011-09-22', 2, '1316694628'),
('110.137.214.14', '2011-09-22', 2, '1316694481'),
('110.76.147.33', '2011-09-22', 1, '1316700450'),
('222.124.198.172', '2011-09-22', 2, '1316703619'),
('180.252.135.196', '2011-09-22', 1, '1316705032'),
('141.0.9.180', '2011-09-22', 3, '1316709502'),
('182.0.161.26', '2011-09-22', 1, '1316713714'),
('180.243.92.252', '2011-09-22', 2, '1316721558'),
('180.253.143.172', '2011-09-22', 1, '1316739899'),
('180.253.153.164', '2011-09-22', 1, '1316744167'),
('110.138.240.245', '2011-09-22', 4, '1316744708'),
('202.162.33.8', '2011-09-22', 1, '1316748287'),
('121.52.87.34', '2011-09-22', 2, '1316752369'),
('180.249.59.123', '2011-09-22', 1, '1316753066'),
('66.249.71.235', '2011-09-23', 65, '1316839182'),
('223.255.231.13', '2011-09-23', 2, '1316754930'),
('125.163.66.32', '2011-09-23', 1, '1316754897'),
('110.136.149.235', '2011-09-23', 1, '1316755109'),
('66.249.71.143', '2011-09-23', 59, '1316840330'),
('212.113.37.105', '2011-09-23', 1, '1316755265'),
('180.253.173.31', '2011-09-23', 1, '1316759898'),
('180.253.210.248', '2011-09-23', 1, '1316760477'),
('115.178.50.10', '2011-09-23', 1, '1316761760'),
('202.148.16.34', '2011-09-23', 8, '1316764115'),
('180.245.250.217', '2011-09-23', 1, '1316764425'),
('110.139.75.5', '2011-09-23', 1, '1316764516'),
('180.252.113.38', '2011-09-23', 1, '1316764985'),
('110.76.147.222', '2011-09-23', 1, '1316767278'),
('110.138.240.21', '2011-09-23', 2, '1316768812'),
('180.253.233.49', '2011-09-23', 1, '1316775073'),
('180.245.203.27', '2011-09-23', 1, '1316776399'),
('182.7.26.180', '2011-09-23', 1, '1316776662'),
('141.0.8.54', '2011-09-23', 1, '1316779189'),
('223.255.226.142', '2011-09-23', 2, '1316779731'),
('118.96.208.149', '2011-09-23', 2, '1316779981'),
('61.94.201.183', '2011-09-23', 2, '1316783759'),
('180.245.251.156', '2011-09-23', 1, '1316783649'),
('110.136.198.246', '2011-09-23', 1, '1316784297'),
('39.211.253.180', '2011-09-23', 6, '1316787963'),
('180.253.140.77', '2011-09-23', 6, '1316787652'),
('207.46.204.216', '2011-09-23', 1, '1316787191'),
('180.253.98.138', '2011-09-23', 3, '1316791669'),
('180.253.108.77', '2011-09-23', 5, '1316789497'),
('202.152.194.146', '2011-09-23', 1, '1316789566'),
('182.4.42.76', '2011-09-23', 1, '1316791044'),
('180.245.143.214', '2011-09-23', 5, '1316792916'),
('125.160.102.13', '2011-09-23', 1, '1316799388'),
('39.208.115.93', '2011-09-23', 1, '1316806256'),
('110.139.207.153', '2011-09-23', 2, '1316813920'),
('180.252.128.214', '2011-09-23', 1, '1316818223'),
('180.253.118.244', '2011-09-23', 2, '1316818588'),
('180.247.6.220', '2011-09-23', 1, '1316823846'),
('207.46.199.52', '2011-09-23', 1, '1316824921'),
('118.97.44.218', '2011-09-23', 492, '1316832901'),
('182.0.23.62', '2011-09-23', 2, '1316831329'),
('39.208.240.94', '2011-09-23', 5, '1316838811'),
('199.15.234.132', '2011-09-23', 4, '1316833546'),
('118.96.196.54', '2011-09-23', 1, '1316835587'),
('118.96.228.142', '2011-09-23', 2, '1316837929'),
('114.79.49.63', '2011-09-23', 2, '1316838440'),
('125.161.240.100', '2011-09-23', 1, '1316839507'),
('66.249.71.235', '2011-09-24', 72, '1316924656'),
('66.249.68.237', '2011-09-24', 1, '1316840496'),
('66.249.71.143', '2011-09-24', 283, '1316924734'),
('195.189.143.55', '2011-09-24', 2, '1316840672'),
('125.161.240.100', '2011-09-24', 1, '1316841416'),
('180.252.145.82', '2011-09-24', 2, '1316845911'),
('110.137.212.69', '2011-09-24', 1, '1316847515'),
('180.245.202.92', '2011-09-24', 8, '1316852078'),
('118.96.132.127', '2011-09-24', 1, '1316851377'),
('222.124.198.172', '2011-09-24', 5, '1316924126'),
('180.244.243.20', '2011-09-24', 42, '1316858939'),
('180.76.5.57', '2011-09-24', 1, '1316857832'),
('180.253.123.174', '2011-09-24', 1, '1316861609'),
('180.253.229.151', '2011-09-24', 1, '1316862316'),
('61.94.39.226', '2011-09-24', 22, '1316867179'),
('125.163.66.86', '2011-09-24', 6, '1316867748'),
('125.163.52.167', '2011-09-24', 1, '1316870277'),
('125.164.10.252', '2011-09-24', 1, '1316870775'),
('182.8.144.250', '2011-09-24', 6, '1316871964'),
('182.7.245.249', '2011-09-24', 4, '1316872102'),
('39.209.239.225', '2011-09-24', 1, '1316873236'),
('180.253.223.207', '2011-09-24', 2, '1316877291'),
('180.253.12.170', '2011-09-24', 1, '1316877731'),
('180.253.118.229', '2011-09-24', 1, '1316879443'),
('125.161.31.190', '2011-09-24', 3, '1316880003'),
('180.253.114.57', '2011-09-24', 1, '1316881131'),
('207.46.204.218', '2011-09-24', 1, '1316882768'),
('120.165.63.241', '2011-09-24', 1, '1316882789'),
('125.162.153.195', '2011-09-24', 1, '1316888735'),
('119.18.157.2', '2011-09-24', 9, '1316891670'),
('141.0.9.200', '2011-09-24', 1, '1316903855'),
('110.136.110.246', '2011-09-24', 3, '1316908104'),
('121.213.28.165', '2011-09-24', 1, '1316910651'),
('118.96.200.52', '2011-09-24', 1, '1316916379'),
('39.208.192.232', '2011-09-24', 1, '1316918123'),
('141.0.10.25', '2011-09-24', 2, '1316919305'),
('180.254.70.248', '2011-09-24', 1, '1316919883'),
('222.124.156.242', '2011-09-24', 1, '1316920021'),
('125.163.164.41', '2011-09-24', 1, '1316920386'),
('118.96.203.95', '2011-09-24', 1, '1316923349'),
('207.46.199.52', '2011-09-24', 1, '1316923383'),
('202.152.243.96', '2011-09-24', 1, '1316923819'),
('118.96.144.199', '2011-09-24', 1, '1316925224'),
('125.163.161.189', '2011-09-24', 1, '1316925228'),
('39.210.186.248', '2011-09-25', 2, '1316929405'),
('222.124.198.172', '2011-09-25', 1, '1316928781'),
('110.136.135.90', '2011-09-25', 3, '1316929805'),
('66.249.71.143', '2011-09-25', 332, '1317012871'),
('118.96.37.214', '2011-09-25', 1, '1316932775'),
('125.167.113.24', '2011-09-25', 2, '1316933089'),
('61.94.142.35', '2011-09-25', 1, '1316934231'),
('66.249.71.235', '2011-09-25', 51, '1317012858'),
('202.69.108.2', '2011-09-25', 1, '1316938376'),
('207.46.199.52', '2011-09-25', 3, '1316954894'),
('125.161.30.209', '2011-09-25', 1, '1316942366'),
('114.79.63.214', '2011-09-25', 1, '1316943429'),
('66.249.68.195', '2011-09-25', 1, '1316944236'),
('110.138.211.136', '2011-09-25', 1, '1316944530'),
('118.96.229.123', '2011-09-25', 2, '1316945466'),
('180.245.142.249', '2011-09-25', 2, '1316947524'),
('114.79.54.252', '2011-09-25', 2, '1316947606'),
('182.1.232.125', '2011-09-25', 1, '1316952938'),
('125.162.217.235', '2011-09-25', 2, '1316954475'),
('118.97.15.21', '2011-09-25', 1, '1316954197'),
('180.253.169.146', '2011-09-25', 1, '1316954744'),
('180.245.136.207', '2011-09-25', 23, '1316958566'),
('223.255.230.1', '2011-09-25', 2, '1316955355'),
('182.1.131.86', '2011-09-25', 15, '1316957699'),
('222.124.156.242', '2011-09-25', 1, '1316956288'),
('125.164.128.103', '2011-09-25', 1, '1316956755'),
('182.7.139.163', '2011-09-25', 2, '1316957288'),
('110.139.92.101', '2011-09-25', 1, '1316957174'),
('182.13.61.184', '2011-09-25', 1, '1316964346'),
('157.55.112.201', '2011-09-25', 1, '1316970227'),
('202.146.253.4', '2011-09-25', 3, '1316973149'),
('141.0.10.22', '2011-09-25', 3, '1316990043'),
('208.115.113.82', '2011-09-25', 1, '1316990075'),
('118.137.148.28', '2011-09-25', 1, '1316994922'),
('180.76.5.94', '2011-09-25', 1, '1317000114'),
('175.45.184.136', '2011-09-25', 2, '1317004837'),
('61.94.133.191', '2011-09-25', 3, '1317008769'),
('116.197.131.2', '2011-09-25', 6, '1317010288'),
('121.52.87.34', '2011-09-25', 7, '1317010718'),
('222.124.193.133', '2011-09-25', 1, '1317012458'),
('66.249.71.143', '2011-09-26', 13, '1317026168'),
('66.249.71.235', '2011-09-26', 3, '1317016527'),
('118.96.24.190', '2011-09-26', 8, '1317016196'),
('91.203.96.117', '2011-09-26', 1, '1317015457'),
('61.94.133.191', '2011-09-26', 17, '1317017578'),
('61.5.110.252', '2011-09-26', 1, '1317018247'),
('110.136.191.6', '2011-09-26', 2, '1317019738'),
('202.138.242.41', '2011-09-26', 490, '1317024300'),
('110.138.216.95', '2011-09-26', 1, '1317021716'),
('82.145.209.162', '2011-09-26', 1, '1317023030'),
('110.138.72.50', '2011-09-26', 1, '1317023759'),
('202.152.243.83', '2011-09-26', 2, '1317023787'),
('180.241.183.223', '2011-09-26', 1, '1317023913'),
('180.253.210.249', '2011-09-26', 1, '1317026192'),
('121.52.87.34', '2011-09-26', 1, '1317026342'),
('127.0.0.1', '2011-09-26', 1, '1317027235'),
('127.0.0.1', '2011-09-27', 1, '1317075819'),
('127.0.0.1', '2011-09-30', 2, '1317321760'),
('127.0.0.1', '2011-10-24', 1, '1319429154'),
('127.0.0.1', '2011-10-25', 6, '1319543731'),
('127.0.0.1', '2011-10-27', 103, '1319683248'),
('127.0.0.1', '2012-06-13', 56, '1339606734'),
('127.0.0.1', '2012-06-14', 11, '1339610915'),
('127.0.0.1', '2012-12-15', 20, '1355587317'),
('127.0.0.1', '2012-12-16', 155, '1355668711'),
('12.12.12.2', '2012-12-16', 25, '1355653316'),
('12.12.12.112', '2012-12-16', 4, '1355633206'),
('12.12.12.109', '2012-12-16', 2, '1355634200'),
('12.12.12.24', '2012-12-16', 1, '1355633110'),
('12.12.12.53', '2012-12-16', 4, '1355633567'),
('127.0.0.1', '2017-05-24', 37, '1495638918'),
('127.0.0.1', '2017-05-25', 109, '1495725994'),
('127.0.0.1', '2017-05-26', 86, '1495817944'),
('127.0.0.1', '2017-05-27', 74, '1495855776'),
('127.0.0.1', '2017-05-30', 76, '1496156899'),
('127.0.0.1', '2017-05-31', 87, '1496171403');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp`
--

CREATE TABLE IF NOT EXISTS `t_temp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` text COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `t_temp`
--

INSERT INTO `t_temp` (`id`, `judul`, `isi`) VALUES
(102, '[ Berita ] <a href="index.php?id=berita&kode=17" style="color:000000">Mendikbud Laporkan Perkembangan Kurikulum ke Wapres</a>', ')\r\n\r\n'),
(103, '[ Berita ] <a href="index.php?id=berita&kode=24" style="color:000000">Master Teacher Jadi Konsep Pelatihan Guru untuk Hadapi Kurikulum 2013</a>', ')\r\n\r\n'),
(104, '[ Berita ] <a href="index.php?id=berita&kode=20" style="color:000000">Ibu Guru Laskar Pelangi Terima Satyalencana Pendidikan</a>', 'co.id'),
(105, '<a href= index.php?id=profil&kd=26  class=ver10 >[ Peta Situs ]</a>', 'jar\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `t_temp_menu`
--

CREATE TABLE IF NOT EXISTS `t_temp_menu` (
  `idtemp` int(2) NOT NULL AUTO_INCREMENT,
  `temp_atas` mediumtext COLLATE latin1_general_ci,
  `temp_bawah` mediumtext COLLATE latin1_general_ci,
  `temp_tengah` mediumtext COLLATE latin1_general_ci,
  `status` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idtemp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `t_temp_menu`
--

INSERT INTO `t_temp_menu` (`idtemp`, `temp_atas`, `temp_bawah`, `temp_tengah`, `status`) VALUES
(23, '<div class="well">\r\n            <h4>', '</div><!-- /well -->', '</h4>\r\n            \r\n          ', ''),
(22, '<div class="panel panel-primary">\r\n            <div class="panel-heading">\r\n              <h3 class="panel-title">', '\r\n            </div>\r\n          </div>', '</h3>\r\n            </div>\r\n            <div class="panel-body">\r\n              ', ''),
(3, '	<div class="art-Block">\r\n                            <div class="art-Block-tl"></div>\r\n                            <div class="art-Block-tr"></div>\r\n                            <div class="art-Block-bl"></div>\r\n                            <div class="art-Block-br"></div>\r\n                            <div class="art-Block-tc"></div>\r\n                            <div class="art-Block-bc"></div>\r\n                            <div class="art-Block-cl"></div>\r\n                            <div class="art-Block-cr"></div>\r\n                            <div class="art-Block-cc"></div>\r\n                            <div class="art-Block-body">\r\n                                        <div class="art-BlockHeader">\r\n                                            <div class="l"></div>\r\n                                            <div class="r"></div>\r\n                                            <div class="art-header-tag-icon">\r\n                                                <div class="t">', '<div class="cleared"></div>\r\n                                            </div>\r\n                                        </div>\r\n                        		<div class="cleared"></div>\r\n                            </div>\r\n                        </div>', '</div>\r\n                                            </div>\r\n                                        </div><div class="art-BlockContent">\r\n					    <div class="art-BlockContent-tl"></div>\r\n                                            <div class="art-BlockContent-tr"></div>\r\n                                            <div class="art-BlockContent-bl"></div>\r\n                                            <div class="art-BlockContent-br"></div>\r\n                                            <div class="art-BlockContent-tc"></div>\r\n                                            <div class="art-BlockContent-bc"></div>\r\n                                            <div class="art-BlockContent-cl"></div>\r\n                                            <div class="art-BlockContent-cr"></div>\r\n                                            <div class="art-BlockContent-cc"></div>\r\n                                            <div class="art-BlockContent-body">', NULL),
(1, '	<div class="art-Block">\r\n                            <div class="art-Block-tl"></div>\r\n                            <div class="art-Block-tr"></div>\r\n                            <div class="art-Block-bl"></div>\r\n                            <div class="art-Block-br"></div>\r\n                            <div class="art-Block-tc"></div>\r\n                            <div class="art-Block-bc"></div>\r\n                            <div class="art-Block-cl"></div>\r\n                            <div class="art-Block-cr"></div>\r\n                            <div class="art-Block-cc"></div>\r\n                            <div class="art-Block-body">\r\n                                        <div class="art-BlockHeader">\r\n                                            <div class="l"></div>\r\n                                            <div class="r"></div>\r\n                                            <div class="art-header-tag-icon">\r\n                                                <div class="t">', '<div class="cleared"></div>\r\n                                            </div>\r\n                                        </div>\r\n                        		<div class="cleared"></div>\r\n                            </div>\r\n                        </div>', '</div>\r\n                                            </div>\r\n                                        </div><div class="art-BlockContent">\r\n					    <div class="art-BlockContent-tl"></div>\r\n                                            <div class="art-BlockContent-tr"></div>\r\n                                            <div class="art-BlockContent-bl"></div>\r\n                                            <div class="art-BlockContent-br"></div>\r\n                                            <div class="art-BlockContent-tc"></div>\r\n                                            <div class="art-BlockContent-bc"></div>\r\n                                            <div class="art-BlockContent-cl"></div>\r\n                                            <div class="art-BlockContent-cr"></div>\r\n                                            <div class="art-BlockContent-cc"></div>\r\n                                            <div class="art-BlockContent-body">', NULL),
(2, '                        <div class="art-Post">\r\n			    <div class="art-Post-tl"></div>\r\n                            <div class="art-Post-tr"></div>\r\n                            <div class="art-Post-bl"></div>\r\n                            <div class="art-Post-br"></div>\r\n                            <div class="art-Post-tc"></div>\r\n                            <div class="art-Post-bc"></div>\r\n                            <div class="art-Post-cl"></div>\r\n                            <div class="art-Post-cr"></div>\r\n                            <div class="art-Post-cc"></div>\r\n                            <div class="art-Post-body"> \r\n					<div class="art-Post-inner">\r\n<div class="art-PostMetadataHeader">\r\n<h2 class="art-PostHeader">', '</div><div class="cleared"></div>\r\n</div>                 \r\n                            </div>\r\n                        </div>', '</h2></div>\r\n                                        <div class="art-PostContent">', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_thajar`
--

CREATE TABLE IF NOT EXISTS `t_thajar` (
  `idthajar` int(11) NOT NULL AUTO_INCREMENT,
  `thajar` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idthajar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `t_thajar`
--

INSERT INTO `t_thajar` (`idthajar`, `thajar`) VALUES
(1, '2010/2011'),
(2, '2011/2012'),
(3, '2012/2013'),
(4, '2013/2014'),
(5, '2014/2015'),
(6, '2015/2016');

-- --------------------------------------------------------

--
-- Table structure for table `t_tugas`
--

CREATE TABLE IF NOT EXISTS `t_tugas` (
  `idtugas` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_kirim` datetime DEFAULT NULL,
  `tgl_kumpul` datetime DEFAULT NULL,
  `thajar` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `pelajaran` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `sem` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  `nip` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `isi` longtext COLLATE latin1_general_ci,
  `file` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idtugas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_tugas`
--

INSERT INTO `t_tugas` (`idtugas`, `tgl_kirim`, `tgl_kumpul`, `thajar`, `pelajaran`, `sem`, `nip`, `isi`, `file`) VALUES
(1, '2012-11-26 00:00:00', '2012-11-27 00:00:00', '2012/2013', 'BK', '1', '400001001', '<p>buat surat lamaran kerja!!!</p>', ''),
(2, '2012-11-26 00:00:00', '2012-11-29 00:00:00', '2012/2013', 'BK', '2', '400001001', '<p>buat resume tentang cms balitbang</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_tugas_kelas`
--

CREATE TABLE IF NOT EXISTS `t_tugas_kelas` (
  `idkls` int(11) NOT NULL AUTO_INCREMENT,
  `idtugas` int(11) NOT NULL,
  `kelas` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idkls`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_tugas_kelas`
--

INSERT INTO `t_tugas_kelas` (`idkls`, `idtugas`, `kelas`) VALUES
(1, 1, 'X - 4'),
(2, 2, 'X - 4');

-- --------------------------------------------------------

--
-- Table structure for table `t_tugas_siswa`
--

CREATE TABLE IF NOT EXISTS `t_tugas_siswa` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `idtugas` int(11) NOT NULL,
  `nis` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tgl` datetime DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT '0',
  `pesan` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `file` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `t_tugas_siswa`
--

INSERT INTO `t_tugas_siswa` (`ids`, `idtugas`, `nis`, `tgl`, `status`, `pesan`, `file`) VALUES
(1, 1, '070810119', '2012-11-26 00:00:00', '0', 'sy masih bingung bikin lamaran kerja', 'tgs070810119-1.txt'),
(2, 2, '070810119', '2012-11-26 00:00:00', '0', 'susah bangt tugasnya', 'tgs070810119-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_voting_jawab`
--

CREATE TABLE IF NOT EXISTS `t_voting_jawab` (
  `id_jawab` int(255) NOT NULL AUTO_INCREMENT,
  `id_tanya` int(255) NOT NULL DEFAULT '0',
  `jawaban` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_jawab`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_voting_jawab`
--

INSERT INTO `t_voting_jawab` (`id_jawab`, `id_tanya`, `jawaban`) VALUES
(13, 4, 'Ragu-ragu'),
(12, 4, 'Tidak'),
(11, 4, 'Ya'),
(8, 3, 'Bagus'),
(9, 3, 'Cukup'),
(10, 3, 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `t_voting_pole`
--

CREATE TABLE IF NOT EXISTS `t_voting_pole` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_jawab` int(255) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `t_voting_pole`
--

INSERT INTO `t_voting_pole` (`id`, `id_jawab`, `ip`, `tanggal`) VALUES
(63, 8, '', NULL),
(64, 9, '', NULL),
(65, 10, '', NULL),
(66, 8, '', NULL),
(67, 8, '', NULL),
(68, 8, '', NULL),
(69, 8, '', NULL),
(70, 9, '127.0.0.1', NULL),
(71, 8, '127.0.0.1', NULL),
(72, 8, '127.0.0.1', NULL),
(73, 8, '127.0.0.1', NULL),
(74, 8, '127.0.0.1', NULL),
(75, 8, '127.0.0.1', NULL),
(76, 9, '127.0.0.1', NULL),
(77, 9, '127.0.0.1', NULL),
(78, 9, '127.0.0.1', NULL),
(79, 9, '127.0.0.1', NULL),
(80, 9, '127.0.0.1', NULL),
(81, 9, '127.0.0.1', NULL),
(82, 9, '127.0.0.1', NULL),
(83, 8, '127.0.0.1', NULL),
(84, 9, '127.0.0.1', NULL),
(85, 9, '127.0.0.1', NULL),
(86, 8, '127.0.0.1', '190709'),
(87, 9, '127.0.0.1', '200709'),
(88, 8, '127.0.0.1', '170809'),
(89, 8, '::1', '010414');

-- --------------------------------------------------------

--
-- Table structure for table `t_voting_tanya`
--

CREATE TABLE IF NOT EXISTS `t_voting_tanya` (
  `id_tanya` int(255) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(80) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tanggal` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `status` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_tanya`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `t_voting_tanya`
--

INSERT INTO `t_voting_tanya` (`id_tanya`, `pertanyaan`, `tanggal`, `status`) VALUES
(4, 'Bermanfaatkah Website sekolah bagi anda', '11/01/2006', '0'),
(3, 'Bagaimana menurut Anda tentang tampilan website ini ?', '23/11/2005', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `ip` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `waktu` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `kunjung` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `ip`, `waktu`, `kunjung`, `status`) VALUES
(1, 'admin', '57gc0bbbfb6b3', 'alanrm82@yahoo.com', '127.0.0.1', '09:17:48 27/05/2017', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
  `idlevel` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `menu` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `utama` int(2) DEFAULT NULL,
  PRIMARY KEY (`idlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`idlevel`, `userid`, `menu`, `utama`) VALUES
(1, 1, 'membersiswa', 5),
(2, 1, 'importsiswa', 5),
(3, 1, 'dtortu', 5),
(4, 1, 'dtsiswa', 5),
(5, 1, 'dtmengajar', 4),
(6, 1, 'importguru', 4),
(7, 1, 'dtguru', 4),
(8, 1, 'pelajaran', 3),
(9, 1, 'kelas', 3),
(10, 1, 'program', 3),
(11, 1, 'semester', 3),
(12, 1, 'kategori', 3),
(13, 1, 'gambar', 3),
(14, 1, 'template', 3),
(15, 1, 'posisi', 3),
(16, 1, 'profil', 3),
(17, 1, 'admin', 3),
(18, 1, 'dtlaporan', 2),
(19, 1, 'dtspp', 2),
(20, 1, 'dtabsensi', 2),
(21, 1, 'dtbpbk', 2),
(22, 1, 'dtmateri', 2),
(23, 1, 'dtnilai', 2),
(24, 1, 'banner', 1),
(25, 1, 'jajak', 1),
(26, 1, 'pesandepan', 6),
(27, 1, 'prestasi', 1),
(28, 1, 'silabus', 1),
(29, 1, 'kumpulsoal', 1),
(30, 1, 'materiajar', 1),
(31, 1, 'infosekolah', 1),
(32, 1, 'infoalumni', 1),
(33, 1, 'link', 1),
(34, 1, 'galeri', 1),
(35, 1, 'forum', 1),
(36, 1, 'bukutamu', 1),
(37, 1, 'berita', 1),
(38, 1, 'agenda', 1),
(39, 1, 'artikel', 1),
(40, 1, 'naikkelas', 5),
(41, 1, 'dtalumni', 5),
(42, 1, 'member', 6),
(43, 1, 'koordinator', 6),
(44, 1, 'opini', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
