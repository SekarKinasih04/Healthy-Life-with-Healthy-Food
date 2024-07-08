<?php
include '../../Config/koneksi.php';

session_start();
if (!isset($_SESSION['id'])) {
    echo json_encode(["error" => "Not logged in"]);
    exit();
}

$umkm_id = $_SESSION['id'];

// SQL query to get the month and year along with total income
$sql = "SELECT DATE_FORMAT(Tanggal_Mulai_Berlangganan, '%Y-%m') as month_year, SUM(Total_Harga) as total_income
        FROM transaksi_makanan
        WHERE UMKM_ID = ? AND Status_Pembayaran = 'berhasil'
        GROUP BY month_year";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $umkm_id);
$stmt->execute();
$result = $stmt->get_result();

$data = array();
if ($result) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else {
    echo json_encode(["error" => "Error executing query: " . $conn->error]);
    exit();
}

header('Content-Type: application/json');
echo json_encode($data);

$conn->close();
?>
