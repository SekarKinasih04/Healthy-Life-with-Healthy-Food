<?php
include '../../Config/koneksi.php';

$sql = "SELECT u.Kota_Event, COUNT(t.Event_ID) as total
        FROM transaksi_event t
        JOIN event u ON t.Event_ID = u.Event_ID WHERE Status_Pembayaran = 'Berhasil'
        GROUP BY u.Kota_Event";
$result = $conn->query($sql);

$data = array();
while($row = $result->fetch_assoc()) {
    $data[] = $row;
}
header('Content-Type: application/json');
echo json_encode($data);
$conn->close();
?>
