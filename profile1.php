<?php 
require 'config/config.php' ;
require 'includes/form_handlers/createJoinClass_handler.php';
include("includes/classes/User.php");
include("includes/classes/User2.php");
include("includes/classes/Post.php");

   if(isset($_SESSION['username'])){
		 $userLoggedIn  = $_SESSION['username'];
		 $userLoggedIn2  = $_SESSION['username'];
         $userLoggedIn3  = $_SESSION['username'];
		 $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$userLoggedIn'");
		 $user_details_query2 = mysqli_query($con, "SELECT * FROM createclass WHERE username = '$userLoggedIn2' ORDER BY id DESC");
         $user_details_query3 = mysqli_query($con, "SELECT * FROM users WHERE  username = '$userLoggedIn' AND privilage = 'Student'");
		 $user = mysqli_fetch_array($user_details_query);
		 $user2 = mysqli_fetch_array($user_details_query2);
         $user3 = mysqli_fetch_array($user_details_query3);
         
   }
   else{
   	header("Location:register.php");
   }

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>TS</title>

	<!-- javaScripts -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
			<script src="assets\js\createJoinClass.js"></script>
			<script src="assets/js/demo.js"></script>
			<script src="assets/js/jquery.jcrop.js"></script>
	    <script src="assets/js/jcrop_bits.js"></script>

	<!-- css -->
	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="assets\css\styling.css">
		<link rel="shortcut icon" type="image/png" href="assets/images/background/graduation.png">
		<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" >
</head>

<body>
  
  <div class="background"></div>
	<div class="top_bar">
		<div class="logo">
        <?php

            $logo = '<a href="index.php" style="text-decoration: none"><i class="fa fa-chalkboard"></i> Tandang Sora</a>';
            $logo1 = '<a href="index1.php" style="text-decoration: none"><i class="fa fa-chalkboard"></i> Tandang Sora</a>';

            if($user3 > 0){
                echo $logo;

            }
            else{
                echo $logo1; 
            }
            ?>
                        
		</div>
             <div class="icon">
                <nav>
						<?php

                        $header = ' <a href="index.php"><i class="fas fa-home"></i>
                        <span class="tooltiptext">Home</span>
                        </a>';
                        $header1 = ' <a href="index1.php"><i class="fas fa-home"></i>
                        <span class="tooltiptext">Home</span>
                        </a>';

                        if($user3 > 0){
                            echo $header;

                        }
                        else{
                            echo $header1; 
                        }
                        ?>
                </nav>
              
				</div>
			
			</div>
	
