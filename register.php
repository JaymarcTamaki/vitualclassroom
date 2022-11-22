<?php 
require 'config/config.php';

require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';
?>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VC</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="shortcut icon" type="image/png" href="assets/images/background/graduation.png">
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
</head>

<body>

    <?php 

    if (isset($_POST['register_button'])) {
        echo '
             <script>
               $(document).ready(function(){
                 $("#first").show();
                 $("#second").hide();
               });
             </script>
        	';
    }
    ?>

    <div class="wrapper">

        <div class="login_box">
            <div class="login_header">
                <h1>Tandang Sora</h1>
                
            </div>

            <div id="first">
                <form action="register.php" method="POST" id="login-form">
                    <input type="email" name="log_email" placeholder="Email address" value="<?php 
                                                                                            if (isset($_SESSION['log_email'])) {
                                                                                                echo $_SESSION['log_email'];
                                                                                            }
                                                                                            ?>" required>
                    <br>

                    <input type="password" name="log_password" placeholder="Password">
                    <br>
                    <?php if (in_array("Email or password was incorrect<br>", $error_array)) echo "<span style='color:red; font-size:0.78rem;'>Email or password was incorrect<br><br></span>"; ?>

                    <input type="submit" name="login_button" id="button" value="Login">
                    <br>

                </form>

            </div>


        </div>
    </div>
    <script>
        const landingPage = document.querySelector('.landing');
        const landingBtn = document.querySelector('#landing-btn');
        landingBtn.addEventListener('click', () => {
            landingPage.classList.add('animated', 'slideOutUp');
        });

        $(document).ready(function() {
   
        //on click signup, hide login and show registration form
        $("#signup").click(function()  {
            $("#first").slideUp("slow", function(){
                $("#second").slideDown("slow");
                });
            });
            //on click signup, hide registertion form and login form
                $("#signin").click(function() {
                    $("#second").slideUp("slow", function(){
                        $("#first").slideDown("slow");
                });
            });

        });
 
    </script>
</body>

</html> 