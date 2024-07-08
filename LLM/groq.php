<?php
require __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/functions.php';
include '../Config/koneksi.php';

use LucianoTonet\GroqPHP\Groq;

$dotenv = Dotenv\Dotenv::createUnsafeImmutable(__DIR__);
$dotenv->load();

$apiKey = getenv('GROQ_API_KEY');

session_start();

try {
    $tinggi = $berat = $tujuan = $riwayat = "";
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $tinggi = $_POST['height'];
        $berat = $_POST['weight'];
        $tujuan = $_POST['goal'];
        $riwayat = $_POST['disease_history'];
    }

    $menu = getMenuDetails($conn);
    $groq = new Groq($apiKey);
    $menuDetails = "Here are the menu details:\n";

    // Check if $menu is a MySQLi result set
    if ($menu != "") {
        while ($row = $menu->fetch_assoc()) {
            $menuDetails .= "ID: " . $row['Menu_ID'] . "\n";
            $menuDetails .= "Nama Menu: " . $row['Nama_Menu'] . "\n";
            $menuDetails .= "Kalori: " . $row['Kalori'] . "\n";
            $menuDetails .= "Tipe: " . $row['Tipe'] . "\n";
            $menuDetails .= "-----------------------------------\n";
        }
    } else {
        $menuDetails = "No menu details available.";
    }

    $calories = calculateCaloricNeeds($tinggi, $berat);

    $chatCompletion = $groq->chat()->completions()->create([
        'model'    => 'mixtral-8x7b-32768', // Ensure this model ID is correct
        'messages' => [
            [
                'role'    => 'system',
                'content' => 'Kamu adalah asisten yang memberikan rekomendasi nutrisi pribadi berdasarkan data pengguna dan menu yang tersedia serta merespon dalam bahasa indonesia. Anda akan memberikan 5 rekomendai menu yang cocok dan pola hidup sehat yang sesuai.' . $menuDetails
            ],
            [
                'role'    => 'user',
                'content' => 'Data saya: Tinggi: ' . $tinggi . ' cm, Berat: ' . $berat . ' kg, Tujuan: ' . $tujuan . ', Riwayat Penyakit: ' . $riwayat . '. Tolong berikan rekomendasi nutrisi pribadi, termasuk kebutuhan kalori harian, jenis makanan, dan menu yang cocok dari detail menu yang tersedia di atas. Saya butuh kalori sekitar ' . $calories . ' kkal.'
            ],
        ],
    ]);
    if (!is_null($chatCompletion)) {
        session_start();
        $_SESSION['resultGroq'] = $chatCompletion['choices'][0]['message']['content'];
        $_SESSION['flag'] = 1;
        header("Location: ../Menu/menu.php");
        die();
    } else {
        $_SESSION['resultGroq'] = "sumething wrong";
        $_SESSION['flag'] = 1;
        header("Location: ../Menu/menu.php");
        die();
    }
} catch (\Exception $e) {
    echo "Error: " . $e->getMessage();
}
