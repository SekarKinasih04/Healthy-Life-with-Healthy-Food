<?php
session_start();
include '../Config/koneksi.php';

if (!isset($_SESSION['id'])) {
    header("Location: ../LoginAs/Login.php");
    exit();
}

$umkm_id = $_SESSION['id'];

// Fetch UMKM profile details
$query_profile = "SELECT * FROM umkm WHERE UMKM_ID = $umkm_id";
$result_profile = mysqli_query($conn, $query_profile);
$profile = mysqli_fetch_assoc($result_profile);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UMKM Profile</title>
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
                    <p class="card-header-title">Profile</p>
                </header>
                <div class="card-content">
                    <div class="content">
                        <p>Nama: <?php echo $profile['Nama_Resto']; ?></p>
                        <p>Email: <?php echo $profile['Email']; ?></p>
                        <p>Alamat: <?php echo $profile['Alamat_Lengkap']; ?></p>
                        <p>Status Verifikasi: <?php echo $profile['Status_Verifikasi']; ?></p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
