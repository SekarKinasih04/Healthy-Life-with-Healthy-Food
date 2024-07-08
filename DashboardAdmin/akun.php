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

// Query data user
$sql_user = "SELECT * FROM user";
$result_user = $conn->query($sql_user);

// Mengolah data untuk ditampilkan
$users = [];

while ($row = $result_user->fetch_assoc()) {
    $users[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Akun</title>
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
            <div class="main-title">Akun</div>
        </div>
        <div class="main-content">
            <div class="content">
                <h3>Tabel User</h3>
                <table id="userTable">
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Nama</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Nomor Telepon</th>
                            <th>Kota Kabupaten</th>
                            <th>Alamat</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users as $user) : ?>
                            <tr>
                                <td><?= $user['User_ID'] ?></td>
                                <td><?= $user['Nama'] ?></td>
                                <td><?= $user['Username'] ?></td>
                                <td><?= $user['Email'] ?></td>
                                <td><?= $user['Nomor_Telpon'] ?></td>
                                <td><?= $user['Kota_Kabupaten'] ?></td>
                                <td><?= $user['Alamat'] ?></td>
                                <td><a href="./function/hapusUser.php?id=<?= $user['User_ID'] ?>" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div id="paginationUser" class="pagination"></div>
            </div>
        </div>
    </div>

    <div class="overlay"></div>

    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="./js/app.js"></script>
</body>

</html>
