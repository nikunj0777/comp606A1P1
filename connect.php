<?php
$connection = mysqli_connect('localhost', 'root', '','student');

if($connection){

      echo "Database connected";
}
else {
    die("database connection faild");
  } 
  session_start();
if(isset($_POST['login'])){

  $username = $_POST['username'];
  $email = $_POST['email'];
  $password = md5($_POST['password']);

    if($username &&  $password){

    }
      else 
    {
           echo "Please enter the value";
    }

    $query = "INSERT INTO information(username, email, password)";
    $query .= "VALUES('$username', '$email', '$password')";  

           $result = mysqli_query($connection, $query);

              if(!$result) {

                  die('Query faild' .mysqil_error());
              }else{
                header("Location:login.php");
              }
  }
 
  if(isset($_POST['register'])){
    
    $username = $_POST['username'];
    $password = md5($_POST['password']);
    
    $query = "select * from information where username = '$username' AND password = '$password'";
    echo $query;
   
    
           $result = mysqli_query($connection, $query);
           $data = mysqli_fetch_assoc($result)['username'];
            if(!$result ) {

                  die('Query faild' .mysqil_error());
              }else if($data != null){
                $username = $data;
                echo $username;
                $_SESSION['username'] = $username;
                header("Location:welcome.php");
              }else{
                header("Location:wrongDetails.php");

              }
  }
  if(isset($_POST['resetpassword'])){
    $username = $_SESSION['username'];
    $password = md5($_POST['password']);
    $password = mysqli_real_escape_string($connection,$password);
    $query = "UPDATE information SET password ='$password' WHERE username = '$username'";
    
    echo $query;
    
           $result = mysqli_query($connection, $query);
              if(!$result) {

                  die('Query faild' .mysqil_error());
              }else{
                  
                header("Location:passwordupdate.php");
              }
  }
?>