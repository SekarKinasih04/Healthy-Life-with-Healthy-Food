<?php
// Koneksi database
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Menghapus data transaksi event berdasarkan ID
    $sql = "DELETE FROM transaksi_event WHERE Transaksi_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
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
