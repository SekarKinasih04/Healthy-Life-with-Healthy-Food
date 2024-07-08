<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>

<div class="sidebar">
    <div class="sidebar-logo">
        <img src="./images/logo.png" alt="Company logo" />
        <div class="sidebar-close" id="sidebar-close">
            <i class="bx bx-left-arrow-alt"></i>
        </div>
    </div>
    <div class="sidebar-user">
        <div class="sidebar-user-info">
            <img src="./images/user-image.jpg" alt="User picture" class="profile-image" />
            <div class="sidebar-user-name">Sekar Kinasih</div>
        </div>
        <button id="logout-button" class="btn btn-outline">
    <i class="bx bx-log-out bx-flip-horizontal"></i>
</button>

    </div>
    <!-- SIDEBAR MENU -->
    <ul class="sidebar-menu">
        <li>
            <a href="dashboard.php" id="dashboard-link">
                <i class="bx bx-home"></i>
                <span>dashboard</span>
            </a>
        </li>
        <li>
            <a href="penjualan.php" id="penjualan-link">
                <i class="bx bx-shopping-bag"></i>
                <span>penjualan</span>
            </a>
        </li>
        <li>
            <a href="analytic.php" id="analytic-link">
                <i class="bx bx-chart"></i>
                <span>analisis</span>
            </a>
        </li>
        <li class="sidebar-submenu">
            <a href="#" class="sidebar-menu-dropdown">
                <i class="bx bx-category"></i>
                <span>UMKM</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="listUMKM.php" > list UMKM </a>
                </li>
                <li>
                    <a href="listMenu.php" > list Menu </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="event.php" id="event-link">
                <i class="bx bx-mail-send"></i>
                <span>event</span>
            </a>
        </li>
        <li>
            <a href="artikel.php" id="artikel-link">
                <i class="bx bx-chat"></i>
                <span>artikel</span>
            </a>
        </li>
        <li>
            <a href="akun.php" id="akun-link">
                <i class="bx bx-user-circle"></i>
                <span>Akun</span>
            </a>
        </li>
        <li class="sidebar-submenu">
            <a href="#" class="sidebar-menu-dropdown">
                <i class="bx bx-cog"></i>
                <span>settings</span>
                <div class="dropdown-icon"></div>
            </a>
            <ul class="sidebar-menu sidebar-menu-dropdown-content">
                <li>
                    <a href="#" class="darkmode-toggle" id="darkmode-toggle">
                        darkmode
                        <span class="darkmode-switch"></span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
    <!-- END SIDEBAR MENU -->
</div>

<script>
document.addEventListener("DOMContentLoaded", () => {
    const currentPath = window.location.pathname.split('/').pop();
    const pageLinks = {
        "dashboard.php": "dashboard-link",
        "penjualan.php": "penjualan-link",
        "analytic.php": "analytic-link",
        "listUMKM.php": "listUMKM-link",
        "listMenu.php": "listMenu-link",
        "event.php": "event-link",
        "artikel.php": "artikel-link",
        "akun.php": "akun-link"
    };
    if (pageLinks[currentPath]) {
        document.getElementById(pageLinks[currentPath]).classList.add("active");
    }
});
</script>
<script>
document.getElementById("logout-button").addEventListener("click", function() {
    window.location.href = "../LoginAs/logout.php";
});
</script>
