<?php include "header_voter.php";

session_start();
if (isset($_SESSION['SESS_NAME'])=="") {
	header("Location: voter.php");
}
?>
<?php global $msg; echo $msg;?>


<form action="submit_vote.php" name="vote" method="post" id="myform" >
    
<center><font size='6'> Please cast your vote for the position of President? <BR>
<input type="radio" name="lan" value="Abraham Lincoln">     Abraham Lincoln       <BR>
<input type="radio" name="lan" value="George Washington">   George Washington     <BR>
<input type="radio" name="lan" value="Franklin Roosevelt">  Franklin Roosevelt    <BR>
<input type="radio" name="lan" value="John F. Kennedy ">    John F. Kennedy     <BR>
<input type="radio" name="lan" value="Barack Obama">        Barack Obama          <BR>
</font></center><br>
<?php global $msg; echo $msg;?>
<?php global $error; echo $error; ?>
<center><input type="submit" value="Submit Vote" name="submit" style="height:30px; width:100px" /></center>
</form>