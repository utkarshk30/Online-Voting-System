<?php include "header_voter.php";
session_start();
if (isset($_SESSION['SESS_NAME'])=="") {
	header("Location: voter.php");
}
?>
<?php global $msg; echo $msg;?>

<form action="submit_vote.php" name="vote" method="post" id="myform" >
    
<center><font size='6'> Please cast your vote for the position of Vice-President? <BR>
<input type="radio" name="lan1" value="Sarvepalli Radhakrishnan">  Sarvepalli Radhakrishnan   <BR>
<input type="radio" name="lan1" value="K. R. Narayanan">   K. R. Narayanan    <BR>
<input type="radio" name="lan1" value="Krishan Kant">  Krishan Kant    <BR>
<input type="radio" name="lan1" value="Mohammad Hamid Ansari ">    Mohammad Hamid Ansari     <BR>
<input type="radio" name="lan1" value="Venkaiah Naidu">       Venkaiah Naidu        <BR>
</font></center><br>
<?php global $msg; echo $msg;?>
<?php global $error; echo $error; ?>
<center><input type="submit" value="Submit Vote" name="submit" style="height:30px; width:100px" /></center>
</form>