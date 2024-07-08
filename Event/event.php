<?php include '../Config/koneksi.php'; ?>
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/Login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../Includes/style.css">
    <link rel="stylesheet" href="grid.css" />
    <title>Events Ticket Card</title>
</head>

<body>
    <?php include '../Includes/navbar.php'; ?>
    <div id="view">
        <div id="js-scroll-content">
            <section class="main-banner" id="event">
                <div class="container">
                    <?php
                    $sql = "SELECT Event_ID, Nama_Event, Kota_Event, Harga_Tiket, Lokasi_Event, Tanggal_Event, Jam_Event, Deskripsi_Event, Gambar_Event FROM event";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<div class="item-container">';
                            echo '    <div class="img-container">';
                            echo '        <img src="./uploads/' . htmlspecialchars($row["Gambar_Event"]) . '" alt="Event image">';
                            echo '    </div>';
                            echo '    <div class="body-container">';
                            echo '        <div class="overlay"></div>';
                            echo '        <div class="event-info">';
                            echo '            <p class="title">' . htmlspecialchars($row["Nama_Event"]) . '</p>';
                            echo '            <div class="separator"></div>';
                            echo '            <p class="info">' . htmlspecialchars($row["Kota_Event"]) . '</p>';
                            echo '            <p class="price">' . htmlspecialchars($row["Harga_Tiket"]) . '</p>';
                            echo '            <div class="additional-info">';
                            echo '                <p class="info">';
                            echo '                    <i class="fas fa-map-marker-alt"></i>';
                            echo '                    ' . htmlspecialchars($row["Lokasi_Event"]) . '';
                            echo '                </p>';
                            echo '                <p class="info">';
                            echo '                    <i class="far fa-calendar-alt"></i>';
                            echo '                    ' . htmlspecialchars($row["Tanggal_Event"]) . '';
                            echo '                </p>';
                            echo '                <p class="info">';
                            echo '                    ' . htmlspecialchars($row["Jam_Event"]) . '';
                            echo '                </p>';
                            echo '                <p class="info description">';
                            echo '                    ' . htmlspecialchars($row["Deskripsi_Event"]) . '';
                            echo '                </p>';
                            echo '            </div>';
                            echo '        </div>';
                            echo '        <button class="action" aria-label="Book it" onclick="window.location.href=\'../Pembayaran/pembayaranEvent.php?event_id=' . $row["Event_ID"] . '\'">Book it</button>';
                            echo '    </div>';
                            echo '</div>';
                        }
                    } else {
                        echo "No events found";
                    }
                    $conn->close();
                    ?>
                </div>
            </section>
        </div>
    </div>
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/font-awesome.min.js"></script>
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/jquery.mixitup.min.js"></script>
    <script src="assets/js/jquery.fancybox.min.js"></script>
    <script src="assets/js/parallax.min.js"></script>
    <script src="assets/js/gsap.min.js"></script>
    <script src="assets/js/ScrollTrigger.min.js"></script>
    <script src="assets/js/ScrollToPlugin.min.js"></script>
    <script src="assets/js/smooth-scroll.js"></script>
    <script src="main.js"></script>
</body>

</html>
