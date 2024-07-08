<?php require_once '../Config/koneksi.php'; ?>
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/Login.php");
    exit;
}

// Retrieve the event ID from the URL parameters
$eventId = isset($_GET['event_id']) ? $_GET['event_id'] : '';

// Check if user ID is set in the session
if (!isset($_SESSION['id'])) {
    die("User ID is not set in session.");
}

// Fetch event details from the database
$eventName = '';
$eventPrice = '';
$eventLocation = '';
$eventImage = '';
if ($eventId) {
    $stmt = $conn->prepare("SELECT Nama_Event, Harga_Tiket, Lokasi_Event, Gambar_Event FROM event WHERE Event_ID = ?");
    $stmt->bind_param("i", $eventId);
    $stmt->execute();
    $stmt->bind_result($eventName, $eventPrice, $eventLocation, $eventImage);
    $stmt->fetch();
    $stmt->close();
}

// Debugging: Print session variables and event details
echo "<pre>";
print_r($_SESSION);
echo "</pre>";

echo "<p>Event ID: $eventId</p>";
echo "<p>Event Name: $eventName</p>";
echo "<p>Event Price: $eventPrice</p>";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="tailwindcss-colors.css">
    <link rel="stylesheet" href="style.css">
    <title>Payment Page</title>
</head>
<body>
    <section class="payment-section">
        <div class="container">
            <div class="payment-wrapper">
                <div class="payment-left">
                    <div class="payment-header">
                        <div class="payment-header-icon"><i class="ri-flashlight-fill"></i></div>
                        <div class="payment-header-title">Order Summary</div>
                        <p class="payment-header-description">Lengkapi form berikut lalu tekan simpan maka akan muncul barcode pembayaran</p>
                    </div>
                    <form id="paymentForm" class="payment-form" onsubmit="event.preventDefault(); calculateTotalPrice();">
                        <input type="hidden" name="event_id" value="<?php echo htmlspecialchars($eventId); ?>">
                        <div class="payment-form-group">
                            <input type="email" placeholder=" " class="payment-form-control" id="email" name="email" required>
                            <label for="email" class="payment-form-label payment-form-label-required">Email</label>
                        </div>
                        <div class="payment-form-group">
                            <input type="number" placeholder=" " class="payment-form-control" id="jumlah_tiket" name="jumlah_tiket" required>
                            <label for="jumlah_tiket" class="payment-form-label payment-form-label-required">Jumlah Tiket</label>
                        </div>
                        <input type="hidden" id="tanggal_pembelian" name="tanggal_pembelian">
                        <button id="simpan" type="submit" class="payment-form-submit-button"><i class="ri-wallet-line"></i> Simpan</button>
                    </form>
                    <div class="payment-content">
                        <div class="payment-body">
                            <div class="payment-plan">
                                <div class="payment-plan-type"><img src="../Event/uploads/<?php echo $eventImage; ?>" alt="Event image" width="40px" height="40px"></div>
                                <div class="payment-plan-info">
                                    <div class="payment-plan-info-name"><?php echo $eventLocation; ?></div>
                                    <div class="payment-plan-info-price"><?php echo $eventName; ?></div>
                                </div>
                                <a href="#" class="payment-plan-change">Ubah Pesanan</a>
                            </div>
                            <div class="payment-summary">
                                <div class="payment-summary-item">
                                    <div class="payment-summary-name"><?php echo $eventName; ?></div>
                                    <div class="payment-summary-price"><?php echo number_format($eventPrice, 2, ',', '.'); ?></div>
                                </div>
                                <div class="payment-summary-divider"></div>
                                <div class="payment-summary-item payment-summary-total">
                                    <div class="payment-summary-name">Total</div>
                                    <div class="payment-summary-price" id="totalPriceDisplay"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="payment-right">
                    <form id="payForm" action="simpanPembayaranEvent.php" method="post" class="payment-form">
                        <h1 class="payment-title">Payment Details</h1>
                        <div class="payment-form-group" id="qrCode" style="display: none;">
                            <img src="images/qr.jpg" height="300px" width="300px" alt="">
                        </div>
                        <input type="hidden" name="email" id="hiddenEmail">
                        <input type="hidden" name="jumlah_tiket" id="hiddenJumlahTiket">
                        <input type="hidden" name="total_price" id="hiddenTotalPrice">
                        <input type="hidden" name="event_id" value="<?php echo htmlspecialchars($eventId); ?>">
                        <input type="hidden" name="tanggal_pembelian" id="hiddenTanggalPembelian">
                        <button type="button" class="payment-form-submit-button" onclick="submitPayForm()">
                            <i class="ri-wallet-line"></i> Pay
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script>
        function calculateTotalPrice() {
            const jumlahTiket = parseInt(document.getElementById('jumlah_tiket').value);
            const eventPrice = <?php echo $eventPrice; ?>;
            const totalPrice = jumlahTiket * eventPrice;
            const tanggalPembelian = new Date().toISOString().split('T')[0];

            document.getElementById('totalPriceDisplay').textContent = totalPrice.toFixed(2);
            document.getElementById('hiddenTotalPrice').value = totalPrice.toFixed(2);
            document.getElementById('hiddenEmail').value = document.getElementById('email').value;
            document.getElementById('hiddenJumlahTiket').value = jumlahTiket;
            document.getElementById('hiddenTanggalPembelian').value = tanggalPembelian;

            document.getElementById('qrCode').style.display = 'block';
        }

        function submitPayForm() {
            document.getElementById('payForm').submit();
        }
    </script>
</body>
</html>
