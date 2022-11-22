<?php

if(isset($_POST['update_student']))
{
    $student_id = mysqli_real_escape_string($con, $_POST['student_id']);

    $name = mysqli_real_escape_string($con, $_POST['name']);
    $act1 = mysqli_real_escape_string($con, $_POST['act1']);
    $act2 = mysqli_real_escape_string($con, $_POST['act2']);
    $act3 = mysqli_real_escape_string($con, $_POST['act3']);
    $quiz1= mysqli_real_escape_string($con, $_POST['quiz1']);
    $quiz2 = mysqli_real_escape_string($con, $_POST['quiz2']);
    $quiz3 = mysqli_real_escape_string($con, $_POST['quiz3']);
    $as1 = mysqli_real_escape_string($con, $_POST['as1']);
    $as2 = mysqli_real_escape_string($con, $_POST['as2']);
    $as3 = mysqli_real_escape_string($con, $_POST['as3']);
    $ave = mysqli_real_escape_string($con, $_POST['ave']);

    $query = "UPDATE grade SET name='$name', act1='$act1', act2='$act2', act3='$act3', quiz1='$quiz1', quiz2='$quiz2', quiz3='$quiz3', as1='$as1', as2='$as2', as3='$as3', ave='$ave' WHERE id='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Student Updated Successfully";
        header("Location: index1.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Student Not Updated";
        header("Location: index1.php");
        exit(0);
    }
}
?>