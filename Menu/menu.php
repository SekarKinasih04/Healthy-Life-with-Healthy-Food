<?php require_once '../Config/koneksi.php'; ?>
<?php include '../Includes/navbar.php'; ?>
<?php if (session_status() == PHP_SESSION_NONE) {
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Website</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="style.css">
</head>

<body class="body-fixed">
    <div id="viewport">
        <div id="js-scroll-content">
            <!-- Form Rekomendasi Nutrisi -->
            <section class="nutrition-form section" style="background-image: url(assets/images/menu-bg.png);" id="menu">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-title text-center mb-5">
                                <h2 class="h2-title">Personal Nutrition Recommendation</h2>
                            </div>
                            <form action="../LLM/groq.php" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="height">Tinggi Badan (cm)</label>
                                    <input type="number" id="height" name="height" class="form-input" placeholder="Tinggi Badan" required>
                                </div>
                                <div class="form-group">
                                    <label for="weight">Berat Badan (kg)</label>
                                    <input type="number" id="weight" name="weight" class="form-input" placeholder="Berat Badan" required>
                                </div>
                                <div class="form-group">
                                    <label for="goal">Tujuan Makan Sehat</label>
                                    <input type="text" id="goal" name="goal" class="form-input" placeholder="Tujuan Makan Sehat" required>
                                </div>
                                <div class="form-group">
                                    <label for="disease_history">Riwayat Penyakit</label>
                                    <input type="text" id="disease_history" name="disease_history" class="form-input" placeholder="Riwayat Penyakit" required>
                                </div>
                                <div class="form-group text-center">
                                    <button type="submit" name="recommend" class="btn btn-primary">Get Recommendation</button>
                                </div>
                            </form>
                            <div>
                                <?php
                                if (isset($_SESSION['resultGroq'])) {
                                    echo '<div class="alert alert-warning  mt-4">' . nl2br(htmlspecialchars($_SESSION['resultGroq'])) . '</div>';
                                    unset($_SESSION['resultGroq']);
                                }
                                ?>
                            </div>
                            <?php if (isset($_POST['recommend'])) : ?>
                                <div class="recommendation-output">
                                    <?php
                                    $recommendation = get_nutrition_recommendation($_POST);
                                    echo '<p>' . $recommendation['description'] . '</p>';
                                    ?>
                                    <div class="row">
                                        <?php foreach ($recommendation['menus'] as $menu) : ?>
                                            <div class="col-lg-4 col-sm-6 dish-box-wp" data-cat="category">
                                                <div class="dish-box text-center">
                                                    <div class="dist-img">
                                                        <img src="assets/images/dish/<?php echo $menu['Gambar_Menu']; ?>" alt="">
                                                    </div>
                                                    <div class="dish-rating"><?php echo $menu['Rating']; ?><i class="uil uil-star"></i></div>
                                                    <div class="dish-title">
                                                        <h3 class="h3-title"><?php echo $menu['Nama_Menu']; ?></h3>
                                                        <p><?php echo $menu['Kalori']; ?> calories</p>
                                                    </div>
                                                    <div class="dish-info">
                                                        <ul>
                                                            <li>
                                                                <p>Type</p><b><?php echo $menu['Tipe']; ?></b>
                                                            </li>
                                                            <li>
                                                                <p>Location</p><b><?php echo $menu['Lokasi']; ?></b>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="dish-title">
                                                        <p id="deskripsi"><?php echo $menu['Deskripsi']; ?></p>
                                                    </div>
                                                    <div class="dist-bottom-row">
                                                        <ul>
                                                            <li><b>Rp. <?php echo number_format($menu['Harga'], 2, ',', '.'); ?></b></li>
                                                            <li><button class="dish-add-btn"><i class="uil uil-plus"></i></button></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>

                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Menu Section -->
            <section style="background-image: url(assets/images/menu-bg.png);" class="our-menu section bg-light repeat-img" id="menu">
                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="sec-title text-center mb-5">
                                    <p class="sec-sub-title mb-3">our menu</p>
                                    <h2 class="h2-title">This is Our Menu, <span>Eat Fresh & Healthy</span></h2>
                                    <div class="sec-title-shape mb-4">
                                        <img src="assets/images/title-shape.svg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="menu-list-row">
                            <div class="row g-xxl-5 bydefault_show" id="menu-dish">
                                <?php
                                $sql = "SELECT * FROM Menu";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        echo '<div class="col-lg-4 col-sm-6 dish-box-wp" data-cat="category">';
                                        echo '<div class="dish-box text-center">';
                                        echo '<div class="dist-img">';
                                        echo '<img src="uploads/' . $row["Gambar_Menu"] . '" alt="">';
                                        echo '</div>';
                                        echo '<div class="dish-rating">' . $row["Rating"] . '<i class="uil uil-star"></i></div>';
                                        echo '<div class="dish-title">';
                                        echo '<h3 class="h3-title">' . $row["Nama_Menu"] . '</h3>';
                                        echo '<p>' . $row["Kalori"] . ' calories</p>';
                                        echo '</div>';
                                        echo '<div class="dish-info">';
                                        echo '<ul>';
                                        echo '<li><p>Type</p><b>' . $row["Tipe"] . '</b></li>';
                                        echo '<li><p>Location</p><b>' . $row["Lokasi"] . '</b></li>';
                                        echo '</ul>';
                                        echo '</div>';
                                        echo '<div class="dish-title">';
                                        echo '<p id="deskripsi">' . $row["Deskripsi"] . '</p>';
                                        echo '</div>';
                                        echo '<div class="dist-bottom-row">';
                                        echo '<ul>';
                                        echo '<li><b>Rp. ' . number_format($row["Harga"], 2, ',', '.') . '</b></li>';
                                        echo '<li><button class="dish-add-btn" onclick="location.href=\'../Pembayaran/pembayaranMenu.php?menuId=' . $row["Menu_ID"] . '&menuName=' . urlencode($row["Nama_Menu"]) . '&menuPrice=' . $row["Harga"] . '\'"><i class="uil uil-plus"></i></button></li>';
                                        echo '</ul>';
                                        echo '</div>';
                                        echo '</div>';
                                        echo '</div>';
                                    }
                                } else {
                                    echo "<p>No menu items found</p>";
                                }
                                $conn->close();
                                ?>
                            </div>
                        </div>


                    </div>
                </div>

                <div>
                    <?php include '../Includes/footer.php'; ?>
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