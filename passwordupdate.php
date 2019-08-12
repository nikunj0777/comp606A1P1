
<?php
include_once('connect.php');

if(!isset($_SESSION['username'])){
    header("Location:login.php");
}
?>

include 
<html>
<head>
<link rel="stylesheet" type="text/css" href="Style.css">
<title>passwordupdate</title>
<body>
</body>
<a href="login.php"> --Login-- </a>
<h1>password successfuly update...!!!</h2>



</head>
</html