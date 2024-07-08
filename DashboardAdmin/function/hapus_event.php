<?php include '../../Config/koneksi.php'; ?>

<?php
if (isset($_GET['id'])) {
    $event_id = $_GET['id'];

    $sql = "DELETE FROM event WHERE Event_ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $event_id);

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
