<?php
include '../../Config/koneksi.php';

$sql = "SELECT Kota_Kabupaten, COUNT(*) as total FROM umkm GROUP BY Kota_Kabupaten";
$result = $conn->query($sql);

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

header('Content-Type: application/json');
echo json_encode($data);
?>
