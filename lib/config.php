<?php
error_reporting(0);
date_default_timezone_set("Asia/Jakarta");
date("Y-m-d H:i:s", mktime(date("H")+1, date("i"), date("s"), date("m"), date("d"), date("Y")));

$webhost = "smksunangirimenganti.sch.id";
$webmail = "admin@smksunangirimenganti.sch.id";
$nmsekolah = "SMK Sunan Giri Menganti";
$almtsekolah = "Jl. Raya Sunan Giri No.16 Menganti, Gresik";
$jum_spp= "0";
$jum_dsp= "0";

/* LOCAL DATABASE CONNECTION config */
// database constant
// change below setting according to your database configuration
$dbhost = "localhost";
$dbuser = "root";
$dbpasswd = "";
$dbname = "sekolah_db";

$dbprefix  = "t_";
$alan = "../temp/art_smk_atas/";
$email1 = "ryandevstudio@gmail.com";
$email2 = "";
$alamatDaftar = "/member/daftar.php";
$noacak = "82";
$kolom="3";
$versi="3.5";
$cmsmember = "tidak"; //diisi ya atau tidak
$cmssim = "tidak"; //diisi ya atau tidak
$cmstingkat = "smk"; // diisi sd,smp,sma,smk,lain
$folderadmin="admin";
$multibahasa="tidak"; // diisi "ya" apabila akan dijadikan multi bahasa dan 
//diisi "tidak" apabila tidak akan mengaktifkan multibahasa
$nmhost = "http://$webhost/";
// konfigurasi ID aplikasi Facebook
$appid  = ''; // contoh  169993669715242
$secret = ''; // contoh 81158039568d1a5f8d7990b70f7186c9

?>