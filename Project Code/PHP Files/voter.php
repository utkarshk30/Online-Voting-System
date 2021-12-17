<?php
if(!isset($_SESSION)) { 
session_start();
}
include "auth.php";
include "header_voter.php"; 
?>
<center>
  
<h1><u> Welcome <?php echo $_SESSION['SESS_NAME']; ?> </u></h4>
<h3>Make a Vote! </h3>
<h2> Every Single vote can help in creating a better future</h2>
<br>
<br>
<br>
</center>

<html>
<style>
.btn-group button {
  background-color: #00bfff; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  width: 800px; /* Set a width if needed */
  height: 170px;
  display: block; /* Make the buttons appear below each other */
  float: center;
}

.btn-group button:not(:last-child) {
  border-bottom: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color: #3e8e41;
}
</style>
<body bgcolor="white">


<center>
<div class="btn-group">
<a href="president.php"><button><h1>Click here to vote for College President<h1></button></a>
  <br>
  <br>
  <a href="vp.php"><button><h1>Click here to vote for college Vice-President</h1></button></a>
  
</div>
</center>

</body>
</html>