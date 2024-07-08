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
// Query data UMKM
$sql_umkm = "SELECT * FROM umkm";
$result_umkm = $conn->query($sql_umkm);

// Mengolah data berdasarkan status verifikasi
$data_berhasil = [];
$data_menunggu = [];
$data_ditolak = [];

while ($row = $result_umkm->fetch_assoc()) {
    if ($row['Status_Verifikasi'] === 'berhasil') {
        $data_berhasil[] = $row;
    } elseif ($row['Status_Verifikasi'] === 'menunggu') {
        $data_menunggu[] = $row;
    } elseif ($row['Status_Verifikasi'] === 'ditolak') {
        $data_ditolak[] = $row;
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
            <div class="main-title">List UMKM</div>
        </div>
        <div class="main-content">
            <div class="content">
                <!-- Tabel UMKM Berhasil -->
                <div>
                    <h3>Tabel UMKM Berhasil</h3>
                    <table id="umkmTableBerhasil">
                        <thead>
                            <tr>
                                <th>UMKM ID</th>
                                <th>Nama Resto</th>
                                <th>Username</th>
                                <th>Nama Owner</th>
                                <th>Email</th>
                                <th>BANK</th>
                                <th>Nomor Rekening</th>
                                <th>Kota</th>
                                <th>Alamat</th>
                                <th>Foto Identitas</th>
                                <th>Foto Resto</th>
                                <th>Foto Buku Rekening</th>
                                <th>Tanggal Daftar</th>
                                <th>Status Verifikasi</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_berhasil as $umkm) : ?>
                                <tr>
                                    <td><?= $umkm['UMKM_ID'] ?></td>
                                    <td><?= $umkm['Nama_Resto'] ?></td>
                                    <td><?= $umkm['Username'] ?></td>
                                    <td><?= $umkm['Nama_Pemilik'] ?></td>
                                    <td><?= $umkm['Email'] ?></td>
                                    <td><?= $umkm['Bank'] ?></td>
                                    <td><?= $umkm['Nomor_Rekening'] ?></td>
                                    <td><?= $umkm['Kota_Kabupaten'] ?></td>
                                    <td><?= $umkm['Alamat_Lengkap'] ?></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Identitas'] ?>" alt="Identitas" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Resto'] ?>" alt="Resto" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Buku_Rekening'] ?>" alt="Buku Rekening" width="50" height="50"></td>
                                    <td><?= $umkm['Tanggal_Daftar'] ?></td>
                                    <td>
                                        <div class="payment-status payment-paid">
                                            <div class="dot"></div><span><?= $umkm['Status_Verifikasi'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/hapus_umkm.php?id=<?= $umkm['UMKM_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationUmkmBerhasil" class="pagination"></div>
                </div>
                <!-- Tabel UMKM Menunggu -->
                <div>
                    <h3>Tabel UMKM Menunggu</h3>
                    <table id="umkmTableMenunggu">
                        <thead>
                            <tr>
                                <th>UMKM ID</th>
                                <th>Nama Resto</th>
                                <th>Username</th>
                                <th>Nama Owner</th>
                                <th>Email</th>
                                <th>BANK</th>
                                <th>Nomor Rekening</th>
                                <th>Kota</th>
                                <th>Alamat</th>
                                <th>Foto Identitas</th>
                                <th>Foto Resto</th>
                                <th>Foto Buku Rekening</th>
                                <th>Tanggal Daftar</th>
                                <th>Status Verifikasi</th>
                                <th>Terima</th>
                                <th>Tolak</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_menunggu as $umkm) : ?>
                                <tr>
                                    <td><?= $umkm['UMKM_ID'] ?></td>
                                    <td><?= $umkm['Nama_Resto'] ?></td>
                                    <td><?= $umkm['Username'] ?></td>
                                    <td><?= $umkm['Nama_Pemilik'] ?></td>
                                    <td><?= $umkm['Email'] ?></td>
                                    <td><?= $umkm['Bank'] ?></td>
                                    <td><?= $umkm['Nomor_Rekening'] ?></td>
                                    <td><?= $umkm['Kota_Kabupaten'] ?></td>
                                    <td><?= $umkm['Alamat_Lengkap'] ?></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Identitas'] ?>" alt="Identitas" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Resto'] ?>" alt="Resto" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Buku_Rekening'] ?>" alt="Buku Rekening" width="50" height="50"></td>
                                    <td><?= $umkm['Tanggal_Daftar'] ?></td>
                                    <td>
                                        <div class="payment-status payment-pending">
                                            <div class="dot"></div><span><?= $umkm['Status_Verifikasi'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/terima_umkm.php?id=<?= $umkm['UMKM_ID'] ?>">Accept</a></td>
                                    <td><a href="./function/tolak_umkm.php?id=<?= $umkm['UMKM_ID'] ?>">Reject</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationUmkmMenunggu" class="pagination"></div>
                </div>
                <!-- Tabel UMKM Ditolak -->
                <div>
                    <h3>Tabel UMKM Ditolak</h3>
                    <table id="umkmTableDitolak">
                        <thead>
                            <tr>
                                <th>UMKM ID</th>
                                <th>Nama Resto</th>
                                <th>Username</th>
                                <th>Nama Owner</th>
                                <th>Email</th>
                                <th>BANK</th>
                                <th>Nomor Rekening</th>
                                <th>Kota</th>
                                <th>Alamat</th>
                                <th>Foto Identitas</th>
                                <th>Foto Resto</th>
                                <th>Foto Buku Rekening</th>
                                <th>Tanggal Daftar</th>
                                <th>Status Verifikasi</th>
                                <th>Hapus</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_ditolak as $umkm) : ?>
                                <tr>
                                    <td><?= $umkm['UMKM_ID'] ?></td>
                                    <td><?= $umkm['Nama_Resto'] ?></td>
                                    <td><?= $umkm['Username'] ?></td>
                                    <td><?= $umkm['Nama_Pemilik'] ?></td>
                                    <td><?= $umkm['Email'] ?></td>
                                    <td><?= $umkm['Bank'] ?></td>
                                    <td><?= $umkm['Nomor_Rekening'] ?></td>
                                    <td><?= $umkm['Kota_Kabupaten'] ?></td>
                                    <td><?= $umkm['Alamat_Lengkap'] ?></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Identitas'] ?>" alt="Identitas" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Resto'] ?>" alt="Resto" width="50" height="50"></td>
                                    <td><img src="path/to/images/<?= $umkm['Foto_Buku_Rekening'] ?>" alt="Buku Rekening" width="50" height="50"></td>
                                    <td><?= $umkm['Tanggal_Daftar'] ?></td>
                                    <td>
                                        <div class="payment-status payment-reject">
                                            <div class="dot"></div><span><?= $umkm['Status_Verifikasi'] ?></span>
                                        </div>
                                    </td>
                                    <td><a href="./function/hapus_umkm.php?id=<?= $umkm['UMKM_ID'] ?>">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div id="paginationUmkmDitolak" class="pagination"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay"></div>

    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="./js/app.js"></script>
</body>

</html>