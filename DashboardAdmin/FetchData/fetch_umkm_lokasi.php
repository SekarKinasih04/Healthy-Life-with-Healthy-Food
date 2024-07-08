<?php
include '../../Config/koneksi.php';

// Ensure the connection is successful
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT Kota_Kabupaten, COUNT(UMKM_ID) as total
        FROM umkm
        WHERE Status_Verifikasi = 'berhasil'
        GROUP BY Kota_Kabupaten";
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
