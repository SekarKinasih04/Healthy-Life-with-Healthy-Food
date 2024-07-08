<?php
include '../../Config/koneksi.php';

$sql = "SELECT u.Lokasi_Event, COUNT(t.Event_ID) as total
        FROM transaksi_event t
        JOIN event u ON t.Event_ID = u.Event_ID
        WHERE t.Status_Pembayaran = 'Berhasil'
        GROUP BY u.Lokasi_Event 
        ORDER BY total DESC
        LIMIT 10";
$result = $conn->query($sql);

$data = array();
if ($result) {
    while ($row = $result->fetch_assoc()) {
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
