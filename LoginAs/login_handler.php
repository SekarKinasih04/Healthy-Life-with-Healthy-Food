<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include '../Config/koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usernameOrEmail = $_POST['usernameOrEmail'];
    $password = $_POST['password'];
    $type = $_POST['type'];

    if ($type == 'user') {
        $query = "SELECT * FROM user WHERE (username=? OR email=?) AND password=?";
    } else {
        $query = "SELECT * FROM umkm WHERE (username=? OR email=?) AND password=?";
    }

    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $usernameOrEmail, $usernameOrEmail, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        
        if ($type == 'user' || ($type == 'umkm' && $row['Status_Verifikasi'] == 'berhasil')) {
            $_SESSION['id'] = $row['User_ID'] ?? $row['UMKM_ID']; // Adjust this based on your actual column names
            $_SESSION['type'] = $type;
            $_SESSION['loggedin'] = true;

            if ($type == 'user') {
                header("Location: ../LandingPage/LandingPage.php?login=true");
            } else {
                header("Location: ../DashboardUMKM/dashboard.php");
            }
            exit();
        } else if ($type == 'umkm' && $row['Status_Verifikasi'] == 'menunggu') {
            echo "<script>alert('Anda masih dalam tahap verifikasi'); window.location.href='../LoginAs/Login.php';</script>";
            exit();
        } else if ($type == 'umkm' && $row['Status_Verifikasi'] == 'ditolak') {
            echo "<script>alert('Anda gagal daftar'); window.location.href='../LoginAs/Login.php';</script>";
            exit();
        }
    } else {
        echo "<script>alert('Username or Password is incorrect'); window.location.href='../LoginAs/Login.php';</script>";
        exit();
    }
}
?>
