<?php
include "koneksi.php";
session_start();
if (!isset($_SESSION['User'])) {
    echo "<h1>Permission Denied</h1>You don't have permission to access the this page.";
    exit;
}

$kode =$_POST['kode'];
$tgl1 = $_POST['tgl1'];
$nip = $_POST['nip'];
$sem = $_POST['sem'];
$kdnilai = $_POST['kdnilai'];
$pel = $_POST['pel'];
$ujianke = $_POST['ujianke'];
$status = $_POST['status'];
$skbm = $_POST['skbm'];
$kd = $_POST['kd'];
$kelas = $_POST['kelas'];
$nil = $_POST['nil'];
$ket = $_POST['ket'];
$thajar = $_POST['thajar'];

if ($kode=='tambah') {
	//include "fungsi_konversiuser.php";
//	$guru = konversi_guru($nip);
     $sql = "SELECT * FROM t_nilai where mid(kd_nilai,1,4)='".$thajar."' order by kd_nilai desc";
     if(!$q1 = mysql_query($sql)) die("Error connecting to the database.");
	 $row=mysql_fetch_array($q1);
	 $no =substr($row['kd_nilai'],5,6);
	 if ($no=='') $no='000001';
	 else $no = strval($no)+1;
	 
	 if (strlen($no)==1) $no = "00000".$no;
	 elseif (strlen($no)==2) $no = "0000".$no;
     elseif (strlen($no)==3) $no = "000".$no;
     elseif (strlen($no)==4) $no = "00".$no;
     elseif (strlen($no)==5) $no = "0".$no;

	$kdnilai = $thajar.$no;
  		$sql2 = "insert into t_nilai (kd_nilai,pelajaran,semester,ujian_ke,status,tgl_ujian,skbm,guru,ket,kd_remedial,kelas) values 
          ('".mysql_real_escape_string($kdnilai)."','".mysql_real_escape_string($pel)."','".mysql_real_escape_string($sem)."','".mysql_real_escape_string($ujianke)."','".mysql_real_escape_string($status)."','".mysql_real_escape_string($tgl1)."','".mysql_real_escape_string($skbm)."','".mysql_real_escape_string($nip)."','".mysql_real_escape_string($kd)."','0','".mysql_real_escape_string($kelas)."')";
 	if(!$alan=mysql_query($sql2)) die ("Penyimpanan gagal ");	
	//echo "'$kdnilai','$pel','$sem','$ujianke','$status','$tgl1','$skbm','$guru','$kd','0','$kelas'";
	if (!empty($nil))
	{
		while (list($key,$value)=each($nil))		{
			if ($value>=$skbm) $tuntas='1';
			else $tuntas='0';
			$sql3="insert into t_nilai_detail (kd_nilai,nis,no_ljk,nilai,tuntas) values 
            ('".mysql_real_escape_string($kdnilai)."','$key','-','$value','$tuntas')";
			$mysql_result=mysql_query($sql3) or die ("Penghapusan gagal 2");
		}
		$tdk= "Penambahan Data Nilai kelas $kelas berhasil dilakukan.";
	}
}
else {

  		$sql2 = "update t_nilai set semester='".mysql_real_escape_string($sem)."',ujian_ke='".mysql_real_escape_string($ujianke)."',status='".mysql_real_escape_string($status)."',tgl_ujian='".mysql_real_escape_string($tgl1)."',skbm='".mysql_real_escape_string($skbm)."',ket='".mysql_real_escape_string($ket)."' where kd_nilai='".mysql_real_escape_string($kdnilai)."'";
 	if(!$alan=mysql_query($sql2)) die ("Penyimpanan gagal 1");
		
	if (!empty($nil))
	{
		while (list($key,$value)=each($nil))		{
			if ($value>=$skbm) $tuntas='1';
			else $tuntas='0';
			$sql3="update t_nilai_detail set nilai='$value',tuntas='$tuntas' where kd_nilai='".mysql_real_escape_string($kdnilai)."' and nis='".mysql_real_escape_string($key)."'";
			$mysql_result=mysql_query($sql3) or die ("Penghapusan gagal 2");
		}
		$tdk= "Perubahan Data Nilai kelas $kelas berhasil dilakukan.";
	}
}
//header("Location: ../member/user.php?id=simnilai&kd=$tdk");
echo "<script>document.location.href = '../member/user.php?id=simnilai&kd=$tdk';</script>";
?>