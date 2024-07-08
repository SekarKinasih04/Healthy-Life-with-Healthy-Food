<?php
require_once '../Config/koneksi.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/Login.php");
    exit;
}

if (!isset($_SESSION['id'])) {
    die("User ID is not set in session.");
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $event_id = $_POST['event_id'];
    $user_id = $_SESSION['id'];
    $email = $_POST['email'];
    $jumlah_tiket = $_POST['jumlah_tiket'];
    $total_price = $_POST['total_price'];
    $tanggal_pembelian = $_POST['tanggal_pembelian'];
    $status = 'Menunggu';

    $sql = "INSERT INTO transaksi_event (Event_ID, User_ID, Email, Jumlah_Tiket, Tanggal_Pembelian, Total_Harga, Status_Pembayaran)
            VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('iississ', $event_id, $user_id, $email, $jumlah_tiket, $tanggal_pembelian, $total_price, $status);

    if ($stmt->execute()) {
        echo "<script>alert('Pembayaran berhasil disimpan!'); window.location.href='../Order/Order.php';</script>";
    } else {
        echo "Error: " . $stmt->error;
    }
    $stmt->close();
    $conn->close();
}
?>
