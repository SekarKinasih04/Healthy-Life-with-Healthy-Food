<?php
include '../../Config/koneksi.php';

// Memastikan koneksi berhasil
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT m.Tipe, COUNT(t.Menu_ID) as total
        FROM transaksi_makanan t
        JOIN menu m ON t.Menu_ID = m.Menu_ID
        WHERE t.Status_Pembayaran = 'berhasil'
        GROUP BY m.Tipe";
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
