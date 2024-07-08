<?php include '../../Config/koneksi.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nama_event = $_POST['nama_event'];
    $kota_event = $_POST['kota_event'];
    $harga_tiket = $_POST['harga_tiket'];
    $lokasi_event = $_POST['lokasi_event'];
    $tanggal_event = $_POST['tanggal_event'];
    $jam_event = $_POST['jam_event'];
    $deskripsi_event = $_POST['deskripsi_event'];

    // File upload handling
    $gambar_event = $_FILES['gambar_event']['name'];
    $targetDir = "../../Event/uploads/";
    $targetFile = $targetDir . basename($gambar_event);

    if (move_uploaded_file($_FILES["gambar_event"]["tmp_name"], $targetFile)) {
        $sql = "INSERT INTO event (Nama_Event, Kota_Event, Harga_Tiket, Lokasi_Event, Tanggal_Event, Jam_Event, Deskripsi_Event, Gambar_Event) VALUES ('$nama_event', '$kota_event', '$harga_tiket', '$lokasi_event', '$tanggal_event', '$jam_event', '$deskripsi_event', '$gambar_event')";

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
