<?php
include '../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $owner = $_POST['owner'];
    $namaUMKM = $_POST['namaUMKM'];
    $emailUMKM = $_POST['emailUMKM'];
    $nomorTeleponUMKM = $_POST['nomorTeleponUMKM'];
    $bankUMKM = $_POST['bankUMKM'];
    $rekeningUMKM = $_POST['rekeningUMKM'];
    $lokasi = $_POST['lokasi'];
    $alamatUMKM = $_POST['alamatUMKM'];
    $usernameUMKM = $_POST['usernameUMKM'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirmPassword'];
    
    // Menangkap tanggal saat ini
    $tanggalDaftar = date('Y-m-d');
    
    // File upload handling
    $fotoIdentitas = $_FILES['ktp']['name'];
    $fotoResto = $_FILES['fotoResto']['name'];
    $fotoBukuRekening = $_FILES['fotoBukuRekening']['name'];

    $targetDir = "/uploads";
    $targetFileIdentitas = $targetDir . basename($fotoIdentitas);
    $targetFileResto = $targetDir . basename($fotoResto);
    $targetFileBukuRekening = $targetDir . basename($fotoBukuRekening);

    if ($password == $confirmPassword) {
        if (move_uploaded_file($_FILES["ktp"]["tmp_name"], $targetFileIdentitas) &&
            move_uploaded_file($_FILES["fotoResto"]["tmp_name"], $targetFileResto) &&
            move_uploaded_file($_FILES["fotoBukuRekening"]["tmp_name"], $targetFileBukuRekening)) {

            $sql = "INSERT INTO UMKM (Foto_Identitas, Foto_Resto, Nama_Resto, Foto_Buku_Rekening, Status_Verifikasi, Nama_Pemilik, Kota_Kabupaten, Alamat_Lengkap, Email, Nomor_Telpon, Username, Bank, Nomor_Rekening, Password, Tanggal_Daftar)
                    VALUES ('$fotoIdentitas', '$fotoResto', '$namaUMKM', '$fotoBukuRekening', 'menunggu', '$owner', '$lokasi', '$alamatUMKM', '$emailUMKM', '$nomorTeleponUMKM', '$usernameUMKM', '$bankUMKM', '$rekeningUMKM', '$password', '$tanggalDaftar')";

            if ($conn->query($sql) === TRUE) {
                header("Location: ..\LoginAs\Login.php");
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        } else {
            echo "Error uploading files.";
        }
    } else {
        echo "Passwords do not match.";
    }
}

$conn->close();
?>
