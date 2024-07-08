<?php
include '../../Config/koneksi.php';

$sql = "SELECT DATE_FORMAT(Tanggal_Daftar, '%Y-%m') as month, COUNT(*) as total
        FROM umkm
        WHERE Tanggal_Daftar BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW()
        GROUP BY month";
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}
header('Content-Type: application/json');
echo json_encode($data);
$conn->close();
?>
