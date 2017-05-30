<?php
  	$sql="select * from t_artikel order by id desc limit 0,4";
	if(!$query=mysql_query($sql)) die ("Pengambilan gagal1 artikel $id");
	while ($row=mysql_fetch_array($query)) {
	    $isi = strip_tags($row[isi]);
		$max = 150; // maximal 300 karakter 
		$min = 100; // minimal 150 karakter 
		if( strlen( $isi ) > $max ) { 
			$pecah = substr( $isi, 0, $max ); 
			$akhirParagrap = strrpos( $pecah, "\n" ); 
			$akhirKalimat = strrpos( $pecah, '.' ); 
			$akhirSubKalimat = strrpos( $pecah, ',' ); 
			$spasiTerakhir = strrpos( $pecah, ' ' ); 
 
			if( $akhirParagrap >= $min ) { 
    			$potong = $akhirParagrap; 
			}elseif( $akhirKalimat >= $min ) { 
   				$potong = $akhirKalimat; 
			}elseif( $akhirSubKalimat >= $min ) { 
   				$potong = $akhirSubKalimat; 
			}else { 
   				$potong = $spasiTerakhir; 
			} 
 
			$isi = substr( $isi, 0, $potong+1 )."..."; 
 		}
 		$nfile = "../images/berita/gb$row[id].jpg";
		$gb="";
		if (file_exists($nfile)) {
	        $gb='<img src="'.$nfile.'" width="128" height="128" id="gbr"  >';
		}
		$tag .="<div class='article-item'>$gb<div class='article-content'><h4 nm>$row[judul]</h4 nm><br>
			$isi<br><div style='text-align:left'><a href='index.php?id=artikel&kode=$row[id]' class='article-readmore'>Selengkapnya</a>&nbsp;&nbsp;</div>
			</div></div>";
	}
?>