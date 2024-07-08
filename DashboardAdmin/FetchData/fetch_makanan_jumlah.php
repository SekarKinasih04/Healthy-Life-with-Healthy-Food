<?php
include '../../Config/koneksi.php';

// Memastikan koneksi berhasil
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT DATE_FORMAT(Tanggal_Mulai_Berlangganan, '%Y-%m') as month, COUNT(*) as total
        FROM transaksi_makanan
        WHERE Tanggal_Mulai_Berlangganan BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW()
        AND Status_Pembayaran = 'berhasil'
        GROUP BY month";
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
