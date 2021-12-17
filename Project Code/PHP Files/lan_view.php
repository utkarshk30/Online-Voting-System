<?php
if(!isset($_SESSION)) { 
session_start();
}
include "auth.php";
include "header_voter.php";
?>
<center><h2> Voting So Far....  </h2></center>
<br>
<br>
<?php
include "connection.php";
$member = mysqli_query($con, 'SELECT * FROM president' );
if (mysqli_num_rows($member)== 0 ) {
	echo '<font color="red">No results found</font>';
}
else {
	echo '<center>
	<table width= 50% border="black">
	
	<tr bgcolor="#00bfff">
	
<td width="60px">ID</td>		
<td width="180px">President</td>
<td width="400px">ABOUT</td>
<td width="100px">VOTE</td>
</tr>';
while($mb=mysqli_fetch_object($member))
		{	
			$id=$mb->V_ID;
			$name=$mb->fullname;
			$about=$mb->about;
			$vote=$mb->votecount;
			echo '<tr >';
	echo '<td>'.$id.'</td>';		
	echo '<td>'.$name.'</td>';
	echo '<td>'.$about.'</td>';
	echo '<td>'.$vote.'</td>';
	echo "</tr>";
	
		}
		
		echo'</table></center>';
	}
?>
<br>
<?php
include "connection.php";
$member = mysqli_query($con, 'SELECT * FROM vp' );
if (mysqli_num_rows($member)== 0 ) {
	echo '<font color="red">No results found</font>';
}
else {
	echo '<center>
	<table width= 50% border="black">
	
	<tr bgcolor="#00bfff">
	
<td width="60px">ID</td>		
<td width="180px">Vice-President</td>
<td width="400px">ABOUT</td>
<td width="100px">VOTE</td>
</tr>';
while($mb=mysqli_fetch_object($member))
		{	
			$id=$mb->VP_ID;
			$name=$mb->fullname;
			$about=$mb->about;
			$vote=$mb->votecount;
			echo '<tr >';
	echo '<td>'.$id.'</td>';		
	echo '<td>'.$name.'</td>';
	echo '<td>'.$about.'</td>';
	echo '<td>'.$vote.'</td>';
	echo "</tr>";
	
		}
		
		echo'</table></center>';
	}
?>