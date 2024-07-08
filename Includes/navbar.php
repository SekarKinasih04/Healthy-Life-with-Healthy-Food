<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">

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

<!-- start of header  -->
<header class="site-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header-logo">
                    <a href="..\LandingPage\index.php">
                        <img src="logo.png" width="160" height="75" alt="Logo">
                    </a>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="main-navigation">
                    <button class="menu-toggle"><span></span><span></span></button>
                    <nav class="header-menu">
                        <ul class="menu food-nav-menu">
                            <li><a href="..\LandingPage\LandingPage.php">Home</a></li>
                            <li><a href="..\Menu\menu.php">Menu</a></li>
                            <li><a href="..\Event\event.php">Event</a></li>
                            <li><a href="..\Artikel\Artikel.php">Article</a></li>
                            <li><a href="..\Order\Order.php">Order</a></li>
                            <?php if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) : ?>
                                <li><a href="../LoginPilih/Login.html">Sign Out</a></li>
                            <?php else : ?>
                                <li><a href="../LoginPilih/Login.html">Sign In</a></li>
                            <?php endif; ?>
                        </ul>
                    </nav>
                    <div class="header-right">
                        <form id="search-form" action="#" class="header-search-form for-des">
                            <input type="search" id="search-input" class="form-input" placeholder="Search Here...">
                            <button type="submit">
                                <i class="uil uil-search"></i>
                            </button>
                        </form>
                        <a href="javascript:void(0)" class="header-btn header-cart">
                            <i class="uil uil-shopping-bag"></i>
                            <span class="cart-number">0</span>
                        </a>
                        <a href="javascript:void(0)" class="header-btn">
                            <i class="uil uil-user-md"></i>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</header>
<!-- header ends  -->