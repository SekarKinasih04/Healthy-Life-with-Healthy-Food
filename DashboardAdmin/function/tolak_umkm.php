<?php
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $umkm_id = $_GET['id'];

    $sql = "UPDATE umkm SET Status_Verifikasi = 'ditolak' WHERE UMKM_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $umkm_id);

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
