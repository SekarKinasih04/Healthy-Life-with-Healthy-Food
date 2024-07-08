<?php
include '../../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $judul = $_POST['judul'];
    $deskripsi_singkat = $_POST['deskripsi_singkat'];
    $deskripsi_panjang = $_POST['deskripsi_panjang'];
    $tanggal = $_POST['tanggal'];
    
    // File upload handling
    $gambar = $_FILES['gambar']['name'];
    $targetDir = "../../Artikel/uploads/";
    $targetFile = $targetDir . basename($gambar);

    if (move_uploaded_file($_FILES["gambar"]["tmp_name"], $targetFile)) {
        $sql = "INSERT INTO artikel (Judul_Artikel, Deskripsi_Singkat, Deskripsi_Panjang, Tanggal, Gambar_Artikel) VALUES ('$judul', '$deskripsi_singkat', '$deskripsi_panjang', '$tanggal', '$gambar')";

        if ($conn->query($sql) === TRUE) {
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        } else {
            echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Error uploading file.</div>";
    }
}
?>
