<?php
// Koneksi database
include '../Config/koneksi.php';
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/login_admin.php");
    exit;
}
// Query data transaksi makanan
$sql_makanan = "SELECT * FROM transaksi_makanan";
$result_makanan = $conn->query($sql_makanan);

// Mengolah data untuk visualisasi
$data_berhasil = [];
$data_menunggu = [];
$data_ditolak = [];

while ($row = $result_makanan->fetch_assoc()) {
    if ($row['Status_Pembayaran'] === 'berhasil') {
        $data_berhasil[] = $row;
    } elseif ($row['Status_Pembayaran'] === 'menunggu') {
        $data_menunggu[] = $row;
    } elseif ($row['Status_Pembayaran'] === 'ditolak') {
        $data_ditolak[] = $row;
    }
}
// Query data transaksi event
$sql_event = "SELECT * FROM transaksi_event";
$result_event = $conn->query($sql_event);

$data_event_berhasil = [];
$data_event_menunggu = [];
$data_event_ditolak = [];

while ($row = $result_event->fetch_assoc()) {
    if ($row['Status_Pembayaran'] === 'Berhasil') {
        $data_event_berhasil[] = $row;
    } elseif ($row['Status_Pembayaran'] === 'Menunggu') {
        $data_event_menunggu[] = $row;
    } elseif ($row['Status_Pembayaran'] === 'Ditolak') {
        $data_event_ditolak[] = $row;
    }
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
            <div class="main-title">Penjualan</div>
        </div>
        <div class="main-content">
            <div class="content">
                <h1>Visualisasi Transaksi Makanan</h1>
                <div class="row">
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Makanan</h3>
                            <div id="makananTrafficChart"></div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Jumlah Menu Terjual</h3>
                            <div id="jumlahMenuChart"></div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Kategori Makanan</h3>
                            <div id="makananCategoryChart"></div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Wilayah Makanan</h3>
                            <div id="makananWilayahChart"></div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Top 10 UMKM</h3>
                            <div id="topUmkmChart"></div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Top 10 Menu</h3>
                            <div id="topMenuChart"></div>
                        </div>
                    </div>

                </div>
                <!-- Tabel Transaksi Berhasil -->
                <div id="transaksiMakananBerhasil">
                    <h3>Tabel Transaksi Makanan Berhasil</h3>
                    <table id="transaksiMakananTableBerhasil">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>UMKM</th>
                                <th>Menu</th>
                                <th>Tanggal Mulai Berlangganan</th>
                                <th>Tanggal Akhir Berlangganan</th>
                                <th>Jam Pengantaran</th>
                                <th>Harga</th>
                                <th>Alamat</th>
                                <th>Status</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_berhasil as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['UMKM_ID'] ?></td>
                                    <td><?= $transaksi['Menu_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Mulai_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Tanggal_Akhir_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Jam_Pengantaran'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Alamat_Tujuan'] ?></td>
                                    <td>
                                        <div class="payment-status payment-paid">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href=".\function\hapus_transaksi_menu.php?id=<?= $transaksi['Transaksi_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationBerhasil" class="pagination"></div>
                </div>

                <!-- Tabel Transaksi Menunggu -->
                <div id="transaksiMakananMenunggu">
                    <h3>Tabel Transaksi Makanan Menunggu</h3>
                    <table id="transaksiMakananTableMenunggu">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>UMKM</th>
                                <th>Menu</th>
                                <th>Tanggal Mulai Berlangganan</th>
                                <th>Tanggal Akhir Berlangganan</th>
                                <th>Jam Pengantaran</th>
                                <th>Harga</th>
                                <th>Alamat</th>
                                <th>Status</th>
                                <th>Terima</th>
                                <th>Tolak</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_menunggu as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['UMKM_ID'] ?></td>
                                    <td><?= $transaksi['Menu_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Mulai_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Tanggal_Akhir_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Jam_Pengantaran'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Alamat_Tujuan'] ?></td>
                                    <td>
                                        <div class="payment-status payment-pending">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href=".\function\terima_transaksi_event.php?id=<?= $transaksi['Transaksi_ID'] ?>">Accept</a></td>
                                    <td><a href=".\function\tolak_transaksi_menu.php?id=<?= $transaksi['Transaksi_ID'] ?>">Reject</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationMenunggu" class="pagination"></div>
                </div>

                <!-- Tabel Transaksi Ditolak -->
                <div id="transaksiMakananDitolak">
                    <h3>Tabel Transaksi Makanan Ditolak</h3>
                    <table id="transaksiMakananTableDitolak">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>UMKM</th>
                                <th>Menu</th>
                                <th>Tanggal Mulai Berlangganan</th>
                                <th>Tanggal Akhir Berlangganan</th>
                                <th>Jam Pengantaran</th>
                                <th>Harga</th>
                                <th>Alamat</th>
                                <th>Status</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_ditolak as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['UMKM_ID'] ?></td>
                                    <td><?= $transaksi['Menu_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Mulai_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Tanggal_Akhir_Berlangganan'] ?></td>
                                    <td><?= $transaksi['Jam_Pengantaran'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Alamat_Tujuan'] ?></td>
                                    <td>
                                        <div class="payment-status payment-reject">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href=".\function\hapus_transaksi_menu.php?id=<?= $transaksi['Transaksi_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationDitolak" class="pagination"></div>
                </div>

                <h1>Visualisasi Transaksi Event</h1>
                <div class="row">
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Event</h3>
                            <div id="eventTrafficChart"></div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Grafik Penjualan Event</h3>
                            <div id="jumlahEventChart"></div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Wilayah Event</h3>
                            <div id="eventWilayahChart"></div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="grafik-box">
                            <h3>Top Lokasi Event</h3>
                            <div id="topLokasiChart"></div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="grafik-box">
                            <h3>Grafik Harga Tiket Event</h3>
                            <div id="eventHargaChart"></div>
                        </div>
                    </div>
                </div>
                <!-- Tabel Transaksi Event Berhasil -->
                <div id="transaksiEventBerhasil">
                    <h3>Tabel Transaksi Event Berhasil</h3>
                    <table id="transaksiEventTableBerhasil">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>Event</th>
                                <th>Tanggal Pembelian</th>
                                <th>Harga</th>
                                <th>Jumlah Tiket</th>
                                <th>Status</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_event_berhasil as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['Event_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Pembelian'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Jumlah_Tiket'] ?></td>
                                    <td>
                                        <div class="payment-status payment-paid">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran']  ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/hapus_transaksi_event.php?id=<?= $transaksi['Transaksi_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationEventBerhasil" class="pagination"></div>
                </div>

                <!-- Tabel Transaksi Event Menunggu -->
                <div id="transaksiEventMenunggu">
                    <h3>Tabel Transaksi Event Menunggu</h3>
                    <table id="transaksiEventTableMenunggu">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>Event</th>
                                <th>Tanggal Pembelian</th>
                                <th>Harga</th>
                                <th>Jumlah Tiket</th>
                                <th>Status</th>
                                <th>Terima</th>
                                <th>Tolak</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_event_menunggu as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['Event_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Pembelian'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Jumlah_Tiket'] ?></td>
                                    <td>
                                        <div class="payment-status payment-pending">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/terima_transaksi_event.php?=<?= $transaksi['Transaksi_ID'] ?>">Accept</a></td>
                                    <td><a href="./function/tolak_transaksi_event.php?id=<?= $transaksi['Transaksi_ID'] ?>">Reject</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationEventMenunggu" class="pagination"></div>
                </div>

                <!-- Tabel Transaksi Event Ditolak -->
                <div id="transaksiEventDitolak">
                    <h3>Tabel Transaksi Event Ditolak</h3>
                    <table id="transaksiEventTableDitolak">
                        <thead>
                            <tr>
                                <th>Transaksi ID</th>
                                <th>User</th>
                                <th>Event</th>
                                <th>Tanggal Pembelian</th>
                                <th>Harga</th>
                                <th>Jumlah Tiket</th>
                                <th>Status</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_event_ditolak as $transaksi) : ?>
                                <tr>
                                    <td><?= $transaksi['Transaksi_ID'] ?></td>
                                    <td><?= $transaksi['User_ID'] ?></td>
                                    <td><?= $transaksi['Event_ID'] ?></td>
                                    <td><?= $transaksi['Tanggal_Pembelian'] ?></td>
                                    <td><?= $transaksi['Total_Harga'] ?></td>
                                    <td><?= $transaksi['Jumlah_Tiket'] ?></td>
                                    <td>
                                        <div class="payment-status payment-reject">
                                            <div class="dot"></div><span><?= $transaksi['Status_Pembayaran'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/hapus_transaksi_event.php?id=<?= $transaksi['Transaksi_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationEventDitolak" class="pagination"></div>
                </div>
            </div>
        </div>


        <div class="overlay"></div>

        <!-- SCRIPT -->
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="./js/app.js"></script>
</body>

</html>