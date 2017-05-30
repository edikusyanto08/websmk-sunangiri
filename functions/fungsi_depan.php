<?php
if(!defined("CMSBalitbang")) {
	die("<h1>Permission Denied</h1>You don't have permission to access the this page.");
}
//**************************************** fungsi index ********************************//
//******************************************* isi utama ********************************* //
function depan($id) {
include "koneksi.php";
$depan .='<div class="art-content">';

$sql2="select * from t_pos_menu where kategori='$id' and posisi='T' and sembunyi='t' order by urut ";
if(!$query2=mysql_query($sql2)) die ("Pengambilan gagal1 menu posisi");
while($rows=mysql_fetch_array($query2)) {
//cek pake temp engga
  if ($rows[idtemp]=='0')  {
  	// tag awal source isi
	$fungsi ="../modul/tag_".$rows[fungsi].".php";
	include ("$fungsi");
	$depan .= $tag;
  }
  else {
	$sql1="select * from t_temp_menu where idtemp='$rows[idtemp]'";
	if(!$query1=mysql_query($sql1)) die ("Pengambilan gagal1 menu posisi");
	$r=mysql_fetch_array($query1);
	$depan .= $r[temp_atas]; //atas
	//tag tengah
	switch ($rows[fungsi]) {
		case 'jajak':
			$depan .= '<i class="material-icons">poll</i> '.$rows[menu];
			break;
		case 'artikel2':
			$depan .= '<i class="material-icons">description</i> '.$rows[menu];
			break;
		case 'tag_artikel':
			$depan .= '<i class="material-icons">description</i> '.$rows[menu];
			break;
		case 'galeri_depan':
			$depan .= '<i class="material-icons">photo</i> '.$rows[menu];
			break;
		case 'galeri':
			$depan .= '<i class="material-icons">photo</i> '.$rows[menu];
			break;
		case 'guru':
			$depan .= '<i class="material-icons">perm_identity</i> '.$rows[menu];
			break;
		case 'tanggal':
			$depan .= '<i class="material-icons">date_range</i> '.$rows[menu];
			break;
		case 'soal':
			$depan .= '<i class="material-icons">assignment</i> '.$rows[menu];
			break;
		case 'profil2':
			$depan .= '<i class="material-icons">location_on</i> '.$rows[menu];
			break;
		case 'pesanalumni':
			$depan .= '<i class="material-icons">favorite_border</i> '.$rows[menu];
			break;

		case 'login':
			$depan .= '<i class="material-icons">people</i> '.$rows[menu];
			break;
		case 'materi':
			$depan .= '<i class="material-icons">book</i> '.$rows[menu];
			break;
		case 'status_member':
			$depan .= '<i class="material-icons">sentiment_very_satisfied</i> '.$rows[menu];
			break;

		case 'statistik':
			$depan .= '<i class="material-icons">show_chart</i> '.$rows[menu];
			break;
		case 'info':
			$depan .= '<i class="material-icons">new_releases</i> '.$rows[menu];
			break;
		case 'materi':
			$depan .= '<i class="material-icons">book</i> '.$rows[menu];
			break;
		
		default:
			$depan .= $rows[menu];
			break;
	}
	$depan .= $r[temp_tengah];
	// tag awal source isi
	$fungsi ="../modul/tag_".$rows[fungsi].".php";
	include ("$fungsi");
	$depan .= $tag;
	// bawah
	$depan .= $r[temp_bawah]; //bawah
  }
	$tag="";
}	
$depan .=' </div>
<div class="art-sidebar2">';
		
$sql2="select * from t_pos_menu where kategori='$id' and posisi='R' and sembunyi='t' order by urut ";
if(!$query2=mysql_query($sql2)) die ("Pengambilan gagal1 menu posisi");
while($rows=mysql_fetch_array($query2)) {
//pake temp apa enngaa
  if ($rows[idtemp]=='0')  {
  	// tag awal source isi
	$fungsi ="../modul/tag_".$rows[fungsi].".php";
	include ("$fungsi");
	$depan .= $tag;
  }
  else {
	$sql1="select * from t_temp_menu where idtemp='$rows[idtemp]'";
	if(!$query1=mysql_query($sql1)) die ("Pengambilan gagal1 menu posisi");
	$r=mysql_fetch_array($query1);
	$depan .= $r[temp_atas]; //atas
	//tag tengah

	switch ($rows[fungsi]) {
		case 'jajak':
			$depan .= '<i class="material-icons">poll</i> '.$rows[menu];
			break;
		case 'artikel2':
			$depan .= '<i class="material-icons">description</i> '.$rows[menu];
			break;
		case 'tag_artikel':
			$depan .= '<i class="material-icons">description</i> '.$rows[menu];
			break;
		case 'galeri_depan':
			$depan .= '<i class="material-icons">photo</i> '.$rows[menu];
			break;
		case 'galeri':
			$depan .= '<i class="material-icons">photo</i> '.$rows[menu];
			break;
		case 'guru':
			$depan .= '<i class="material-icons">perm_identity</i> '.$rows[menu];
			break;
		case 'tanggal':
			$depan .= '<i class="material-icons">date_range</i> '.$rows[menu];
			break;
		case 'soal':
			$depan .= '<i class="material-icons">assignment</i> '.$rows[menu];
			break;
		case 'profil2':
			$depan .= '<i class="material-icons">location_on</i> '.$rows[menu];
			break;
		case 'pesanalumni':
			$depan .= '<i class="material-icons">favorite_border</i> '.$rows[menu];
			break;

		case 'login':
			$depan .= '<i class="material-icons">people</i> '.$rows[menu];
			break;
		case 'materi':
			$depan .= '<i class="material-icons">book</i> '.$rows[menu];
			break;
		case 'status_member':
			$depan .= '<i class="material-icons">sentiment_very_satisfied</i> '.$rows[menu];
			break;

		case 'statistik':
			$depan .= '<i class="material-icons">show_chart</i> '.$rows[menu];
			break;
		case 'info':
			$depan .= '<i class="material-icons">new_releases</i> '.$rows[menu];
			break;
		case 'materi':
			$depan .= '<i class="material-icons">book</i> '.$rows[menu];
			break;
		default:
			$depan .= $rows[menu];
			break;
	}

	$depan .= $r[temp_tengah];
	// tag awal source isi
	$fungsi ="../modul/tag_".$rows[fungsi].".php";
	include ("$fungsi");
	$depan .= $tag;
	
	// bawah
	$depan .= $r[temp_bawah]; //bawah
  }
	$tag="";
}	
$depan.='</div>';


return $depan;
}

function webmaster() {
include "koneksi.php";
  	$sql="select * from t_profil where judul='webmaster'";
	if(!$query=mysql_query($sql)) die ("Pengambilan gagal1 profil");
	$row=mysql_fetch_array($query);
	
$web .=$row[isi];
return $web;
}
function peta() {
include "koneksi.php";
  	$sql="select * from t_profil where judul='petasitus'";
	if(!$query=mysql_query($sql)) die ("Pengambilan gagal1 profil");
	$row=mysql_fetch_array($query);

$peta .=$row[isi];
return $peta;
}


?>