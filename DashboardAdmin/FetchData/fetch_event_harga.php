<?php
// Koneksi database
include '../../Config/koneksi.php';

$sql = "
    SELECT e.Event_ID, e.Harga_Tiket, te.Jumlah_Tiket, te.Tanggal_Pembelian
    FROM transaksi_event te
    JOIN event e ON te.Event_ID = e.Event_ID
    WHERE te.Status_Pembayaran = 'berhasil'
";
$result = $conn->query($sql);

$data = [];
while ($row = $result->fetch_assoc()) {
    $month = date('Y-m', strtotime($row['Tanggal_Pembelian'])); // Extract year and month
    $data[] = [
        'Event_ID' => $row['Event_ID'],
        'Harga_Tiket' => floatval($row['Harga_Tiket']),
        'Jumlah_Tiket' => intval($row['Jumlah_Tiket']),
        'Month' => $month
    ];
}

// Set the Content-Type header to application/json
header('Content-Type: application/json');

// Return data as JSON and ensure there is no extra output
echo json_encode($data);

$conn->close();
?>
