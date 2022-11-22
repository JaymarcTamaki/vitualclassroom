<?php 
if(isset($_POST['login_button'])){
    
    $email = filter_var($_POST['log_email'], FILTER_SANITIZE_EMAIL) ;//sanitize email
     
    $_SESSION['log_email'] = $email ; //store email into session variable
    $password = md5($_POST['log_password']); // get password

    $check_database_qurey = mysqli_query($con, "SELECT * FROM users WHERE email = '$email' AND password = '$password' AND (users.privilage = 'Student') ");
    $check_login_query = mysqli_num_rows($check_database_qurey);
    $check_database = mysqli_query($con, "SELECT * FROM users WHERE email = '$email' AND password = '$password' AND (users.privilage = 'Teacher') ");
    $check_login = mysqli_num_rows($check_database);

    if(($check_login_query == 1)){
      $row = mysqli_fetch_array($check_database_qurey);
      $username = $row['username'];
      
      $user_closed_query = mysqli_query($con, "SELECT * FROM users WHERE email= '$email' AND user_closed= 'yes'");
      if(mysqli_num_rows($user_closed_query) == 1) {
        $reopen_account = mysqli_query($con, "UPDATE users SET users_closed = 'no' WHERE email='$email'");
      }

        $_SESSION['username'] = $username;
        header("Location: index.php");
        exit();
   
  }

    if(($check_login == 1)){
      $rows = mysqli_fetch_array($check_database);
      $username = $rows['username'];

      $user_closed_query = mysqli_query($con, "SELECT * FROM users WHERE email= '$email' AND user_closed= 'yes'");
      if(mysqli_num_rows($user_closed_query) == 1) {
        $reopen_account = mysqli_query($con, "UPDATE users SET users_closed = 'no' WHERE email='$email'");
      }

      $_SESSION['username'] = $username;
      header("Location: index1.php");
      exit();
    }


    else{
    	array_push($error_array, "Email or password was incorrect<br>");
    }
}

 ?>