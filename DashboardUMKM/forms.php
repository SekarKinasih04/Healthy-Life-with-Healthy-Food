<?php
session_start();
include '../Config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $umkm_id = $_SESSION['id'];
    $namaMenu = $_POST['namaMenu'];
    $deskripsi = $_POST['deskripsi'];
    $tipe = $_POST['tipe'];
    $kalori = $_POST['kalori'];
    $harga = $_POST['harga'];
    $lokasi = $_POST['lokasi'];
    $rating = 4.7;

    $gambarMenu = $_FILES['gambarMenu']['name'];
    $targetDir = "../Menu/uploads/";
    $targetFile = $targetDir . basename($gambarMenu);

    if (move_uploaded_file($_FILES["gambarMenu"]["tmp_name"], $targetFile)) {
        $sql = "INSERT INTO menu (UMKM_ID, Nama_Menu, Deskripsi, Tipe, Kalori, Harga, Gambar_Menu, Lokasi, Rating)
                VALUES ('$umkm_id', '$namaMenu', '$deskripsi', '$tipe', '$kalori', '$harga', '$gambarMenu', '$lokasi', '$rating')";

        if ($conn->query($sql) === TRUE) {
            echo "<script>alert('Menu added successfully.'); window.location.href='forms.php';</script>";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Error uploading file.";
    }
}

// Fetch existing menu items
$umkm_id = $_SESSION['id'];
$query_menu = "SELECT * FROM menu WHERE UMKM_ID = $umkm_id";
$result_menu = mysqli_query($conn, $query_menu);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UMKM Dashboard</title>
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <section class="section is-main-section">
            <div class="card">
                <header class="card-header">
                    <p class="card-header-title">Add Menu</p>
                </header>
                <div class="card-content">
                    <form method="POST" enctype="multipart/form-data">
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Nama Menu</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <input class="input" type="text" name="namaMenu" required>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Deskripsi</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <textarea class="textarea" name="deskripsi" required></textarea>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Tipe</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <div class="select is-fullwidth">
                                            <select name="tipe" required>
                                                <option value="vegan">Vegan</option>
                                                <option value="bulking">Bulking</option>
                                                <option value="cutting">Cutting</option>
                                                <option value="diabetes">Diabetes</option>
                                                <option value="hipertensi">Hipertensi</option>
                                            </select>
                                        </div>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Kalori</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <input class="input" type="number" name="kalori" required>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Harga</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <input class="input" type="number" name="harga" required>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Lokasi</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded has-icons-left">
                                        <div class="select is-fullwidth">
                                            <select name="lokasi" required>
                                                <option value="Sleman">Sleman</option>
                                                <option value="Bantul">Bantul</option>
                                                <option value="Jogja">Jogja</option>
                                                <option value="Kulon Progo">Kulon Progo</option>
                                                <option value="Gunungkidul">Gunungkidul</option>
                                            </select>
                                        </div>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal"><label class="label">Gambar</label></div>
                            <div class="field-body">
                                <div class="field">
                                    <div class="file is-boxed">
                                        <label class="file-label">
                                            <input class="file-input" type="file" name="gambarMenu" required>
                                            <span class="file-cta">
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label"></div>
                            <div class="field-body">
                                <div class="field">
                                    <div class="control">
                                        <button type="submit" class="button is-primary">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card">
                <header class="card-header">
                    <p class="card-header-title">Menu Items</p>
                </header>
                <div class="card-content">
                    <table class="table is-fullwidth is-striped">
                        <thead>
                            <tr>
                                <th>Nama Menu</th>
                                <th>Deskripsi</th>
                                <th>Tipe</th>
                                <th>Kalori</th>
                                <th>Harga</th>
                                <th>Lokasi</th>
                                <th>Rating</th>
                                <th>Gambar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php while ($row = mysqli_fetch_assoc($result_menu)) : ?>
                                <tr>
                                    <td><?php echo $row['Nama_Menu']; ?></td>
                                    <td><?php echo $row['Deskripsi']; ?></td>
                                    <td><?php echo $row['Tipe']; ?></td>
                                    <td><?php echo $row['Kalori']; ?></td>
                                    <td><?php echo $row['Harga']; ?></td>
                                    <td><?php echo $row['Lokasi']; ?></td>
                                    <td><?php echo $row['Rating']; ?></td>
                                    <td><img src="../Menu/uploads/<?php echo $row['Gambar_Menu']; ?>" alt="Menu Image" width="50"></td>
                                </tr>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</body>

</html>
