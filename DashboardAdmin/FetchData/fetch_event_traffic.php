<?php
include '../../Config/koneksi.php';

$sql = "SELECT DATE_FORMAT(Tanggal_Pembelian, '%Y-%m') as month, SUM(Total_Harga) as total
        FROM transaksi_event WHERE Status_Pembayaran = 'Berhasil'
        GROUP BY month";
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}
header('Content-Type: application/json');
echo json_encode($data);
$conn->close();
