<?php
include_once('connect.php');

if(!isset($_SESSION['username'])){
    header("Location:login.php");
}
?>

</html>
<head>
<link rel="stylesheet" type="text/css" href="Style.css">
<title>Reset Password</title>

<div class="form">
  <h1 class="login">Reset password</h1>
    
    <form action="" class="login-form" method="post">
      <input type="password"  name="password" placeholder="password"/>
      <button name="resetpassword" type="resetpassword">Reset</button>
      
    </form>
    <a href="logout.php">logout</a>
  </div>
  </head>
  </html>