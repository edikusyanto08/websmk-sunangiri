<?php
$tag .="
		<script>
		function daftarLink() {window.open('".$alamatDaftar."','Daftar Member');}
		</script>
		<center>
			<form id='form1' class='form-login-member' name='login' action='../member/index.php' method='post'>
				<div align='left'>
					<label for='inputUsername'>Username</label>
					<input type='text' id='inputUsername' name='username' db>
					<label for='inputPassword'>Password</label>
					<input type='password' id='inputPassword' name='password' db>

					<br>
					<input type='hidden' name='lang' value='id'>
					<input type='submit' value='  Login  ' class='art-button' >
					<input type='submit' value=' Daftar ' class='art-button' onclick='daftarLink()'>
				</div>
			</form>
		</center>
		";
// $tag .="<center>
// 			<form id='form1' name='login' action='../member/index.php' method='post'>
// 				<table border='0' width='100%'>
// 					<tr>
// 						<td >Username</td>
// 						<td>:<input type='text' name='username' class='editbox' size='17' title='Masukan Username'></td></tr>
// <tr><td>Password </td><td>:<input type='password' name='password' class='editbox' size='17' title='Masukan Password'></td></tr>
// <tr><td colspan=2 ><input type='submit' value='  Login  ' class='art-button' >
// <input type='hidden' name='lang' value='id'><input type='submit' value=' Daftar ' class='art-button' onclick='daftar()'  ></td></tr></table></form></center>";
?>