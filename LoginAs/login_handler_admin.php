<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include '../Config/koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usernameOrEmail = $_POST['usernameOrEmail'];
    $password = $_POST['password'];

    $query = "SELECT * FROM admin WHERE (username='$usernameOrEmail' OR email='$usernameOrEmail') AND password='$password'";
    $result = mysqli_query($conn, $query);
    
    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['id'] = $row['User_ID'];
        $_SESSION['loggedin'] = true;
        header("Location: ../DashboardAdmin/dashboard.php");
        exit();
    } else {
        echo "<script>alert('Username or Password is incorrect');</script>";
        echo "<script>window.location.href='loginAdmin.php';</script>";
    }
}
?>
