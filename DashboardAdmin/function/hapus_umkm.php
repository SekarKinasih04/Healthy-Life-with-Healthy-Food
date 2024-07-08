<?php
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $umkm_id = $_GET['id'];

    $sql = "DELETE FROM umkm WHERE UMKM_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $umkm_id);

    if ($stmt->execute()) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    $stmt->close();
} else {
    echo "Invalid request";
}

$conn->close();
?>
