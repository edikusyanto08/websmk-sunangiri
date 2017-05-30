<?php
session_start();
define("CMSBalitbang",1);
include ("../lib/parsing.php");
require ("../lib/config.php");
include ("../functions/fungsi_gabung.php");
include ("../functions/fungsi_profil.php");
include ("../functions/fungsi_depan.php");
include ("../functions/fungsi_temp.php");
function isi($id) {
global $memberlog;
	switch ($id) {
		case "profil":
			$isi .=profile();
			break;
		default:
			// $isi .=depan('profil');
			// break;
			$kode = "11";
			$sql="select * from t_profil where id='".mysql_real_escape_string($kode)."'";
			if(!$query=mysql_query($sql)) die ("Pengambilan gagal1 profil");
			$row=mysql_fetch_array($query);
			$isi .= atas_isi($row[judul]);
			$isi .= "<table width=97% id='table-no' ><tr><td>$row[isi]</td></tr></table>";
			$isi .= bawah_isi();
			break;
		}
		return $isi;
}
	
include("../functions/koneksi.php");
  	$sql2="select * from t_pos_menu where posisi='L' and kategori='profil' and sembunyi='t' order by urut";
	if(!$query2=mysql_query($sql2)) die ("Pengambilan gagal1 menu");
	while ($rows=mysql_fetch_array($query2)) {
		$sql1="select * from t_temp_menu where idtemp='".$rows['idtemp']."'";
		if(!$query1=mysql_query($sql1)) die ("Pengambilan gagal1 menu posisi kiri");
		$r=mysql_fetch_array($query1);
		$kiri .= $r['temp_atas']; //atas
		//tag tengah
		switch ($rows[fungsi]) {
			case 'jajak':
				$kiri .= '<i class="material-icons">poll</i> '.$rows[menu];
				break;
			case 'artikel2':
				$kiri .= '<i class="material-icons">description</i> '.$rows[menu];
				break;
			case 'tag_artikel':
				$kiri .= '<i class="material-icons">description</i> '.$rows[menu];
				break;
			case 'galeri_depan':
				$kiri .= '<i class="material-icons">photo</i> '.$rows[menu];
				break;
			case 'galeri':
				$kiri .= '<i class="material-icons">photo</i> '.$rows[menu];
				break;
			case 'guru':
				$kiri .= '<i class="material-icons">perm_identity</i> '.$rows[menu];
				break;
			case 'tanggal':
				$kiri .= '<i class="material-icons">date_range</i> '.$rows[menu];
				break;
			case 'soal':
				$kiri .= '<i class="material-icons">assignment</i> '.$rows[menu];
				break;
			case 'profil2':
				$kiri .= '<i class="material-icons">location_on</i> '.$rows[menu];
				break;
			case 'pesanalumni':
				$kiri .= '<i class="material-icons">favorite_border</i> '.$rows[menu];
				break;

			case 'login':
				$kiri .= '<i class="material-icons">people</i> '.$rows[menu];
				break;
			case 'materi':
				$kiri .= '<i class="material-icons">book</i> '.$rows[menu];
				break;
			case 'status_member':
				$kiri .= '<i class="material-icons">sentiment_very_satisfied</i> '.$rows[menu];
				break;

			case 'statistik':
				$kiri .= '<i class="material-icons">show_chart</i> '.$rows[menu];
				break;
			case 'info':
				$kiri .= '<i class="material-icons">new_releases</i> '.$rows[menu];
				break;
			case 'materi':
				$kiri .= '<i class="material-icons">book</i> '.$rows[menu];
				break;
			default:
				$kiri .= $rows[menu];
				break;
		}
		$kiri .= $r['temp_tengah']; //tengah
	// tag awal source isi
		$fungsi ="../modul/tag_".$rows['fungsi'].".php";
		include ("$fungsi");
		$kiri.= $tag;
		// bawah
		$kiri.= $r['temp_bawah']; //bawah
		$tag="";
		
	}
//if ($_SESSION['tempbaru']<>'') $alan = "../temp/".$_SESSION['tempbaru']."/";
$id = $_GET['id'];
if ($id=='')  $id = $_POST['id'];

$a["nmsekolah"]=$nmsekolah;
$a["nmweb"]=$webhost;
$a["isi"]=isi($id);
$a["atas"]=banneratas();
$a["menu"]=menu("2");
$a["kiri"]=$kiri;
$a["path"]=$alan;
$a["bahasa"]=multibahasa();
Parse($alan."index.tpl.htm",$a);

?>