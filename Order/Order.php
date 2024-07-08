<?php 
include '../Config/koneksi.php'; 
include '../Includes/navbar.php'; 

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/login_admin.php");
    exit;
}

$user_id = $_SESSION['id'];

// Fetch transactions for food orders with menu names
$sql_makanan = "
    SELECT tm.*, m.Nama_Menu 
    FROM transaksi_makanan tm 
    JOIN menu m ON tm.Menu_ID = m.Menu_ID 
    WHERE tm.User_ID = ?";
$stmt_makanan = $conn->prepare($sql_makanan);
$stmt_makanan->bind_param("i", $user_id);
$stmt_makanan->execute();
$result_makanan = $stmt_makanan->get_result();

// Fetch transactions for events with event names
$sql_event = "
    SELECT te.*, e.Nama_Event 
    FROM transaksi_event te 
    JOIN event e ON te.Event_ID = e.Event_ID 
    WHERE te.User_ID = ?";
$stmt_event = $conn->prepare($sql_event);
$stmt_event->bind_param("i", $user_id);
$stmt_event->execute();
$result_event = $stmt_event->get_result();
?>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Website</title>
    <!-- for icons  -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <!-- bootstrap  -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- for swiper slider  -->
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <!-- fancy box  -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
    <!-- custom css  -->
    <link rel="stylesheet" href="style.css">
</head>

<div id="viewport">
    <div id="js-scroll-content">
        <section class="main-banner" id="home">
            <div class="js-parallax-scene">
                <div class="banner-shape-1 w-100" data-depth="0.30">
                    <img src="assets/images/berry.png" alt="">
                </div>
                <div class="banner-shape-2 w-100" data-depth="0.25">
                    <img src="assets/images/leaf.png" alt="">
                </div>
            </div>
            <!-- content -->
            <div class="container">
                <h2 class="h2-title">Order Makanan</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Transaksi ID</th>
                            <th>Menu</th>
                            <th>Tanggal Mulai</th>
                            <th>Tanggal Akhir</th>
                            <th>Jam Pengantaran</th>
                            <th>Harga</th>
                            <th>Alamat</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($row = $result_makanan->fetch_assoc()): ?>
                            <tr>
                                <td><?= $row['Transaksi_ID'] ?></td>
                                <td><?= $row['Nama_Menu'] ?></td>
                                <td><?= $row['Tanggal_Mulai_Berlangganan'] ?></td>
                                <td><?= $row['Tanggal_Akhir_Berlangganan'] ?></td>
                                <td><?= $row['Jam_Pengantaran'] ?></td>
                                <td><?= $row['Total_Harga'] ?></td>
                                <td><?= $row['Alamat_Tujuan'] ?></td>
                                <td><?= $row['Status_Pembayaran'] ?></td>
                            </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                
                <h2 class="h2-title">Order Event</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Transaksi ID</th>
                            <th>Event</th>
                            <th>Tanggal Pembelian</th>
                            <th>Harga</th>
                            <th>Jumlah Tiket</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($row = $result_event->fetch_assoc()): ?>
                            <tr>
                                <td><?= $row['Transaksi_ID'] ?></td>
                                <td><?= $row['Nama_Event'] ?></td>
                                <td><?= $row['Tanggal_Pembelian'] ?></td>
                                <td><?= $row['Total_Harga'] ?></td>
                                <td><?= $row['Jumlah_Tiket'] ?></td>
                                <td><?= $row['Status_Pembayaran'] ?></td>
                            </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
            <!-- end of content -->
        </section>
    </div>
</div>

<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/swiper-bundle.min.js"></script>
<script src="assets/js/jquery.fancybox.min.js"></script>
<script src="assets/js/app.js"></script>
