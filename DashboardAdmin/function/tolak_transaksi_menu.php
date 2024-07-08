<?php
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $transaksi_id = $_GET['id'];

    $sql = "UPDATE transaksi_makanan SET Status_Pembayaran = 'ditolak' WHERE Transaksi_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $transaksi_id);

    if ($stmt->execute()) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "Error updating record: " . $conn->error;
    }

    $stmt->close();
} else {
    echo "Invalid request";
}

$conn->close();
?>
