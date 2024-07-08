<?php
include '../Includes/session_helper.php';
start_session();
session_destroy();
header("Location: /Healthy/index.php");
?>
