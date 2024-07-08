<?php include '../../Config/koneksi.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $event_id = $_POST['event_id'];
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

    if (!empty($gambar_event)) {
        move_uploaded_file($_FILES["gambar_event"]["tmp_name"], $targetFile);
        $sql = "UPDATE event SET Nama_Event='$nama_event', Kota_Event='$kota_event', Harga_Tiket='$harga_tiket', Lokasi_Event='$lokasi_event', Tanggal_Event='$tanggal_event', Jam_Event='$jam_event', Deskripsi_Event='$deskripsi_event', Gambar_Event='$gambar_event' WHERE Event_ID='$event_id'";
    } else {
        $sql = "UPDATE event SET Nama_Event='$nama_event', Kota_Event='$kota_event', Harga_Tiket='$harga_tiket', Lokasi_Event='$lokasi_event', Tanggal_Event='$tanggal_event', Jam_Event='$jam_event', Deskripsi_Event='$deskripsi_event' WHERE Event_ID='$event_id'";
    }

    if ($conn->query($sql) === TRUE) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
    }
}
?>
