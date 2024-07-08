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

// Query data event
$sql_event = "SELECT * FROM event";
$result_event = $conn->query($sql_event);

// Mengolah data untuk ditampilkan
$events = [];

while ($row = $result_event->fetch_assoc()) {
    $events[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event Management</title>
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
            <div class="main-title">Event</div>
        </div>
        <div class="main-content">
            <div class="content">
                <div class="row">
                    <div class="col-6">
                        <h3>Form Input Event</h3>
                        <form action=".\function\addEvent.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="nama_event">Nama Event:</label>
                                <input type="text" id="nama_event" name="nama_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="kota_event">Kota Event:</label>
                                <select id="kota_event" name="kota_event" class="form-control" required>
                                    <option value="Jogja">Jogja</option>
                                    <option value="Sleman">Sleman</option>
                                    <option value="Bantul">Bantul</option>
                                    <option value="Kulon Progo">Kulon Progo</option>
                                    <option value="Gunungkidul">Gunungkidul</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="harga_tiket">Harga Tiket:</label>
                                <input type="number" id="harga_tiket" name="harga_tiket" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="lokasi_event">Lokasi Event:</label>
                                <input type="text" id="lokasi_event" name="lokasi_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="tanggal_event">Tanggal Event:</label>
                                <input type="date" id="tanggal_event" name="tanggal_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="jam_event">Jam Event:</label>
                                <input type="time" id="jam_event" name="jam_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="deskripsi_event">Deskripsi Event:</label>
                                <textarea id="deskripsi_event" name="deskripsi_event" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="gambar_event">Gambar Event:</label>
                                <input type="file" id="gambar_event" name="gambar_event" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Event</button>
                        </form>
                    </div>
                    <div class="col-6">
                        <h3>Form Edit Event</h3>
                        <form id="editForm" action="./function/edit_event.php" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="edit_id" name="event_id">
                            <div class="form-group">
                                <label for="edit_nama_event">Nama Event:</label>
                                <input type="text" id="edit_nama_event" name="nama_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_kota_event">Kota Event:</label>
                                <select id="edit_kota_event" name="kota_event" class="form-control" required>
                                    <option value="Jogja">Jogja</option>
                                    <option value="Sleman">Sleman</option>
                                    <option value="Bantul">Bantul</option>
                                    <option value="Kulon Progo">Kulon Progo</option>
                                    <option value="Gunungkidul">Gunungkidul</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="edit_harga_tiket">Harga Tiket:</label>
                                <input type="number" id="edit_harga_tiket" name="harga_tiket" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_lokasi_event">Lokasi Event:</label>
                                <input type="text" id="edit_lokasi_event" name="lokasi_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_tanggal_event">Tanggal Event:</label>
                                <input type="date" id="edit_tanggal_event" name="tanggal_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_jam_event">Jam Event:</label>
                                <input type="time" id="edit_jam_event" name="jam_event" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="edit_deskripsi_event">Deskripsi Event:</label>
                                <textarea id="edit_deskripsi_event" name="deskripsi_event" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="edit_gambar_event">Gambar Event:</label>
                                <input type="file" id="edit_gambar_event" name="gambar_event" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">Edit Event</button>
                        </form>
                    </div>
                </div>
                <h3>Event Table</h3>
                <table id="eventTable">
                    <thead>
                        <tr>
                            <th>Event ID</th>
                            <th>Nama</th>
                            <th>Deskripsi</th>
                            <th>Tanggal</th>
                            <th>Jam</th>
                            <th>Kota Kabupaten</th>
                            <th>Lokasi Event</th>
                            <th>Gambar</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($events as $event) : ?>
                            <tr>
                                <td><?= $event['Event_ID'] ?></td>
                                <td><?= $event['Nama_Event'] ?></td>
                                <td><?= $event['Deskripsi_Event'] ?></td>
                                <td><?= $event['Tanggal_Event'] ?></td>
                                <td><?= $event['Jam_Event'] ?></td>
                                <td><?= $event['Kota_Event'] ?></td>
                                <td><?= $event['Lokasi_Event'] ?></td>
                                <td><img src="../Event/uploads/<?= $event['Gambar_Event'] ?>" alt="Event Image" width="50" height="50"></td>
                                <td><button class="edit-btn" data-id="<?= $event['Event_ID'] ?>" data-nama_event="<?= $event['Nama_Event'] ?>" data-kota_event="<?= $event['Kota_Event'] ?>" data-harga_tiket="<?= $event['Harga_Tiket'] ?>" data-lokasi_event="<?= $event['Lokasi_Event'] ?>" data-tanggal_event="<?= $event['Tanggal_Event'] ?>" data-jam_event="<?= $event['Jam_Event'] ?>" data-deskripsi_event="<?= $event['Deskripsi_Event'] ?>">Edit</button></td>
                                <td><a href="./function/hapus_event.php?id=<?= $event['Event_ID'] ?>" onclick="return confirm('Are you sure you want to delete this event?')">Delete</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <div id="paginationEvent" class="pagination"></div>
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
                    const event_id = this.dataset.id;
                    const nama_event = this.dataset.nama_event;
                    const kota_event = this.dataset.kota_event;
                    const harga_tiket = this.dataset.harga_tiket;
                    const lokasi_event = this.dataset.lokasi_event;
                    const tanggal_event = this.dataset.tanggal_event;
                    const jam_event = this.dataset.jam_event;
                    const deskripsi_event = this.dataset.deskripsi_event;

                    document.getElementById('edit_id').value = event_id;
                    document.getElementById('edit_nama_event').value = nama_event;
                    document.getElementById('edit_kota_event').value = kota_event;
                    document.getElementById('edit_harga_tiket').value = harga_tiket;
                    document.getElementById('edit_lokasi_event').value = lokasi_event;
                    document.getElementById('edit_tanggal_event').value = tanggal_event;
                    document.getElementById('edit_jam_event').value = jam_event;
                    document.getElementById('edit_deskripsi_event').value = deskripsi_event;
                });
            });

            setupTablePagination('eventTable', 'paginationEvent', 5);
        });
    </script>
</body>

</html>
