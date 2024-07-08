<?php
include '../../Config/koneksi.php';

// Memastikan koneksi berhasil
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT u.Kota_Kabupaten, COUNT(t.UMKM_ID) as total
        FROM transaksi_makanan t
        JOIN umkm u ON t.UMKM_ID = u.UMKM_ID
        WHERE t.Status_Pembayaran = 'berhasil'
        GROUP BY u.Kota_Kabupaten";
$result = $conn->query($sql);

$data = array();
if ($result) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else {
    echo json_encode(["error" => "Error executing query: " . $conn->error]);
    exit;
}

header('Content-Type: application/json');
echo json_encode($data);
$conn->close();
?>
