<?php
session_start();
include '../Config/koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: ../LoginAs/Login.php");
    exit();
}

$umkm_id = $_SESSION['id'];

// Fetch data for charts and cards
$query_income = "SELECT SUM(Total_Harga) as total_income, COUNT(Transaksi_ID) as total_orders, MONTH(Tanggal_Mulai_Berlangganan) as month FROM transaksi_makanan WHERE UMKM_ID = $umkm_id GROUP BY month";
$query_performance = "SELECT MONTH(Tanggal_Mulai_Berlangganan) as month, SUM(Total_Harga) as monthly_income FROM transaksi_makanan WHERE UMKM_ID = $umkm_id GROUP BY month ORDER BY month DESC LIMIT 2";
$query_menu_distribution = "SELECT Tipe as type, COUNT(Menu_ID) as count FROM menu WHERE UMKM_ID = $umkm_id GROUP BY type";

$result_income = mysqli_query($conn, $query_income);
$result_performance = mysqli_query($conn, $query_performance);
$result_menu_distribution = mysqli_query($conn, $query_menu_distribution);

$total_income = 0;
$total_orders = 0;
$monthly_income = [];
$menu_distribution = [];

while ($row = mysqli_fetch_assoc($result_income)) {
    $total_income += $row['total_income'];
    $total_orders += $row['total_orders'];
    $monthly_income[$row['month']] = $row['total_income'];
}

$performance = [];
while ($row = mysqli_fetch_assoc($result_performance)) {
    $performance[] = $row['monthly_income'];
}

$performance_change = ($performance[0] - $performance[1]) / $performance[1] * 100;

while ($row = mysqli_fetch_assoc($result_menu_distribution)) {
    $menu_distribution[$row['type']] = $row['count'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UMKM Dashboard</title>
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
    <!-- ApexCharts -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
</head>
<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <div class="main-header">
            <div class="mobile-toggle" id="mobile-toggle">
                <i class="bx bx-menu-alt-right"></i>
            </div>
            <div class="main-title">Dashboard</div>
        </div>
        <div class="main-content">
            <div class="row">
                <div class="col-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">Total Revenue</div>
                            <div class="counter-info">
                                <div class="counter-count"><?= number_format($total_income); ?></div>
                                <i class="bx bx-shopping-bag"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">Total Orders</div>
                            <div class="counter-info">
                                <div class="counter-count"><?= $total_orders; ?></div>
                                <i class="bx bx-chat"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">Performance Change</div>
                            <div class="counter-info">
                                <div class="counter-count"><?= number_format($performance_change, 2); ?>%</div>
                                <i class="bx bx-line-chart"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-8">
                    <div class="box f-height">
                        <div class="box-header">Monthly Income Chart</div>
                        <canvas id="incomeChart"></canvas>
                    </div>
                </div>
                <div class="col-4">
                    <div class="box f-height">
                        <div class="box-header">Kategori Menu</div>
                        <canvas id="makananCategoryChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./js/app.js"></script>
</body>
</html>