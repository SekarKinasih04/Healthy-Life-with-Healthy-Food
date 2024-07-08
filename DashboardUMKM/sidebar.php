<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>

<div class="sidebar">
    <div class="sidebar-user">
        <div class="sidebar-user-info">
            <img src="./images/user-image.jpg" alt="User picture" class="profile-image" />
            <div class="sidebar-user-name">UMKM</div>
        </div>
        <button id="logout-button" class="btn btn-outline">
            <i class="bx bx-log-out bx-flip-horizontal"></i>
        </button>
    </div>
    <ul class="sidebar-menu">
        <li>
            <a href="dashboard.php" id="dashboard-link">
                <i class="bx bx-home"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li>
            <a href="tables.php" id="tables-link">
                <i class="bx bx-shopping-bag"></i>
                <span>Orders</span>
            </a>
        </li>
        <li>
            <a href="forms.php" id="forms-link">
                <i class="bx bx-chart"></i>
                <span>Menu</span>
            </a>
        </li>
        <li>
            <a href="profile.php" id="profile-link">
                <i class="bx bx-user"></i>
                <span>Profile</span>
            </a>
        </li>
    </ul>
</div>

<script>
document.addEventListener("DOMContentLoaded", () => {
    const currentPath = window.location.pathname.split('/').pop();
    const pageLinks = {
        "dashboard.php": "dashboard-link",
        "tables.php": "tables-link",
        "forms.php": "forms-link",
        "profile.php": "profile-link"
    };
    if (pageLinks[currentPath]) {
        document.getElementById(pageLinks[currentPath]).classList.add("active");
    }

    document.getElementById("logout-button").addEventListener("click", function() {
        window.location.href = "../LoginAs/logout.php";
    });
});
</script>
