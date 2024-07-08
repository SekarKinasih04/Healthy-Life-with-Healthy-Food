<?php
session_start();
include '../Config/koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: ../LoginAs/Login.php");
    exit();
}

$umkm_id = $_SESSION['id'];

// Fetch orders related to UMKM with successful payment status
$query_orders = "SELECT t.Transaksi_ID, m.Nama_Menu, t.Tanggal_Mulai_Berlangganan, t.Tanggal_Akhir_Berlangganan, t.Jam_Pengantaran, t.Alamat_Tujuan, t.Status_Pembayaran
                 FROM transaksi_makanan t
                 JOIN menu m ON t.Menu_ID = m.Menu_ID
                 WHERE t.UMKM_ID = $umkm_id AND t.Status_Pembayaran = 'berhasil'";
$result_orders = mysqli_query($conn, $query_orders);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UMKM Orders</title>
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
</head>

<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <section class="section is-main-section">
            <div class="card">
                <header class="card-header">
                    <p class="card-header-title">Orders</p>
                </header>
                <div class="card-content">
                    <table class="table is-fullwidth is-striped">
                        <thead>
                            <tr>
                                <th>Menu</th>
                                <th>Tanggal Order Masuk</th>
                                <th>Tanggal Order Selesai</th>
                                <th>Jam Pengantaran</th>
                                <th>Alamat Tujuan</th>
                                <th>Status Pembayaran</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php while ($row = mysqli_fetch_assoc($result_orders)) : ?>
                                <tr>
                                    <td><?php echo $row['Nama_Menu']; ?></td>
                                    <td><?php echo $row['Tanggal_Mulai_Berlangganan']; ?></td>
                                    <td><?php echo $row['Tanggal_Akhir_Berlangganan']; ?></td>
                                    <td><?php echo $row['Jam_Pengantaran']; ?></td>
                                    <td><?php echo $row['Alamat_Tujuan']; ?></td>
                                    <td><?php echo $row['Status_Pembayaran']; ?></td>
                                </tr>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</body>

</html>