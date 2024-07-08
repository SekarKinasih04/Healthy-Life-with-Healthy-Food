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
    $userId = $_SESSION['id'];
    $menuId = $_POST['menuId'];
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];
    $jam = $_POST['jam'];
    $totalPrice = $_POST['totalPrice'];
    $alamatUser = $_POST['alamatUser'];
    $statusPembayaran = 'menunggu';

    // Debug: Print the menuId to ensure it's being received correctly
    echo "Received Menu ID: " . $menuId . "<br>";

    // Check if the menuId is an integer
    if (!is_numeric($menuId)) {
        die("Invalid Menu ID format.");
    }

    // Verify the Menu_ID exists in the menu table
    $stmt = $conn->prepare("SELECT UMKM_ID FROM menu WHERE Menu_ID = ?");
    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }
    $stmt->bind_param("i", $menuId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
        die("Menu ID does not exist in the menu table.");
    }

    $menuRow = $result->fetch_assoc();
    $umkmId = $menuRow['UMKM_ID'];

    // If UMKM_ID is NULL, use a default value
    if (is_null($umkmId)) {
        $umkmId = 5; // Default UMKM_ID
    }

    // Debug: Print the UMKM_ID to ensure it's being fetched correctly
    echo "Fetched UMKM ID: " . $umkmId . "<br>";

    $stmt->close();

    // Insert data into transaksi_makanan table
    $stmt = $conn->prepare("INSERT INTO transaksi_makanan (User_ID, UMKM_ID, Menu_ID, Tanggal_Mulai_Berlangganan, Tanggal_Akhir_Berlangganan, Jam_Pengantaran, Total_Harga, Status_Pembayaran, Alamat_Tujuan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }
    $stmt->bind_param("iiissssss", $userId, $umkmId, $menuId, $startDate, $endDate, $jam, $totalPrice, $statusPembayaran, $alamatUser);

    if ($stmt->execute()) {
        echo "Data has been saved successfully";
        header("Location: ../Menu/menu.php");
        exit();
    } else {
        // Add detailed error logging
        echo "Error: " . $stmt->error . "<br>";
        error_log("MySQL Error: " . $stmt->error, 3, "error_log.txt");
    }

    $stmt->close();
    $conn->close();
}
?>
