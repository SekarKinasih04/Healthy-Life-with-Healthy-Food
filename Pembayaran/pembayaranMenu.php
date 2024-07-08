<?php require_once '../Config/koneksi.php'; ?>
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: /Healthy/LoginAs/Login.php");
    exit;
}

// Retrieve the menu ID, name, and price from the URL parameters
$menuId = isset($_GET['menuId']) ? $_GET['menuId'] : '';
$menuName = isset($_GET['menuName']) ? urldecode($_GET['menuName']) : '';
$menuPrice = isset($_GET['menuPrice']) ? $_GET['menuPrice'] : '';


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
                    <form id="paymentForm" class="payment-form" action="simpanPembayaran.php" method="post">
                        <div class="payment-form-group">
                            <input type="text" placeholder=" " class="payment-form-control" id="alamatUser" name="alamatUser" required>
                            <label for="alamatUser" class="payment-form-label payment-form-label-required">Alamat Tujuan</label>
                        </div>
                        <div class="payment-form-group">
                            <label for="jam" class="payment-form-label payment-form-label-required">Jam Pengantaran</label>
                            <select name="jam" id="jam" class="payment-form-control" required>
                                <option value="">08:00:00</option>
                                <option value="">09:00:00</option>
                                <option value="">10:00:00</option>
                                <option value="">11:00:00</option>
                                <option value="">12:00:00</option>
                                <option value="">13:00:00</option>
                                <option value="">14:00:00</option>
                                <option value="">15:00:00</option>
                                <option value="">16:00:00</option>
                                <option value="">17:00:00</option>
                                <option value="">18:00:00</option>
                                <option value="">19:00:00</option>
                                <option value="">20:00:00</option>
                                <option value="">21:00:00</option>
                            </select>
                        </div>
                        <div class="payment-form-group-flex">
                            <div class="payment-form-group">
                                <input type="date" placeholder=" " class="payment-form-control" id="startDate" name="startDate" required>
                                <label for="startDate" class="payment-form-label payment-form-label-required">Mulai Berlangganan</label>
                            </div>
                            <div class="payment-form-group">
                                <input type="date" placeholder=" " class="payment-form-control" id="endDate" name="endDate" required>
                                <label for="endDate" class="payment-form-label payment-form-label-required">Akhir Berlangganan</label>
                            </div>
                        </div>
                        <input type="hidden" id="menuId" name="menuId" value="<?php echo $menuId; ?>">
                        <input type="hidden" id="menuName" name="menuName" value="<?php echo $menuName; ?>">
                        <input type="hidden" id="menuPrice" name="menuPrice" value="<?php echo $menuPrice; ?>">
                        <input type="hidden" id="totalPrice" name="totalPrice">
                        <button id="calculate" type="button" class="payment-form-submit-button"><i class="ri-wallet-line"></i> Simpan</button>
                    </form>

                    <div class="payment-content">
                        <div class="payment-body">
                            <div class="payment-plan">
                                <div class="payment-plan-type">foto</div>
                                <div class="payment-plan-info">
                                    <div class="payment-plan-info-name" id="menuType">Diabetes</div>
                                    <div class="payment-plan-info-price" id="menuNameDisplay"><?php echo $menuName; ?></div>
                                </div>
                                <a href="#" class="payment-plan-change">Ubah Pesanan</a>
                            </div>
                            <div class="payment-summary">
                                <div class="payment-summary-item">
                                    <div class="payment-summary-name" id="menuNameSummary"><?php echo $menuName; ?></div>
                                    <div class="payment-summary-price" id="menuPriceDisplay"><?php echo number_format($menuPrice, 2, ',', '.'); ?></div>
                                </div>
                                <div class="payment-summary-divider"></div>
                                <div class="payment-summary-item payment-summary-total">
                                    <div class="payment-summary-name">Total</div>
                                    <div class="payment-summary-price" id="totalPriceDisplay"><?php echo number_format($menuPrice, 2, ',', '.'); ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="payment-right">
                    <form action="simpanPembayaran.php" method="post" class="payment-form">
                        <h1 class="payment-title">Payment Details</h1>
                        <div class="payment-form-group" id="qrCode" style="display: none;">
                            <img src="images/qr.jpg" height="300px" width="300px" alt="">
                        </div>
                        <input type="hidden" name="alamatUser" id="hiddenAlamatUser">
                        <input type="hidden" name="jam" id="hiddenJam">
                        <input type="hidden" name="startDate" id="hiddenStartDate">
                        <input type="hidden" name="endDate" id="hiddenEndDate">
                        <input type="hidden" name="menuId" id="hiddenMenuId" value="<?php echo $menuId; ?>">
                        <input type="hidden" name="menuName" id="hiddenMenuName" value="<?php echo $menuName; ?>">
                        <input type="hidden" name="menuPrice" id="hiddenMenuPrice" value="<?php echo $menuPrice; ?>">
                        <input type="hidden" name="totalPrice" id="hiddenTotalPrice">
                        <button type="submit" class="payment-form-submit-button">
                            <i class="ri-wallet-line"></i> Pay
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script>
        document.getElementById('calculate').addEventListener('click', function () {
            const alamatUser = document.getElementById('alamatUser').value;
            const jam = document.getElementById('jam').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const menuPrice = parseFloat(document.getElementById('menuPrice').value);
            
            const start = new Date(startDate);
            const end = new Date(endDate);
            const timeDiff = end.getTime() - start.getTime();
            const daysDiff = timeDiff / (1000 * 3600 * 24) + 1;
            const totalPrice = daysDiff * menuPrice;

            document.getElementById('totalPrice').value = totalPrice;
            document.getElementById('totalPriceDisplay').textContent = totalPrice.toFixed(2);

            document.getElementById('hiddenAlamatUser').value = alamatUser;
            document.getElementById('hiddenJam').value = jam;
            document.getElementById('hiddenStartDate').value = startDate;
            document.getElementById('hiddenEndDate').value = endDate;
            document.getElementById('hiddenMenuId').value = document.getElementById('menuId').value;
            document.getElementById('hiddenMenuName').value = document.getElementById('menuName').value;
            document.getElementById('hiddenMenuPrice').value = menuPrice;
            document.getElementById('hiddenTotalPrice').value = totalPrice.toFixed(2);

            document.getElementById('qrCode').style.display = 'block';
        });

        function redirectToMenu() {
            window.location.href = '../Order/Order.php';
        }
    </script>
</body>
</html>
