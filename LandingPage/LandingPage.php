<?php include '../Config/koneksi.php'; ?>
<?php include '../Includes/navbar.php'; ?>
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
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
            <div class="sec-wp">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="banner-text">

                                <h1 class="h1-title">
                                    Welcome to Our
                                    <span>HEALTHY</span>
                                    Life with Food
                                </h1>

                                <p>Website ini akan menyediakan fasilitas untuk membeli catering menu-menu sehat untuk kehidupan Anda yang lebih baik, Selain itu di sini juga kita akan menyediakan platform event olahraga terkemuka.</p>
                                <div class="banner-btn mt-4">
                                    <a href="#menu" class="sec-btn">Check our Menu</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="banner-img-wp">
                                <div class="banner-img" style="background-image: url(assets/images/salad.jpg);">
                                </div>
                            </div>
                            <div class="banner-img-text mt-4 m-auto">
                                <h5 class="h5-title">Salad</h5>
                                <p>Salad merupakan salah satu makanan sehat yang terdiri dari buah dan sayuran segar serta biasanya ditambah dengan protein yang berasal dari daging ataupun unggas dan dihidangkan bersamaan dengan dressing berupa saus sambal atau mayonnaise.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="brands-sec">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="brand-title mb-5">
                            <h5 class="h5-title">Bekerjasama dengan 25+ UMKM di Jogja</h5>
                        </div>
                        <div class="brands-row">
                            <div class="brands-box">
                                <img src="assets/images/brands/b1.png" alt="">
                            </div>
                            <div class="brands-box">
                                <img src="assets/images/brands/b2.png" alt="">
                            </div>
                            <div class="brands-box">
                                <img src="assets/images/brands/b3.png" alt="">
                            </div>
                            <div class="brands-box">
                                <img src="assets/images/brands/b4.png" alt="">
                            </div>
                            <div class="brands-box">
                                <img src="assets/images/brands/b5.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-menu section bg-light repeat-img" id="menu" style="background-image: url(assets/images/menu-bg.png);">
            <div class="sec-wp">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sec-title text-center mb-5">
                                <p class="sec-sub-title mb-3">our menu</p>
                                <h2 class="h2-title">This is Our Best Seller Menu, <span>Eat Fresh & Healthy</span></h2>
                                <div class="sec-title-shape mb-4">
                                    <img src="assets/images/title-shape.svg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="menu-list-row">
                        <div class="row g-xxl-5 bydefault_show" id="menu-dish">
                            <?php
                            $sql = "SELECT * FROM menu LIMIT 6";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo '<div class="col-lg-4 col-sm-6 dish-box-wp" data-cat="category">';
                                    echo '<div class="dish-box text-center">';
                                    echo '<div class="dist-img">';
                                    echo '<img src="assets/images/dish/' . $row["Gambar_Menu"] . '" alt="">';
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
                                    echo '<li><button class="dish-add-btn"><i class="uil uil-plus"></i></button></li>';
                                    echo '</ul>';
                                    echo '</div>';
                                    echo '</div>';
                                    echo '</div>';
                                }
                            } else {
                                echo "<p>No menu items found</p>";
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="about-sec section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="sec-title text-center mb-5">
                            <p class="sec-sub-title mb-3">Tips and Tricks</p>
                            <h2 class="h2-title">Benarkah Wortel Baik <span>untuk Kesehatan Mata</span></h2>
                            <div class="sec-title-shape mb-4">
                                <img src="assets/images/title-shape.svg" alt="">
                            </div>
                            <p>Kata orang tua dan guru, wortel baik untuk mata kita. Tapi, apa benar begitu atau cuma mitos saja? Enjoy the video!
                                <span><b>Source: Youtube Kok Bisa</b></span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <div class="about-video">
                            <div class="about-video-img" style="background-image: url(assets/images/kokBisa.png);">
                            </div>
                            <div class="play-btn-wp">
                                <a href="https://www.youtube.com/watch?v=mfjRsAbs6Ms" data-fancybox="video" class="play-btn">
                                    <i class="uil uil-play"></i>
                                </a>
                                <span>Watch The Video</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="bg-pattern bg-light repeat-img" style="background-image: url(assets/images/blog-pattern-bg.png);">
            <section class="blog-sec section" id="blog">
                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="sec-title text-center mb-5">
                                    <p class="sec-sub-title mb-3">Our Article</p>
                                    <h2 class="h2-title">Latest Publications</span></h2>
                                    <div class="sec-title-shape mb-4">
                                        <img src="assets/images/title-shape.svg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <?php
                            $sql = "SELECT Artikel_ID, Gambar_Artikel, Tanggal, Judul_Artikel, Deskripsi_Singkat FROM artikel LIMIT 3";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo '<div class="col-lg-4">';
                                    echo '<div class="blog-box">';
                                    echo '<div class="blog-img back-img" style="background-image: url(\'../Artikel/uploads/' . htmlspecialchars($row["Gambar_Artikel"]) . '\');"></div>';
                                    echo '<div class="blog-text">';
                                    echo '<p class="blog-date">' . htmlspecialchars($row["Tanggal"]) . '</p>';
                                    echo '<a href="../ArtikelDeskripsi/deskirpsi.php?id=' . htmlspecialchars($row["Artikel_ID"]) . '" class="h4-title">' . htmlspecialchars($row["Judul_Artikel"]) . '</a>';
                                    echo '<p>' . htmlspecialchars($row["Deskripsi_Singkat"]) . '</p>';
                                    echo '<a href="../ArtikelDeskripsi/deskirpsi.php?id=' . htmlspecialchars($row["Artikel_ID"]) . '" class="sec-btn">Read More</a>';
                                    echo '</div>';
                                    echo '</div>';
                                    echo '</div>';
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </section>

            <section class="two-col-sec section">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="sec-img mt-5">
                                <img src="assets/images/ayam.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="sec-text">
                                <h2 class="xxl-title">Fakta Unik Daging Ayam</h2>
                                <p>Mampu Mencegah Terkena Penyakit Alzheimer
                                    Salah satu kandungan vitamin dalam daging ayam, yakni vitamin B, ternyata memiliki bermanfaat untuk meningkatkan fungsi otak kita. Hal ini membuat daging ayam dapat mencegah penyakit otak, salah satunya adalah alzheimer</p>
                                <p>Menurunkan Risiko Terkena Kanker
                                    Selanjutnya, salah satu manfaat daging ayam adalah mampu menurunkan risiko kanker, lho!
                                    Kanker dapat terjadi karena adanya zat radikal bebas dalam tubuh. Hal yang dapat mencegah serangan dari radikal bebas ini termasuk vitamin B, niacin, dan selenium. Dan faktanya, daging ayam mengandung zat yang telah disebutkan di atas.
                                    Dengan mengonsumsi daging ayam yang cukup maka kamu dapat mencegah rusaknya sel dan berubah menjadi sel kanker.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="two-col-sec section pt-0">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 order-lg-1 order-2">
                            <div class="sec-text">
                                <h2 class="xxl-title">Mitos Daging Kambing</h2>
                                <p>Belum ada penelitian ilmiah yang menyatakan daging kambing menyebabkan tekanan darah tinggi. Ini merupakan mitos yang terlanjur beredar masyarakat.
                                    Satu-satunya hal yang berkaitan dengan darah tinggi adalah mengkonsumsi daging kambing berlebihan bisa memicu darah tinggi karena kandungan proteinnya yang terlalu banyak.
                                </p>
                                <p>Sifat daging kambing yang memicu panas juga kerap dikaitkan dengan ibu hamil. Banyak yang percaya, ibu hamil tak boleh makan danging kambing karena risiko keguguran. Benarkah?
                                    Hasil penelitian ilmiah menyebut daging kambing kaya nutrisi yang baik untuk ibu hamil, asalkan tidak dikonsumsi secara berlebihan.
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-6 order-lg-2 order-1">
                            <div class="sec-img">
                                <img src="assets/images/domba.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="book-table section bg-light">
                <div class="book-table-shape">
                    <img src="assets/images/table-leaves-shape.png" alt="">
                </div>

                <div class="book-table-shape book-table-shape2">
                    <img src="assets/images/table-leaves-shape.png" alt="">
                </div>

                <div class="sec-wp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="sec-title text-center mb-5">
                                    <p class="sec-sub-title mb-3">Event</p>
                                    <h2 class="h2-title">Our Event</h2>
                                    <p>Berikut beberapa dokumentasi event yang telah kami selenggarakan</p>
                                    <div class="sec-title-shape mb-4">
                                        <img src="assets/images/title-shape.svg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" id="gallery">
                            <div class="col-lg-10 m-auto">
                                <div class="book-table-img-slider" id="icon">
                                    <div class="swiper-wrapper">
                                        <a href="assets/images/ev1.jpeg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev1.jpeg)"></a>
                                        <a href="assets/images/ev2.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev2.jpg)"></a>
                                        <a href="assets/images/ev3.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev3.jpg)"></a>
                                        <a href="assets/images/ev4.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev4.jpg)"></a>
                                        <a href="assets/images/ev1.jpeg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev1.jpeg)"></a>
                                        <a href="assets/images/ev2.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev2.jpg)"></a>
                                        <a href="assets/images/ev3.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev3.jpg)"></a>
                                        <a href="assets/images/ev4.jpg" data-fancybox="table-slider" class="book-table-img back-img swiper-slide" style="background-image: url(assets/images/ev4.jpg)"></a>
                                    </div>

                                    <div class="swiper-button-wp">
                                        <div class="swiper-button-prev swiper-button">
                                            <i class="uil uil-angle-left"></i>
                                        </div>
                                        <div class="swiper-button-next swiper-button">
                                            <i class="uil uil-angle-right"></i>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                            
                            <a href="../Event\event.php" class="sec-btn">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php include '../Includes/footer.php'; ?>
