<?php include "header.php";
session_start();
if (isset($_SESSION['SESS_NAME'])!="") {
	header("Location: voter.php");
}
?>
<?php global $msg; echo $msg;?>
<html>
    <head>
    <style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;

  
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
<img height= 700 width= 1520 src= "https://news.microsoft.com/wp-content/uploads/prod/sites/358/2021/06/DD-NEW-PEOPLE-SECTION_1.gif">
<p><center><legend><font color='blue' size='5' font =>Welcome to Online Voting Portal.This system allows all registered users to vote for their favorite Colledge President & Vice-President.</p>
<p>In order to make a vote you have to register first and then login.</font></legend></center>
    <p>&nbsp;&nbsp;</p>
<center>
<a href="register.php"><button class="button" style="vertical-align:middle"><span>Register </span></button></a>
<a href="login.php">    <button class="button" style="vertical-align:middle"><span>Login </span></button></a>
</center>
<?php include "footer.php";?>
