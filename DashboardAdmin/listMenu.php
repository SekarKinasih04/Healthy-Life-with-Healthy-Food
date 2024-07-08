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
// Query data menu
$sql_menu = "SELECT * FROM menu";
$result_menu = $conn->query($sql_menu);

// Mengolah data untuk ditampilkan
$menus = [];

while ($row = $result_menu->fetch_assoc()) {
    $menus[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>List Menu</title>
    <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png" />
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
</head>

<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <div class="main-header">
            <div class="mobile-toggle" id="mobile-toggle">
                <i class="bx bx-menu-alt-right"></i>
            </div>
            <div class="main-title">List Menu</div>
        </div>
        <div class="main-content">
            <div class="content">
                <h3>Tabel Menu</h3>
                <table id="menuTable">
                    <thead>
                        <tr>
                            <th>Menu ID</th>
                            <th>UMKM ID</th>
                            <th>Nama Menu</th>
                            <th>Foto</th>
                            <th>Harga</th>
                            <th>Kategori</th>
                            <th>Deskripsi</th>
                            <th>Kalori</th>
                            <th>Lokasi</th>
                            <th>Rating</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($menus as $menu) : ?>
                            <tr>
                                <td><?= $menu['Menu_ID'] ?></td>
                                <td><?= $menu['UMKM_ID'] ?></td>
                                <td><?= $menu['Nama_Menu'] ?></td>
                                <td><img src="..\Menu\uploads\<?= $menu['Gambar_Menu'] ?>" alt="Foto Menu" width="50" height="50"></td>
                                <td><?= $menu['Harga'] ?></td>
                                <td><?= $menu['Tipe'] ?></td>
                                <td><?= $menu['Deskripsi'] ?></td>
                                <td><?= $menu['Kalori'] ?></td>
                                <td><?= $menu['Lokasi'] ?></td>
                                <td><?= $menu['Rating'] ?></td>

                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div id="paginationMenu" class="pagination"></div>
            </div>
        </div>
    </div>

    <div class="overlay"></div>

    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="./js/app.js"></script>
</body>

</html>