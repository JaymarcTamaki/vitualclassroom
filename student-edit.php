<?php

require 'config/config.php';
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Student Edit</title>
    <script type="text/javascript" src="jquery-3.6.1.min.js"></script>

    <script>
        $(document).ready(function(){

            $("#act1,#act2,#act3,#quiz1,#quiz2,#quiz3,#as1,#as2,#as3").keyup(function(){
                var a,b,c,d,e,f,g,h,i;
                var ave = 0;
                var a = Number($("#act1").val());
                var b = Number($("#act2").val());
                var c = Number($("#act3").val());

                var d = Number($("#quiz1").val());
                var e = Number($("#quiz2").val());
                var f = Number($("#quiz3").val());

                var g = Number($("#as1").val());
                var h = Number($("#as2").val());
                var i = Number($("#as3").val());

                var ave = (a+b+c+d+e+f+g+h+i)/9;
                $('#ave').val(ave);

            });

        });
    </script>
</head>

<body>
    <div class="container mt-5">

        <?php include('message.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Student Edit
                            <a href="classRoom.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">

                        <?php
                        if (isset($_GET['id'])) {
                            $student_id = mysqli_real_escape_string($con, $_GET['id']);
                            $query = "SELECT * FROM grade WHERE id='$student_id' ";
                            $query_run = mysqli_query($con, $query);

                            if (mysqli_num_rows($query_run) > 0) {
                                $student = mysqli_fetch_array($query_run);
                        ?>
                                <form action="code.php" method="POST">
                                    <input type="hidden" name="student_id" value="<?= $student['id']; ?>">

                                    <div class="mb-3">
                                        <label>Student Name</label>
                                        <input type="text" name="name" value="<?= $student['name']; ?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Activity 1</label>
                                        <input type="text" name="act1" value="<?= $student['act1']; ?>" id="act1" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Activity 2</label>
                                        <input type="text" name="act2" value="<?= $student['act2']; ?>" id="act2" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Activity 3</label>
                                        <input type="text" name="act3" value="<?= $student['act3']; ?>" id="act3" class="form-control">
                                    </div>

                                    <div class="mb-3">
                                        <label>Quiz 1</label>
                                        <input type="text" name="quiz1" value="<?= $student['quiz1']; ?>" id="quiz1" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Quiz 2</label>
                                        <input type="text" name="quiz2" value="<?= $student['quiz2']; ?>" id="quiz2" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Quiz 3</label>
                                        <input type="text" name="quiz3" value="<?= $student['quiz3']; ?>" id="quiz3" class="form-control">
                                    </div>

                                    <div class="mb-3">
                                        <label>Assignment 1</label>
                                        <input type="text" name="as1" value="<?= $student['as1']; ?>" id="as1" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Assignment 2</label>
                                        <input type="text" name="as2" value="<?= $student['as2']; ?>" id="as2" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Assignment 3</label>
                                        <input type="text" name="as3" value="<?= $student['as3']; ?>" id="as3" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Average</label>
                                        <input type="text" name="ave" value="<?= $student['ave']; ?>"  id="ave" class="form-control" readonly>
                                    </div>

                                    <div class="mb-3">
                                        <button type="submit" name="update_student" class="btn btn-primary">
                                            Update Student
                                        </button>
                                    </div>

                                </form>
                        <?php
                            } else {
                                echo "<h4>No Such Id Found</h4>";
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>