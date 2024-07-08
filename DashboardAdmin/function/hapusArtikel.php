<?php
include '../../Config/koneksi.php';

if (isset($_GET['id'])) {
    $artikel_id = $_GET['id'];

    $sql = "DELETE FROM artikel WHERE Artikel_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $artikel_id);

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
