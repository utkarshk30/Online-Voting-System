<?php
include "connection.php";

session_start();
if(empty($_POST['lan1'])){
$error="<center><h4><font color='#00bfff'>Please select  to vote!</h4></center></font>";
include"profile.php";
exit();
}
$lan1 = $_POST['lan1'];
$sess = $_SESSION['SESS_NAME'] ;
$lan1 = addslashes($_POST['lan1']);
$lan1 = mysqli_real_escape_string($con, $lan1);
$sql = mysqli_query($con, 'SELECT * FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" AND status="VOTED"');
if(mysqli_num_rows($sql) > 0 ) {
	$msg="<center><h4><font color='#00bfff'>You have already been voted, No need to vote again</h4></center></font>";
	include"profile.php";
	
		exit();	
}
else{
$sql1 =mysqli_query($con, 'UPDATE vp SET votecount = votecount + 1 WHERE fullname = "'.$_POST['lan1'].'"');
$sql2 =mysqli_query($con, 'UPDATE voters SET status="VOTED" WHERE username="'.$_SESSION['SESS_NAME'].'"');
$sql3 = mysqli_query($con, 'UPDATE voters SET voted= "'.$_POST['lan1'].'" WHERE username="'.$_SESSION['SESS_NAME'].'"');
	if(!$sql1 && !$sql2){
	die("Error on mysql query".mysqli_error());
	}
	else{
	$msg="<center><h4><font color='#00bfff'>Congratulation, you have made your vote.</h4></center></font>";
	
	include"voter.php";
	exit();
	}
}
?>
