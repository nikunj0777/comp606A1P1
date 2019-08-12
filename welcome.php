<?php
//connection execute
include_once('connect.php');

if(!isset($_SESSION['username'])){
    header("Location:login.php");
}
?>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css">
          <title>Login FORM</title>
    <body>
        <div class="login-page">
        <h1>Welcome <?php echo $_SESSION['username']; ?> !</h1>
           <a href="resetpassword.php"> Reset Password!! </a> <br>
           <a href="logout.php"> Logout </a>
</div>

</body>
</head>
</html>
