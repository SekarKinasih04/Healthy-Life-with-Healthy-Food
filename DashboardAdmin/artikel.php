<?php
// Koneksi database
include '../Config/koneksi.php';
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/login_admin.php");
    exit;
}

// Query data artikel
$sql_artikel = "SELECT * FROM artikel";
$result_artikel = $conn->query($sql_artikel);

// Mengolah data untuk ditampilkan
$artikels = [];

while ($row = $result_artikel->fetch_assoc()) {
    $artikels[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>List Artikel</title>
    <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png" />
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
    <!-- BOXICONS -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <!-- APP CSS -->
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
</head>

<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <div class="main-header">
            <div class="mobile-toggle" id="mobile-toggle">
                <i class="bx bx-menu-alt-right"></i>
            </div>
            <div class="main-title">Artikel</div>
        </div>
        <div class="main-content">
            <div class="content">
                <div class="row">
                    <div class="col-6">
                        <h3>Form Input Artikel</h3>
                        <form action="./function/addArtikel.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="judul">Judul Artikel:</label>
                                <input type="text" id="judul" name="judul" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="deskripsi_singkat">Deskripsi Singkat:</label>
                                <textarea id="deskripsi_singkat" name="deskripsi_singkat" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="deskripsi_panjang">Deskripsi Panjang:</label>
                                <textarea id="deskripsi_panjang" name="deskripsi_panjang" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="gambar">Gambar Artikel:</label>
                                <input type="file" id="gambar" name="gambar" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="tanggal">Tanggal:</label>
                                <input type="date" id="tanggal" name="tanggal" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Artikel</button>
                        </form>
                    </div>
                    <div class="col-6">
                        <h3>Form Edit Artikel</h3>
                        <form id="editForm" action="./function/editArtikel.php" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="edit_id" name="artikel_id">
                            <div class="form-group">
                                <label for="edit_judul">Judul Artikel:</label>
                                <input type="text" id="edit_judul" name="judul" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_deskripsi_singkat">Deskripsi Singkat:</label>
                                <textarea id="edit_deskripsi_singkat" name="deskripsi_singkat" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="edit_deskripsi_panjang">Deskripsi Panjang:</label>
                                <textarea id="edit_deskripsi_panjang" name="deskripsi_panjang" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="edit_gambar">Gambar Artikel:</label>
                                <input type="file" id="edit_gambar" name="gambar" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="edit_tanggal">Tanggal:</label>
                                <input type="date" id="edit_tanggal" name="tanggal" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Edit Artikel</button>
                        </form>
                    </div>
                </div>
                <h3>Tabel Artikel</h3>
                <table id="artikelTable">
                    <thead>
                        <tr>
                            <th>Artikel ID</th>
                            <th>Judul</th>
                            <th>Resume</th>
                            <th>Deskripsi</th>
                            <th>Tanggal Publikasi</th>
                            <th>Foto</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($artikels as $artikel) : ?>
                            <tr>
                                <td><?= $artikel['Artikel_ID'] ?></td>
                                <td><?= $artikel['Judul_Artikel'] ?></td>
                                <td><?= $artikel['Deskripsi_Singkat'] ?></td>
                                <td><?= $artikel['Deskripsi_Panjang'] ?></td>
                                <td><?= $artikel['Tanggal'] ?></td>
                                <td><img src="../Artikel/uploads/<?= $artikel['Gambar_Artikel'] ?>" alt="Foto Artikel" width="50" height="50"></td>
                                <td><button class="edit-btn" data-id="<?= $artikel['Artikel_ID'] ?>" data-judul="<?= $artikel['Judul_Artikel'] ?>" data-deskripsi_singkat="<?= $artikel['Deskripsi_Singkat'] ?>" data-deskripsi_panjang="<?= $artikel['Deskripsi_Panjang'] ?>" data-tanggal="<?= $artikel['Tanggal'] ?>">Edit</button></td>
                                <td><a href="./function/hapusArtikel.php?id=<?= $artikel['Artikel_ID'] ?>" onclick="return confirm('Are you sure you want to delete this article?')">Delete</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div id="paginationArtikel" class="pagination"></div>
            </div>
        </div>
    </div>

    <div class="overlay"></div>

    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="./js/app.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('.edit-btn').forEach(button => {
                button.addEventListener('click', function() {
                    const artikel_id = this.dataset.id;
                    const judul = this.dataset.judul;
                    const deskripsi_singkat = this.dataset.deskripsi_singkat;
                    const deskripsi_panjang = this.dataset.deskripsi_panjang;
                    const tanggal = this.dataset.tanggal;

                    document.getElementById('edit_id').value = artikel_id;
                    document.getElementById('edit_judul').value = judul;
                    document.getElementById('edit_deskripsi_singkat').value = deskripsi_singkat;
                    document.getElementById('edit_deskripsi_panjang').value = deskripsi_panjang;
                    document.getElementById('edit_tanggal').value = tanggal;
                });
            });

            setupTablePagination('artikelTable', 'paginationArtikel', 5);
        });
    </script>
</body>

</html>
