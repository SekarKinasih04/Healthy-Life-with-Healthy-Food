<?php
include '../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $namaMenu = $_POST['namaMenu'];
    $deskripsi = $_POST['deskripsi'];
    $tipe = $_POST['tipe'];
    $lokasi = $_POST['lokasi'];
    $rating = $_POST['rating'];
    $harga = $_POST['harga'];
    $kalori = $_POST['kalori'];

    // File upload handling
    $gambarMenu = $_FILES['gambarMenu']['name'];
    $targetDir = "uploads/";
    $targetFile = $targetDir . basename($gambarMenu);

    if (move_uploaded_file($_FILES["gambarMenu"]["tmp_name"], $targetFile)) {
        $sql = "INSERT INTO Menu (Nama_Menu, Deskripsi, Tipe, Lokasi, Rating, Harga, Kalori, Gambar_Menu)
                VALUES ('$namaMenu', '$deskripsi', '$tipe', '$lokasi', '$rating', '$harga', '$kalori', '$gambarMenu')";

        if ($conn->query($sql) === TRUE) {
            echo "New menu item added successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Error uploading file.";
    }
}

$conn->close();
?>
