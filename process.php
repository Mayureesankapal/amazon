<?php
// session_start();
// Create connection
if(!isset($_SESSION)){
    session_start();
}
$con = new mysqli("localhost","root","","shopinbudget");
// $userid = $_SESSION[uid];
// Check connection
if ($con->connect_error) {
  die("Connection failed: " . $con->connect_error);
}
$total = 0;
$update = false;
$id=0;
$name = '';
$amount = '';


    if(isset($_POST['save'])){
        $userid = $_SESSION['uid'];
        $budget = $_POST['budget'];
        $amount = $_POST['amount'];

        $query = mysqli_query($con, "INSERT INTO budget (name, amount, user_id) VALUE ('$budget', '$amount', '$userid')"); 
        
        $_SESSION['massage'] = "Item has been saved !";
        $_SESSION['msg_type'] = "primary";

        header("location: budgetmgmt.php?result=true");
        

    }

    //calculate Total budget
    $result = mysqli_query($con, "SELECT * FROM budget where user_id='$_SESSION[uid]'");
    while($row = $result->fetch_assoc()){
        $total = $total + $row['amount'];
    }

    //delete data

    if(isset($_GET['delete'])){
        $id = $_GET['delete'];

        $query = mysqli_query($con, "DELETE FROM budget WHERE id=$id and user_id='$_SESSION[uid]'");
        $_SESSION['massage'] = "Item has been Delete !";
        $_SESSION['msg_type'] = "danger";

        header("location: budgetmgmt.php");

    }

    if(isset($_GET['edit'])){
        $id = $_GET['edit'];
        $update = true;
        $result = mysqli_query($con, "SELECT * FROM budget WHERE id=$id and user_id='$_SESSION[uid]'");

      
        if( mysqli_num_rows($result) == 1){
            $row = $result->fetch_assoc();
            $name = $row['name'];
            $amount = $row['amount'];
        }
    
    }

    if(isset($_POST['update'])){
        $id = $_POST['id'];
        $budget = $_POST['budget'];
        $amount = $_POST['amount'];

        $query = mysqli_query($con, "UPDATE budget SET name='$budget', amount='$amount' WHERE id='$id' and user_id='$_SESSION[uid]'");
        $_SESSION['massage'] = "Item has been Update !";
        $_SESSION['msg_type'] = "success";
        header("location: budgetmgmt.php");
    }


?>

