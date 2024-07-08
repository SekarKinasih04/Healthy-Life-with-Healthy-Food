<?php
include '../Config/koneksi.php';

// Memastikan koneksi berhasil
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function fetchMonthlySubscriptionCount($startDate, $endDate) {
    global $conn;

    $sql = "SELECT DATE_FORMAT(Tanggal_Mulai_Berlangganan, '%Y-%m') as month, COUNT(*) as total
            FROM transaksi_makanan
            WHERE Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY month";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchMonthlyRevenue($startDate, $endDate) {
    global $conn;

    $sql = "SELECT DATE_FORMAT(Tanggal_Mulai_Berlangganan, '%Y-%m') as month, SUM(Total_Harga) as total
            FROM transaksi_makanan
            WHERE Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY month";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchMonthlyTipe($startDate, $endDate) {
    global $conn;
    $sql = "SELECT m.Tipe, COUNT(t.Menu_ID) as total
            FROM transaksi_makanan t
            JOIN menu m ON t.Menu_ID = m.Menu_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY m.Tipe";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchMonthlyWilayah($startDate, $endDate) {
    global $conn;

    $sql = "SELECT u.Kota_Kabupaten, COUNT(t.UMKM_ID) as total
            FROM transaksi_makanan t
            JOIN umkm u ON t.UMKM_ID = u.UMKM_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY u.Kota_Kabupaten";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchMonthlyTopMenu($startDate, $endDate) {
    global $conn;

    $sql = "SELECT m.Nama_Menu, COUNT(t.Menu_ID) as total
            FROM transaksi_makanan t
            JOIN menu m ON t.Menu_ID = m.Menu_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY t.Menu_ID
            ORDER BY total DESC
            LIMIT 3";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchMonthlyTopUMKM($startDate, $endDate) {
    global $conn;

    $sql = "SELECT u.Nama_Resto, COUNT(t.UMKM_ID) as total
            FROM transaksi_makanan t
            JOIN umkm u ON t.UMKM_ID = u.UMKM_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY t.UMKM_ID
            ORDER BY total DESC
            LIMIT 3";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchPriceRangeAnalysis($startDate, $endDate) {
    global $conn;

    $sql = "SELECT m.Harga, COUNT(t.Menu_ID) as total
            FROM transaksi_makanan t
            JOIN menu m ON t.Menu_ID = m.Menu_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY m.Harga";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}

function fetchDataByDateRange($startDate, $endDate) {
    global $conn;

    $sql = "SELECT m.Tipe, COUNT(t.Menu_ID) as total
            FROM transaksi_makanan t
            JOIN menu m ON t.Menu_ID = m.Menu_ID
            WHERE t.Tanggal_Mulai_Berlangganan BETWEEN ? AND ?
            GROUP BY m.Tipe";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $startDate, $endDate);
    $stmt->execute();
    $result = $stmt->get_result();

    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    $stmt->close();
    return $data;
}
?>
