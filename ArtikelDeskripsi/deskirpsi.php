<?php
if (session_status() == PHP_SESSION_NONE) {
  session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
  header("Location: /Healthy/LoginAs/Login.php");
  exit;
}
?>
<?php
include '../Config/koneksi.php';


// Ensure the database is selected
$conn->select_db('healthy4');

// Fix the `$_GET` parameter
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($id == 0) {
    die("Invalid article ID.");
}

// Correct the table name
$sql = "SELECT Gambar_Artikel, Judul_Artikel, Deskripsi_Panjang FROM artikel WHERE Artikel_ID='$id'";
$result = $conn->query($sql);

if (!$result) {
    die("Query failed: " . $conn->error);
}

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
} else {
    die("No article found or invalid ID.");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- tags  -->
    <title>Healthy</title>
    <meta name="title" content="heaven tim saloka proyek" />

    <!-- favicon -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <!-- link font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap"
      rel="stylesheet"
    />

    <!-- link css -->
    <link rel="stylesheet" href="style.css" />

    <!-- gambar preload -->
    <link rel="preload" as="image" href="home-bg-1.jpeg" />
    <link rel="preload" as="image" href="home-bg-2.jpeg" />
    <link rel="preload" as="image" href="home-bg-3.jpeg" />
  </head>
<body>
    <!-- Deskripsi Makanan -->
    <section class="special-dish text-center" aria-labelledby="dish-label">
      <div class="special-dish-banner">
        <img
          src="..\Artikel\uploads\<?php echo htmlspecialchars($row['Gambar_Artikel']); ?>"
          width="940"
          height="900"
          loading="lazy"
          alt="special dish"
          class="img-cover"
        />
      </div>

      <div class="special-dish-content bg-black-10">
        <div class="container">
          <p class="section-subtitle label-2">Artikel Sehat</p>

          <h2 class="headline-1 section-title"><?php echo htmlspecialchars($row['Judul_Artikel']); ?></h2>

          <p class="section-text">
            <?php echo nl2br(htmlspecialchars($row['Deskripsi_Panjang'])); ?>
          </p>

          <a href="../Artikel/Artikel.php" class="btn btn-primary">
            <span class="text text-1">Kembali ke Artikel</span>
            <span class="text text-2" aria-hidden="true">Kembali ke Artikel</span>
          </a>
        </div>
      </div>
    </section>

    <!-- link js -->
    <script src="../script.js"></script>
</body>
</html>

<?php
$conn->close();
?>
