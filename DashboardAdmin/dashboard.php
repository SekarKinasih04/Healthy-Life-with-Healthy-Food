<?php
include '../Config/koneksi.php';
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/login_admin.php");
    exit;
}

$sql_makanan = "SELECT * FROM transaksi_makanan";
$result_makanan = $conn->query($sql_makanan);

$sql_umkm = "SELECT * FROM umkm";
$result_umkm = $conn->query($sql_umkm);
// Mengambil total order menu yang berhasil
$sql_total_order_menu = "SELECT COUNT(*) as total_order_menu FROM transaksi_makanan WHERE Status_Pembayaran = 'berhasil'";
$result_total_order_menu = $conn->query($sql_total_order_menu);
$row_total_order_menu = $result_total_order_menu->fetch_assoc();
$total_order_menu = $row_total_order_menu['total_order_menu'];

// Mengambil total order event yang berhasil
$sql_total_order_event = "SELECT COUNT(*) as total_order_event FROM transaksi_event WHERE Status_Pembayaran = 'Berhasil'";
$result_total_order_event = $conn->query($sql_total_order_event);
$row_total_order_event = $result_total_order_event->fetch_assoc();
$total_order_event = $row_total_order_event['total_order_event'];

// Mengambil total uang dari menu makanan yang berhasil
$sql_total_uang_menu = "SELECT SUM(Total_Harga) as total_uang_menu FROM transaksi_makanan WHERE Status_Pembayaran = 'berhasil'";
$result_total_uang_menu = $conn->query($sql_total_uang_menu);
$row_total_uang_menu = $result_total_uang_menu->fetch_assoc();
$total_uang_menu = $row_total_uang_menu['total_uang_menu'];

// Mengambil total uang dari event yang berhasil
$sql_total_uang_event = "SELECT SUM(Total_Harga) as total_uang_event FROM transaksi_event WHERE Status_Pembayaran = 'Berhasil'";
$result_total_uang_event = $conn->query($sql_total_uang_event);
$row_total_uang_event = $result_total_uang_event->fetch_assoc();
$total_uang_event = $row_total_uang_event['total_uang_event'];


// Mengambil 5 best selling menu
$sql_best_selling_menu = "SELECT tm.Menu_ID, COUNT(tm.Menu_ID) as total_sales, m.Nama_Menu, m.Tipe, m.Gambar_Menu 
                          FROM transaksi_makanan tm
                          JOIN menu m ON tm.Menu_ID = m.Menu_ID
                          GROUP BY tm.Menu_ID 
                          ORDER BY total_sales DESC 
                          LIMIT 5";
$result_best_selling_menu = $conn->query($sql_best_selling_menu);

$best_selling_menus = [];
while ($row = $result_best_selling_menu->fetch_assoc()) {
    $best_selling_menus[] = $row;
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Penjualan</title>
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">total order menu</div>
                            <div class="counter-info">
                                <div class="counter-count"><?= $total_order_menu ?></div>
                                <i class="bx bx-shopping-bag"></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">total order event</div>
                            <div class="counter-info">
                                <div class="counter-count"><?= $total_order_event ?></div>
                                <i class="bx bx-chat"></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">traffick menu</div>
                            <div class="counter-info">
                                <div class="counter-count">Rp <?= number_format($total_uang_menu, 0, ',', '.') ?></div>
                                <i class="bx bx-line-chart"></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
                <div class="col-3 col-md-6 col-sm-12">
                    <div class="box box-hover">
                        <!-- COUNTER -->
                        <div class="counter">
                            <div class="counter-title">traffick event</div>
                            <div class="counter-info">
                                <div class="counter-count">Rp <?= number_format($total_uang_event, 0, ',', '.') ?></div>
                                <i class="bx bx-user"></i>
                            </div>
                        </div>
                        <!-- END COUNTER -->
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-3 ">
                    <!-- TOP PRODUCT -->
                    <div class="box f-height">
                        <div class="box-header">Best Selling Menu</div>
                        <div class="box-body">
                            <ul class="product-list">
                                <?php foreach ($best_selling_menus as $menu) : ?>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <div><img src="../Menu/uploads/<?= $menu['Gambar_Menu'] ?>" alt="product image" /></div>
                                            <div class="item-name">
                                                <div class="product-name"><?= $menu['Nama_Menu'] ?></div>
                                                <div class="text-second"><?= $menu['Tipe'] ?></div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales"><?= $menu['total_sales'] ?> pcs</div>
                                        </div>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Chart -->
                <div class="col-4 ">
                    <div class="box f-height">
                        <div class="box-header">UMKM Location</div>
                        <div id="umkmLokasiChart"></div>
                    </div>
                </div>
                <div class="col-5 ">
                    <div class="box f-height">
                        <div class="box-header">Traffick UMKM</div>
                        <div class="box-body">
                            <div id="umkmTrafficChart"></div>
                        </div>
                    </div>
                </div>
                <!-- Recent Orders Table -->
                <div class="col-12">
                    <div class="box">
                        <div class="box-header">Recent orders</div>
                        <div class="box-body overflow-scroll">
                            <table>
                                <thead>
                                    <tr>
                                        <th>alamat</th>
                                        <th>nama user</th>
                                        <th>order masuk</th>
                                        <th>status</th>
                                        <th>total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $sql_recent_orders = "SELECT tm.*, u.Nama as nama_user FROM transaksi_makanan tm
                                                          JOIN user u ON tm.User_ID = u.User_ID
                                                          ORDER BY Tanggal_Mulai_Berlangganan DESC LIMIT 5";
                                    $result_recent_orders = $conn->query($sql_recent_orders);
                                    while ($row = $result_recent_orders->fetch_assoc()) : ?>
                                        <tr>
                                            <td><?= $row['Alamat_Tujuan'] ?></td>
                                            <td>
                                                <div class="order-owner">

                                                    <span><?= $row['nama_user'] ?></span>
                                                </div>
                                            </td>
                                            <td><?= $row['Tanggal_Mulai_Berlangganan'] ?></td>
                                            <td>
                                                <div class="payment-status <?= $row['Status_Pembayaran'] === 'menunggu' ? 'payment-pending' : 'payment-paid' ?>">
                                                    <div class="dot"></div>
                                                    <span><?= $row['Status_Pembayaran'] ?></span>
                                                </div>
                                            </td>
                                            <td>Rp <?= number_format($row['Total_Harga'], 0, ',', '.') ?></td>
                                        </tr>
                                    <?php endwhile; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="overlay"></div>


                <!-- Mengirim data ke JavaScript -->
                <script>
                    // Add your PHP-generated data here if needed
                    var categoryData = <?= json_encode($category_data) ?>;
                    var monthlyIncomeMenu = <?= json_encode($monthly_income_menu) ?>;
                    var monthlyIncomeEvent = <?= json_encode($monthly_income_event) ?>;
                </script>

                <!-- SCRIPT -->
                <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
                <script src="./js/app.js"></script>


</body>

</html>