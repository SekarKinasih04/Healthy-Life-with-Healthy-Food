<?php
include '../../Config/koneksi.php';

$sql = "SELECT m.Nama_Menu, COUNT(t.Menu_ID) as total
        FROM transaksi_makanan t
        JOIN menu m ON t.Menu_ID = m.Menu_ID
        WHERE t.Status_Pembayaran = 'berhasil'
        GROUP BY t.Menu_ID
        ORDER BY total DESC
        LIMIT 10";
$result = $conn->query($sql);

$data = array();
while($row = $result->fetch_assoc()) {
    $data[] = $row;
}
header('Content-Type: application/json');
echo json_encode($data);
$conn->close();
?>
