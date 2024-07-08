<?php
include '../Config/koneksi.php';
function getMenuDetails($conn)
{
    $query = "SELECT Menu_ID, Tipe, Nama_Menu, Kalori FROM menu";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        return $result;
    } else {
        return [];
    }
}


function calculateCaloricNeeds($height, $weight)
{
    // Basic calculation for caloric needs
    $calories = 10 * $weight + 6.25 * $height - 5 * 25; // Example calculation
    return $calories;
}
