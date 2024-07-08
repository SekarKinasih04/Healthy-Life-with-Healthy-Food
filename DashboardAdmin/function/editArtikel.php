<?php
include '../../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $artikel_id = $_POST['artikel_id'];
    $judul = $_POST['judul'];
    $deskripsi_singkat = $_POST['deskripsi_singkat'];
    $deskripsi_panjang = $_POST['deskripsi_panjang'];
    $tanggal = $_POST['tanggal'];
    
    // File upload handling
    $gambar = $_FILES['gambar']['name'];
    $targetDir = "../../Artikel/uploads/";
    $targetFile = $targetDir . basename($gambar);

    if (!empty($gambar)) {
        move_uploaded_file($_FILES["gambar"]["tmp_name"], $targetFile);
        $sql = "UPDATE artikel SET Judul_Artikel='$judul', Deskripsi_Singkat='$deskripsi_singkat', Deskripsi_Panjang='$deskripsi_panjang', Tanggal='$tanggal', Gambar_Artikel='$gambar' WHERE Artikel_ID='$artikel_id'";
    } else {
        $sql = "UPDATE artikel SET Judul_Artikel='$judul', Deskripsi_Singkat='$deskripsi_singkat', Deskripsi_Panjang='$deskripsi_panjang', Tanggal='$tanggal' WHERE Artikel_ID='$artikel_id'";
    }

    if ($conn->query($sql) === TRUE) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
    }
}
?>
