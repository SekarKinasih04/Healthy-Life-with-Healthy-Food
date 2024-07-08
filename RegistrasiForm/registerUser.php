<?php
include '../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = $_POST['user'];
    $usernameUser = $_POST['usernameUser'];
    $emailUser = $_POST['emailUser'];
    $nomorTeleponUser = $_POST['nomorTeleponUser'];
    $lokasiUser = $_POST['lokasiUser'];
    $alamatUser = $_POST['alamatUser'];
    $passwordUser = $_POST['passwordUser'];
    $confirmPasswordUser = $_POST['confirmPasswordUser'];

    if ($passwordUser == $confirmPasswordUser) {
        $sql = "INSERT INTO User (Nama, Username, Email, Nomor_Telpon, Kota_Kabupaten, Alamat, Password)
                VALUES ('$user', '$usernameUser', '$emailUser', '$nomorTeleponUser', '$lokasiUser', '$alamatUser', '$passwordUser')";

        if ($conn->query($sql) === TRUE) {
            header("Location: ..\LoginAs\Login.php");
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Passwords do not match.";
    }
}

$conn->close();
?>
