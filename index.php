<?php
session_start();
if (!isset($_SESSION['id'])) {
    header("Location: LandingPage/LandingPage.php");
    exit();
} else {
    header("Location: LandingPage/LandingPage.php?login=true");
    exit();
}
?>
