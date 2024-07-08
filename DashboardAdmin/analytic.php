<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Penjualan</title>
    <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet" />
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="./css/grid.css" />
    <link rel="stylesheet" href="./css/app.css" />
    <link rel="stylesheet" href="/Menu/style.css" />
</head>

<body>
    <?php include 'sidebar.php'; ?>
    <div class="main">
        <div class="main-header">
            <div class="mobile-toggle" id="mobile-toggle">
                <i class="bx bx-menu-alt-right"></i>
            </div>
            <div class="main-title">Analisis</div>
        </div>
        <div class="main-content">
            <div class="content">
               <div class="form-title text-center col-12">
                    <h2 class="h2-title">Report Penjualan</h2>
                </div>
                <form action="../LLM_2/groq.php" method="post" enctype="multipart/form-data">
                    <div class="form-group col-6">
                        <label for="Tanggal Mulai Report Penjualan">Tanggal Mulai Report</label>
                        <input type="date" id="mulai" name="mulai" placeholder="Tanggal Mulai Report" required>
                    </div>
                    <div class="form-group col-6">
                        <label for="Tanggal Akhir Report Penjualan">Tanggal Akhir Report</label>
                        <input type="date" id="selesai" name="selesai" placeholder="Tanggal Akhir Report" required>
                    </div>
                    <div class="form-group text-center col-6">
                        <button type="submit" name="report-analisis" class="btn btn-primary"> Get Report </button>
                    </div>
                </form>
                <div>
                    <?php
                    if (isset($_SESSION['resultGroq'])) {
                        echo '<div class="alert alert-warning mt-4">' . nl2br(htmlspecialchars($_SESSION['resultGroq'])) . '</div>';
                        unset($_SESSION['resultGroq']);
                    }
                    ?>
                </div>
            </div>
            <div class="report-output">
                <?php
                if (isset($result)) {
                    echo '<h3>Analisis Data:</h3>';
                    echo '<pre>' . json_encode($result, JSON_PRETTY_PRINT) . '</pre>';
                }
                ?>
            </div>
        </div>
    </div>
    <div class="overlay"></div>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="./js/app.js"></script>
</body>

</html>
