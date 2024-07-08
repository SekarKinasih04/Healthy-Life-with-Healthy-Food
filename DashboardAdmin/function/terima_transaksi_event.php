<?php
// Koneksi database
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Mengupdate status pembayaran menjadi ditolak
    $sql = "UPDATE transaksi_event SET Status_Pembayaran = 'Berhasil' WHERE Transaksi_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "Error updating record: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
}
?>
