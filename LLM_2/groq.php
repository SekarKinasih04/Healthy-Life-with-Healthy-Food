<?php
require __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/functions.php';
include '../Config/koneksi.php';

$startDate = $_POST['mulai'];
$endDate = $_POST['selesai'];

$data_input = fetchDataByDateRange($startDate, $endDate);
$monthlySubscriptions = fetchMonthlySubscriptionCount($startDate, $endDate);
$monthlyRevenue = fetchMonthlyRevenue($startDate, $endDate);
$monthlyTipe = fetchMonthlyTipe($startDate, $endDate);
$monthlyWilayah = fetchMonthlyWilayah($startDate, $endDate);
$monthlyTopMenu = fetchMonthlyTopMenu($startDate, $endDate);
$monthlyTopUMKM = fetchMonthlyTopUMKM($startDate, $endDate);
$priceRangeAnalysis = fetchPriceRangeAnalysis($startDate, $endDate);

use LucianoTonet\GroqPHP\Groq;

$dotenv = Dotenv\Dotenv::createUnsafeImmutable(__DIR__);
$dotenv->load();

$apiKey = getenv('GROQ_API_KEY');

session_start();
try {
    $groq = new Groq($apiKey);
    $chatCompletion = $groq->chat()->completions()->create([
        'model'    => 'llama3-8b-8192',
        'messages' => [
            [
                'role'    => 'system',
                'content' => 'Sistem ini akan bekerja sebagai analis laporan profesional, memberikan penjelasan mendetail mengenai data yang tersedia. Analisis akan mencakup tren pertumbuhan penjualan, kinerja produk teratas, segmentasi pasar, efektivitas kampanye pemasaran, kepuasan pelanggan, analisis kompetitor, optimalisasi rantai pasokan, dan prediksi penjualan masa depan. Setiap poin akan dianalisis secara komprehensif dengan penjelasan yang fokus pada wawasan berguna bagi perusahaan. Hasil analisis akan disampaikan dalam bahasa Indonesia dan bebas dari atribut format seperti bold atau italic, serta setiap poin akan dijelaskan dalam 3-4 kalimat yang jelas dan profesional.'
            ],
            [
                'role'    => 'user',
                'content' => json_encode([
                    'data' => $data_input,
                    'subscriptions' => $monthlySubscriptions,
                    'revenue' => $monthlyRevenue,
                    'tipe' => $monthlyTipe,
                    'wilayah' => $monthlyWilayah,
                    'topMenu' => $monthlyTopMenu,
                    'topUMKM' => $monthlyTopUMKM,
                    'priceRange' => $priceRangeAnalysis
                ])
            ],
        ],
        'max_tokens' => 32768,
    ]);

    if (!is_null($chatCompletion)) {
        $_SESSION['resultGroq'] = $chatCompletion['choices'][0]['message']['content'];
        header("Location: ../DashboardAdmin/analytic.php");
        die();
    } else {
        $_SESSION['resultGroq'] = "Something went wrong.";
        header("Location: ../DashboardAdmin/analytic.php");
        die();
    }
} catch (\Exception $e) {
    echo "Error: " . $e->getMessage();
}
