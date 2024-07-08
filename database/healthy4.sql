-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2024 pada 09.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthy4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Email`, `Password`, `Username`) VALUES
(1, '22523071@gmail.com', '123', '22523071');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `Artikel_ID` int(11) NOT NULL,
  `Judul_Artikel` varchar(100) DEFAULT NULL,
  `Deskripsi_Singkat` text DEFAULT NULL,
  `Deskripsi_Panjang` text DEFAULT NULL,
  `Gambar_Artikel` text DEFAULT NULL,
  `Tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`Artikel_ID`, `Judul_Artikel`, `Deskripsi_Singkat`, `Deskripsi_Panjang`, `Gambar_Artikel`, `Tanggal`) VALUES
(1, 'Minuman Energi yang bisa Anda buat di rumah', 'Minuman energi alami yang dapat dibuat dengan bahan-bahan sederhana. Minuman ini cocok untuk meningkatkan energi Anda sepanjang hari. Rasanya segar dan mudah dibuat.', 'Anda bisa membuat minuman energi sendiri di rumah dengan bahan-bahan yang mudah ditemukan di dapur Anda. Salah satu resep yang sederhana adalah dengan mencampurkan air kelapa, madu, dan perasan lemon.\n\nAir kelapa mengandung elektrolit yang baik untuk tubuh, sementara madu memberikan tambahan energi alami dan lemon membantu mempercepat metabolisme. Minuman ini tidak hanya menyegarkan tetapi juga menyehatkan, terutama saat Anda membutuhkannya untuk memulai hari atau setelah berolahraga.\n\nSelain itu, Anda juga bisa menambahkan jahe atau kunyit untuk menambah rasa dan manfaat kesehatan lainnya. Jahe dikenal dapat membantu pencernaan dan mengurangi peradangan, sementara kunyit memiliki sifat antioksidan dan anti-inflamasi yang kuat.', 'blog1.jpg', '2023-06-10'),
(2, 'Probiotik yang Bermanfaat pada Tempe', 'Tempe sebagai sumber probiotik alami yang baik untuk kesehatan pencernaan. Makanan fermentasi ini kaya akan nutrisi. Mengonsumsi tempe secara rutin dapat meningkatkan kesehatan.', 'Tempe merupakan salah satu sumber probiotik alami yang sangat baik untuk kesehatan pencernaan. Proses fermentasi tempe menghasilkan bakteri baik yang membantu menjaga keseimbangan mikroflora usus.\n\nMengonsumsi tempe secara rutin dapat meningkatkan sistem kekebalan tubuh, membantu pencernaan, dan mencegah masalah-masalah pencernaan seperti diare dan sembelit. Tempe juga kaya akan protein nabati, serat, vitamin, dan mineral yang penting untuk kesehatan tubuh secara keseluruhan.\n\nTempe dapat diolah menjadi berbagai macam masakan, mulai dari tumisan, gorengan, hingga campuran dalam salad. Rasanya yang lezat dan teksturnya yang kenyal menjadikannya makanan yang digemari banyak orang.', 'blog2.jpg', '2023-07-20'),
(3, 'Manfaat Teh Hijau untuk Kesehatan', 'Teh hijau memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Minuman ini kaya akan antioksidan. Mengonsumsi teh hijau secara rutin dapat menurunkan risiko berbagai penyakit.', 'Teh hijau dikenal sebagai salah satu minuman yang memiliki banyak manfaat kesehatan. Kandungan antioksidan yang tinggi dalam teh hijau dapat membantu melawan radikal bebas, mengurangi risiko kanker, dan memperlambat penuaan.\n\nSelain itu, teh hijau juga dapat membantu menurunkan berat badan dengan meningkatkan metabolisme dan membakar lemak. Minum teh hijau secara rutin juga dapat meningkatkan kesehatan jantung dan menurunkan kadar kolesterol. Polifenol dalam teh hijau membantu melindungi sel-sel tubuh dari kerusakan.\n\nMinum teh hijau juga dapat memberikan efek menenangkan, yang sangat baik untuk mengurangi stres dan meningkatkan konsentrasi. Oleh karena itu, menjadikan teh hijau sebagai bagian dari rutinitas harian bisa memberikan banyak manfaat positif untuk kesehatan Anda.', 'blog3.jpg', '2023-08-15'),
(4, 'Tips Diet Sehat dan Seimbang', 'Tips untuk menjalani diet yang sehat dan seimbang agar tubuh tetap fit. Mengonsumsi makanan bergizi penting untuk kesehatan. Ikuti panduan ini untuk diet yang lebih baik.', 'Menjalani diet yang sehat dan seimbang penting untuk menjaga kesehatan tubuh. Beberapa tips yang dapat diikuti antara lain adalah mengonsumsi makanan yang kaya akan serat seperti buah dan sayuran, memilih sumber protein yang rendah lemak seperti ikan dan kacang-kacangan, serta menghindari makanan yang mengandung gula dan lemak jenuh tinggi.\n\nSelain itu, penting untuk tetap terhidrasi dengan minum air yang cukup dan mengatur porsi makan yang seimbang. Menghindari makanan olahan dan memilih makanan segar juga bisa membantu meningkatkan kualitas diet Anda.\n\nMengatur jadwal makan yang teratur dan tidak melewatkan sarapan juga penting untuk menjaga energi sepanjang hari. Berolahraga secara rutin dan mendapatkan istirahat yang cukup juga merupakan bagian dari gaya hidup sehat yang seimbang.', 'blog4.jpeg', '2023-09-22'),
(5, 'Cara Mengelola Stres dengan Efektif', 'Teknik-teknik untuk mengelola stres agar tidak berdampak negatif pada kesehatan. Penting untuk mengetahui cara mengatasi stres. Terapkan metode ini untuk hidup lebih tenang.', 'Stres merupakan bagian dari kehidupan sehari-hari, namun penting untuk mengetahui cara mengelola stres agar tidak berdampak negatif pada kesehatan. Salah satu teknik yang efektif adalah dengan melakukan olahraga secara rutin, seperti yoga atau berjalan kaki. Aktivitas fisik membantu melepaskan endorfin yang dapat meningkatkan suasana hati dan mengurangi stres.\n\nMeditasi dan latihan pernapasan juga dapat membantu menenangkan pikiran dan mengurangi kecemasan. Luangkan waktu beberapa menit setiap hari untuk duduk tenang dan fokus pada pernapasan Anda.\n\nMengelola waktu dengan baik dan menetapkan prioritas juga penting untuk menghindari kelebihan beban kerja yang dapat menyebabkan stres. Pastikan Anda memiliki waktu untuk bersantai dan melakukan aktivitas yang Anda nikmati.', 'blog5.jpg', '2023-10-05'),
(7, 'Resep Smoothie Sehat dan Lezat', 'Smoothie sehat dan lezat yang bisa Anda buat di rumah. Resep ini mudah diikuti dan menggunakan bahan-bahan alami. Cocok untuk sarapan atau camilan sehat.', 'Smoothie adalah minuman sehat yang mudah dibuat dan sangat lezat. Anda bisa membuat berbagai macam smoothie dengan kombinasi buah-buahan dan sayuran segar. Salah satu resep smoothie sehat yang bisa Anda coba adalah smoothie hijau yang terbuat dari bayam, pisang, dan jus apel.\n\nUntuk membuat smoothie ini, cukup campurkan segenggam bayam, satu buah pisang, dan satu cangkir jus apel ke dalam blender. Tambahkan es batu jika Anda ingin smoothie yang lebih segar. Blender hingga halus dan tuang ke dalam gelas. Smoothie ini tidak hanya enak tetapi juga kaya akan vitamin dan mineral yang baik untuk kesehatan.\n\nAnda juga bisa menambahkan yogurt atau susu almond untuk mendapatkan tekstur yang lebih kental dan rasa yang lebih kaya. Jangan lupa untuk mencoba berbagai kombinasi buah dan sayuran lainnya untuk mendapatkan variasi rasa yang berbeda setiap hari. Smoothie adalah cara yang sempurna untuk memulai hari dengan penuh energi dan nutrisi.', 'blog7.jpg', '2023-12-01'),
(8, 'Rahasia Awet Muda dengan Pola Hidup Sehat', 'Pola hidup sehat dapat membantu Anda tetap awet muda. Tips dan trik untuk menjaga kesehatan dan penampilan. Terapkan pola hidup ini untuk hasil yang optimal.', 'Menjaga penampilan agar tetap awet muda tidak hanya bergantung pada produk kecantikan, tetapi juga pola hidup sehat. Salah satu rahasia awet muda adalah dengan mengonsumsi makanan yang kaya antioksidan seperti buah beri, sayuran hijau, dan kacang-kacangan. Antioksidan membantu melawan radikal bebas yang dapat merusak sel-sel kulit.\n\nSelain itu, rutin berolahraga juga sangat penting. Olahraga tidak hanya menjaga tubuh tetap bugar, tetapi juga membantu meningkatkan sirkulasi darah yang membawa nutrisi ke seluruh tubuh, termasuk kulit. Jenis olahraga seperti jogging, bersepeda, atau yoga dapat membantu Anda tetap aktif dan sehat.\n\nJangan lupa untuk mendapatkan tidur yang cukup setiap malam. Tidur yang cukup membantu tubuh Anda memperbaiki diri dan meregenerasi sel-sel kulit. Menghindari stres dan melakukan kegiatan yang menyenangkan juga dapat membantu menjaga kesehatan mental, yang pada gilirannya dapat mempengaruhi penampilan Anda. Dengan menjalani pola hidup sehat, Anda dapat menikmati penampilan yang awet muda dan kesehatan yang optimal.', 'blog8.jpeg', '2024-01-15'),
(9, 'Cara Meningkatkan Imunitas Tubuh', 'Tips untuk meningkatkan imunitas tubuh agar tidak mudah sakit. Mengonsumsi makanan sehat dan olahraga rutin dapat membantu. Cobalah cara-cara ini untuk hasil terbaik.', 'Meningkatkan imunitas tubuh sangat penting untuk melindungi diri dari berbagai penyakit. Salah satu cara yang efektif adalah dengan mengonsumsi makanan yang kaya akan vitamin C, seperti jeruk, kiwi, dan stroberi. Vitamin C dikenal dapat meningkatkan produksi sel darah putih yang membantu melawan infeksi.\n\nSelain itu, menjaga pola makan yang seimbang dengan mengonsumsi berbagai macam nutrisi juga penting. Protein, vitamin D, dan zink adalah nutrisi yang penting untuk sistem kekebalan tubuh. Anda bisa mendapatkan protein dari daging, ikan, dan kacang-kacangan, sementara vitamin D bisa didapatkan dari paparan sinar matahari dan makanan seperti ikan berlemak.\n\nOlahraga secara rutin juga dapat meningkatkan imunitas tubuh. Aktivitas fisik membantu meningkatkan sirkulasi darah, yang memungkinkan sel-sel kekebalan bergerak lebih bebas dan bekerja lebih efisien. Tidur yang cukup dan mengelola stres juga sangat penting untuk menjaga sistem kekebalan tubuh tetap kuat. Dengan menjalani gaya hidup sehat, Anda dapat meningkatkan imunitas tubuh dan menjaga kesehatan secara keseluruhan.', 'blog9.jpeg', '2024-02-20'),
(10, 'Olahraga yang Tepat untuk Menurunkan Berat Badan', 'Jenis olahraga yang efektif untuk menurunkan berat badan. Pilih olahraga yang Anda sukai untuk hasil terbaik. Konsistensi adalah kunci keberhasilan.', 'Menurunkan berat badan dapat dicapai dengan kombinasi diet sehat dan olahraga yang tepat. Beberapa jenis olahraga yang efektif untuk menurunkan berat badan antara lain adalah kardio, latihan beban, dan HIIT (High-Intensity Interval Training).\n\nOlahraga kardio seperti berlari, bersepeda, atau berenang sangat baik untuk membakar kalori dan meningkatkan kesehatan jantung. Melakukan kardio setidaknya 30 menit setiap hari dapat membantu Anda mencapai tujuan penurunan berat badan Anda. Latihan beban juga penting karena membantu membangun otot yang dapat meningkatkan metabolisme tubuh.\n\nHIIT adalah bentuk latihan yang sangat efektif untuk membakar kalori dalam waktu singkat. Latihan ini melibatkan periode intensitas tinggi yang diikuti dengan periode istirahat singkat. HIIT dapat dilakukan dengan berbagai jenis latihan, seperti lari, lompat tali, atau latihan kekuatan. Konsistensi dalam berolahraga dan menjaga pola makan yang seimbang adalah kunci keberhasilan dalam menurunkan berat badan.', 'blog10.jpg', '2024-03-05'),
(11, 'Makanan Super untuk Menjaga Kesehatan Jantung', 'Makanan super yang baik untuk kesehatan jantung Anda. Konsumsi makanan ini secara rutin. Makanan ini kaya akan nutrisi yang mendukung kesehatan jantung.', 'Menjaga kesehatan jantung sangat penting untuk kesehatan secara keseluruhan. Ada beberapa makanan super yang dapat membantu menjaga kesehatan jantung Anda. Salah satunya adalah ikan berlemak seperti salmon dan tuna, yang kaya akan omega-3. Omega-3 dikenal dapat menurunkan kadar kolesterol dan mengurangi risiko penyakit jantung.\n\nBuah beri seperti stroberi, blueberry, dan raspberry juga sangat baik untuk jantung. Buah-buahan ini kaya akan antioksidan yang dapat membantu melawan peradangan dan menjaga kesehatan pembuluh darah. Selain itu, sayuran hijau seperti bayam dan kale mengandung banyak vitamin, mineral, dan serat yang baik untuk kesehatan jantung.\n\nMengonsumsi kacang-kacangan seperti almond dan walnut juga dapat memberikan manfaat yang besar. Kacang-kacangan ini mengandung lemak sehat, serat, dan protein yang baik untuk jantung. Menjaga pola makan yang sehat dengan memasukkan makanan-makanan super ini ke dalam diet harian Anda dapat membantu menjaga kesehatan jantung dan meningkatkan kualitas hidup Anda.', 'blog1.jpg', '2024-03-25'),
(12, 'Manfaat Meditasi untuk Kesehatan', 'Meditasi memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Praktik ini membantu mengurangi stres dan meningkatkan kesejahteraan. Cobalah meditasi untuk hidup lebih tenang.', 'Meditasi adalah praktik yang telah lama dikenal memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Salah satu manfaat utama meditasi adalah kemampuannya untuk mengurangi stres. Dengan meluangkan waktu beberapa menit setiap hari untuk duduk tenang dan fokus pada pernapasan, Anda dapat merasakan penurunan tingkat stres dan kecemasan.\n\nMeditasi juga dapat membantu meningkatkan konsentrasi dan fokus. Dengan berlatih meditasi secara teratur, Anda dapat melatih pikiran untuk tetap tenang dan terfokus pada tugas-tugas yang ada. Ini sangat berguna dalam kehidupan sehari-hari, terutama di lingkungan yang penuh tekanan.\n\nSelain itu, meditasi juga dapat membantu meningkatkan kesehatan fisik. Beberapa penelitian menunjukkan bahwa meditasi dapat menurunkan tekanan darah, meningkatkan sistem kekebalan tubuh, dan bahkan membantu mengurangi gejala penyakit kronis seperti nyeri kronis dan insomnia. Dengan begitu banyak manfaat yang ditawarkan, meditasi adalah praktik yang layak dicoba untuk meningkatkan kesehatan dan kesejahteraan secara keseluruhan.', 'blog2.jpg', '2024-04-10'),
(13, 'Cara Mengatasi Insomnia dengan Alami', 'Tips alami untuk mengatasi insomnia dan mendapatkan tidur yang nyenyak. Menggunakan metode alami untuk tidur lebih baik. Cobalah cara-cara ini untuk hasil yang optimal.', 'Insomnia adalah masalah umum yang dapat mempengaruhi kualitas hidup seseorang. Ada beberapa cara alami yang dapat membantu Anda mengatasi insomnia dan mendapatkan tidur yang nyenyak. Salah satu cara yang efektif adalah dengan menjaga rutinitas tidur yang konsisten. Cobalah untuk tidur dan bangun pada waktu yang sama setiap hari, bahkan pada akhir pekan.\n\nMenghindari kafein dan alkohol sebelum tidur juga penting. Kedua zat ini dapat mengganggu pola tidur Anda dan membuat Anda sulit tidur. Sebagai gantinya, Anda bisa mencoba minum teh herbal yang menenangkan, seperti chamomile atau lavender, sebelum tidur.\n\nSelain itu, menciptakan lingkungan tidur yang nyaman juga dapat membantu. Pastikan kamar tidur Anda gelap, sejuk, dan tenang. Menggunakan kasur dan bantal yang nyaman juga dapat meningkatkan kualitas tidur Anda. Jika Anda masih kesulitan tidur, cobalah teknik relaksasi seperti meditasi atau pernapasan dalam untuk menenangkan pikiran sebelum tidur. Dengan mencoba cara-cara alami ini, Anda dapat mengatasi insomnia dan mendapatkan tidur yang lebih nyenyak.', 'blog3.jpg', '2024-04-20'),
(14, 'Manfaat Minyak Zaitun untuk Kesehatan', 'Minyak zaitun memiliki banyak manfaat untuk kesehatan tubuh. Menggunakan minyak ini dalam masakan sehari-hari sangat dianjurkan. Temukan manfaatnya dalam artikel ini.', 'Minyak zaitun adalah salah satu minyak yang paling sehat dan sering digunakan dalam masakan Mediterania. Salah satu manfaat utama minyak zaitun adalah kandungan lemak tak jenuh tunggal yang tinggi, yang dapat membantu menurunkan kadar kolesterol jahat (LDL) dan meningkatkan kadar kolesterol baik (HDL) dalam tubuh.\n\nSelain itu, minyak zaitun juga kaya akan antioksidan seperti vitamin E dan polifenol, yang dapat membantu melawan peradangan dan melindungi sel-sel tubuh dari kerusakan akibat radikal bebas. Antioksidan ini juga diketahui memiliki efek anti-penuaan dan dapat membantu menjaga kesehatan kulit.\n\nMenggunakan minyak zaitun dalam masakan sehari-hari sangat dianjurkan. Anda bisa menggunakannya sebagai dressing untuk salad, menumis sayuran, atau bahkan sebagai pengganti mentega dalam berbagai resep. Dengan begitu banyak manfaat yang ditawarkan, minyak zaitun adalah pilihan yang baik untuk meningkatkan kesehatan Anda secara keseluruhan.', 'blog4.jpeg', '2024-05-05'),
(15, 'Cara Menjaga Kesehatan Mata', 'Tips untuk menjaga kesehatan mata agar tetap optimal. Melakukan perawatan mata secara rutin sangat penting. Ikuti panduan ini untuk mata yang lebih sehat.', 'Menjaga kesehatan mata adalah hal yang penting untuk dilakukan, terutama di era digital seperti sekarang. Salah satu cara yang efektif untuk menjaga kesehatan mata adalah dengan mengonsumsi makanan yang kaya akan vitamin A, seperti wortel, bayam, dan ubi jalar. Vitamin A dikenal dapat membantu menjaga kesehatan retina dan mencegah degenerasi makula.\n\nSelain itu, penting untuk memberikan istirahat pada mata, terutama jika Anda sering bekerja di depan layar komputer. Mengikuti aturan 20-20-20 bisa sangat membantu: setiap 20 menit, istirahatkan mata Anda selama 20 detik dengan melihat sesuatu yang berjarak 20 kaki (sekitar 6 meter). Ini dapat membantu mengurangi kelelahan mata dan mencegah mata kering.\n\nMenggunakan kacamata pelindung saat berada di bawah sinar matahari yang terik juga penting. Sinar UV dapat merusak mata dan meningkatkan risiko katarak. Pastikan Anda memilih kacamata yang memiliki perlindungan UV 100%. Dengan melakukan perawatan mata secara rutin dan mengikuti tips ini, Anda dapat menjaga kesehatan mata Anda agar tetap optimal.', 'blog5.jpg', '2024-05-25'),
(16, 'Tips Memilih Makanan Organik', 'Panduan memilih makanan organik yang sehat dan aman. Makanan organik bebas dari pestisida dan bahan kimia berbahaya. Ikuti tips ini untuk pilihan yang lebih baik.', 'Memilih makanan organik dapat memberikan banyak manfaat kesehatan, karena makanan organik bebas dari pestisida dan bahan kimia berbahaya. Namun, memilih makanan organik yang tepat bisa menjadi tantangan tersendiri. Salah satu tips yang bisa diikuti adalah dengan mencari label sertifikasi organik pada kemasan produk. Label ini menunjukkan bahwa produk tersebut telah memenuhi standar organik yang ditetapkan.\n\nSelain itu, penting untuk memilih makanan yang masih segar dan tidak mengalami banyak proses pengolahan. Buah dan sayuran organik yang segar biasanya memiliki rasa yang lebih baik dan kandungan nutrisi yang lebih tinggi. Pastikan juga untuk mencuci buah dan sayuran dengan baik sebelum mengonsumsinya, meskipun mereka organik, untuk menghilangkan kotoran dan bakteri.\n\nMengunjungi pasar petani lokal bisa menjadi cara yang baik untuk mendapatkan makanan organik yang segar. Di pasar petani, Anda juga bisa langsung bertanya kepada petani mengenai cara mereka menanam dan memproses produk mereka. Dengan mengikuti tips ini, Anda dapat memilih makanan organik yang sehat dan aman untuk dikonsumsi.', 'blog6.jpeg', '2024-06-10'),
(17, 'Manfaat Air Kelapa untuk Tubuh', 'Air kelapa memiliki banyak manfaat untuk kesehatan tubuh. Minuman alami ini kaya akan elektrolit dan nutrisi. Temukan manfaatnya dalam artikel ini.', 'Air kelapa adalah minuman alami yang kaya akan elektrolit dan nutrisi penting untuk tubuh. Salah satu manfaat utama air kelapa adalah kemampuannya untuk menghidrasi tubuh dengan cepat. Kandungan elektrolit seperti kalium, natrium, dan magnesium dalam air kelapa sangat mirip dengan cairan tubuh, sehingga dapat membantu menggantikan cairan yang hilang akibat aktivitas fisik atau kondisi panas.\n\nSelain itu, air kelapa juga rendah kalori dan bebas lemak, menjadikannya pilihan minuman yang sehat untuk mendukung diet. Minuman ini juga mengandung vitamin C, asam amino, dan enzim yang dapat membantu meningkatkan metabolisme dan mendukung sistem kekebalan tubuh.\n\nBeberapa penelitian juga menunjukkan bahwa air kelapa dapat membantu menurunkan tekanan darah dan meningkatkan kesehatan jantung. Dengan begitu banyak manfaat yang ditawarkan, air kelapa adalah pilihan yang baik untuk menjaga kesehatan tubuh Anda. Minum air kelapa secara rutin dapat membantu Anda tetap terhidrasi dan mendapatkan nutrisi yang dibutuhkan oleh tubuh.', 'blog7.jpg', '2024-06-20'),
(18, 'Cara Mengurangi Konsumsi Gula', 'Tips untuk mengurangi konsumsi gula dalam makanan sehari-hari. Mengurangi gula dapat meningkatkan kesehatan. Ikuti panduan ini untuk hasil yang lebih baik.', 'Mengurangi konsumsi gula dalam makanan sehari-hari adalah langkah penting untuk meningkatkan kesehatan secara keseluruhan. Salah satu cara yang efektif adalah dengan mengganti makanan dan minuman yang mengandung gula tinggi dengan pilihan yang lebih sehat. Misalnya, Anda bisa mengganti minuman bersoda dengan air mineral atau teh herbal tanpa gula.\n\nSelain itu, penting untuk membaca label makanan dengan cermat. Banyak produk kemasan yang mengandung gula tersembunyi, seperti saus, roti, dan makanan ringan. Pastikan Anda memilih produk yang rendah atau bebas gula. Menggunakan pengganti gula alami seperti stevia atau madu dalam jumlah terbatas juga bisa menjadi alternatif yang baik.\n\nMengurangi konsumsi makanan olahan dan memilih makanan segar seperti buah-buahan, sayuran, dan biji-bijian juga dapat membantu. Buah-buahan mengandung gula alami yang lebih sehat dibandingkan gula tambahan. Dengan mengurangi konsumsi gula, Anda dapat menurunkan risiko berbagai penyakit seperti diabetes, obesitas, dan penyakit jantung.', 'blog8.jpeg', '2023-06-12'),
(19, 'Pentingnya Sarapan Pagi untuk Kesehatan', 'Sarapan pagi sangat penting untuk memulai hari dengan energi yang cukup. Mengonsumsi sarapan sehat dapat meningkatkan fokus dan produktivitas. Jangan lewatkan sarapan untuk kesehatan yang lebih baik.', 'Sarapan pagi adalah salah satu makanan terpenting dalam sehari yang sering diabaikan. Mengonsumsi sarapan sehat dapat memberikan banyak manfaat untuk kesehatan tubuh dan pikiran. Sarapan memberikan energi yang dibutuhkan untuk memulai hari dan meningkatkan fokus serta produktivitas. Pilihan sarapan sehat seperti oatmeal, telur, buah-buahan, dan yogurt dapat memberikan nutrisi yang seimbang.\n\nSarapan juga dapat membantu mengatur metabolisme tubuh dan mencegah rasa lapar yang berlebihan di siang hari. Mengonsumsi sarapan yang kaya serat dan protein dapat membantu Anda merasa kenyang lebih lama dan menghindari ngemil tidak sehat. Penelitian menunjukkan bahwa orang yang sarapan cenderung memiliki pola makan yang lebih baik dan berat badan yang lebih terkontrol.\n\nJangan lewatkan sarapan meskipun Anda memiliki jadwal yang sibuk. Menyediakan waktu beberapa menit untuk sarapan dapat memberikan dampak positif yang besar pada kesehatan Anda. Dengan memulai hari dengan sarapan sehat, Anda dapat meningkatkan energi, fokus, dan kesejahteraan secara keseluruhan.', 'blog9.jpeg', '2023-07-23'),
(20, 'Tips Sehat di Musim Pancaroba', 'Tips menjaga kesehatan di musim pancaroba. Perubahan cuaca dapat mempengaruhi kesehatan. Ikuti panduan ini untuk tetap sehat dan bugar.', 'Musim pancaroba, di mana terjadi perubahan cuaca yang drastis, dapat mempengaruhi kesehatan kita. Untuk menjaga kesehatan di musim pancaroba, ada beberapa tips yang bisa diikuti. Pertama, pastikan Anda mendapatkan asupan vitamin C yang cukup untuk memperkuat sistem kekebalan tubuh. Buah-buahan seperti jeruk, kiwi, dan stroberi kaya akan vitamin C yang dapat membantu melawan infeksi.\n\nSelain itu, penting untuk menjaga kebersihan diri dengan mencuci tangan secara rutin dan menghindari kontak dengan orang yang sedang sakit. Menggunakan masker saat berada di tempat umum juga dapat membantu mencegah penularan penyakit. Pastikan Anda mendapatkan cukup istirahat dan tidur yang berkualitas agar tubuh Anda dapat pulih dan tetap kuat.\n\nMenjaga pola makan yang sehat dan seimbang dengan mengonsumsi makanan bergizi juga sangat penting. Pastikan Anda tetap terhidrasi dengan minum air yang cukup. Dengan mengikuti tips-tips ini, Anda dapat menjaga kesehatan dan tetap bugar selama musim pancaroba.', 'blog10.jpg', '2023-08-18'),
(21, 'Manfaat Kacang-Kacangan untuk Kesehatan', 'Kacang-kacangan memiliki banyak manfaat untuk kesehatan tubuh. Makanan ini kaya akan nutrisi penting. Temukan manfaatnya dalam artikel ini.', 'Kacang-kacangan adalah makanan yang kaya akan nutrisi dan memiliki banyak manfaat untuk kesehatan. Kacang-kacangan seperti almond, kenari, dan kacang tanah mengandung lemak sehat yang baik untuk jantung. Lemak tak jenuh tunggal dan ganda dalam kacang-kacangan dapat membantu menurunkan kadar kolesterol jahat (LDL) dan meningkatkan kadar kolesterol baik (HDL).\n\nSelain itu, kacang-kacangan juga mengandung protein nabati yang tinggi, yang penting untuk pertumbuhan dan perbaikan jaringan tubuh. Serat dalam kacang-kacangan dapat membantu menjaga kesehatan pencernaan dan mencegah sembelit. Kacang-kacangan juga kaya akan vitamin dan mineral seperti vitamin E, magnesium, dan kalium yang penting untuk fungsi tubuh yang optimal.\n\nMengonsumsi kacang-kacangan secara rutin dapat membantu menurunkan risiko penyakit jantung, diabetes tipe 2, dan obesitas. Anda bisa menambahkan kacang-kacangan dalam salad, yogurt, atau sebagai camilan sehat. Dengan begitu banyak manfaat yang ditawarkan, kacang-kacangan adalah tambahan yang baik untuk diet sehat Anda.', 'blog1.jpg', '2023-09-25'),
(22, 'Cara Sehat Menjaga Berat Badan', 'Tips untuk menjaga berat badan ideal secara sehat. Menggabungkan diet dan olahraga adalah kunci. Ikuti panduan ini untuk hasil yang optimal.', 'Menjaga berat badan ideal secara sehat memerlukan kombinasi antara diet seimbang dan olahraga teratur. Salah satu cara efektif untuk menjaga berat badan adalah dengan mengonsumsi makanan yang kaya akan serat dan rendah kalori. Buah-buahan, sayuran, dan biji-bijian adalah pilihan yang baik untuk mengisi piring Anda.\n\nMenghindari makanan olahan dan makanan cepat saji juga penting untuk menjaga berat badan. Makanan ini biasanya tinggi kalori dan rendah nutrisi, sehingga dapat menyebabkan penambahan berat badan yang tidak sehat. Selain itu, penting untuk mengatur porsi makan dan menghindari makan berlebihan. Menggunakan piring kecil dapat membantu mengontrol porsi makan Anda.\n\nBerolahraga secara rutin adalah kunci lain untuk menjaga berat badan. Aktivitas fisik seperti berjalan kaki, berlari, atau bersepeda dapat membantu membakar kalori dan meningkatkan metabolisme. Kombinasi antara latihan kardio dan latihan kekuatan dapat memberikan hasil yang optimal. Dengan mengikuti panduan ini, Anda dapat menjaga berat badan ideal dan meningkatkan kesehatan secara keseluruhan.', 'blog2.jpg', '2023-10-08'),
(23, 'Manfaat Berjemur di Pagi Hari', 'Berjemur di pagi hari memiliki banyak manfaat untuk kesehatan. Sinar matahari pagi kaya akan vitamin D. Temukan manfaatnya dalam artikel ini.', 'Berjemur di pagi hari memiliki banyak manfaat untuk kesehatan tubuh. Salah satu manfaat utama adalah peningkatan produksi vitamin D. Sinar matahari pagi kaya akan UVB yang dapat membantu tubuh memproduksi vitamin D, yang penting untuk kesehatan tulang dan sistem kekebalan tubuh. Vitamin D juga dikenal dapat membantu mengatur suasana hati dan mencegah depresi.\n\nBerjemur di pagi hari juga dapat membantu mengatur ritme sirkadian, yang merupakan jam biologis tubuh. Paparan sinar matahari pagi dapat membantu mengatur pola tidur Anda, sehingga Anda dapat tidur lebih nyenyak di malam hari. Ini sangat penting untuk menjaga kesehatan mental dan fisik.\n\nSelain itu, berjemur di pagi hari juga dapat meningkatkan sirkulasi darah dan memberikan energi tambahan untuk memulai hari. Pastikan untuk berjemur selama 15-30 menit setiap pagi untuk mendapatkan manfaat optimal. Namun, jangan lupa untuk melindungi kulit dengan menggunakan tabir surya jika Anda berencana berjemur lebih lama.', 'blog3.jpg', '2023-11-12'),
(24, 'Resep Jus Detoks untuk Tubuh', 'Resep jus detoks yang mudah dan sehat. Jus ini membantu membersihkan tubuh dari racun. Cobalah resep ini untuk hasil terbaik.', 'Jus detoks adalah minuman yang dibuat dari kombinasi buah-buahan dan sayuran yang dapat membantu membersihkan tubuh dari racun dan memberikan energi. Salah satu resep jus detoks yang mudah dan sehat adalah jus hijau yang terbuat dari bayam, seledri, mentimun, apel hijau, dan lemon.\n\nUntuk membuat jus ini, cukup campurkan segenggam bayam, dua batang seledri, satu mentimun, satu apel hijau, dan perasan satu lemon ke dalam blender. Tambahkan sedikit air jika diperlukan dan blender hingga halus. Jus ini kaya akan klorofil, vitamin C, dan serat yang dapat membantu memperbaiki sistem pencernaan dan meningkatkan sistem kekebalan tubuh.\n\nJus detoks ini sangat baik dikonsumsi di pagi hari untuk memulai hari dengan penuh energi. Selain itu, Anda juga bisa mencoba berbagai kombinasi buah dan sayuran lainnya seperti wortel, bit, jahe, dan nanas untuk mendapatkan variasi rasa dan manfaat kesehatan yang berbeda. Dengan rutin mengonsumsi jus detoks, Anda dapat merasakan peningkatan energi dan kesehatan secara keseluruhan.', 'blog4.jpeg', '2023-12-02'),
(25, 'Cara Alami Mengatasi Jerawat', 'Tips alami untuk mengatasi jerawat dan menjaga kulit tetap sehat. Menggunakan bahan alami untuk perawatan kulit. Ikuti panduan ini untuk kulit yang bersih dan sehat.', 'Jerawat adalah masalah kulit yang umum terjadi dan dapat mempengaruhi kepercayaan diri. Ada beberapa cara alami yang dapat membantu mengatasi jerawat dan menjaga kulit tetap sehat. Salah satu cara yang efektif adalah dengan menggunakan lidah buaya. Lidah buaya memiliki sifat anti-inflamasi dan antibakteri yang dapat membantu mengurangi peradangan dan membunuh bakteri penyebab jerawat.\n\nAnda juga bisa mencoba masker madu dan kayu manis. Madu memiliki sifat antibakteri dan antioksidan yang dapat membantu menyembuhkan kulit, sementara kayu manis dapat membantu meningkatkan aliran darah ke kulit. Campurkan satu sendok makan madu dengan satu sendok teh kayu manis, aplikasikan pada wajah, biarkan selama 10-15 menit, lalu bilas dengan air hangat.\n\nMenghindari makanan yang tinggi gula dan lemak juga penting untuk mencegah jerawat. Makanan seperti cokelat, makanan cepat saji, dan minuman manis dapat memicu produksi minyak berlebih dan menyebabkan jerawat. Dengan menjaga pola makan yang sehat dan menggunakan bahan-bahan alami untuk perawatan kulit, Anda dapat mengatasi jerawat dan mendapatkan kulit yang bersih dan sehat.', 'blog5.jpg', '2024-01-17'),
(26, 'Pentingnya Mengatur Pola Tidur', 'Mengatur pola tidur sangat penting untuk kesehatan. Tidur yang cukup membantu tubuh memperbaiki diri. Temukan tips untuk tidur lebih baik dalam artikel ini.', 'Mengatur pola tidur yang baik sangat penting untuk kesehatan secara keseluruhan. Tidur yang cukup membantu tubuh memperbaiki diri dan memulihkan energi. Salah satu cara untuk meningkatkan kualitas tidur adalah dengan menjaga rutinitas tidur yang konsisten. Cobalah untuk tidur dan bangun pada waktu yang sama setiap hari, bahkan pada akhir pekan.\n\nMenciptakan lingkungan tidur yang nyaman juga dapat membantu. Pastikan kamar tidur Anda gelap, sejuk, dan tenang. Menggunakan kasur dan bantal yang nyaman dapat meningkatkan kualitas tidur Anda. Menghindari penggunaan perangkat elektronik seperti ponsel atau tablet sebelum tidur juga penting, karena cahaya biru dari layar dapat mengganggu produksi melatonin, hormon yang mengatur tidur.\n\nMenghindari kafein dan alkohol sebelum tidur juga dapat membantu Anda tidur lebih nyenyak. Cobalah untuk melakukan aktivitas relaksasi seperti membaca buku atau mendengarkan musik yang menenangkan sebelum tidur. Dengan mengikuti tips ini, Anda dapat mengatur pola tidur yang lebih baik dan meningkatkan kesehatan Anda secara keseluruhan.', 'blog6.jpeg', '2024-02-22'),
(27, 'Manfaat Bersepeda untuk Kesehatan', 'Bersepeda memiliki banyak manfaat untuk kesehatan tubuh. Aktivitas ini membantu meningkatkan kebugaran dan mengurangi stres. Cobalah bersepeda secara rutin untuk hasil terbaik.', 'Bersepeda adalah salah satu aktivitas fisik yang menyenangkan dan memiliki banyak manfaat untuk kesehatan tubuh. Salah satu manfaat utama bersepeda adalah meningkatkan kebugaran kardiovaskular. Bersepeda secara rutin dapat membantu meningkatkan kapasitas paru-paru, menurunkan tekanan darah, dan memperkuat jantung.\n\nSelain itu, bersepeda juga dapat membantu menurunkan berat badan. Aktivitas ini membakar kalori dan meningkatkan metabolisme, sehingga membantu mengurangi lemak tubuh. Bersepeda juga memperkuat otot-otot di kaki, pinggul, dan punggung bawah, yang dapat meningkatkan kekuatan dan daya tahan tubuh.\n\nBersepeda juga memiliki manfaat untuk kesehatan mental. Aktivitas ini dapat membantu mengurangi stres dan kecemasan, serta meningkatkan suasana hati. Menghabiskan waktu di luar ruangan dan menikmati pemandangan alam saat bersepeda juga dapat memberikan efek relaksasi. Dengan bersepeda secara rutin, Anda dapat meningkatkan kesehatan fisik dan mental Anda.', 'blog7.jpg', '2024-03-07'),
(28, 'Cara Sehat Menjaga Kesehatan Kulit', 'Tips untuk menjaga kesehatan kulit secara alami. Menggunakan bahan-bahan alami untuk perawatan kulit. Ikuti panduan ini untuk kulit yang lebih sehat dan bersinar.', 'Menjaga kesehatan kulit adalah hal yang penting untuk dilakukan, terutama di tengah polusi dan paparan sinar matahari yang dapat merusak kulit. Salah satu cara efektif untuk menjaga kesehatan kulit adalah dengan rutin membersihkan wajah. Membersihkan wajah dua kali sehari, pagi dan malam, dapat membantu menghilangkan kotoran, minyak, dan sisa makeup yang dapat menyumbat pori-pori.\n\nMenggunakan pelembap juga sangat penting, terutama jika Anda memiliki kulit kering. Pilih pelembap yang sesuai dengan jenis kulit Anda dan gunakan secara rutin setelah mencuci muka. Selain itu, mengonsumsi makanan yang kaya akan antioksidan seperti buah-buahan dan sayuran dapat membantu melindungi kulit dari kerusakan akibat radikal bebas.\n\nMenghindari paparan sinar matahari yang berlebihan juga penting untuk menjaga kesehatan kulit. Gunakan tabir surya dengan SPF yang sesuai setiap kali Anda keluar rumah, bahkan saat cuaca mendung. Menggunakan topi atau payung juga dapat membantu melindungi kulit dari sinar UV yang berbahaya. Dengan mengikuti tips ini, Anda dapat menjaga kesehatan kulit dan mendapatkan kulit yang lebih sehat dan bersinar.', 'blog8.jpeg', '2024-03-27'),
(29, 'Makanan Fermentasi yang Baik untuk Pencernaan', 'Makanan fermentasi memiliki banyak manfaat untuk pencernaan. Makanan ini kaya akan probiotik yang baik untuk usus. Temukan manfaatnya dalam artikel ini.', 'Makanan fermentasi adalah makanan yang telah mengalami proses fermentasi oleh bakteri baik yang dikenal sebagai probiotik. Proses fermentasi ini tidak hanya meningkatkan rasa makanan tetapi juga menambah manfaat kesehatan, terutama untuk pencernaan. Salah satu contoh makanan fermentasi yang baik untuk pencernaan adalah yogurt. Yogurt mengandung bakteri baik yang dapat membantu meningkatkan kesehatan usus dengan menjaga keseimbangan mikroflora usus.\n\nSelain yogurt, tempe juga merupakan makanan fermentasi yang kaya akan probiotik dan protein nabati. Tempe dapat membantu meningkatkan sistem kekebalan tubuh dan mendukung kesehatan pencernaan. Kombucha, minuman teh fermentasi, juga semakin populer karena kandungan probiotiknya yang tinggi. Minuman ini dapat membantu detoksifikasi tubuh dan meningkatkan kesehatan pencernaan.\n\nKimchi, makanan fermentasi asal Korea, kaya akan serat, vitamin, dan probiotik yang dapat membantu memperbaiki pencernaan dan meningkatkan sistem kekebalan tubuh. Dengan memasukkan makanan fermentasi ke dalam diet harian Anda, Anda dapat menikmati berbagai manfaat kesehatan, terutama untuk pencernaan.', 'blog9.jpeg', '2024-04-12'),
(30, 'Manfaat Buah-Buahan untuk Kesehatan', 'Buah-buahan memiliki banyak manfaat untuk kesehatan tubuh. Makanan alami ini kaya akan vitamin dan serat. Temukan manfaatnya dalam artikel ini.', 'Buah-buahan adalah sumber makanan alami yang kaya akan vitamin, mineral, dan serat yang sangat baik untuk kesehatan tubuh. Salah satu manfaat utama buah-buahan adalah kandungan vitamin C yang tinggi. Vitamin C dikenal dapat meningkatkan sistem kekebalan tubuh, membantu penyembuhan luka, dan meningkatkan kesehatan kulit. Buah-buahan seperti jeruk, kiwi, dan stroberi kaya akan vitamin C.\n\nSelain itu, buah-buahan juga kaya akan serat yang baik untuk pencernaan. Serat membantu memperlancar proses pencernaan dan mencegah sembelit. Buah-buahan seperti apel, pisang, dan beri kaya akan serat yang dapat membantu menjaga kesehatan pencernaan. Buah-buahan juga rendah kalori dan lemak, menjadikannya camilan yang sehat untuk menjaga berat badan.\n\nAntioksidan dalam buah-buahan dapat membantu melawan radikal bebas yang dapat merusak sel-sel tubuh. Buah-buahan seperti blueberry, anggur, dan delima kaya akan antioksidan yang dapat membantu mencegah penuaan dini dan mengurangi risiko penyakit kronis seperti kanker dan penyakit jantung. Dengan mengonsumsi berbagai jenis buah-buahan setiap hari, Anda dapat menikmati berbagai manfaat kesehatan yang ditawarkan oleh makanan alami ini.', 'blog10.jpg', '2024-04-22'),
(31, 'Tips Menjaga Kesehatan Tulang', 'Tips untuk menjaga kesehatan tulang agar tetap kuat. Mengonsumsi makanan kaya kalsium sangat penting. Ikuti panduan ini untuk tulang yang lebih sehat.', 'Menjaga kesehatan tulang sangat penting untuk mencegah osteoporosis dan penyakit tulang lainnya di masa depan. Salah satu cara yang efektif untuk menjaga kesehatan tulang adalah dengan mengonsumsi makanan yang kaya akan kalsium. Produk susu seperti susu, yogurt, dan keju adalah sumber kalsium yang baik. Selain itu, sayuran hijau seperti bayam dan brokoli juga kaya akan kalsium.\n\nVitamin D juga penting untuk kesehatan tulang karena membantu tubuh menyerap kalsium. Anda bisa mendapatkan vitamin D dari paparan sinar matahari dan makanan seperti ikan berlemak, telur, dan susu yang diperkaya vitamin D. Mengonsumsi suplemen vitamin D juga bisa menjadi pilihan jika Anda kekurangan asupan dari makanan dan sinar matahari.\n\nOlahraga juga penting untuk menjaga kesehatan tulang. Aktivitas fisik seperti berjalan kaki, berlari, dan angkat beban dapat membantu meningkatkan kepadatan tulang dan mencegah pengeroposan tulang. Dengan menjaga pola makan yang sehat dan aktif secara fisik, Anda dapat menjaga kesehatan tulang dan mengurangi risiko penyakit tulang di kemudian hari.', 'blog1.jpg', '2024-05-07'),
(32, 'Cara Mengatasi Kecemasan dengan Alami', 'Tips alami untuk mengatasi kecemasan dan meningkatkan kesehatan mental. Menggunakan teknik relaksasi dan bahan alami. Ikuti panduan ini untuk hasil terbaik.', 'Kecemasan adalah masalah umum yang dapat mempengaruhi kesehatan mental dan fisik. Ada beberapa cara alami yang dapat membantu mengatasi kecemasan dan meningkatkan kesehatan mental. Salah satu cara yang efektif adalah dengan melakukan meditasi dan latihan pernapasan. Meditasi dapat membantu menenangkan pikiran dan mengurangi gejala kecemasan. Luangkan waktu beberapa menit setiap hari untuk duduk tenang dan fokus pada pernapasan Anda.\n\nMenggunakan minyak esensial juga bisa membantu mengatasi kecemasan. Minyak esensial seperti lavender, chamomile, dan peppermint memiliki sifat menenangkan yang dapat membantu meredakan stres dan kecemasan. Anda bisa menghirup aroma minyak esensial atau menggunakannya dalam difuser untuk menciptakan suasana yang tenang.\n\nMengonsumsi teh herbal seperti teh chamomile atau teh peppermint juga bisa membantu. Teh herbal ini memiliki efek menenangkan yang dapat membantu Anda merasa lebih rileks. Menghindari kafein dan alkohol juga penting karena kedua zat ini dapat memperburuk gejala kecemasan. Dengan mencoba cara-cara alami ini, Anda dapat mengatasi kecemasan dan meningkatkan kesehatan mental Anda.', 'blog2.jpg', '2024-05-27'),
(33, 'Manfaat Madu untuk Kesehatan', 'Madu memiliki banyak manfaat untuk kesehatan tubuh. Makanan alami ini kaya akan nutrisi. Temukan manfaatnya dalam artikel ini.', 'Madu adalah makanan alami yang telah lama dikenal memiliki banyak manfaat untuk kesehatan. Salah satu manfaat utama madu adalah sifat antibakteri dan anti-inflamasi yang dimilikinya. Madu dapat membantu menyembuhkan luka dan mengurangi peradangan pada kulit. Mengoleskan madu pada luka atau luka bakar ringan dapat mempercepat proses penyembuhan.\n\nSelain itu, madu juga kaya akan antioksidan yang dapat membantu melawan radikal bebas dan mencegah kerusakan sel. Antioksidan dalam madu juga dapat membantu meningkatkan sistem kekebalan tubuh dan melindungi tubuh dari berbagai penyakit. Madu juga dapat membantu meredakan batuk dan sakit tenggorokan. Mengonsumsi satu sendok madu hangat dengan air lemon dapat membantu meredakan gejala batuk dan flu.\n\nMadu juga dapat digunakan sebagai pengganti gula yang lebih sehat. Anda bisa menambahkan madu ke dalam teh, yogurt, atau sebagai pemanis alami dalam berbagai resep. Dengan begitu banyak manfaat yang ditawarkan, madu adalah tambahan yang baik untuk diet sehat Anda. Pastikan Anda memilih madu murni dan alami untuk mendapatkan manfaat kesehatan yang optimal.', 'blog3.jpg', '2024-06-12'),
(34, 'Tips Memilih Multivitamin yang Tepat', 'Panduan memilih multivitamin yang tepat untuk kebutuhan Anda. Multivitamin dapat membantu mengisi kekurangan nutrisi. Ikuti tips ini untuk pilihan yang lebih baik.', 'Memilih multivitamin yang tepat dapat membantu mengisi kekurangan nutrisi dalam diet Anda dan mendukung kesehatan secara keseluruhan. Salah satu tips yang bisa diikuti adalah dengan membaca label pada kemasan multivitamin. Pastikan multivitamin mengandung berbagai vitamin dan mineral penting seperti vitamin A, C, D, E, K, serta mineral seperti kalsium, magnesium, dan zink.\n\nSelain itu, penting untuk memilih multivitamin yang sesuai dengan usia, jenis kelamin, dan kebutuhan kesehatan Anda. Misalnya, wanita hamil membutuhkan multivitamin yang mengandung asam folat dan zat besi yang lebih tinggi, sementara orang dewasa yang lebih tua mungkin membutuhkan lebih banyak vitamin D dan kalsium untuk menjaga kesehatan tulang.\n\nKonsultasikan dengan dokter atau ahli gizi sebelum mulai mengonsumsi multivitamin untuk memastikan Anda memilih produk yang tepat dan dosis yang sesuai. Hindari mengonsumsi multivitamin secara berlebihan karena dapat menyebabkan efek samping yang tidak diinginkan. Dengan memilih multivitamin yang tepat, Anda dapat mendukung kesehatan dan kesejahteraan Anda secara optimal.', 'blog4.jpeg', '2024-06-22'),
(35, 'Manfaat Olahraga di Pagi Hari', 'Olahraga di pagi hari memiliki banyak manfaat untuk kesehatan. Aktivitas ini membantu meningkatkan energi dan kebugaran. Cobalah berolahraga di pagi hari untuk hasil terbaik.', 'Olahraga di pagi hari memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Salah satu manfaat utama adalah peningkatan energi. Berolahraga di pagi hari dapat membantu meningkatkan aliran darah dan oksigen ke seluruh tubuh, sehingga Anda merasa lebih segar dan berenergi sepanjang hari. Aktivitas fisik di pagi hari juga dapat meningkatkan metabolisme, yang membantu membakar lebih banyak kalori sepanjang hari.\n\nSelain itu, olahraga di pagi hari dapat membantu meningkatkan mood dan mengurangi stres. Saat berolahraga, tubuh melepaskan endorfin, yaitu hormon yang dapat meningkatkan suasana hati dan memberikan perasaan bahagia. Ini sangat bermanfaat untuk memulai hari dengan pikiran yang positif dan fokus.\n\nOlahraga di pagi hari juga dapat membantu meningkatkan kualitas tidur di malam hari. Aktivitas fisik di pagi hari dapat membantu mengatur ritme sirkadian tubuh, yang merupakan jam biologis internal yang mengatur pola tidur. Dengan berolahraga di pagi hari, Anda dapat merasa lebih lelah dan siap untuk tidur di malam hari. Dengan begitu banyak manfaat yang ditawarkan, berolahraga di pagi hari adalah kebiasaan yang baik untuk kesehatan Anda secara keseluruhan.', 'blog5.jpg', '2023-06-15'),
(36, 'Cara Mengatasi Radang Tenggorokan dengan Alami', 'Tips alami untuk mengatasi radang tenggorokan. Menggunakan bahan alami untuk meredakan gejala. Ikuti panduan ini untuk hasil yang lebih baik.', 'Radang tenggorokan adalah kondisi umum yang dapat disebabkan oleh infeksi bakteri atau virus. Ada beberapa cara alami yang dapat membantu mengatasi radang tenggorokan dan meredakan gejalanya. Salah satu cara yang efektif adalah dengan berkumur dengan air garam hangat. Air garam dapat membantu mengurangi peradangan dan membunuh bakteri di tenggorokan. Campurkan setengah sendok teh garam ke dalam segelas air hangat dan berkumurlah beberapa kali sehari.\n\nMengonsumsi madu juga dapat membantu meredakan radang tenggorokan. Madu memiliki sifat antibakteri dan anti-inflamasi yang dapat membantu menyembuhkan tenggorokan yang meradang. Anda bisa mencampurkan satu sendok makan madu ke dalam segelas teh herbal atau air hangat dengan perasan lemon untuk meredakan gejala radang tenggorokan.\n\nMenghirup uap juga bisa membantu meredakan tenggorokan yang sakit. Uap hangat dapat membantu melembapkan tenggorokan dan meredakan iritasi. Anda bisa mencoba menghirup uap dari mangkuk berisi air panas dengan menutupi kepala dengan handuk. Dengan mengikuti cara-cara alami ini, Anda dapat meredakan gejala radang tenggorokan dan mempercepat proses penyembuhan.', 'blog6.jpeg', '2023-07-25'),
(37, 'Manfaat Alpukat untuk Kesehatan', 'Alpukat memiliki banyak manfaat untuk kesehatan tubuh. Buah ini kaya akan nutrisi penting. Temukan manfaatnya dalam artikel ini.', 'Alpukat adalah buah yang kaya akan nutrisi dan memiliki banyak manfaat untuk kesehatan tubuh. Salah satu manfaat utama alpukat adalah kandungan lemak tak jenuh tunggal yang tinggi, yang dapat membantu menurunkan kadar kolesterol jahat (LDL) dan meningkatkan kadar kolesterol baik (HDL). Lemak sehat dalam alpukat juga baik untuk kesehatan jantung dan dapat membantu mengurangi risiko penyakit jantung.\n\nSelain itu, alpukat kaya akan serat yang baik untuk pencernaan. Serat dapat membantu memperlancar proses pencernaan dan mencegah sembelit. Alpukat juga mengandung vitamin E, vitamin C, dan vitamin K yang penting untuk kesehatan kulit, sistem kekebalan tubuh, dan pembekuan darah. Kandungan kalium dalam alpukat juga dapat membantu menjaga tekanan darah tetap stabil.\n\nMengonsumsi alpukat secara rutin dapat memberikan banyak manfaat kesehatan. Anda bisa menambahkan alpukat dalam salad, smoothie, atau sebagai olesan roti. Dengan begitu banyak manfaat yang ditawarkan, alpukat adalah tambahan yang baik untuk diet sehat Anda.', 'blog7.jpg', '2023-08-20'),
(38, 'Tips Menjaga Kesehatan Rambut', 'Tips untuk menjaga kesehatan rambut agar tetap kuat dan berkilau. Menggunakan perawatan alami untuk rambut. Ikuti panduan ini untuk hasil terbaik.', 'Menjaga kesehatan rambut adalah hal yang penting untuk mendapatkan rambut yang kuat dan berkilau. Salah satu cara yang efektif adalah dengan rutin membersihkan rambut menggunakan sampo yang sesuai dengan jenis rambut Anda. Hindari penggunaan sampo yang mengandung bahan kimia keras yang dapat merusak rambut. Gunakan kondisioner setelah keramas untuk menjaga kelembapan rambut.\n\nMengonsumsi makanan yang kaya akan nutrisi juga penting untuk kesehatan rambut. Makanan seperti ikan berlemak, kacang-kacangan, dan sayuran hijau mengandung vitamin dan mineral yang penting untuk pertumbuhan rambut. Vitamin E, vitamin C, biotin, dan zink adalah beberapa nutrisi yang dapat membantu menjaga kesehatan rambut.\n\nMenghindari penggunaan alat penata rambut yang menggunakan panas secara berlebihan juga penting untuk mencegah kerusakan rambut. Gunakan pelindung panas saat menggunakan alat seperti pengering rambut, catokan, atau pengeriting rambut. Dengan melakukan perawatan rambut secara rutin dan mengonsumsi makanan sehat, Anda dapat menjaga kesehatan rambut dan mendapatkan rambut yang lebih kuat dan berkilau.', 'blog8.jpeg', '2023-09-27'),
(39, 'Cara Sehat Mengonsumsi Kopi', 'Panduan mengonsumsi kopi secara sehat. Kopi memiliki banyak manfaat jika dikonsumsi dengan benar. Ikuti tips ini untuk hasil terbaik.', 'Kopi adalah minuman yang sangat populer dan memiliki banyak manfaat kesehatan jika dikonsumsi dengan benar. Salah satu manfaat utama kopi adalah kandungan kafeinnya yang dapat membantu meningkatkan energi dan fokus. Namun, penting untuk mengonsumsi kopi dalam jumlah yang moderat untuk menghindari efek samping seperti kecemasan, insomnia, dan peningkatan tekanan darah.\n\nUntuk mengonsumsi kopi secara sehat, hindari menambahkan gula dan krim berlebih. Gula tambahan dapat meningkatkan kalori dan menyebabkan lonjakan gula darah. Sebagai gantinya, cobalah menggunakan susu rendah lemak atau susu nabati seperti almond atau kedelai. Menggunakan kayu manis sebagai pemanis alami juga bisa menjadi pilihan yang baik.\n\nMenghindari minum kopi terlalu larut malam juga penting untuk mencegah gangguan tidur. Cobalah untuk menikmati kopi di pagi hari atau siang hari untuk mendapatkan manfaat energi tanpa mengganggu pola tidur Anda. Dengan mengikuti tips ini, Anda dapat menikmati manfaat kopi secara sehat dan mendukung kesehatan Anda secara keseluruhan.', 'blog9.jpeg', '2023-10-10'),
(40, 'Manfaat Puasa untuk Kesehatan', 'Puasa memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Aktivitas ini dapat membantu detoksifikasi dan meningkatkan kesehatan. Temukan manfaatnya dalam artikel ini.', 'Puasa adalah praktik yang telah lama dilakukan dan memiliki banyak manfaat untuk kesehatan tubuh dan pikiran. Salah satu manfaat utama puasa adalah detoksifikasi tubuh. Saat berpuasa, tubuh memiliki waktu untuk memperbaiki dan meregenerasi sel-sel, serta membersihkan diri dari racun. Puasa juga dapat membantu meningkatkan sistem kekebalan tubuh dan melawan peradangan.\n\nPuasa juga dapat membantu menurunkan berat badan. Dengan mengatur pola makan dan mengurangi asupan kalori selama periode puasa, tubuh akan membakar lemak sebagai sumber energi. Puasa juga dapat membantu meningkatkan sensitivitas insulin, yang penting untuk mengatur kadar gula darah dan mencegah diabetes tipe 2.\n\nSelain manfaat fisik, puasa juga memiliki manfaat untuk kesehatan mental dan emosional. Puasa dapat membantu meningkatkan fokus, konsentrasi, dan ketenangan pikiran. Dengan berpuasa secara rutin, Anda dapat merasakan peningkatan kesehatan secara keseluruhan dan mendapatkan kesejahteraan yang lebih baik.', 'blog10.jpg', '2023-11-14');
INSERT INTO `artikel` (`Artikel_ID`, `Judul_Artikel`, `Deskripsi_Singkat`, `Deskripsi_Panjang`, `Gambar_Artikel`, `Tanggal`) VALUES
(41, 'Tips Mengatur Pola Makan Sehat', 'Tips untuk mengatur pola makan yang sehat dan seimbang. Mengonsumsi makanan bergizi sangat penting untuk kesehatan. Ikuti panduan ini untuk hasil yang lebih baik.', 'Mengatur pola makan yang sehat dan seimbang adalah kunci untuk menjaga kesehatan tubuh. Salah satu cara yang efektif adalah dengan mengonsumsi berbagai macam makanan yang kaya akan nutrisi. Pastikan Anda mengonsumsi cukup sayuran, buah-buahan, biji-bijian, dan protein dalam diet harian Anda. Pilihlah sumber protein yang rendah lemak seperti ikan, ayam tanpa kulit, dan kacang-kacangan.\n\nMenghindari makanan olahan dan makanan cepat saji juga penting untuk menjaga pola makan sehat. Makanan ini biasanya tinggi kalori, lemak jenuh, dan gula, yang dapat berdampak buruk pada kesehatan. Sebagai gantinya, pilih makanan segar dan alami yang kaya akan nutrisi. Mengonsumsi makanan dalam porsi yang sesuai juga penting untuk mengontrol asupan kalori dan menjaga berat badan.\n\nMinum air yang cukup setiap hari juga merupakan bagian penting dari pola makan sehat. Air membantu menjaga hidrasi tubuh dan mendukung berbagai fungsi tubuh. Hindari minuman manis dan beralkohol yang dapat menambah kalori tanpa memberikan manfaat nutrisi. Dengan mengatur pola makan yang sehat, Anda dapat meningkatkan kesehatan dan kualitas hidup Anda.', 'blog1.jpg', '2023-12-04'),
(42, 'Manfaat Bawang Putih untuk Kesehatan', 'Bawang putih memiliki banyak manfaat untuk kesehatan tubuh. Makanan ini kaya akan senyawa alami yang baik. Temukan manfaatnya dalam artikel ini.', 'Bawang putih adalah bahan alami yang telah lama digunakan dalam pengobatan tradisional dan memiliki banyak manfaat untuk kesehatan tubuh. Salah satu manfaat utama bawang putih adalah sifat antibakteri dan antivirusnya. Senyawa allicin yang terdapat dalam bawang putih dapat membantu melawan infeksi dan meningkatkan sistem kekebalan tubuh.\n\nSelain itu, bawang putih juga dikenal dapat membantu menurunkan tekanan darah dan kolesterol. Mengonsumsi bawang putih secara rutin dapat membantu mengurangi risiko penyakit jantung dan menjaga kesehatan pembuluh darah. Bawang putih juga memiliki sifat anti-inflamasi yang dapat membantu mengurangi peradangan dalam tubuh.\n\nBawang putih juga kaya akan antioksidan yang dapat membantu melindungi sel-sel tubuh dari kerusakan akibat radikal bebas. Mengonsumsi bawang putih dalam masakan sehari-hari atau sebagai suplemen dapat memberikan banyak manfaat kesehatan. Dengan begitu banyak manfaat yang ditawarkan, bawang putih adalah tambahan yang baik untuk diet sehat Anda.', 'blog2.jpg', '2024-01-19'),
(43, 'Cara Alami Menjaga Kesehatan Gigi dan Gusi', 'Tips alami untuk menjaga kesehatan gigi dan gusi. Menggunakan bahan-bahan alami untuk perawatan mulut. Ikuti panduan ini untuk hasil terbaik.', 'Menjaga kesehatan gigi dan gusi adalah hal yang penting untuk kesehatan secara keseluruhan. Ada beberapa cara alami yang dapat membantu menjaga kesehatan mulut. Salah satu cara yang efektif adalah dengan rutin menggosok gigi menggunakan pasta gigi yang mengandung fluoride. Fluoride dapat membantu menguatkan enamel gigi dan mencegah gigi berlubang.\n\nSelain itu, menggunakan benang gigi setiap hari juga penting untuk menghilangkan plak dan sisa makanan di antara gigi yang tidak dapat dijangkau oleh sikat gigi. Berkumur dengan larutan air garam hangat juga dapat membantu meredakan peradangan pada gusi dan membunuh bakteri di mulut. Campurkan setengah sendok teh garam ke dalam segelas air hangat dan berkumurlah beberapa kali sehari.\n\nMengonsumsi makanan yang kaya akan kalsium seperti susu, yogurt, dan keju juga penting untuk kesehatan gigi. Kalsium membantu menguatkan gigi dan tulang. Menghindari makanan dan minuman yang tinggi gula juga penting untuk mencegah gigi berlubang. Dengan mengikuti tips ini, Anda dapat menjaga kesehatan gigi dan gusi secara alami.', 'blog3.jpg', '2024-02-24'),
(44, 'Manfaat Kunyit untuk Kesehatan', 'Kunyit memiliki banyak manfaat untuk kesehatan tubuh. Makanan alami ini kaya akan senyawa aktif. Temukan manfaatnya dalam artikel ini.', 'Kunyit adalah rempah alami yang telah lama digunakan dalam pengobatan tradisional dan memiliki banyak manfaat untuk kesehatan tubuh. Salah satu manfaat utama kunyit adalah sifat anti-inflamasi yang dimilikinya. Senyawa aktif dalam kunyit, yaitu kurkumin, dikenal dapat membantu mengurangi peradangan dalam tubuh dan mengurangi gejala penyakit kronis seperti arthritis.\n\nSelain itu, kunyit juga kaya akan antioksidan yang dapat membantu melawan radikal bebas dan melindungi sel-sel tubuh dari kerusakan. Antioksidan dalam kunyit juga dapat membantu meningkatkan sistem kekebalan tubuh dan melindungi tubuh dari berbagai penyakit. Beberapa penelitian juga menunjukkan bahwa kunyit dapat membantu meningkatkan fungsi otak dan mencegah penyakit neurodegeneratif seperti Alzheimer.\n\nMengonsumsi kunyit dalam masakan sehari-hari atau sebagai suplemen dapat memberikan banyak manfaat kesehatan. Anda bisa menambahkan kunyit dalam masakan kari, sup, atau minuman seperti teh kunyit. Dengan begitu banyak manfaat yang ditawarkan, kunyit adalah tambahan yang baik untuk diet sehat Anda.', 'blog4.jpeg', '2024-03-10'),
(45, 'Tips Sehat saat Bekerja dari Rumah', 'Tips untuk menjaga kesehatan saat bekerja dari rumah. Mengatur waktu dan lingkungan kerja yang sehat sangat penting. Ikuti panduan ini untuk hasil terbaik.', 'Bekerja dari rumah memiliki banyak keuntungan, tetapi juga dapat menimbulkan tantangan untuk menjaga kesehatan. Salah satu cara yang efektif untuk tetap sehat saat bekerja dari rumah adalah dengan mengatur waktu kerja yang teratur. Cobalah untuk membuat jadwal harian yang mencakup waktu untuk bekerja, istirahat, makan, dan berolahraga.\n\nMenciptakan lingkungan kerja yang nyaman dan ergonomis juga penting untuk kesehatan. Pastikan kursi dan meja Anda mendukung postur tubuh yang baik untuk mencegah nyeri punggung dan leher. Menggunakan alat bantu seperti bantal penyangga atau meja yang dapat diatur tingginya juga bisa membantu.\n\nMengambil istirahat secara teratur untuk bergerak dan meregangkan tubuh juga penting. Duduk dalam waktu yang lama dapat berdampak buruk pada kesehatan, jadi pastikan Anda berdiri, berjalan, atau melakukan peregangan setiap beberapa jam. Mengonsumsi makanan sehat dan tetap terhidrasi juga penting untuk menjaga energi dan fokus selama bekerja. Dengan mengikuti tips ini, Anda dapat menjaga kesehatan dan produktivitas saat bekerja dari rumah.', 'blog5.jpg', '2024-03-30'),
(46, 'Cara Mengatasi Flu dengan Alami', 'Tips alami untuk mengatasi flu dan meredakan gejalanya. Menggunakan bahan alami untuk perawatan flu. Ikuti panduan ini untuk hasil terbaik.', 'Flu adalah infeksi virus yang umum terjadi dan dapat menyebabkan gejala seperti demam, batuk, sakit tenggorokan, dan kelelahan. Ada beberapa cara alami yang dapat membantu mengatasi flu dan meredakan gejalanya. Salah satu cara yang efektif adalah dengan mengonsumsi banyak cairan seperti air, teh herbal, dan kaldu hangat. Cairan dapat membantu menjaga tubuh tetap terhidrasi dan melonggarkan lendir di saluran pernapasan.\n\nMengonsumsi makanan yang kaya akan vitamin C juga dapat membantu meningkatkan sistem kekebalan tubuh. Buah-buahan seperti jeruk, kiwi, dan stroberi kaya akan vitamin C yang dapat membantu tubuh melawan infeksi. Menggunakan bahan alami seperti jahe dan madu juga bisa membantu meredakan gejala flu. Jahe memiliki sifat anti-inflamasi dan dapat membantu mengurangi nyeri tenggorokan, sementara madu dapat membantu meredakan batuk.\n\nMenghirup uap dari air panas yang dicampur dengan beberapa tetes minyak esensial seperti eucalyptus atau peppermint juga dapat membantu meredakan hidung tersumbat. Dengan mengikuti cara-cara alami ini, Anda dapat meredakan gejala flu dan mempercepat proses penyembuhan.', 'blog6.jpeg', '2024-04-15'),
(48, 'Tips Menjaga Kesehatan Mental', 'Tips untuk menjaga kesehatan mental agar tetap optimal. Menggunakan teknik relaksasi dan perawatan diri. Ikuti panduan ini untuk kesehatan mental yang lebih baik.', 'Menjaga kesehatan mental adalah hal yang penting untuk kesejahteraan secara keseluruhan. Ada beberapa cara yang dapat membantu menjaga kesehatan mental agar tetap optimal. Salah satu cara yang efektif adalah dengan melakukan teknik relaksasi seperti meditasi, yoga, atau pernapasan dalam. Teknik-teknik ini dapat membantu menenangkan pikiran dan mengurangi stres.\n\nMengatur waktu untuk diri sendiri dan melakukan kegiatan yang menyenangkan juga penting untuk kesehatan mental. Luangkan waktu untuk hobi, olahraga, atau aktivitas yang Anda nikmati untuk mengurangi tekanan dan meningkatkan suasana hati. Berbicara dengan teman atau keluarga tentang perasaan Anda juga dapat membantu meringankan beban dan memberikan dukungan emosional.\n\nSelain itu, menjaga pola tidur yang baik, mengonsumsi makanan sehat, dan berolahraga secara teratur juga dapat mendukung kesehatan mental. Aktivitas fisik dapat membantu melepaskan endorfin yang dapat meningkatkan suasana hati dan mengurangi gejala depresi dan kecemasan. Dengan mengikuti tips ini, Anda dapat menjaga kesehatan mental dan meningkatkan kualitas hidup Anda.', 'blog8.jpeg', '2024-05-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `Event_ID` int(11) NOT NULL,
  `Kota_Event` text DEFAULT NULL,
  `Lokasi_Event` text NOT NULL,
  `Deskripsi_Event` text DEFAULT NULL,
  `Harga_Tiket` decimal(10,2) DEFAULT NULL,
  `Tanggal_Event` date DEFAULT NULL,
  `Nama_Event` text DEFAULT NULL,
  `Gambar_Event` text DEFAULT NULL,
  `Jam_Event` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`Event_ID`, `Kota_Event`, `Lokasi_Event`, `Deskripsi_Event`, `Harga_Tiket`, `Tanggal_Event`, `Nama_Event`, `Gambar_Event`, `Jam_Event`) VALUES
(15, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'KAI 100K Marathon', 'event15.jpg', '06:23:00'),
(16, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Sleman Temple Run', 'event6.jpg', '09:39:00'),
(17, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Bantul Sprint Challenge', 'event13.jpg', '07:01:00'),
(18, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Kulon Progo Yoga Fest', 'event18.jpg', '07:02:00'),
(19, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event11.jpg', '08:03:00'),
(20, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Sprint Challenge', 'event10.jpg', '07:30:00'),
(21, 'Sleman', 'Kompleks Candi Prambanan', 'Semangat untuk hidup sehat!', 125000.00, '2024-04-18', 'Prambanan Marathon', 'event1.jpg', '06:00:00'),
(22, 'Bantul', 'Stadion Sultan Agung', 'Yuk bersepeda bersama!', 175000.00, '2024-03-30', 'Ratu Boko Temple Run', 'event2.jpg', '07:00:00'),
(23, 'Gunung Kidul', 'Alun-Alun Utara', 'Olahraga menyatukan kita!', 200000.00, '2023-12-10', 'Jogja Cycling Fest', 'event3.jpg', '06:45:00'),
(24, 'Kulon Progo', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 50000.00, '2023-08-21', 'Kulon Progo Archery Contest', 'event12.jpeg', '07:15:00'),
(25, 'Sleman', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 0.00, '2023-09-15', 'Gunung Kidul Soccer Cup', 'event16.jpg', '08:00:00'),
(26, 'Bantul', 'Kompleks Candi Prambanan', 'Bersama kita bisa mencapai kebugaran!', 125000.00, '2024-05-05', 'Jogja Swimming Competition', 'event6.jpg', '06:30:00'),
(27, 'Gunung Kidul', 'Stadion Maguwoharjo', 'Raih kesehatan dengan berolahraga!', 175000.00, '2024-06-17', 'Sleman Badminton Open', 'event7.jpg', '08:15:00'),
(28, 'Kulon Progo', 'Lapangan Kridosono', 'Yuk bersepeda bersama!', 200000.00, '2024-02-27', 'Prambanan Yoga Fest', 'event8.jpg', '07:00:00'),
(29, 'Jogja', 'Kompleks Candi Prambanan', 'Olahraga menyatukan kita!', 175000.00, '2024-04-13', 'Kulon Progo Basketball League', 'event9.jpg', '06:45:00'),
(30, 'Sleman', 'Stadion Sultan Agung', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-12-25', 'Gunung Kidul Soccer Cup', 'event10.jpg', '07:30:00'),
(31, 'Bantul', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 125000.00, '2023-10-19', 'Merapi Sprint Challenge', 'event11.jpg', '06:00:00'),
(32, 'Sleman', 'Alun-Alun Utara', 'Semangat untuk hidup sehat!', 175000.00, '2024-03-15', 'Jogja Cycling Fest', 'event16.jpg', '07:00:00'),
(33, 'Kulon Progo', 'Lapangan Kridosono', 'Olahraga menyatukan kita!', 200000.00, '2023-07-23', 'Ratu Boko Temple Run', 'event13.jpg', '06:45:00'),
(34, 'Sleman', 'Kompleks Candi Prambanan', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-11', 'Kulon Progo Yoga Fest', 'event14.jpg', '07:30:00'),
(35, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'Prambanan Marathon', 'event15.jpg', '06:23:00'),
(36, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Merapi Sprint Challenge', 'event16.jpg', '09:39:00'),
(37, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Sleman Temple Run', 'event17.jpg', '07:01:00'),
(38, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Gunung Kidul Soccer Cup', 'event18.jpg', '07:02:00'),
(39, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event19.jpg', '08:03:00'),
(40, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Archery Contest', 'event20.jpg', '07:30:00'),
(41, 'Sleman', 'Kompleks Candi Prambanan', 'Semangat untuk hidup sehat!', 125000.00, '2024-04-18', 'Prambanan Temple Run', 'event1.jpg', '06:00:00'),
(42, 'Bantul', 'Stadion Sultan Agung', 'Yuk bersepeda bersama!', 175000.00, '2024-03-30', 'Ratu Boko Sprint Challenge', 'event2.jpg', '07:00:00'),
(43, 'Gunung Kidul', 'Alun-Alun Utara', 'Olahraga menyatukan kita!', 200000.00, '2023-12-10', 'Jogja Yoga Fest', 'event3.jpg', '06:45:00'),
(44, 'Kulon Progo', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 50000.00, '2023-08-21', 'Kulon Progo Cycling Fest', 'event4.jpg', '07:15:00'),
(45, 'Sleman', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 0.00, '2023-09-15', 'Gunung Kidul Basketball League', 'event5.jpg', '08:00:00'),
(46, 'Bantul', 'Kompleks Candi Prambanan', 'Bersama kita bisa mencapai kebugaran!', 125000.00, '2024-05-05', 'Jogja Swimming Competition', 'event6.jpg', '06:30:00'),
(47, 'Gunung Kidul', 'Stadion Maguwoharjo', 'Raih kesehatan dengan berolahraga!', 175000.00, '2024-06-17', 'Sleman Badminton Open', 'event7.jpg', '08:15:00'),
(48, 'Kulon Progo', 'Lapangan Kridosono', 'Yuk bersepeda bersama!', 200000.00, '2024-02-27', 'Prambanan Yoga Fest', 'event8.jpg', '07:00:00'),
(49, 'Jogja', 'Kompleks Candi Prambanan', 'Olahraga menyatukan kita!', 175000.00, '2024-04-13', 'Kulon Progo Basketball League', 'event9.jpg', '06:45:00'),
(50, 'Sleman', 'Stadion Sultan Agung', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-12-25', 'Gunung Kidul Soccer Cup', 'event10.jpg', '07:30:00'),
(51, 'Bantul', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 125000.00, '2023-10-19', 'Merapi Sprint Challenge', 'event11.jpg', '06:00:00'),
(52, 'Gunung Kidul', 'Alun-Alun Utara', 'Semangat untuk hidup sehat!', 175000.00, '2024-03-15', 'Jogja Cycling Fest', 'event12.jpg', '07:00:00'),
(53, 'Kulon Progo', 'Lapangan Kridosono', 'Olahraga menyatukan kita!', 200000.00, '2023-07-23', 'Ratu Boko Temple Run', 'event13.jpg', '06:45:00'),
(54, 'Sleman', 'Kompleks Candi Prambanan', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-11', 'Kulon Progo Yoga Fest', 'event14.jpg', '07:30:00'),
(55, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'Prambanan Marathon', 'event15.jpg', '06:23:00'),
(56, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Merapi Sprint Challenge', 'event16.jpg', '09:39:00'),
(57, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Sleman Temple Run', 'event17.jpg', '07:01:00'),
(58, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Gunung Kidul Soccer Cup', 'event18.jpg', '07:02:00'),
(59, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event19.jpg', '08:03:00'),
(60, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Archery Contest', 'event20.jpg', '07:30:00'),
(61, 'Sleman', 'Kompleks Candi Prambanan', 'Semangat untuk hidup sehat!', 125000.00, '2024-04-18', 'Prambanan Temple Run', 'event1.jpg', '06:00:00'),
(62, 'Bantul', 'Stadion Sultan Agung', 'Yuk bersepeda bersama!', 175000.00, '2024-03-30', 'Ratu Boko Sprint Challenge', 'event2.jpg', '07:00:00'),
(63, 'Gunung Kidul', 'Alun-Alun Utara', 'Olahraga menyatukan kita!', 200000.00, '2023-12-10', 'Jogja Yoga Fest', 'event3.jpg', '06:45:00'),
(64, 'Kulon Progo', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 50000.00, '2023-08-21', 'Kulon Progo Cycling Fest', 'event4.jpg', '07:15:00'),
(65, 'Sleman', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 0.00, '2023-09-15', 'Gunung Kidul Basketball League', 'event5.jpg', '08:00:00'),
(66, 'Bantul', 'Kompleks Candi Prambanan', 'Bersama kita bisa mencapai kebugaran!', 125000.00, '2024-05-05', 'Jogja Swimming Competition', 'event6.jpg', '06:30:00'),
(67, 'Gunung Kidul', 'Stadion Maguwoharjo', 'Raih kesehatan dengan berolahraga!', 175000.00, '2024-06-17', 'Sleman Badminton Open', 'event7.jpg', '08:15:00'),
(68, 'Kulon Progo', 'Lapangan Kridosono', 'Yuk bersepeda bersama!', 200000.00, '2024-02-27', 'Prambanan Yoga Fest', 'event8.jpg', '07:00:00'),
(69, 'Jogja', 'Kompleks Candi Prambanan', 'Olahraga menyatukan kita!', 175000.00, '2024-04-13', 'Kulon Progo Basketball League', 'event9.jpg', '06:45:00'),
(70, 'Sleman', 'Stadion Sultan Agung', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-12-25', 'Gunung Kidul Soccer Cup', 'event10.jpg', '07:30:00'),
(71, 'Bantul', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 125000.00, '2023-10-19', 'Merapi Sprint Challenge', 'event11.jpg', '06:00:00'),
(72, 'Gunung Kidul', 'Alun-Alun Utara', 'Semangat untuk hidup sehat!', 175000.00, '2024-03-15', 'Jogja Cycling Fest', 'event12.jpg', '07:00:00'),
(73, 'Kulon Progo', 'Lapangan Kridosono', 'Olahraga menyatukan kita!', 200000.00, '2023-07-23', 'Ratu Boko Temple Run', 'event13.jpg', '06:45:00'),
(74, 'Sleman', 'Kompleks Candi Prambanan', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-11', 'Kulon Progo Yoga Fest', 'event14.jpg', '07:30:00'),
(75, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'Prambanan Marathon', 'event15.jpg', '06:23:00'),
(76, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Merapi Sprint Challenge', 'event16.jpg', '09:39:00'),
(77, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Sleman Temple Run', 'event17.jpg', '07:01:00'),
(78, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Gunung Kidul Soccer Cup', 'event18.jpg', '07:02:00'),
(79, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event19.jpg', '08:03:00'),
(80, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Archery Contest', 'event20.jpg', '07:30:00'),
(81, 'Sleman', 'Kompleks Candi Prambanan', 'Semangat untuk hidup sehat!', 125000.00, '2024-04-18', 'Prambanan Temple Run', 'event1.jpg', '06:00:00'),
(82, 'Bantul', 'Stadion Sultan Agung', 'Yuk bersepeda bersama!', 175000.00, '2024-03-30', 'Ratu Boko Sprint Challenge', 'event2.jpg', '07:00:00'),
(83, 'Gunung Kidul', 'Alun-Alun Utara', 'Olahraga menyatukan kita!', 200000.00, '2023-12-10', 'Jogja Yoga Fest', 'event3.jpg', '06:45:00'),
(84, 'Kulon Progo', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 50000.00, '2023-08-21', 'Kulon Progo Cycling Fest', 'event4.jpg', '07:15:00'),
(85, 'Sleman', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 0.00, '2023-09-15', 'Gunung Kidul Basketball League', 'event5.jpg', '08:00:00'),
(86, 'Bantul', 'Kompleks Candi Prambanan', 'Bersama kita bisa mencapai kebugaran!', 125000.00, '2024-05-05', 'Jogja Swimming Competition', 'event6.jpg', '06:30:00'),
(87, 'Gunung Kidul', 'Stadion Maguwoharjo', 'Raih kesehatan dengan berolahraga!', 175000.00, '2024-06-17', 'Sleman Badminton Open', 'event7.jpg', '08:15:00'),
(88, 'Kulon Progo', 'Lapangan Kridosono', 'Yuk bersepeda bersama!', 200000.00, '2024-02-27', 'Prambanan Yoga Fest', 'event8.jpg', '07:00:00'),
(89, 'Jogja', 'Kompleks Candi Prambanan', 'Olahraga menyatukan kita!', 175000.00, '2024-04-13', 'Kulon Progo Basketball League', 'event9.jpg', '06:45:00'),
(90, 'Sleman', 'Stadion Sultan Agung', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-12-25', 'Gunung Kidul Soccer Cup', 'event10.jpg', '07:30:00'),
(91, 'Bantul', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 125000.00, '2023-10-19', 'Merapi Sprint Challenge', 'event11.jpg', '06:00:00'),
(92, 'Gunung Kidul', 'Alun-Alun Utara', 'Semangat untuk hidup sehat!', 175000.00, '2024-03-15', 'Jogja Cycling Fest', 'event12.jpg', '07:00:00'),
(93, 'Kulon Progo', 'Lapangan Kridosono', 'Olahraga menyatukan kita!', 200000.00, '2023-07-23', 'Ratu Boko Temple Run', 'event13.jpg', '06:45:00'),
(94, 'Sleman', 'Kompleks Candi Prambanan', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-11', 'Kulon Progo Yoga Fest', 'event14.jpg', '07:30:00'),
(95, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'Prambanan Marathon', 'event15.jpg', '06:23:00'),
(96, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Merapi Sprint Challenge', 'event16.jpg', '09:39:00'),
(97, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Sleman Temple Run', 'event17.jpg', '07:01:00'),
(98, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Gunung Kidul Soccer Cup', 'event18.jpg', '07:02:00'),
(99, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event19.jpg', '08:03:00'),
(100, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Archery Contest', 'event20.jpg', '07:30:00'),
(101, 'Sleman', 'Kompleks Candi Prambanan', 'Semangat untuk hidup sehat!', 125000.00, '2024-04-18', 'Prambanan Temple Run', 'event1.jpg', '06:00:00'),
(102, 'Bantul', 'Stadion Sultan Agung', 'Yuk bersepeda bersama!', 175000.00, '2024-03-30', 'Ratu Boko Sprint Challenge', 'event2.jpg', '07:00:00'),
(103, 'Gunung Kidul', 'Alun-Alun Utara', 'Olahraga menyatukan kita!', 200000.00, '2023-12-10', 'Jogja Yoga Fest', 'event3.jpg', '06:45:00'),
(104, 'Kulon Progo', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 50000.00, '2023-08-21', 'Kulon Progo Cycling Fest', 'event4.jpg', '07:15:00'),
(105, 'Sleman', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 0.00, '2023-09-15', 'Gunung Kidul Basketball League', 'event5.jpg', '08:00:00'),
(106, 'Bantul', 'Kompleks Candi Prambanan', 'Bersama kita bisa mencapai kebugaran!', 125000.00, '2024-05-05', 'Jogja Swimming Competition', 'event6.jpg', '06:30:00'),
(107, 'Gunung Kidul', 'Stadion Maguwoharjo', 'Raih kesehatan dengan berolahraga!', 175000.00, '2024-06-17', 'Sleman Badminton Open', 'event7.jpg', '08:15:00'),
(108, 'Kulon Progo', 'Lapangan Kridosono', 'Yuk bersepeda bersama!', 200000.00, '2024-02-27', 'Prambanan Yoga Fest', 'event8.jpg', '07:00:00'),
(109, 'Jogja', 'Kompleks Candi Prambanan', 'Olahraga menyatukan kita!', 175000.00, '2024-04-13', 'Kulon Progo Basketball League', 'event9.jpg', '06:45:00'),
(110, 'Sleman', 'Stadion Sultan Agung', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-12-25', 'Gunung Kidul Soccer Cup', 'event10.jpg', '07:30:00'),
(111, 'Bantul', 'Pantai Parangtritis', 'Mari berlari menuju kesehatan!', 125000.00, '2023-10-19', 'Merapi Sprint Challenge', 'event11.jpg', '06:00:00'),
(112, 'Gunung Kidul', 'Alun-Alun Utara', 'Semangat untuk hidup sehat!', 175000.00, '2024-03-15', 'Jogja Cycling Fest', 'event12.jpg', '07:00:00'),
(113, 'Kulon Progo', 'Lapangan Kridosono', 'Olahraga menyatukan kita!', 200000.00, '2023-07-23', 'Ratu Boko Temple Run', 'event13.jpg', '06:45:00'),
(114, 'Sleman', 'Kompleks Candi Prambanan', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-11', 'Kulon Progo Yoga Fest', 'event14.jpg', '07:30:00'),
(115, 'Jogja', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 186402.17, '2024-02-18', 'Prambanan Marathon', 'event15.jpg', '06:23:00'),
(116, 'Gunung Kidul', 'Kompleks Candi Prambanan', 'Yuk bersepeda bersama!', 239515.84, '2023-10-16', 'Merapi Sprint Challenge', 'event16.jpg', '09:39:00'),
(117, 'Kulon Progo', 'Lapangan Kridosono', 'Saatnya hidup sehat!', 122126.83, '2024-01-07', 'Sleman Temple Run', 'event17.jpg', '07:01:00'),
(118, 'Bantul', 'Pantai Parangtritis', 'Semangat untuk hidup sehat!', 94939.29, '2023-09-18', 'Gunung Kidul Soccer Cup', 'event18.jpg', '07:02:00'),
(119, 'Sleman', 'Stadion Sultan Agung', 'Semangat untuk hidup sehat!', 102344.13, '2023-07-11', 'Jogja Cycling Tour', 'event19.jpg', '08:03:00'),
(120, 'Jogja', 'Stadion Maguwoharjo', 'Ayo berolahraga dan sehat bersama!', 150000.00, '2023-11-05', 'Merapi Archery Contest', 'event12.jpeg', '07:30:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `Menu_ID` int(11) NOT NULL,
  `UMKM_ID` int(11) DEFAULT NULL,
  `Tipe` varchar(50) DEFAULT NULL,
  `Lokasi` text DEFAULT NULL,
  `Rating` decimal(3,2) DEFAULT NULL,
  `Harga` decimal(10,2) DEFAULT NULL,
  `Gambar_Menu` text DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL,
  `Nama_Menu` varchar(100) DEFAULT NULL,
  `Kalori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`Menu_ID`, `UMKM_ID`, `Tipe`, `Lokasi`, `Rating`, `Harga`, `Gambar_Menu`, `Deskripsi`, `Nama_Menu`, `Kalori`) VALUES
(85, 5, 'vegan', 'Jogja', 4.50, 30000.00, '1.png', 'Campuran sayuran segar yang menyegarkan', 'Salad Vegan', 200),
(86, 5, 'vegan', 'Jogja', 4.70, 32000.00, '2.png', 'Quinoa ditumis dengan sayuran berwarna-warni', 'Tumis Quinoa dan Sayuran', 250),
(87, 5, 'vegan', 'Jogja', 4.60, 33000.00, '3.png', 'Granola renyah dengan buah dan kacang', 'Granola Buah dan Kacang', 300),
(88, 6, 'bulking', 'Gunungkidul', 4.80, 35000.00, '4.png', 'Ayam panggang dengan nasi merah dan sayuran', 'Mangkuk Protein Ayam', 600),
(89, 6, 'bulking', 'Gunungkidul', 4.90, 37000.00, '5.png', 'Tumis daging sapi dengan brokoli dan nasi', 'Daging Sapi dan Brokoli', 650),
(90, 6, 'bulking', 'Gunungkidul', 4.50, 29000.00, '6.png', 'Smoothie dengan selai kacang dan pisang', 'Smoothie Selai Kacang', 400),
(91, 8, 'cutting', 'Kulon Progo', 4.70, 25000.00, '7.png', 'Muffin telur dengan bayam dan keju', 'Muffin Telur Rendah Karbohidrat', 150),
(92, 8, 'cutting', 'Kulon Progo', 4.60, 26000.00, '8.png', 'Wrap selada dengan daging kalkun dan sayuran', 'Wrap Selada Turki', 200),
(93, 8, 'cutting', 'Kulon Progo', 4.80, 27000.00, '9.png', 'Mie zucchini dengan saus marinara', 'Mie Zucchini', 100),
(94, 10, 'diabetes', 'Bantul', 4.50, 28000.00, '10.png', 'Smoothie dengan buah beri dan susu almond', 'Smoothie Buah untuk Diabetes', 180),
(95, 10, 'diabetes', 'Bantul', 4.70, 34000.00, '11.png', 'Pasta dengan saus tomat dan sayuran', 'Pasta Gandum Utuh', 350),
(96, 10, 'diabetes', 'Bantul', 4.60, 36000.00, '12.png', 'Ayam panggang dengan sayuran hijau', 'Salad Ayam Panggang', 250),
(97, 11, 'hipertensi', 'Gunungkidul', 4.80, 38000.00, '13.png', 'Roti gandum utuh dengan alpukat', 'Roti Alpukat', 300),
(98, 11, 'hipertensi', 'Gunungkidul', 4.90, 39000.00, '14.png', 'Salmon panggang dengan herba dan lemon', 'Salmon Panggang', 400),
(99, 11, 'hipertensi', 'Gunungkidul', 4.50, 40000.00, '15.png', 'Sayuran panggang yang sempurna', 'Sayuran Panggang', 200),
(100, 12, 'vegan', 'Sleman', 4.70, 27000.00, '16.png', 'Chickpea dimasak dalam saus kari yang kaya', 'Kari Chickpea Vegan', 350),
(101, 12, 'vegan', 'Sleman', 4.60, 28000.00, '17.png', 'Paprika diisi dengan quinoa dan sayuran', 'Paprika Isi', 250),
(102, 12, 'vegan', 'Sleman', 4.80, 29000.00, '18.png', 'Buah segar dengan sedikit mint', 'Salad Buah Campur', 150),
(103, 13, 'bulking', 'Jogja', 4.70, 30000.00, '19.png', 'Omelet dengan daging ham dan keju', 'Omelet Berprotein', 400),
(104, 13, 'bulking', 'Jogja', 4.80, 31000.00, '20.png', 'Steak panggang dengan kentang tumbuk', 'Steak dan Kentang', 700),
(105, 13, 'bulking', 'Jogja', 4.90, 32000.00, '1.png', 'Shake dengan cokelat dan protein whey', 'Shake Protein Cokelat', 350),
(106, 14, 'cutting', 'Kulon Progo', 4.50, 33000.00, '2.png', 'Salad Caesar ayam tanpa croutons', 'Salad Caesar Ayam Rendah Karbohidrat', 200),
(107, 14, 'cutting', 'Kulon Progo', 4.60, 34000.00, '3.png', 'Spaghetti squash dengan saus marinara', 'Spaghetti Squash', 150),
(108, 14, 'cutting', 'Kulon Progo', 4.70, 35000.00, '4.png', 'Taco ikan dengan slaw kol', 'Taco Ikan Panggang', 300),
(109, 17, 'diabetes', 'Jogja', 4.80, 36000.00, '5.png', 'Salad dengan quinoa, kacang hitam, dan jagung', 'Salad Quinoa dan Kacang Hitam', 250),
(110, 17, 'diabetes', 'Jogja', 4.90, 37000.00, '6.png', 'Sup lentil yang kaya dengan sayuran', 'Sup Lentil', 200),
(111, 17, 'diabetes', 'Jogja', 4.50, 38000.00, '7.png', 'Tumis dengan tahu dan sayuran', 'Tumis Sayuran', 150),
(112, 19, 'hipertensi', 'Kulon Progo', 4.70, 39000.00, '8.png', 'Sandwich gandum utuh dengan sayuran panggang', 'Sandwich Sayuran Panggang', 250),
(113, 19, 'hipertensi', 'Kulon Progo', 4.60, 40000.00, '9.png', 'Salad buah segar dengan saus ringan', 'Salad Buah', 150),
(114, 19, 'hipertensi', 'Kulon Progo', 4.80, 25000.00, '10.png', 'Oatmeal dengan buah berri segar', 'Oatmeal dengan Buah Berri', 200),
(115, 21, 'vegan', 'Sleman', 4.50, 26000.00, '11.png', 'Mangkuk dengan quinoa, tahu, dan sayuran', 'Mangkuk Buddha Vegan', 300),
(116, 21, 'vegan', 'Sleman', 4.60, 27000.00, '12.png', 'Samosa renyah dengan isi sayuran', 'Samosa Sayuran', 200),
(117, 21, 'vegan', 'Sleman', 4.70, 28000.00, '13.png', 'Puding dengan biji chia dan susu almond', 'Puding Chia', 150),
(118, 22, 'bulking', 'Jogja', 4.80, 29000.00, '14.png', 'Ayam dan sayuran panggang yang sempurna', 'Ayam Panggang dan Sayuran', 450),
(119, 22, 'bulking', 'Jogja', 4.90, 30000.00, '15.png', 'Pancake dengan bubuk protein', 'Pancake Protein', 350),
(120, 22, 'bulking', 'Jogja', 4.50, 31000.00, '16.png', 'Bola daging dengan kalkun rendah lemak', 'Bola Daging Kalkun', 300),
(121, 23, 'cutting', 'Kulon Progo', 4.70, 32000.00, '17.png', 'Nasi dari kembang kol parut', 'Nasi Kembang Kol', 100),
(122, 23, 'cutting', 'Kulon Progo', 4.60, 33000.00, '18.png', 'Lasagna dengan terong sebagai pengganti mie', 'Lasagna Terong', 200),
(123, 23, 'cutting', 'Kulon Progo', 4.80, 34000.00, '19.png', 'Zucchini isi dengan daging sapi rendah lemak', 'Perahu Zucchini Isi', 150),
(124, 24, 'diabetes', 'Sleman', 4.50, 35000.00, '20.png', 'Tahu tumis dengan sayuran', 'Tumis Tahu', 200),
(125, 24, 'diabetes', 'Sleman', 4.70, 36000.00, '1.png', 'Pancake dengan tepung soba', 'Pancake Soba', 250),
(126, 24, 'diabetes', 'Sleman', 4.60, 37000.00, '2.png', 'Salad dengan chickpea, mentimun, dan tomat', 'Salad Chickpea', 200),
(127, 26, 'hipertensi', 'Jogja', 4.80, 38000.00, '3.png', 'Nasi merah dengan sayuran kukus', 'Mangkuk Nasi Merah dan Sayuran', 300),
(128, 26, 'hipertensi', 'Jogja', 4.90, 39000.00, '4.png', 'Udang panggang dengan bawang putih dan herba', 'Udang Panggang', 250),
(129, 26, 'hipertensi', 'Jogja', 4.50, 40000.00, '5.png', 'Salsa mangga segar dengan jeruk nipis', 'Salsa Mangga', 100),
(130, 28, 'vegan', 'Gunungkidul', 4.70, 25000.00, '6.png', 'Burrito dengan kacang hitam dan nasi', 'Burrito Vegan', 350),
(131, 28, 'vegan', 'Gunungkidul', 4.60, 26000.00, '7.png', 'Wrap dengan falafel dan sayuran', 'Wrap Falafel', 300),
(132, 28, 'vegan', 'Gunungkidul', 4.80, 27000.00, '8.png', 'Kari sayuran dengan santan', 'Kari Sayuran', 250),
(133, 29, 'bulking', 'Kulon Progo', 4.50, 28000.00, '9.png', 'Nasi putih dengan lauk', 'Nasi Putih', 400),
(134, 29, 'bulking', 'Kulon Progo', 4.70, 29000.00, '10.png', 'Nasi uduk dengan lauk pauk', 'Nasi Uduk', 450),
(135, 29, 'bulking', 'Kulon Progo', 4.60, 30000.00, '11.png', 'Smoothie dengan pisang dan protein whey', 'Smoothie Protein Pisang', 350),
(136, 31, 'cutting', 'Sleman', 4.50, 31000.00, '12.png', 'Salad dengan kale dan quinoa', 'Salad Kale dan Quinoa', 200),
(137, 31, 'cutting', 'Sleman', 4.70, 32000.00, '13.png', 'Ikan panggang dengan sayuran kukus', 'Ikan Panggang dengan Sayuran', 250),
(138, 31, 'cutting', 'Sleman', 4.60, 33000.00, '14.png', 'Sup sayuran rendah kalori', 'Sup Sayuran Rendah Kalori', 150),
(139, 33, 'diabetes', 'Gunungkidul', 4.80, 34000.00, '15.png', 'Muffin pisang dengan tepung almond', 'Muffin Pisang untuk Diabetes', 180),
(140, 33, 'diabetes', 'Gunungkidul', 4.90, 35000.00, '16.png', 'Ayam bakar dengan rempah-rempah', 'Ayam Bakar Rempah', 300),
(141, 33, 'diabetes', 'Gunungkidul', 4.50, 36000.00, '17.png', 'Salad hijau dengan alpukat dan biji chia', 'Salad Hijau dengan Alpukat', 250),
(142, 34, 'hipertensi', 'Kulon Progo', 4.70, 37000.00, '18.png', 'Roti gandum utuh isi sayuran panggang', 'Roti Gandum Isi Sayuran', 200),
(143, 34, 'hipertensi', 'Kulon Progo', 4.60, 38000.00, '19.png', 'Udang goreng dengan tepung sehat', 'Udang Goreng Tepung', 300),
(144, 34, 'hipertensi', 'Kulon Progo', 4.80, 39000.00, '20.png', 'Nasi merah dengan kacang hitam', 'Nasi Merah dan Kacang Hitam', 250),
(145, 36, 'vegan', 'Sleman', 4.50, 40000.00, '1.png', 'Smoothie dengan berbagai macam buah', 'Smoothie Buah Campur', 150),
(146, 36, 'vegan', 'Sleman', 4.70, 25000.00, '2.png', 'Sup miso dengan tahu dan rumput laut', 'Sup Miso Vegan', 100),
(147, 36, 'vegan', 'Sleman', 4.60, 26000.00, '3.png', 'Salad dengan wortel dan bit', 'Salad Wortel dan Bit', 180),
(148, 37, 'bulking', 'Jogja', 4.80, 27000.00, '4.png', 'Burger ayam dengan roti gandum', 'Burger Ayam Sehat', 500),
(149, 37, 'bulking', 'Jogja', 4.90, 28000.00, '5.png', 'Pizza dengan topping protein tinggi', 'Pizza Protein', 600),
(150, 37, 'bulking', 'Jogja', 4.50, 29000.00, '6.png', 'Nasi goreng dengan ayam dan sayuran', 'Nasi Goreng', 700),
(151, 39, 'cutting', 'Kulon Progo', 4.70, 30000.00, '7.png', 'Smoothie hijau dengan sayuran rendah karbohidrat', 'Smoothie Hijau Rendah Karbohidrat', 150),
(152, 39, 'cutting', 'Kulon Progo', 4.60, 31000.00, '8.png', 'Pasta dengan zucchini dan saus tomat', 'Pasta Zucchini', 100),
(153, 39, 'cutting', 'Kulon Progo', 4.80, 32000.00, '9.png', 'Ikan bakar dengan sayuran segar', 'Ikan Bakar dengan Sayuran', 200),
(154, 40, 'diabetes', 'Bantul', 4.50, 33000.00, '10.png', 'Pancake dengan oatmeal dan buah segar', 'Pancake Oatmeal untuk Diabetes', 180),
(155, 40, 'diabetes', 'Bantul', 4.70, 34000.00, '11.png', 'Sayur lodeh dengan santan rendah lemak', 'Sayur Lodeh', 150),
(156, 40, 'diabetes', 'Bantul', 4.60, 35000.00, '12.png', 'Ayam dengan saus kecap rendah gula', 'Ayam Kecap', 250),
(157, 42, 'hipertensi', 'Jogja', 4.80, 36000.00, '13.png', 'Sup tomat dengan herba panggang', 'Sup Tomat Panggang', 200),
(158, 42, 'hipertensi', 'Jogja', 4.90, 37000.00, '14.png', 'Tumis bayam dengan bawang putih', 'Tumis Bayam dan Bawang Putih', 100),
(159, 42, 'hipertensi', 'Jogja', 4.50, 38000.00, '15.png', 'Nasi uduk dengan tahu dan sayuran', 'Nasi Uduk dengan Tahu', 300),
(160, 43, 'vegan', 'Gunungkidul', 4.50, 39000.00, '16.png', 'Smoothie dengan berbagai macam buah', 'Smoothie Buah Campur', 150),
(161, 43, 'vegan', 'Gunungkidul', 4.70, 40000.00, '17.png', 'Sup miso dengan tahu dan rumput laut', 'Sup Miso Vegan', 100),
(162, 43, 'vegan', 'Gunungkidul', 4.60, 25000.00, '18.png', 'Salad dengan wortel dan bit', 'Salad Wortel dan Bit', 180),
(163, 45, 'bulking', 'Kulon Progo', 4.80, 26000.00, '19.png', 'Burger ayam dengan roti gandum', 'Burger Ayam Sehat', 500),
(164, 45, 'bulking', 'Kulon Progo', 4.90, 27000.00, '20.png', 'Pizza dengan topping protein tinggi', 'Pizza Protein', 600),
(165, 45, 'bulking', 'Kulon Progo', 4.50, 28000.00, '1.png', 'Nasi goreng dengan ayam dan sayuran', 'Nasi Goreng', 700),
(166, 47, 'cutting', 'Sleman', 4.70, 29000.00, '2.png', 'Smoothie hijau dengan sayuran rendah karbohidrat', 'Smoothie Hijau Rendah Karbohidrat', 150),
(167, 47, 'cutting', 'Sleman', 4.60, 30000.00, '3.png', 'Pasta dengan zucchini dan saus tomat', 'Pasta Zucchini', 100),
(168, 47, 'cutting', 'Sleman', 4.80, 31000.00, '4.png', 'Ikan bakar dengan sayuran segar', 'Ikan Bakar dengan Sayuran', 200),
(169, 49, 'diabetes', 'Gunungkidul', 4.50, 32000.00, '5.png', 'Pancake dengan oatmeal dan buah segar', 'Pancake Oatmeal untuk Diabetes', 180),
(170, 49, 'diabetes', 'Gunungkidul', 4.70, 33000.00, '6.png', 'Sayur lodeh dengan santan rendah lemak', 'Sayur Lodeh', 150),
(171, 49, 'diabetes', 'Gunungkidul', 4.60, 34000.00, '7.png', 'Ayam dengan saus kecap rendah gula', 'Ayam Kecap', 250),
(172, 50, 'hipertensi', 'Kulon Progo', 4.80, 35000.00, '8.png', 'Sup tomat dengan herba panggang', 'Sup Tomat Panggang', 200),
(173, 50, 'hipertensi', 'Kulon Progo', 4.90, 36000.00, '9.png', 'Tumis bayam dengan bawang putih', 'Tumis Bayam dan Bawang Putih', 100),
(174, 50, 'hipertensi', 'Kulon Progo', 4.50, 37000.00, '10.png', 'Nasi uduk dengan tahu dan sayuran', 'Nasi Uduk dengan Tahu', 300),
(175, 51, 'vegan', 'Sleman', 4.50, 38000.00, '11.png', 'Smoothie dengan berbagai macam buah', 'Smoothie Buah Campur', 150),
(176, 51, 'vegan', 'Sleman', 4.70, 39000.00, '12.png', 'Sup miso dengan tahu dan rumput laut', 'Sup Miso Vegan', 100),
(177, 51, 'vegan', 'Sleman', 4.60, 40000.00, '13.png', 'Salad dengan wortel dan bit', 'Salad Wortel dan Bit', 180),
(178, 53, 'bulking', 'Gunungkidul', 4.80, 25000.00, '14.png', 'Burger ayam dengan roti gandum', 'Burger Ayam Sehat', 500),
(179, 53, 'bulking', 'Gunungkidul', 4.90, 26000.00, '15.png', 'Pizza dengan topping protein tinggi', 'Pizza Protein', 600),
(180, 53, 'bulking', 'Gunungkidul', 4.50, 27000.00, '16.png', 'Nasi goreng dengan ayam dan sayuran', 'Nasi Goreng', 700),
(181, 54, 'cutting', 'Kulon Progo', 4.70, 30000.00, '17.png', 'Smoothie hijau dengan sayuran rendah karbohidrat', 'Smoothie Hijau Rendah Karbohidrat', 150),
(182, 54, 'cutting', 'Kulon Progo', 4.60, 35000.00, '18.png', 'Pasta dengan zucchini dan saus tomat', 'Pasta Zucchini', 100),
(183, 54, 'cutting', 'Kulon Progo', 4.80, 30000.00, '19.png', 'Ikan bakar dengan sayuran segar', 'Ikan Bakar dengan Sayuran', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_event`
--

CREATE TABLE `transaksi_event` (
  `Transaksi_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Event_ID` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Jumlah_Tiket` int(11) DEFAULT NULL,
  `Total_Harga` decimal(10,2) DEFAULT NULL,
  `Status_Pembayaran` varchar(50) DEFAULT NULL,
  `Tanggal_Pembelian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_event`
--

INSERT INTO `transaksi_event` (`Transaksi_ID`, `User_ID`, `Event_ID`, `Email`, `Jumlah_Tiket`, `Total_Harga`, `Status_Pembayaran`, `Tanggal_Pembelian`) VALUES
(882, 52, 43, 'muhammad52@example.com', 10, 1599607.98, 'Berhasil', '2023-06-22'),
(884, 82, 29, 'muhammad82@example.com', 6, 1125755.95, 'Berhasil', '2023-07-25'),
(886, 80, 18, 'muhammad80@example.com', 2, 381551.73, 'Berhasil', '2023-10-30'),
(889, 30, 19, 'muhammad30@example.com', 2, 193987.77, 'Berhasil', '2024-04-24'),
(892, 31, 45, 'muhammad31@example.com', 3, 186728.06, 'Berhasil', '2024-01-03'),
(893, 84, 34, 'muhammad84@example.com', 7, 823827.28, 'Berhasil', '2024-03-03'),
(894, 89, 42, 'muhammad89@example.com', 7, 830608.18, 'Berhasil', '2023-08-30'),
(895, 69, 22, 'muhammad69@example.com', 5, 645228.05, 'Berhasil', '2024-03-18'),
(896, 31, 25, 'muhammad31@example.com', 6, 617963.55, 'Berhasil', '2023-08-25'),
(898, 8, 39, 'muhammad8@example.com', 7, 1139360.74, 'Menunggu', '2023-06-27'),
(900, 42, 39, 'muhammad42@example.com', 3, 488297.46, 'Berhasil', '2024-01-16'),
(901, 96, 40, 'muhammad96@example.com', 8, 1329581.76, 'ditolak', '2023-06-18'),
(902, 24, 49, 'muhammad24@example.com', 8, 550945.31, 'Berhasil', '2024-03-14'),
(904, 9, 28, 'muhammad9@example.com', 2, 236430.56, 'Berhasil', '2023-06-16'),
(905, 97, 47, 'muhammad97@example.com', 8, 1151718.98, 'Menunggu', '2023-10-23'),
(906, 12, 42, 'muhammad12@example.com', 10, 1186583.11, 'Berhasil', '2023-11-23'),
(907, 9, 17, 'muhammad9@example.com', 2, 298895.30, 'Berhasil', '2023-09-22'),
(908, 9, 38, 'muhammad9@example.com', 6, 420517.82, 'Berhasil', '2023-11-04'),
(909, 6, 32, 'muhammad6@example.com', 2, 246671.71, 'Berhasil', '2023-11-11'),
(910, 19, 43, 'muhammad19@example.com', 6, 959764.79, 'Berhasil', '2023-10-31'),
(911, 70, 39, 'muhammad70@example.com', 8, 1302126.56, 'Berhasil', '2024-03-14'),
(912, 57, 17, 'muhammad57@example.com', 2, 298895.30, 'Berhasil', '2023-08-03'),
(913, 91, 18, 'muhammad91@example.com', 2, 381551.73, 'Berhasil', '2023-06-20'),
(914, 15, 15, 'muhammad15@example.com', 8, 467909.43, 'Berhasil', '2024-04-13'),
(915, 11, 33, 'muhammad11@example.com', 6, 630285.98, 'Berhasil', '2024-04-24'),
(917, 67, 32, 'muhammad67@example.com', 4, 493343.43, 'Berhasil', '2024-03-27'),
(918, 96, 32, 'muhammad96@example.com', 9, 1110022.71, 'Berhasil', '2023-10-25'),
(919, 8, 42, 'muhammad8@example.com', 1, 118658.31, 'Berhasil', '2024-05-15'),
(920, 96, 24, 'muhammad96@example.com', 3, 300131.92, 'Berhasil', '2024-04-12'),
(922, 95, 30, 'muhammad95@example.com', 3, 208182.06, 'Berhasil', '2024-03-11'),
(924, 80, 46, 'muhammad80@example.com', 10, 1913203.02, 'Menunggu', '2024-02-23'),
(926, 30, 27, 'muhammad30@example.com', 3, 356926.40, 'Menunggu', '2024-02-17'),
(927, 88, 27, 'muhammad88@example.com', 9, 1070779.21, 'Berhasil', '2023-07-10'),
(928, 54, 28, 'muhammad54@example.com', 10, 1182152.82, 'Berhasil', '2023-12-11'),
(930, 24, 17, 'muhammad24@example.com', 1, 149447.65, 'Berhasil', '2024-02-12'),
(933, 52, 43, 'muhammad52@example.com', 10, 1599607.98, 'Berhasil', '2023-12-26'),
(934, 7, 19, 'muhammad7@example.com', 6, 581963.32, 'Ditolak', '2023-11-19'),
(935, 82, 29, 'muhammad82@example.com', 6, 1125755.95, 'Berhasil', '2024-05-25'),
(936, 48, 32, 'muhammad48@example.com', 1, 123335.86, 'Menunggu', '2023-10-02'),
(937, 80, 18, 'muhammad80@example.com', 2, 381551.73, 'Berhasil', '2023-11-01'),
(940, 30, 19, 'muhammad30@example.com', 2, 193987.77, 'Berhasil', '2024-04-16'),
(942, 44, 21, 'muhammad44@example.com', 1, 97666.79, 'Berhasil', '2023-08-03'),
(943, 31, 45, 'muhammad31@example.com', 3, 186728.06, 'Berhasil', '2023-10-20'),
(944, 84, 34, 'muhammad84@example.com', 7, 823827.28, 'Berhasil', '2023-11-22'),
(945, 89, 42, 'muhammad89@example.com', 7, 830608.18, 'Berhasil', '2024-04-20'),
(946, 69, 22, 'muhammad69@example.com', 5, 645228.05, 'Berhasil', '2024-01-19'),
(947, 31, 25, 'muhammad31@example.com', 6, 617963.55, 'Berhasil', '2023-08-26'),
(949, 8, 39, 'muhammad8@example.com', 7, 1139360.74, 'Menunggu', '2023-12-22'),
(951, 42, 39, 'muhammad42@example.com', 3, 488297.46, 'Berhasil', '2023-07-31'),
(952, 96, 40, 'muhammad96@example.com', 8, 1329581.76, 'Menunggu', '2023-07-19'),
(953, 24, 49, 'muhammad24@example.com', 8, 550945.31, 'Berhasil', '2023-07-28'),
(955, 9, 28, 'muhammad9@example.com', 2, 236430.56, 'Berhasil', '2023-08-17'),
(956, 97, 47, 'muhammad97@example.com', 8, 1151718.98, 'Menunggu', '2023-08-23'),
(957, 12, 42, 'muhammad12@example.com', 10, 1186583.11, 'Berhasil', '2023-11-26'),
(958, 9, 17, 'muhammad9@example.com', 2, 298895.30, 'Berhasil', '2024-03-11'),
(959, 9, 38, 'muhammad9@example.com', 6, 420517.82, 'Berhasil', '2023-09-02'),
(960, 6, 32, 'muhammad6@example.com', 2, 246671.71, 'Berhasil', '2023-12-20'),
(961, 19, 43, 'muhammad19@example.com', 6, 959764.79, 'Berhasil', '2023-09-07'),
(962, 70, 39, 'muhammad70@example.com', 8, 1302126.56, 'Berhasil', '2023-06-10'),
(963, 57, 17, 'muhammad57@example.com', 2, 298895.30, 'Berhasil', '2024-01-24'),
(964, 91, 18, 'muhammad91@example.com', 2, 381551.73, 'Berhasil', '2023-06-10'),
(965, 15, 15, 'muhammad15@example.com', 8, 467909.43, 'Berhasil', '2024-01-07'),
(966, 11, 33, 'muhammad11@example.com', 6, 630285.98, 'Berhasil', '2024-01-19'),
(968, 67, 32, 'muhammad67@example.com', 4, 493343.43, 'Berhasil', '2023-11-13'),
(969, 96, 32, 'muhammad96@example.com', 9, 1110022.71, 'Berhasil', '2023-06-24'),
(970, 8, 42, 'muhammad8@example.com', 1, 118658.31, 'Berhasil', '2024-05-05'),
(971, 96, 24, 'muhammad96@example.com', 3, 300131.92, 'Berhasil', '2024-04-30'),
(973, 95, 30, 'muhammad95@example.com', 3, 208182.06, 'Berhasil', '2023-09-10'),
(975, 80, 46, 'muhammad80@example.com', 10, 1913203.02, 'Menunggu', '2024-04-26'),
(977, 30, 27, 'muhammad30@example.com', 3, 356926.40, 'Menunggu', '2023-08-29'),
(978, 88, 27, 'muhammad88@example.com', 9, 1070779.21, 'Berhasil', '2023-07-12'),
(979, 54, 28, 'muhammad54@example.com', 10, 1182152.82, 'Berhasil', '2024-02-23'),
(982, 24, 17, 'muhammad24@example.com', 1, 149447.65, 'Berhasil', '2024-02-03'),
(984, 35, 50, 'muhammad35@example.com', 4, 600128.61, 'Berhasil', '2023-06-09'),
(986, 53, 41, 'muhammad53@example.com', 1, 75574.70, 'Berhasil', '2024-01-30'),
(987, 94, 35, 'muhammad94@example.com', 7, 516917.09, 'Berhasil', '2024-05-20'),
(988, 35, 45, 'muhammad35@example.com', 5, 311213.44, 'Berhasil', '2023-10-25'),
(992, 4, 42, 'muhammad4@example.com', 4, 474633.24, 'Berhasil', '2024-05-12'),
(993, 27, 19, 'muhammad27@example.com', 3, 290981.66, 'Menunggu', '2023-12-21'),
(994, 47, 20, 'muhammad47@example.com', 5, 502134.92, 'Berhasil', '2023-11-11'),
(997, 50, 40, 'muhammad50@example.com', 1, 166197.72, 'Menunggu', '2023-06-19'),
(998, 5, 41, 'muhammad5@example.com', 8, 604597.62, 'Berhasil', '2024-03-15'),
(999, 77, 38, 'muhammad77@example.com', 10, 700863.04, 'Berhasil', '2023-11-10'),
(1000, 94, 50, 'muhammad94@example.com', 7, 1050225.07, 'Berhasil', '2024-03-11'),
(1001, 60, 26, 'muhammad60@example.com', 6, 486686.92, 'Berhasil', '2024-02-11'),
(1003, 81, 50, 'muhammad81@example.com', 6, 900192.92, 'Berhasil', '2023-09-03'),
(1004, 22, 25, 'muhammad22@example.com', 4, 411975.70, 'Menunggu', '2023-07-06'),
(1005, 89, 21, 'muhammad89@example.com', 4, 390667.17, 'Berhasil', '2024-02-14'),
(1007, 37, 37, 'muhammad37@example.com', 4, 458953.97, 'Berhasil', '2023-12-22'),
(1008, 72, 35, 'muhammad72@example.com', 6, 443071.79, 'Berhasil', '2024-03-08'),
(1009, 9, 18, 'muhammad9@example.com', 10, 1907758.65, 'Berhasil', '2024-05-11'),
(1013, 62, 34, 'muhammad62@example.com', 2, 235379.22, 'Berhasil', '2023-11-03'),
(1014, 46, 34, 'muhammad46@example.com', 9, 1059206.51, 'Menunggu', '2024-03-20'),
(1015, 29, 31, 'muhammad29@example.com', 2, 164659.74, 'Berhasil', '2023-11-19'),
(1016, 89, 25, 'muhammad89@example.com', 6, 617963.55, 'Berhasil', '2024-04-13'),
(1017, 12, 36, 'muhammad12@example.com', 8, 615850.77, 'Berhasil', '2023-06-04'),
(1018, 46, 40, 'muhammad46@example.com', 3, 498593.16, 'Berhasil', '2024-01-15'),
(1019, 39, 41, 'muhammad39@example.com', 8, 604597.62, 'Berhasil', '2023-08-23'),
(1020, 82, 17, 'muhammad82@example.com', 2, 298895.30, 'Berhasil', '2023-11-22'),
(1022, 90, 43, 'muhammad90@example.com', 2, 319921.60, 'Berhasil', '2023-06-03'),
(1027, 23, 16, 'muhammad23@example.com', 5, 939961.39, 'Ditolak', '2023-07-02'),
(1029, 79, 41, 'muhammad79@example.com', 3, 226724.11, 'Berhasil', '2023-11-28'),
(1030, 45, 31, 'muhammad45@example.com', 9, 740968.82, 'Berhasil', '2023-06-24'),
(1032, 24, 17, 'muhammad24@example.com', 1, 149447.65, 'Berhasil', '2024-05-01'),
(1034, 35, 50, 'muhammad35@example.com', 4, 600128.61, 'Berhasil', '2024-05-07'),
(1036, 53, 41, 'muhammad53@example.com', 1, 75574.70, 'Berhasil', '2023-09-20'),
(1037, 94, 35, 'muhammad94@example.com', 7, 516917.09, 'Berhasil', '2024-05-21'),
(1038, 35, 45, 'muhammad35@example.com', 5, 311213.44, 'Berhasil', '2023-11-20'),
(1042, 4, 42, 'muhammad4@example.com', 4, 474633.24, 'Berhasil', '2023-07-17'),
(1043, 27, 19, 'muhammad27@example.com', 3, 290981.66, 'Menunggu', '2023-06-11'),
(1044, 47, 20, 'muhammad47@example.com', 5, 502134.92, 'Berhasil', '2023-06-27'),
(1047, 50, 40, 'muhammad50@example.com', 1, 166197.72, 'Menunggu', '2023-08-28'),
(1048, 5, 41, 'muhammad5@example.com', 8, 604597.62, 'Berhasil', '2023-12-23'),
(1049, 77, 38, 'muhammad77@example.com', 10, 700863.04, 'Berhasil', '2023-12-24'),
(1050, 94, 50, 'muhammad94@example.com', 7, 1050225.07, 'Berhasil', '2023-12-15'),
(1051, 60, 26, 'muhammad60@example.com', 6, 486686.92, 'Berhasil', '2023-09-20'),
(1053, 81, 50, 'muhammad81@example.com', 6, 900192.92, 'Berhasil', '2023-12-31'),
(1054, 22, 25, 'muhammad22@example.com', 4, 411975.70, 'Menunggu', '2024-02-02'),
(1055, 89, 21, 'muhammad89@example.com', 4, 390667.17, 'Berhasil', '2023-08-24'),
(1057, 37, 37, 'muhammad37@example.com', 4, 458953.97, 'Berhasil', '2023-10-18'),
(1058, 72, 35, 'muhammad72@example.com', 6, 443071.79, 'Berhasil', '2024-03-09'),
(1059, 9, 18, 'muhammad9@example.com', 10, 1907758.65, 'Berhasil', '2024-05-15'),
(1063, 62, 34, 'muhammad62@example.com', 2, 235379.22, 'Berhasil', '2023-08-20'),
(1064, 46, 34, 'muhammad46@example.com', 9, 1059206.51, 'Menunggu', '2024-02-19'),
(1065, 29, 31, 'muhammad29@example.com', 2, 164659.74, 'Berhasil', '2023-09-04'),
(1066, 89, 25, 'muhammad89@example.com', 6, 617963.55, 'Berhasil', '2023-12-14'),
(1067, 12, 36, 'muhammad12@example.com', 8, 615850.77, 'Berhasil', '2023-12-29'),
(1068, 46, 40, 'muhammad46@example.com', 3, 498593.16, 'Berhasil', '2024-02-19'),
(1069, 39, 41, 'muhammad39@example.com', 8, 604597.62, 'Berhasil', '2023-06-02'),
(1070, 82, 17, 'muhammad82@example.com', 2, 298895.30, 'Berhasil', '2023-11-08'),
(1072, 90, 43, 'muhammad90@example.com', 2, 319921.60, 'Berhasil', '2023-10-30'),
(1077, 23, 16, 'muhammad23@example.com', 5, 939961.39, 'Ditolak', '2023-10-28'),
(1079, 79, 41, 'muhammad79@example.com', 3, 226724.11, 'Berhasil', '2024-03-11'),
(1080, 45, 31, 'muhammad45@example.com', 9, 740968.82, 'Berhasil', '2024-03-18'),
(1081, 47, 39, 'muhammad47@example.com', 3, 488297.46, 'Berhasil', '2023-06-08'),
(1082, 8, 49, 'muhammad8@example.com', 5, 344340.82, 'Berhasil', '2024-05-18'),
(1083, 59, 32, 'muhammad59@example.com', 3, 370007.57, 'Berhasil', '2024-02-22'),
(1084, 52, 27, 'muhammad52@example.com', 4, 475901.87, 'Berhasil', '2024-02-02'),
(1086, 76, 20, 'muhammad76@example.com', 5, 502134.92, 'Ditolak', '2023-12-19'),
(1087, 54, 43, 'muhammad54@example.com', 4, 639843.19, 'Berhasil', '2023-06-28'),
(1088, 39, 24, 'muhammad39@example.com', 5, 500219.87, 'Berhasil', '2023-09-28'),
(1089, 9, 17, 'muhammad9@example.com', 1, 149447.65, 'Menunggu', '2024-05-14'),
(1090, 2, 49, 'muhammad2@example.com', 3, 206604.49, 'Berhasil', '2023-12-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_makanan`
--

CREATE TABLE `transaksi_makanan` (
  `Transaksi_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `UMKM_ID` int(11) DEFAULT NULL,
  `Menu_ID` int(11) DEFAULT NULL,
  `Tanggal_Mulai_Berlangganan` date DEFAULT NULL,
  `Tanggal_Akhir_Berlangganan` date DEFAULT NULL,
  `Jam_Pengantaran` time DEFAULT NULL,
  `Total_Harga` decimal(10,2) DEFAULT NULL,
  `Status_Pembayaran` varchar(50) DEFAULT NULL,
  `Alamat_Tujuan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_makanan`
--

INSERT INTO `transaksi_makanan` (`Transaksi_ID`, `User_ID`, `UMKM_ID`, `Menu_ID`, `Tanggal_Mulai_Berlangganan`, `Tanggal_Akhir_Berlangganan`, `Jam_Pengantaran`, `Total_Harga`, `Status_Pembayaran`, `Alamat_Tujuan`) VALUES
(75, 76, 24, 124, '2023-07-02', '2023-12-29', '13:22:00', 6300000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(76, 52, 13, 104, '2024-04-18', '2024-06-20', '16:51:00', 1953000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(77, 97, 22, 120, '2024-03-30', '2024-04-06', '17:58:00', 217000.00, 'berhasil', 'Jl. Kenanga No. 117, Sleman, 55347'),
(78, 78, 53, 178, '2024-03-03', '2024-05-04', '12:13:00', 1550000.00, 'berhasil', 'Jl. Kemuning No. 79, Bantul, 55328'),
(79, 91, 39, 151, '2023-11-24', '2024-03-27', '09:54:00', 3720000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(80, 64, 8, 93, '2024-04-21', '2024-06-20', '03:28:00', 1620000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(81, 25, 26, 128, '2024-05-06', '2024-06-11', '02:05:00', 1404000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(82, 72, 8, 93, '2023-12-01', '2024-04-29', '07:07:00', 4050000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(83, 92, 33, 141, '2023-07-01', '2023-10-26', '23:58:00', 4212000.00, 'berhasil', 'Jl. Tanjung No. 107, Sleman, 55342'),
(85, 34, 34, 144, '2023-10-09', '2024-06-23', '07:49:00', 10062000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(86, 18, 8, 93, '2023-09-15', '2023-11-25', '05:21:00', 1917000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169'),
(87, 68, 10, 95, '2023-10-20', '2024-06-16', '16:33:00', 8160000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(88, 48, 13, 103, '2024-01-11', '2024-04-22', '12:53:00', 3060000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(89, 51, 29, 134, '2024-01-25', '2024-06-22', '21:48:00', 4321000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(90, 100, 29, 133, '2023-08-27', '2024-04-02', '02:02:00', 6132000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(91, 67, 43, 160, '2023-10-31', '2024-05-04', '11:47:00', 7254000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(92, 40, 39, 153, '2023-07-23', '2024-03-16', '04:20:00', 7584000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(93, 86, 45, 163, '2023-11-11', '2024-05-27', '13:43:00', 5148000.00, 'berhasil', 'Jl. Kesambi No. 95, Jogja, 55336'),
(94, 87, 19, 113, '2024-02-28', '2024-04-17', '07:13:00', 1960000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(95, 45, 39, 151, '2023-07-21', '2024-02-05', '00:26:00', 5970000.00, 'berhasil', 'Jl. Salak No. 16, Kulon Progo, 55295'),
(96, 50, 28, 132, '2023-11-18', '2024-05-02', '15:59:00', 4482000.00, 'berhasil', 'Jl. Kedondong No. 25, Kulon Progo, 55300'),
(97, 72, 17, 109, '2023-11-30', '2024-04-19', '22:44:00', 5076000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(98, 39, 40, 156, '2023-10-23', '2024-03-04', '09:32:00', 4655000.00, 'berhasil', 'Jl. Rambutan No. 4, Gunungkidul, 55289'),
(99, 75, 26, 129, '2024-04-26', '2024-06-13', '21:37:00', 1920000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(100, 70, 50, 173, '2024-01-25', '2024-05-03', '03:54:00', 3564000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(101, 65, 50, 174, '2024-01-20', '2024-03-19', '01:28:00', 2183000.00, 'berhasil', 'Jl. Dahlia No. 53, Kulon Progo, 55315'),
(103, 71, 28, 132, '2024-01-20', '2024-02-03', '18:28:00', 378000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(106, 74, 12, 102, '2024-06-11', '2024-06-17', '08:55:00', 174000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(107, 74, 54, 182, '2024-05-06', '2024-05-07', '06:38:00', 35000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(108, 74, 42, 159, '2024-01-06', '2024-04-01', '03:42:00', 3268000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(109, 33, 42, 157, '2024-05-09', '2024-06-05', '03:51:00', 972000.00, 'berhasil', 'Jl. Kenari No. 5, Bantul, 55284'),
(111, 42, 12, 102, '2023-12-18', '2024-03-23', '03:02:00', 2784000.00, 'berhasil', 'Jl. Sawo No. 14, Sleman, 55292'),
(112, 75, 37, 148, '2024-06-05', '2024-06-15', '19:20:00', 270000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(113, 50, 51, 175, '2024-03-13', '2024-05-07', '00:14:00', 2090000.00, 'berhasil', 'Jl. Kedondong No. 25, Kulon Progo, 55300'),
(114, 41, 42, 158, '2024-03-12', '2024-04-18', '03:09:00', 1369000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(115, 90, 50, 174, '2024-02-17', '2024-06-21', '11:08:00', 4625000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(116, 49, 22, 119, '2023-09-27', '2024-05-04', '21:21:00', 6600000.00, 'berhasil', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(117, 88, 13, 103, '2023-09-15', '2024-05-30', '16:30:00', 7740000.00, 'berhasil', 'Jl. Cemara No. 99, Bantul, 55338'),
(118, 31, 31, 136, '2023-08-28', '2024-02-24', '14:35:00', 5580000.00, 'berhasil', 'Jalan Sudirman No. 105, Jogja, 55285'),
(119, 100, 53, 180, '2024-04-10', '2024-04-11', '15:56:00', 27000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(120, 59, 28, 131, '2024-03-11', '2024-04-17', '01:44:00', 962000.00, 'berhasil', 'Jl. Akasia No. 43, Gunungkidul, 55309'),
(121, 98, 5, 85, '2023-10-17', '2023-12-24', '05:02:00', 2040000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(122, 46, 47, 167, '2024-04-19', '2024-05-27', '06:34:00', 1140000.00, 'berhasil', 'Jl. Srikaya No. 19, Jogja, 55296'),
(124, 43, 10, 94, '2024-02-07', '2024-05-06', '08:55:00', 2492000.00, 'berhasil', 'Jl. Manggis No. 11, Bantul, 55293'),
(125, 76, 29, 133, '2023-08-09', '2024-01-07', '23:01:00', 4228000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(126, 73, 36, 145, '2024-06-16', '2024-06-24', '06:07:00', 320000.00, 'berhasil', 'Jl. Ketapang No. 69, Bantul, 55323'),
(127, 83, 24, 125, '2023-10-28', '2024-02-18', '19:19:00', 4068000.00, 'ditolak', 'Jl. Mangga No. 89, Bantul, 55333'),
(128, 93, 31, 137, '2023-07-01', '2023-07-22', '11:53:00', 672000.00, 'berhasil', 'Jl. Randu No. 109, Bantul, 55343'),
(129, 97, 22, 120, '2023-07-11', '2024-04-04', '07:43:00', 8308000.00, 'berhasil', 'Jl. Kenanga No. 117, Sleman, 55347'),
(130, 60, 53, 180, '2024-05-10', '2024-06-07', '16:01:00', 756000.00, 'menunggu', 'Jl. Tanjung No. 45, Kulon Progo, 55310'),
(131, 35, 47, 168, '2024-02-07', '2024-06-01', '16:13:00', 3565000.00, 'ditolak', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(132, 84, 29, 133, '2024-05-26', '2024-06-07', '23:35:00', 336000.00, 'berhasil', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(133, 61, 14, 106, '2023-07-08', '2023-12-29', '04:27:00', 5742000.00, 'ditolak', 'Jl. Seruni No. 46, Jogja, 55311'),
(134, 71, 21, 116, '2023-07-08', '2023-12-29', '13:37:00', 4698000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(135, 42, 47, 168, '2024-05-03', '2024-06-08', '16:30:00', 1116000.00, 'berhasil', 'Jl. Sawo No. 14, Sleman, 55292'),
(136, 99, 12, 100, '2023-12-18', '2023-12-30', '03:01:00', 324000.00, 'menunggu', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(137, 46, 34, 142, '2024-02-07', '2024-03-26', '23:41:00', 1776000.00, 'berhasil', 'Jl. Srikaya No. 19, Jogja, 55296'),
(138, 94, 8, 92, '2023-08-12', '2023-10-06', '17:11:00', 1430000.00, 'berhasil', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(139, 40, 17, 109, '2023-11-12', '2024-04-24', '17:45:00', 5904000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(140, 32, 36, 145, '2023-12-28', '2024-05-23', '23:12:00', 5880000.00, 'berhasil', 'Jl. Ahmad Yani No. 123, Jogja, 55283'),
(141, 41, 54, 181, '2024-01-24', '2024-02-14', '12:54:00', 630000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(142, 63, 26, 128, '2023-12-05', '2023-12-21', '01:56:00', 624000.00, 'berhasil', 'Jl. Teratai No. 49, Bantul, 55313'),
(143, 61, 50, 173, '2023-09-25', '2023-10-01', '02:32:00', 216000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(144, 89, 49, 170, '2023-12-04', '2024-03-28', '06:34:00', 3795000.00, 'berhasil', 'Jl. Sonokeling No. 101, Gunungkidul, 55339'),
(145, 68, 50, 172, '2023-12-24', '2024-01-02', '16:27:00', 315000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(146, 59, 40, 155, '2023-10-14', '2024-03-19', '00:04:00', 5338000.00, 'menunggu', 'Jl. Akasia No. 43, Gunungkidul, 55309'),
(147, 13, 21, 117, '2024-03-13', '2024-04-04', '17:02:00', 616000.00, 'berhasil', 'Jalan Sudirman No. 102, Jogja, 55282'),
(148, 74, 19, 114, '2024-04-15', '2024-04-15', '09:20:00', 0.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(149, 94, 40, 156, '2023-11-01', '2023-11-10', '18:39:00', 315000.00, 'berhasil', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(150, 45, 6, 90, '2023-12-08', '2024-02-09', '22:14:00', 1827000.00, 'menunggu', 'Jl. Salak No. 16, Kulon Progo, 55295'),
(151, 95, 28, 130, '2023-08-19', '2023-09-16', '02:14:00', 700000.00, 'berhasil', 'Jl. Cemara No. 113, Kulon Progo, 55345'),
(152, 87, 47, 167, '2024-01-13', '2024-05-22', '17:24:00', 3900000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(153, 33, 45, 164, '2023-10-01', '2024-01-20', '09:17:00', 2997000.00, 'berhasil', 'Jl. Kenari No. 5, Bantul, 55284'),
(154, 60, 10, 96, '2023-10-22', '2024-04-23', '10:33:00', 6624000.00, 'berhasil', 'Jl. Tanjung No. 45, Kulon Progo, 55310'),
(156, 76, 8, 93, '2023-11-10', '2024-04-13', '08:52:00', 4185000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(157, 55, 43, 161, '2024-05-27', '2024-06-10', '19:44:00', 560000.00, 'berhasil', 'Jl. Mahoni No. 36, Kulon Progo, 55305'),
(158, 85, 8, 92, '2024-05-22', '2024-06-12', '12:52:00', 546000.00, 'ditolak', 'Jl. Sukun No. 93, Kulon Progo, 55335'),
(159, 74, 37, 150, '2024-06-08', '2024-06-17', '06:51:00', 261000.00, 'ditolak', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(160, 100, 53, 179, '2024-03-10', '2024-04-15', '23:28:00', 936000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(161, 98, 14, 106, '2024-01-10', '2024-03-25', '01:32:00', 2475000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(162, 48, 42, 159, '2024-03-01', '2024-06-06', '19:00:00', 3686000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(163, 84, 49, 170, '2024-05-28', '2024-06-22', '03:03:00', 825000.00, 'berhasil', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(164, 45, 26, 128, '2023-08-20', '2024-04-20', '09:38:00', 9516000.00, 'menunggu', 'Jl. Salak No. 16, Kulon Progo, 55295'),
(165, 44, 5, 87, '2024-01-01', '2024-03-29', '01:54:00', 2904000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(166, 49, 40, 156, '2024-03-02', '2024-06-14', '00:41:00', 3640000.00, 'ditolak', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(167, 58, 36, 147, '2023-09-07', '2024-06-13', '11:01:00', 7280000.00, 'menunggu', 'Jl. Cendana No. 42, Bantul, 55308'),
(168, 93, 14, 108, '2023-08-29', '2024-05-18', '03:16:00', 9205000.00, 'berhasil', 'Jl. Randu No. 109, Bantul, 55343'),
(169, 36, 24, 124, '2024-03-23', '2024-06-20', '07:30:00', 3115000.00, 'ditolak', 'Jl. Durian No. 6, Jogja, 55286'),
(170, 52, 21, 116, '2024-01-02', '2024-04-10', '16:37:00', 2673000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(171, 38, 34, 142, '2023-08-22', '2024-01-31', '20:29:00', 5994000.00, 'berhasil', 'Jl. Jeruk No. 10, Bantul, 55288'),
(172, 76, 37, 149, '2024-03-01', '2024-04-23', '21:12:00', 1484000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(173, 70, 11, 97, '2023-10-11', '2023-12-21', '04:02:00', 2698000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(174, 56, 26, 129, '2024-02-24', '2024-03-19', '22:35:00', 960000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(175, 18, 40, 154, '2024-04-01', '2024-05-02', '08:08:00', 1023000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169'),
(176, 51, 34, 144, '2024-02-05', '2024-05-07', '19:22:00', 3588000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(177, 96, 34, 142, '2024-05-07', '2024-05-16', '16:44:00', 333000.00, 'berhasil', 'Jl. Jati No. 115, Jogja, 55346'),
(178, 56, 22, 118, '2023-12-21', '2024-06-11', '14:32:00', 5017000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(179, 25, 31, 138, '2024-05-22', '2024-06-10', '05:59:00', 627000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(180, 76, 34, 142, '2024-04-06', '2024-05-03', '18:06:00', 999000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(181, 24, 21, 117, '2023-09-06', '2024-06-11', '08:11:00', 7812000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(182, 94, 53, 180, '2023-12-12', '2024-05-08', '01:58:00', 3996000.00, 'menunggu', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(183, 62, 14, 108, '2024-03-24', '2024-05-20', '02:32:00', 1995000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(184, 41, 51, 176, '2024-05-05', '2024-06-19', '08:37:00', 1755000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(185, 74, 14, 108, '2024-04-28', '2024-05-06', '22:07:00', 280000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(186, 64, 12, 102, '2024-06-02', '2024-06-04', '00:12:00', 58000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(187, 100, 28, 132, '2023-10-22', '2024-04-30', '01:54:00', 5157000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(188, 57, 28, 132, '2024-03-14', '2024-06-16', '16:22:00', 2538000.00, 'berhasil', 'Jl. Bungur No. 41, Sleman, 55307'),
(189, 73, 47, 168, '2023-08-23', '2023-12-31', '21:00:00', 4030000.00, 'berhasil', 'Jl. Ketapang No. 69, Bantul, 55323'),
(190, 98, 5, 86, '2023-08-11', '2023-12-12', '15:16:00', 3936000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(191, 56, 22, 120, '2023-07-20', '2023-09-25', '10:48:00', 2077000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(192, 54, 40, 156, '2023-08-05', '2023-08-09', '10:51:00', 140000.00, 'berhasil', 'Jl. Pinang No. 34, Gunungkidul, 55304'),
(193, 59, 19, 112, '2024-03-28', '2024-05-15', '00:21:00', 1872000.00, 'berhasil', 'Jl. Akasia No. 43, Gunungkidul, 55309'),
(194, 34, 24, 124, '2023-11-09', '2024-02-05', '01:56:00', 3080000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(195, 43, 14, 107, '2023-08-17', '2023-08-22', '08:23:00', 170000.00, 'menunggu', 'Jl. Manggis No. 11, Bantul, 55293'),
(196, 91, 23, 122, '2024-06-17', '2024-06-23', '12:21:00', 198000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(197, 84, 33, 141, '2023-06-27', '2023-12-26', '23:41:00', 6552000.00, 'berhasil', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(198, 51, 23, 121, '2024-04-29', '2024-05-20', '18:53:00', 672000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(199, 61, 29, 133, '2024-04-25', '2024-05-29', '20:07:00', 952000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(200, 68, 8, 91, '2023-09-05', '2024-02-13', '20:29:00', 4025000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(201, 75, 17, 110, '2024-03-18', '2024-05-21', '16:29:00', 2368000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(202, 86, 5, 85, '2023-12-03', '2024-05-04', '06:30:00', 4590000.00, 'berhasil', 'Jl. Kesambi No. 95, Jogja, 55336'),
(203, 34, 13, 103, '2023-11-17', '2023-12-07', '14:35:00', 600000.00, 'menunggu', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(204, 80, 47, 168, '2024-05-04', '2024-06-08', '10:33:00', 1085000.00, 'berhasil', 'Jl. Kapuk No. 83, Kulon Progo, 55330'),
(205, 69, 36, 146, '2023-10-06', '2024-01-09', '08:01:00', 2375000.00, 'berhasil', 'Jl. Flamboyan No. 61, Gunungkidul, 55319'),
(206, 88, 21, 117, '2023-12-22', '2023-12-28', '03:58:00', 168000.00, 'berhasil', 'Jl. Cemara No. 99, Bantul, 55338'),
(207, 71, 40, 156, '2024-02-06', '2024-02-09', '05:22:00', 105000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(208, 7, 33, 140, '2023-08-02', '2023-08-04', '22:56:00', 70000.00, 'ditolak', 'Jalan Sudirman No. 101, Jogja, 55281'),
(209, 67, 37, 149, '2024-05-21', '2024-06-22', '23:43:00', 896000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(210, 62, 47, 167, '2023-12-24', '2024-05-10', '14:07:00', 4140000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(211, 71, 13, 104, '2024-02-20', '2024-06-20', '06:27:00', 3751000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(212, 40, 49, 169, '2024-04-10', '2024-04-12', '22:00:00', 64000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(213, 43, 39, 152, '2023-07-28', '2024-05-12', '06:31:00', 8959000.00, 'menunggu', 'Jl. Manggis No. 11, Bantul, 55293'),
(214, 13, 43, 162, '2023-06-29', '2024-01-23', '14:21:00', 5200000.00, 'berhasil', 'Jalan Sudirman No. 102, Jogja, 55282'),
(215, 90, 17, 109, '2023-10-25', '2024-04-16', '08:50:00', 6264000.00, 'ditolak', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(216, 90, 10, 96, '2023-11-14', '2024-05-17', '07:55:00', 6660000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(217, 55, 36, 146, '2024-06-20', '2024-06-20', '08:10:00', 0.00, 'ditolak', 'Jl. Mahoni No. 36, Kulon Progo, 55305'),
(218, 75, 45, 164, '2023-07-02', '2023-08-20', '04:16:00', 1323000.00, 'menunggu', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(219, 66, 11, 98, '2023-11-23', '2024-05-24', '23:29:00', 7137000.00, 'berhasil', 'Jl. Mawar No. 55, Jogja, 55316'),
(220, 12, 42, 159, '2023-07-01', '2024-02-18', '10:33:00', 8816000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(221, 37, 54, 183, '2024-02-14', '2024-06-04', '18:17:00', 3330000.00, 'menunggu', 'Jl. Alpukat No. 2, Sleman, 55287'),
(222, 97, 45, 165, '2024-01-11', '2024-04-30', '05:43:00', 3080000.00, 'menunggu', 'Jl. Kenanga No. 117, Sleman, 55347'),
(223, 67, 10, 96, '2024-02-05', '2024-03-16', '21:56:00', 1440000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(224, 62, 14, 106, '2023-10-08', '2024-03-21', '22:27:00', 5445000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(225, 78, 40, 155, '2023-06-30', '2023-07-29', '09:29:00', 986000.00, 'berhasil', 'Jl. Kemuning No. 79, Bantul, 55328'),
(226, 61, 40, 154, '2024-01-07', '2024-02-04', '04:23:00', 924000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(227, 70, 24, 124, '2023-11-01', '2024-06-12', '16:57:00', 7840000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(228, 30, 34, 142, '2023-09-03', '2024-03-06', '17:31:00', 6845000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 131, Kulon Progo, 90171'),
(229, 48, 10, 96, '2024-02-06', '2024-04-01', '06:27:00', 1980000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(230, 86, 33, 141, '2024-03-25', '2024-04-18', '22:01:00', 864000.00, 'berhasil', 'Jl. Kesambi No. 95, Jogja, 55336'),
(231, 52, 19, 112, '2024-04-06', '2024-05-29', '14:34:00', 2067000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(232, 18, 53, 179, '2023-09-30', '2023-12-22', '07:56:00', 2158000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169'),
(233, 73, 54, 183, '2024-06-09', '2024-06-13', '19:43:00', 120000.00, 'berhasil', 'Jl. Ketapang No. 69, Bantul, 55323'),
(234, 62, 12, 101, '2024-03-30', '2024-06-24', '11:29:00', 2408000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(235, 89, 21, 117, '2024-04-24', '2024-05-03', '18:48:00', 252000.00, 'menunggu', 'Jl. Sonokeling No. 101, Gunungkidul, 55339'),
(236, 56, 22, 119, '2023-10-06', '2024-06-10', '03:20:00', 7440000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(237, 61, 23, 123, '2023-09-09', '2024-05-24', '04:32:00', 8772000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(238, 90, 5, 86, '2024-02-11', '2024-03-13', '03:29:00', 992000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(239, 35, 39, 152, '2024-01-19', '2024-04-18', '08:28:00', 2790000.00, 'berhasil', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(240, 37, 12, 100, '2023-12-15', '2024-05-05', '03:18:00', 3834000.00, 'menunggu', 'Jl. Alpukat No. 2, Sleman, 55287'),
(241, 79, 12, 102, '2024-05-31', '2024-06-14', '18:04:00', 406000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(242, 64, 14, 106, '2024-02-09', '2024-03-18', '17:46:00', 1254000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(243, 47, 13, 103, '2023-08-06', '2023-10-17', '00:56:00', 2160000.00, 'berhasil', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(244, 19, 47, 167, '2024-03-15', '2024-06-09', '22:36:00', 2580000.00, 'berhasil', 'Jalan Sudirman No. 103, Jogja, 55283'),
(245, 40, 54, 182, '2023-10-22', '2024-05-15', '11:04:00', 7210000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(246, 12, 31, 138, '2023-07-17', '2023-11-29', '01:35:00', 4455000.00, 'menunggu', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(247, 96, 14, 108, '2023-10-26', '2023-11-10', '01:30:00', 525000.00, 'berhasil', 'Jl. Jati No. 115, Jogja, 55346'),
(248, 99, 53, 178, '2024-01-04', '2024-04-01', '06:37:00', 2200000.00, 'berhasil', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(249, 75, 34, 142, '2023-12-02', '2024-06-14', '08:16:00', 7215000.00, 'menunggu', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(250, 98, 19, 114, '2023-06-25', '2024-06-08', '04:54:00', 8725000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(251, 70, 11, 99, '2024-02-21', '2024-06-23', '04:54:00', 4920000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(252, 59, 34, 143, '2024-04-11', '2024-06-21', '18:34:00', 2698000.00, 'berhasil', 'Jl. Akasia No. 43, Gunungkidul, 55309'),
(253, 89, 33, 141, '2024-04-01', '2024-04-23', '14:29:00', 792000.00, 'berhasil', 'Jl. Sonokeling No. 101, Gunungkidul, 55339'),
(254, 70, 14, 108, '2023-10-04', '2024-03-16', '05:17:00', 5740000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(255, 51, 43, 160, '2024-04-08', '2024-05-11', '00:31:00', 1287000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(256, 91, 14, 107, '2024-05-16', '2024-06-04', '22:29:00', 646000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(257, 42, 53, 178, '2023-12-18', '2024-06-14', '13:53:00', 4475000.00, 'berhasil', 'Jl. Sawo No. 14, Sleman, 55292'),
(258, 88, 36, 147, '2023-12-31', '2024-03-31', '15:07:00', 2366000.00, 'menunggu', 'Jl. Cemara No. 99, Bantul, 55338'),
(259, 79, 29, 135, '2023-10-29', '2023-11-12', '03:05:00', 420000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(260, 95, 54, 182, '2023-12-13', '2024-03-02', '13:35:00', 2800000.00, 'menunggu', 'Jl. Cemara No. 113, Kulon Progo, 55345'),
(261, 33, 37, 150, '2023-08-24', '2023-11-19', '23:41:00', 2523000.00, 'berhasil', 'Jl. Kenari No. 5, Bantul, 55284'),
(262, 38, 29, 134, '2023-11-08', '2024-02-22', '11:22:00', 3074000.00, 'berhasil', 'Jl. Jeruk No. 10, Bantul, 55288'),
(263, 24, 39, 153, '2023-09-24', '2023-11-14', '01:17:00', 1632000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(264, 99, 24, 125, '2023-10-24', '2023-12-12', '18:52:00', 1764000.00, 'menunggu', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(265, 76, 54, 183, '2023-12-17', '2024-01-19', '11:01:00', 990000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(266, 73, 10, 96, '2023-12-08', '2024-02-14', '10:01:00', 2448000.00, 'berhasil', 'Jl. Ketapang No. 69, Bantul, 55323'),
(267, 30, 24, 126, '2024-01-23', '2024-01-24', '13:07:00', 37000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 131, Kulon Progo, 90171'),
(268, 65, 39, 153, '2024-04-10', '2024-05-08', '02:52:00', 896000.00, 'berhasil', 'Jl. Dahlia No. 53, Kulon Progo, 55315'),
(269, 42, 10, 95, '2024-05-19', '2024-05-23', '13:10:00', 136000.00, 'menunggu', 'Jl. Sawo No. 14, Sleman, 55292'),
(270, 24, 40, 156, '2023-10-17', '2024-05-08', '07:59:00', 7140000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(271, 37, 5, 85, '2024-04-06', '2024-06-16', '08:40:00', 2130000.00, 'berhasil', 'Jl. Alpukat No. 2, Sleman, 55287'),
(272, 67, 45, 163, '2023-06-28', '2023-09-02', '11:38:00', 1716000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(273, 78, 33, 140, '2024-05-06', '2024-05-25', '13:18:00', 665000.00, 'berhasil', 'Jl. Kemuning No. 79, Bantul, 55328'),
(274, 67, 23, 122, '2024-04-12', '2024-04-23', '00:45:00', 363000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(275, 51, 43, 161, '2023-12-28', '2024-06-04', '18:51:00', 6360000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(276, 24, 43, 161, '2023-11-16', '2024-03-08', '09:57:00', 4520000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(277, 43, 8, 91, '2024-02-19', '2024-02-21', '05:47:00', 50000.00, 'menunggu', 'Jl. Manggis No. 11, Bantul, 55293'),
(278, 70, 23, 121, '2023-09-15', '2023-10-14', '15:30:00', 928000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(279, 70, 28, 132, '2023-09-08', '2024-06-23', '04:54:00', 7803000.00, 'berhasil', 'Jl. Palem No. 63, Kulon Progo, 55320'),
(280, 76, 42, 159, '2023-10-14', '2024-06-23', '13:48:00', 9614000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(281, 66, 26, 127, '2024-03-04', '2024-05-27', '17:50:00', 3192000.00, 'berhasil', 'Jl. Mawar No. 55, Jogja, 55316'),
(282, 51, 8, 91, '2023-07-07', '2024-05-07', '00:29:00', 7625000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(283, 77, 26, 129, '2024-05-04', '2024-05-20', '16:16:00', 640000.00, 'berhasil', 'Jl. Kenanga No. 77, Sleman, 55327'),
(284, 99, 54, 182, '2023-11-28', '2023-12-20', '10:57:00', 770000.00, 'berhasil', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(285, 31, 43, 160, '2024-03-03', '2024-05-15', '03:28:00', 2847000.00, 'berhasil', 'Jalan Sudirman No. 105, Jogja, 55285'),
(286, 68, 8, 93, '2024-02-14', '2024-05-08', '22:03:00', 2268000.00, 'menunggu', 'Jl. Anggrek No. 59, Bantul, 55318'),
(287, 81, 19, 112, '2024-05-13', '2024-05-22', '22:31:00', 351000.00, 'berhasil', 'Jl. Bintaro No. 85, Jogja, 55331'),
(288, 48, 42, 159, '2023-08-23', '2023-09-06', '19:01:00', 532000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(289, 76, 39, 152, '2024-06-15', '2024-06-18', '11:44:00', 93000.00, 'menunggu', 'Jl. Rotan No. 75, Jogja, 55326'),
(290, 58, 53, 180, '2024-01-11', '2024-03-18', '08:42:00', 1809000.00, 'berhasil', 'Jl. Cendana No. 42, Bantul, 55308'),
(291, 82, 49, 170, '2023-09-10', '2023-10-01', '00:59:00', 693000.00, 'berhasil', 'Jl. Kelapa No. 87, Sleman, 55332'),
(292, 90, 54, 182, '2023-10-06', '2024-02-21', '07:24:00', 4830000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(293, 46, 19, 113, '2023-07-21', '2023-11-26', '09:35:00', 5120000.00, 'berhasil', 'Jl. Srikaya No. 19, Jogja, 55296'),
(294, 24, 11, 98, '2023-08-18', '2023-08-18', '04:46:00', 0.00, 'ditolak', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(295, 87, 6, 90, '2024-01-13', '2024-03-03', '14:05:00', 1450000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(296, 31, 45, 163, '2024-05-23', '2024-06-07', '20:28:00', 390000.00, 'berhasil', 'Jalan Sudirman No. 105, Jogja, 55285'),
(297, 34, 47, 167, '2024-05-12', '2024-06-14', '11:29:00', 990000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(298, 12, 29, 135, '2024-01-20', '2024-06-11', '19:41:00', 4290000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(299, 74, 26, 127, '2023-09-14', '2024-05-18', '22:34:00', 9386000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(300, 84, 54, 181, '2023-08-07', '2024-01-16', '11:05:00', 4860000.00, 'berhasil', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(301, 72, 39, 152, '2024-01-20', '2024-02-09', '02:41:00', 620000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(302, 44, 39, 151, '2024-05-20', '2024-06-16', '00:44:00', 810000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(303, 68, 33, 140, '2023-11-23', '2023-12-04', '13:12:00', 385000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(304, 32, 11, 97, '2023-09-12', '2024-03-21', '21:49:00', 7258000.00, 'berhasil', 'Jl. Ahmad Yani No. 123, Jogja, 55283'),
(305, 98, 53, 180, '2024-01-08', '2024-01-16', '00:00:00', 216000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(306, 68, 22, 120, '2024-01-11', '2024-05-02', '15:50:00', 3472000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(307, 85, 50, 174, '2024-04-22', '2024-06-18', '20:48:00', 2109000.00, 'menunggu', 'Jl. Sukun No. 93, Kulon Progo, 55335'),
(308, 53, 42, 157, '2024-06-23', '2024-06-24', '15:04:00', 36000.00, 'berhasil', 'Jl. Beringin No. 33, Bantul, 55303'),
(309, 77, 22, 120, '2023-09-13', '2024-01-16', '21:15:00', 3875000.00, 'berhasil', 'Jl. Kenanga No. 77, Sleman, 55327'),
(310, 57, 39, 152, '2024-01-21', '2024-04-27', '00:29:00', 3007000.00, 'menunggu', 'Jl. Bungur No. 41, Sleman, 55307'),
(311, 12, 19, 114, '2024-03-04', '2024-06-05', '08:01:00', 2325000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(312, 90, 51, 176, '2024-04-16', '2024-06-09', '09:32:00', 2106000.00, 'menunggu', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(313, 72, 40, 154, '2023-10-10', '2023-12-07', '02:58:00', 1914000.00, 'menunggu', 'Jl. Semboja No. 67, Sleman, 55322'),
(314, 99, 37, 150, '2024-04-07', '2024-05-29', '21:27:00', 1508000.00, 'menunggu', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(315, 76, 54, 182, '2024-03-24', '2024-04-26', '15:28:00', 1155000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(316, 35, 6, 88, '2023-12-02', '2024-04-15', '19:43:00', 4725000.00, 'berhasil', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(317, 74, 10, 96, '2024-05-24', '2024-06-18', '17:01:00', 900000.00, 'menunggu', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(318, 42, 50, 172, '2024-05-01', '2024-06-02', '16:13:00', 1120000.00, 'berhasil', 'Jl. Sawo No. 14, Sleman, 55292'),
(319, 90, 45, 164, '2024-03-12', '2024-03-27', '23:08:00', 405000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(320, 38, 53, 180, '2023-09-14', '2023-12-04', '03:07:00', 2187000.00, 'menunggu', 'Jl. Jeruk No. 10, Bantul, 55288'),
(321, 97, 54, 183, '2024-04-07', '2024-04-12', '05:00:00', 150000.00, 'berhasil', 'Jl. Kenanga No. 117, Sleman, 55347'),
(322, 44, 22, 118, '2023-07-24', '2024-04-22', '20:14:00', 7917000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(323, 87, 47, 168, '2023-08-02', '2023-12-02', '08:05:00', 3782000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(324, 69, 40, 154, '2023-07-19', '2023-09-13', '16:47:00', 1848000.00, 'menunggu', 'Jl. Flamboyan No. 61, Gunungkidul, 55319'),
(325, 83, 17, 111, '2023-10-12', '2024-05-17', '13:33:00', 8284000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(326, 69, 50, 174, '2023-09-18', '2024-05-05', '03:28:00', 8510000.00, 'menunggu', 'Jl. Flamboyan No. 61, Gunungkidul, 55319'),
(327, 54, 13, 104, '2023-07-10', '2024-05-06', '06:49:00', 9331000.00, 'berhasil', 'Jl. Pinang No. 34, Gunungkidul, 55304'),
(328, 52, 31, 138, '2023-10-03', '2023-10-15', '23:08:00', 396000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(329, 34, 40, 156, '2023-12-06', '2023-12-16', '03:34:00', 350000.00, 'menunggu', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(330, 40, 49, 169, '2024-01-21', '2024-02-20', '02:27:00', 960000.00, 'menunggu', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(331, 68, 8, 93, '2023-08-12', '2024-01-03', '01:56:00', 3888000.00, 'menunggu', 'Jl. Anggrek No. 59, Bantul, 55318'),
(332, 87, 5, 86, '2024-04-06', '2024-04-07', '06:51:00', 32000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(333, 19, 37, 150, '2023-12-29', '2023-12-31', '19:10:00', 58000.00, 'berhasil', 'Jalan Sudirman No. 103, Jogja, 55283'),
(334, 75, 43, 160, '2024-03-03', '2024-06-10', '05:53:00', 3861000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(335, 57, 47, 167, '2023-11-17', '2023-12-25', '05:34:00', 1140000.00, 'berhasil', 'Jl. Bungur No. 41, Sleman, 55307'),
(336, 12, 14, 106, '2024-01-04', '2024-04-19', '20:41:00', 3498000.00, 'menunggu', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(337, 34, 49, 171, '2024-05-14', '2024-06-11', '01:54:00', 952000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(338, 68, 51, 177, '2024-06-13', '2024-06-24', '00:31:00', 440000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(339, 64, 42, 157, '2024-04-27', '2024-06-20', '20:52:00', 1944000.00, 'ditolak', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(340, 58, 33, 141, '2023-12-30', '2024-04-06', '22:52:00', 3528000.00, 'berhasil', 'Jl. Cendana No. 42, Bantul, 55308'),
(341, 58, 28, 130, '2024-01-18', '2024-05-29', '22:16:00', 3300000.00, 'berhasil', 'Jl. Cendana No. 42, Bantul, 55308'),
(342, 73, 5, 86, '2024-04-06', '2024-04-18', '09:26:00', 384000.00, 'berhasil', 'Jl. Ketapang No. 69, Bantul, 55323'),
(343, 53, 12, 100, '2024-01-02', '2024-02-13', '22:14:00', 1134000.00, 'berhasil', 'Jl. Beringin No. 33, Bantul, 55303'),
(344, 37, 24, 126, '2023-08-19', '2024-05-22', '08:09:00', 10249000.00, 'berhasil', 'Jl. Alpukat No. 2, Sleman, 55287'),
(345, 42, 34, 142, '2023-10-09', '2024-03-10', '17:00:00', 5661000.00, 'menunggu', 'Jl. Sawo No. 14, Sleman, 55292'),
(346, 72, 49, 169, '2023-08-07', '2024-01-26', '02:20:00', 5504000.00, 'menunggu', 'Jl. Semboja No. 67, Sleman, 55322'),
(347, 52, 12, 102, '2023-08-05', '2024-06-17', '09:46:00', 9193000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(348, 45, 8, 91, '2023-11-18', '2024-03-27', '17:57:00', 3250000.00, 'menunggu', 'Jl. Salak No. 16, Kulon Progo, 55295'),
(349, 100, 26, 129, '2023-11-09', '2024-01-07', '07:57:00', 2360000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(350, 63, 51, 175, '2023-12-16', '2024-04-04', '07:04:00', 4180000.00, 'ditolak', 'Jl. Teratai No. 49, Bantul, 55313'),
(351, 49, 17, 111, '2024-02-04', '2024-02-10', '01:25:00', 228000.00, 'menunggu', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(352, 69, 22, 119, '2024-05-21', '2024-05-23', '21:55:00', 60000.00, 'berhasil', 'Jl. Flamboyan No. 61, Gunungkidul, 55319'),
(353, 40, 13, 105, '2023-06-29', '2024-06-18', '01:28:00', 11360000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(354, 60, 11, 99, '2024-04-18', '2024-05-27', '13:58:00', 1560000.00, 'berhasil', 'Jl. Tanjung No. 45, Kulon Progo, 55310'),
(355, 40, 11, 98, '2023-12-20', '2024-04-12', '23:03:00', 4446000.00, 'menunggu', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(356, 40, 21, 115, '2024-01-07', '2024-05-23', '19:48:00', 3562000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(357, 35, 12, 102, '2023-09-03', '2023-11-22', '06:53:00', 2320000.00, 'berhasil', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(358, 90, 45, 165, '2023-09-28', '2024-03-11', '05:44:00', 4620000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(359, 7, 36, 146, '2023-07-27', '2023-08-01', '14:57:00', 125000.00, 'menunggu', 'Jalan Sudirman No. 101, Jogja, 55281'),
(360, 98, 29, 134, '2023-07-17', '2024-05-10', '14:44:00', 8642000.00, 'menunggu', 'Jl. Ketapang No. 119, Bantul, 55348'),
(361, 85, 39, 151, '2024-01-28', '2024-02-24', '16:02:00', 810000.00, 'menunggu', 'Jl. Sukun No. 93, Kulon Progo, 55335'),
(362, 80, 10, 96, '2024-06-08', '2024-06-08', '14:47:00', 0.00, 'ditolak', 'Jl. Kapuk No. 83, Kulon Progo, 55330'),
(363, 57, 10, 94, '2023-09-08', '2024-03-02', '20:48:00', 4928000.00, 'berhasil', 'Jl. Bungur No. 41, Sleman, 55307'),
(364, 25, 37, 150, '2024-03-02', '2024-03-29', '21:24:00', 783000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(365, 35, 11, 98, '2024-06-23', '2024-06-23', '22:47:00', 0.00, 'berhasil', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(366, 79, 6, 89, '2023-07-06', '2024-04-06', '12:50:00', 10175000.00, 'menunggu', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(367, 74, 54, 181, '2024-04-30', '2024-06-03', '17:12:00', 1020000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(368, 90, 53, 180, '2024-03-03', '2024-05-16', '15:42:00', 1998000.00, 'berhasil', 'Jl. Albasia No. 103, Kulon Progo, 55340'),
(369, 7, 26, 127, '2023-09-07', '2023-12-26', '13:45:00', 4180000.00, 'berhasil', 'Jalan Sudirman No. 101, Jogja, 55281'),
(370, 35, 28, 130, '2023-10-02', '2024-03-18', '08:01:00', 4200000.00, 'menunggu', 'Jl. Jambu No. 7, Kulon Progo, 55285'),
(371, 82, 43, 162, '2024-04-17', '2024-06-23', '08:37:00', 1675000.00, 'menunggu', 'Jl. Kelapa No. 87, Sleman, 55332'),
(372, 37, 51, 177, '2023-08-29', '2023-09-03', '14:26:00', 200000.00, 'berhasil', 'Jl. Alpukat No. 2, Sleman, 55287'),
(373, 85, 11, 98, '2023-12-16', '2024-02-16', '10:04:00', 2418000.00, 'berhasil', 'Jl. Sukun No. 93, Kulon Progo, 55335'),
(374, 89, 54, 181, '2023-08-21', '2024-03-15', '18:52:00', 6210000.00, 'berhasil', 'Jl. Sonokeling No. 101, Gunungkidul, 55339'),
(375, 58, 42, 157, '2024-01-18', '2024-03-30', '00:18:00', 2592000.00, 'berhasil', 'Jl. Cendana No. 42, Bantul, 55308'),
(376, 24, 34, 144, '2023-08-16', '2023-08-20', '15:12:00', 156000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(377, 76, 40, 155, '2023-07-05', '2024-04-14', '01:58:00', 9656000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(378, 50, 5, 85, '2024-04-25', '2024-05-17', '07:46:00', 660000.00, 'berhasil', 'Jl. Kedondong No. 25, Kulon Progo, 55300'),
(379, 57, 33, 140, '2023-07-03', '2023-10-19', '05:55:00', 3780000.00, 'menunggu', 'Jl. Bungur No. 41, Sleman, 55307'),
(380, 12, 26, 129, '2024-04-08', '2024-06-23', '23:37:00', 3040000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(381, 99, 14, 108, '2023-09-11', '2024-02-24', '11:48:00', 5810000.00, 'menunggu', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(382, 42, 19, 114, '2023-08-12', '2024-01-22', '00:30:00', 4075000.00, 'berhasil', 'Jl. Sawo No. 14, Sleman, 55292'),
(383, 76, 23, 123, '2023-10-26', '2024-05-16', '18:02:00', 6902000.00, 'menunggu', 'Jl. Rotan No. 75, Jogja, 55326'),
(384, 47, 34, 144, '2023-09-14', '2023-11-13', '02:49:00', 2340000.00, 'ditolak', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(385, 62, 36, 147, '2024-02-29', '2024-05-15', '17:12:00', 1976000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(386, 49, 54, 182, '2023-10-21', '2024-01-09', '16:41:00', 2800000.00, 'berhasil', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(387, 58, 51, 176, '2023-11-14', '2024-05-11', '00:11:00', 6981000.00, 'berhasil', 'Jl. Cendana No. 42, Bantul, 55308'),
(388, 67, 42, 158, '2024-02-06', '2024-03-07', '21:19:00', 1110000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(389, 41, 5, 87, '2023-08-12', '2024-03-24', '15:26:00', 7425000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(390, 97, 53, 180, '2023-11-08', '2024-01-22', '03:13:00', 2025000.00, 'menunggu', 'Jl. Kenanga No. 117, Sleman, 55347'),
(391, 97, 34, 142, '2023-09-25', '2023-10-07', '11:02:00', 444000.00, 'berhasil', 'Jl. Kenanga No. 117, Sleman, 55347'),
(392, 49, 28, 131, '2024-03-17', '2024-04-23', '20:09:00', 962000.00, 'berhasil', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(393, 51, 45, 164, '2023-09-29', '2024-05-02', '11:45:00', 5832000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(394, 32, 12, 102, '2023-12-11', '2024-05-05', '09:55:00', 4234000.00, 'berhasil', 'Jl. Ahmad Yani No. 123, Jogja, 55283'),
(395, 95, 10, 96, '2024-01-19', '2024-04-03', '05:47:00', 2700000.00, 'berhasil', 'Jl. Cemara No. 113, Kulon Progo, 55345'),
(396, 64, 11, 98, '2023-08-03', '2024-06-18', '15:18:00', 12480000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(397, 57, 37, 150, '2024-05-01', '2024-06-11', '04:52:00', 1189000.00, 'berhasil', 'Jl. Bungur No. 41, Sleman, 55307'),
(398, 76, 17, 109, '2023-10-31', '2024-02-29', '15:09:00', 4356000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(399, 94, 22, 118, '2024-04-20', '2024-06-10', '19:23:00', 1479000.00, 'berhasil', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(400, 89, 29, 134, '2023-11-19', '2024-01-03', '05:45:00', 1305000.00, 'berhasil', 'Jl. Sonokeling No. 101, Gunungkidul, 55339'),
(401, 31, 42, 158, '2023-10-08', '2023-11-03', '15:41:00', 962000.00, 'berhasil', 'Jalan Sudirman No. 105, Jogja, 55285'),
(402, 79, 33, 139, '2024-05-23', '2024-06-04', '09:51:00', 408000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(403, 82, 26, 127, '2023-07-10', '2024-03-29', '13:51:00', 9994000.00, 'menunggu', 'Jl. Kelapa No. 87, Sleman, 55332'),
(404, 31, 22, 120, '2023-07-05', '2024-04-15', '19:51:00', 8835000.00, 'berhasil', 'Jalan Sudirman No. 105, Jogja, 55285'),
(405, 34, 36, 147, '2024-02-02', '2024-02-27', '16:18:00', 650000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(406, 44, 21, 117, '2024-03-24', '2024-04-26', '15:20:00', 924000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(407, 25, 11, 97, '2023-09-23', '2023-12-18', '16:06:00', 3268000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(408, 63, 31, 138, '2024-03-24', '2024-06-23', '00:30:00', 3003000.00, 'berhasil', 'Jl. Teratai No. 49, Bantul, 55313'),
(409, 97, 42, 159, '2023-12-26', '2024-06-23', '12:57:00', 6840000.00, 'berhasil', 'Jl. Kenanga No. 117, Sleman, 55347'),
(410, 80, 14, 107, '2023-06-30', '2023-08-17', '16:40:00', 1632000.00, 'berhasil', 'Jl. Kapuk No. 83, Kulon Progo, 55330'),
(411, 93, 54, 183, '2023-12-20', '2024-06-12', '07:27:00', 5250000.00, 'berhasil', 'Jl. Randu No. 109, Bantul, 55343'),
(412, 59, 37, 150, '2023-07-01', '2024-04-14', '12:36:00', 8352000.00, 'berhasil', 'Jl. Akasia No. 43, Gunungkidul, 55309'),
(413, 24, 5, 85, '2023-08-09', '2023-11-22', '13:48:00', 3150000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(414, 18, 53, 180, '2024-03-23', '2024-04-22', '16:43:00', 810000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169'),
(415, 50, 51, 176, '2024-03-12', '2024-03-18', '00:31:00', 234000.00, 'berhasil', 'Jl. Kedondong No. 25, Kulon Progo, 55300'),
(416, 71, 54, 182, '2023-11-25', '2024-01-28', '21:20:00', 2240000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(417, 47, 11, 98, '2024-05-25', '2024-06-02', '13:20:00', 312000.00, 'berhasil', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(418, 74, 37, 149, '2023-10-03', '2024-02-19', '20:49:00', 3892000.00, 'berhasil', 'Jl. Karet No. 71, Gunungkidul, 55324'),
(419, 84, 22, 119, '2024-03-25', '2024-04-08', '01:51:00', 420000.00, 'berhasil', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(420, 38, 50, 173, '2024-04-10', '2024-05-04', '16:32:00', 864000.00, 'ditolak', 'Jl. Jeruk No. 10, Bantul, 55288'),
(421, 56, 43, 162, '2023-08-31', '2023-12-20', '15:10:00', 2775000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(422, 51, 21, 117, '2023-10-18', '2023-10-27', '10:46:00', 252000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(423, 36, 24, 124, '2024-04-11', '2024-06-13', '02:33:00', 2205000.00, 'menunggu', 'Jl. Durian No. 6, Jogja, 55286'),
(424, 62, 31, 136, '2023-07-12', '2024-02-14', '16:46:00', 6727000.00, 'berhasil', 'Jl. Waru No. 47, Sleman, 55312'),
(425, 41, 43, 160, '2023-12-22', '2024-02-10', '21:38:00', 1950000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(426, 79, 26, 129, '2024-05-09', '2024-05-14', '14:22:00', 200000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(427, 83, 26, 129, '2023-07-22', '2024-02-05', '07:27:00', 7920000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(428, 91, 13, 104, '2023-06-28', '2024-01-02', '10:34:00', 5828000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(429, 44, 51, 177, '2023-12-21', '2024-03-26', '09:07:00', 3840000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(430, 68, 47, 167, '2024-05-26', '2024-06-02', '15:34:00', 210000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(431, 53, 26, 127, '2023-11-28', '2024-06-19', '06:13:00', 7752000.00, 'berhasil', 'Jl. Beringin No. 33, Bantul, 55303'),
(432, 96, 36, 147, '2023-10-23', '2024-02-20', '17:55:00', 3120000.00, 'berhasil', 'Jl. Jati No. 115, Jogja, 55346'),
(433, 44, 23, 121, '2023-08-22', '2024-05-17', '11:59:00', 8608000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(434, 12, 53, 179, '2024-05-16', '2024-06-03', '12:37:00', 468000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(435, 53, 8, 92, '2023-08-04', '2024-03-11', '15:45:00', 5720000.00, 'menunggu', 'Jl. Beringin No. 33, Bantul, 55303'),
(436, 24, 11, 98, '2024-03-23', '2024-05-19', '02:55:00', 2223000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170'),
(437, 93, 36, 145, '2023-07-06', '2023-11-09', '07:26:00', 5040000.00, 'berhasil', 'Jl. Randu No. 109, Bantul, 55343'),
(438, 47, 8, 92, '2024-06-20', '2024-06-23', '00:40:00', 78000.00, 'berhasil', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(439, 96, 39, 152, '2023-07-26', '2024-06-14', '18:05:00', 10044000.00, 'berhasil', 'Jl. Jati No. 115, Jogja, 55346'),
(440, 68, 40, 156, '2024-01-20', '2024-03-03', '08:33:00', 1505000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(441, 32, 50, 174, '2023-12-20', '2024-06-21', '17:48:00', 6808000.00, 'berhasil', 'Jl. Ahmad Yani No. 123, Jogja, 55283'),
(442, 52, 23, 121, '2024-03-21', '2024-06-08', '16:17:00', 2528000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(443, 19, 33, 139, '2024-03-29', '2024-03-30', '14:47:00', 34000.00, 'berhasil', 'Jalan Sudirman No. 103, Jogja, 55283'),
(444, 82, 51, 176, '2024-05-01', '2024-06-10', '02:01:00', 1560000.00, 'berhasil', 'Jl. Kelapa No. 87, Sleman, 55332'),
(445, 67, 40, 155, '2024-06-19', '2024-06-20', '19:05:00', 34000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(446, 47, 6, 90, '2024-06-16', '2024-06-16', '06:36:00', 0.00, 'ditolak', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(447, 99, 40, 156, '2024-05-24', '2024-06-08', '20:50:00', 525000.00, 'berhasil', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(448, 51, 8, 92, '2023-12-27', '2024-02-24', '09:07:00', 1534000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(449, 52, 11, 98, '2024-01-18', '2024-06-20', '05:38:00', 6006000.00, 'berhasil', 'Jl. Cemara No. 30, Sleman, 55302'),
(450, 99, 43, 160, '2023-11-05', '2024-01-11', '19:18:00', 2613000.00, 'berhasil', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(451, 56, 42, 158, '2023-08-20', '2024-06-07', '06:10:00', 10804000.00, 'berhasil', 'Jl. Jati No. 39, Jogja, 55306'),
(452, 100, 33, 139, '2024-03-28', '2024-05-06', '11:37:00', 1326000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(453, 67, 6, 89, '2023-09-06', '2023-10-03', '02:26:00', 999000.00, 'berhasil', 'Jl. Kamboja No. 57, Sleman, 55317'),
(454, 12, 45, 164, '2023-07-15', '2024-01-24', '19:56:00', 5211000.00, 'berhasil', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168'),
(455, 79, 53, 180, '2024-02-20', '2024-06-23', '16:12:00', 3348000.00, 'ditolak', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(456, 50, 36, 146, '2023-12-12', '2024-02-29', '21:58:00', 1975000.00, 'berhasil', 'Jl. Kedondong No. 25, Kulon Progo, 55300'),
(457, 7, 5, 87, '2024-04-08', '2024-05-18', '16:47:00', 1320000.00, 'berhasil', 'Jalan Sudirman No. 101, Jogja, 55281'),
(458, 76, 47, 167, '2024-05-18', '2024-05-18', '04:34:00', 0.00, 'ditolak', 'Jl. Rotan No. 75, Jogja, 55326'),
(459, 91, 37, 149, '2024-01-22', '2024-06-24', '17:35:00', 4312000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(460, 91, 37, 148, '2024-06-02', '2024-06-03', '19:54:00', 27000.00, 'berhasil', 'Jl. Trembesi No. 105, Jogja, 55341'),
(461, 92, 10, 96, '2024-04-08', '2024-04-25', '20:03:00', 612000.00, 'berhasil', 'Jl. Tanjung No. 107, Sleman, 55342'),
(462, 92, 49, 170, '2024-05-04', '2024-06-10', '12:08:00', 1221000.00, 'berhasil', 'Jl. Tanjung No. 107, Sleman, 55342'),
(463, 13, 28, 131, '2023-11-19', '2024-03-12', '01:38:00', 2964000.00, 'berhasil', 'Jalan Sudirman No. 102, Jogja, 55282'),
(464, 38, 13, 104, '2023-10-10', '2023-10-18', '23:02:00', 248000.00, 'berhasil', 'Jl. Jeruk No. 10, Bantul, 55288'),
(465, 61, 13, 105, '2024-01-07', '2024-01-16', '02:59:00', 288000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(466, 71, 47, 168, '2024-06-08', '2024-06-17', '02:57:00', 279000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(467, 48, 13, 105, '2023-10-22', '2024-01-30', '06:18:00', 3200000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(468, 44, 14, 107, '2024-01-11', '2024-04-25', '22:27:00', 3570000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(469, 44, 33, 139, '2023-12-27', '2024-05-11', '05:45:00', 4624000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(470, 88, 8, 93, '2024-01-28', '2024-02-21', '17:33:00', 648000.00, 'ditolak', 'Jl. Cemara No. 99, Bantul, 55338'),
(471, 54, 13, 104, '2024-01-07', '2024-04-14', '18:56:00', 3038000.00, 'berhasil', 'Jl. Pinang No. 34, Gunungkidul, 55304'),
(472, 61, 47, 168, '2024-05-20', '2024-05-29', '04:28:00', 279000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(473, 86, 45, 163, '2023-09-12', '2024-05-13', '23:03:00', 6344000.00, 'berhasil', 'Jl. Kesambi No. 95, Jogja, 55336'),
(474, 93, 54, 182, '2023-11-25', '2024-06-11', '11:17:00', 6965000.00, 'berhasil', 'Jl. Randu No. 109, Bantul, 55343'),
(475, 83, 21, 116, '2024-04-09', '2024-04-19', '21:21:00', 270000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(476, 41, 26, 129, '2023-08-15', '2024-02-26', '12:55:00', 7800000.00, 'berhasil', 'Jl. Nangka No. 12, Jogja, 55291'),
(477, 25, 11, 99, '2024-05-14', '2024-05-26', '13:38:00', 480000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(478, 100, 42, 159, '2023-08-02', '2024-01-07', '04:12:00', 6004000.00, 'berhasil', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(479, 13, 10, 95, '2024-05-16', '2024-05-20', '07:24:00', 136000.00, 'berhasil', 'Jalan Sudirman No. 102, Jogja, 55282'),
(480, 64, 5, 85, '2023-08-06', '2023-12-22', '13:50:00', 4140000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(481, 69, 34, 144, '2023-12-04', '2024-05-18', '09:27:00', 6474000.00, 'berhasil', 'Jl. Flamboyan No. 61, Gunungkidul, 55319'),
(482, 87, 22, 120, '2024-05-22', '2024-06-04', '07:22:00', 403000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(483, 91, 31, 136, '2024-03-27', '2024-05-28', '00:00:00', 1922000.00, 'menunggu', 'Jl. Trembesi No. 105, Jogja, 55341'),
(484, 48, 31, 137, '2024-04-21', '2024-05-14', '20:39:00', 736000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(485, 38, 47, 167, '2023-06-29', '2023-10-28', '22:14:00', 3630000.00, 'menunggu', 'Jl. Jeruk No. 10, Bantul, 55288'),
(486, 51, 8, 91, '2023-07-23', '2024-06-20', '16:43:00', 8325000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(487, 55, 8, 93, '2023-08-06', '2023-11-29', '06:31:00', 3105000.00, 'berhasil', 'Jl. Mahoni No. 36, Kulon Progo, 55305'),
(488, 63, 11, 98, '2023-10-29', '2024-06-23', '01:34:00', 9282000.00, 'berhasil', 'Jl. Teratai No. 49, Bantul, 55313'),
(489, 72, 23, 123, '2024-03-11', '2024-06-14', '18:06:00', 3230000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(490, 82, 47, 167, '2024-04-23', '2024-06-16', '22:05:00', 1620000.00, 'berhasil', 'Jl. Kelapa No. 87, Sleman, 55332'),
(491, 79, 24, 124, '2023-12-03', '2024-03-16', '17:21:00', 3640000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(492, 37, 37, 149, '2023-10-08', '2023-12-22', '18:55:00', 2100000.00, 'berhasil', 'Jl. Alpukat No. 2, Sleman, 55287'),
(493, 82, 49, 170, '2023-12-16', '2024-02-22', '02:55:00', 2244000.00, 'berhasil', 'Jl. Kelapa No. 87, Sleman, 55332'),
(494, 82, 49, 170, '2024-03-23', '2024-06-09', '04:49:00', 2574000.00, 'ditolak', 'Jl. Kelapa No. 87, Sleman, 55332'),
(495, 65, 33, 141, '2023-07-16', '2023-10-09', '08:19:00', 3060000.00, 'menunggu', 'Jl. Dahlia No. 53, Kulon Progo, 55315');
INSERT INTO `transaksi_makanan` (`Transaksi_ID`, `User_ID`, `UMKM_ID`, `Menu_ID`, `Tanggal_Mulai_Berlangganan`, `Tanggal_Akhir_Berlangganan`, `Jam_Pengantaran`, `Total_Harga`, `Status_Pembayaran`, `Alamat_Tujuan`) VALUES
(496, 87, 23, 121, '2023-12-12', '2023-12-12', '09:51:00', 0.00, 'ditolak', 'Jl. Pinus No. 97, Sleman, 55337'),
(497, 36, 33, 139, '2024-05-11', '2024-06-15', '02:19:00', 1190000.00, 'berhasil', 'Jl. Durian No. 6, Jogja, 55286'),
(498, 78, 39, 151, '2024-01-14', '2024-02-21', '20:18:00', 1140000.00, 'berhasil', 'Jl. Kemuning No. 79, Bantul, 55328'),
(499, 43, 23, 121, '2024-01-24', '2024-05-05', '11:42:00', 3264000.00, 'berhasil', 'Jl. Manggis No. 11, Bantul, 55293'),
(500, 61, 54, 181, '2024-05-24', '2024-06-04', '01:47:00', 330000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(501, 65, 54, 182, '2024-01-25', '2024-05-05', '13:24:00', 3535000.00, 'berhasil', 'Jl. Dahlia No. 53, Kulon Progo, 55315'),
(502, 94, 8, 91, '2023-09-06', '2023-10-07', '09:40:00', 775000.00, 'berhasil', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(503, 64, 31, 138, '2023-12-30', '2024-04-04', '12:57:00', 3168000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(504, 54, 43, 161, '2024-06-01', '2024-06-15', '05:36:00', 560000.00, 'ditolak', 'Jl. Pinang No. 34, Gunungkidul, 55304'),
(505, 100, 21, 117, '2023-07-10', '2023-10-12', '22:14:00', 2632000.00, 'menunggu', 'Jl. Sirih No. 123, Kulon Progo, 55350'),
(506, 71, 36, 146, '2024-01-25', '2024-04-17', '00:48:00', 2075000.00, 'berhasil', 'Jl. Bunga No. 65, Jogja, 55321'),
(507, 63, 14, 107, '2024-04-06', '2024-06-14', '12:59:00', 2346000.00, 'berhasil', 'Jl. Teratai No. 49, Bantul, 55313'),
(508, 83, 11, 99, '2023-09-20', '2024-01-28', '11:59:00', 5200000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(509, 44, 34, 144, '2023-08-21', '2024-05-06', '21:22:00', 10101000.00, 'berhasil', 'Jl. Anggur No. 9, Gunungkidul, 55294'),
(510, 64, 5, 85, '2023-11-08', '2024-03-11', '22:36:00', 3720000.00, 'berhasil', 'Jl. Melati No. 51, Gunungkidul, 55314'),
(511, 38, 53, 178, '2023-12-30', '2024-04-04', '21:05:00', 2400000.00, 'berhasil', 'Jl. Jeruk No. 10, Bantul, 55288'),
(512, 84, 13, 105, '2023-06-27', '2024-05-11', '06:47:00', 10208000.00, 'menunggu', 'Jl. Melinjo No. 91, Gunungkidul, 55334'),
(513, 93, 37, 148, '2024-06-24', '2024-06-24', '14:11:00', 0.00, 'ditolak', 'Jl. Randu No. 109, Bantul, 55343'),
(514, 95, 17, 110, '2023-10-06', '2023-10-09', '13:13:00', 111000.00, 'berhasil', 'Jl. Cemara No. 113, Kulon Progo, 55345'),
(515, 79, 31, 138, '2024-03-26', '2024-03-27', '20:55:00', 33000.00, 'berhasil', 'Jl. Kamper No. 81, Gunungkidul, 55329'),
(516, 57, 17, 109, '2024-06-16', '2024-06-21', '06:44:00', 180000.00, 'berhasil', 'Jl. Bungur No. 41, Sleman, 55307'),
(517, 96, 14, 108, '2023-09-19', '2024-01-15', '08:22:00', 4130000.00, 'berhasil', 'Jl. Jati No. 115, Jogja, 55346'),
(518, 87, 22, 118, '2024-01-25', '2024-02-17', '00:43:00', 667000.00, 'berhasil', 'Jl. Pinus No. 97, Sleman, 55337'),
(519, 19, 26, 128, '2024-01-03', '2024-03-12', '21:33:00', 2691000.00, 'menunggu', 'Jalan Sudirman No. 103, Jogja, 55283'),
(520, 75, 11, 98, '2023-08-13', '2023-10-19', '18:20:00', 2613000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(521, 34, 8, 92, '2023-09-14', '2024-02-28', '00:09:00', 4342000.00, 'menunggu', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(522, 92, 6, 88, '2024-01-24', '2024-03-14', '11:25:00', 1750000.00, 'menunggu', 'Jl. Tanjung No. 107, Sleman, 55342'),
(523, 68, 24, 125, '2024-03-17', '2024-05-23', '07:55:00', 2412000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(524, 99, 26, 129, '2024-03-11', '2024-03-30', '21:05:00', 760000.00, 'berhasil', 'Jl. Karet No. 121, Gunungkidul, 55349'),
(525, 49, 37, 150, '2023-08-22', '2023-12-14', '00:49:00', 3306000.00, 'berhasil', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(526, 54, 51, 175, '2024-03-27', '2024-04-07', '13:06:00', 418000.00, 'menunggu', 'Jl. Pinang No. 34, Gunungkidul, 55304'),
(527, 25, 37, 150, '2024-04-16', '2024-05-01', '12:53:00', 435000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(528, 32, 37, 150, '2023-09-14', '2024-04-26', '21:51:00', 6525000.00, 'berhasil', 'Jl. Ahmad Yani No. 123, Jogja, 55283'),
(529, 49, 17, 111, '2023-10-14', '2024-02-28', '16:12:00', 5206000.00, 'berhasil', 'Jl. Jamblang No. 22, Gunungkidul, 55299'),
(530, 53, 43, 160, '2023-07-28', '2024-01-27', '21:40:00', 7137000.00, 'berhasil', 'Jl. Beringin No. 33, Bantul, 55303'),
(531, 94, 47, 167, '2023-11-04', '2023-11-10', '16:32:00', 180000.00, 'berhasil', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(532, 48, 54, 183, '2023-11-02', '2024-03-02', '00:32:00', 3630000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(533, 75, 28, 130, '2024-03-03', '2024-06-07', '15:31:00', 2400000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(534, 72, 13, 103, '2024-02-07', '2024-04-17', '17:16:00', 2100000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(535, 73, 34, 144, '2023-09-23', '2023-11-09', '18:21:00', 1833000.00, 'menunggu', 'Jl. Ketapang No. 69, Bantul, 55323'),
(536, 36, 40, 155, '2023-12-22', '2024-02-12', '02:37:00', 1768000.00, 'berhasil', 'Jl. Durian No. 6, Jogja, 55286'),
(537, 51, 45, 164, '2023-07-01', '2023-12-16', '09:52:00', 4536000.00, 'berhasil', 'Jl. Menteng No. 28, Jogja, 55301'),
(538, 98, 43, 162, '2024-04-12', '2024-05-21', '17:00:00', 975000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(539, 75, 11, 97, '2023-08-13', '2023-10-11', '03:53:00', 2242000.00, 'berhasil', 'Jl. Sirih No. 73, Kulon Progo, 55325'),
(540, 25, 53, 179, '2024-06-21', '2024-06-22', '19:24:00', 26000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(541, 18, 21, 117, '2023-11-29', '2024-05-16', '02:17:00', 4732000.00, 'menunggu', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169'),
(542, 68, 5, 85, '2024-01-17', '2024-04-12', '12:53:00', 2580000.00, 'berhasil', 'Jl. Anggrek No. 59, Bantul, 55318'),
(543, 43, 40, 154, '2023-11-25', '2024-03-24', '11:36:00', 3960000.00, 'menunggu', 'Jl. Manggis No. 11, Bantul, 55293'),
(544, 25, 26, 127, '2023-10-28', '2024-04-18', '09:46:00', 6574000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(545, 34, 42, 158, '2024-06-06', '2024-06-17', '21:25:00', 407000.00, 'berhasil', 'Jl. Mangga No. 8, Gunungkidul, 55282'),
(546, 60, 11, 97, '2024-06-23', '2024-06-23', '17:40:00', 0.00, 'ditolak', 'Jl. Tanjung No. 45, Kulon Progo, 55310'),
(547, 83, 42, 158, '2023-08-16', '2024-05-28', '05:18:00', 10582000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(548, 47, 51, 177, '2024-01-29', '2024-05-24', '07:24:00', 4640000.00, 'berhasil', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(549, 61, 12, 102, '2023-08-23', '2024-03-16', '22:05:00', 5974000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(550, 45, 24, 126, '2024-04-22', '2024-06-18', '23:23:00', 2109000.00, 'berhasil', 'Jl. Salak No. 16, Kulon Progo, 55295'),
(551, 40, 12, 102, '2023-12-03', '2024-06-21', '21:23:00', 5829000.00, 'berhasil', 'Jl. Duku No. 3, Kulon Progo, 55290'),
(552, 25, 28, 132, '2024-03-01', '2024-06-15', '15:46:00', 2862000.00, 'berhasil', 'Jalan Sudirman No. 104, Jogja, 55284'),
(553, 33, 19, 112, '2023-12-14', '2024-06-24', '20:15:00', 7527000.00, 'berhasil', 'Jl. Kenari No. 5, Bantul, 55284'),
(554, 53, 45, 165, '2024-01-14', '2024-06-12', '16:28:00', 4200000.00, 'menunggu', 'Jl. Beringin No. 33, Bantul, 55303'),
(555, 66, 39, 152, '2024-04-23', '2024-05-22', '23:35:00', 899000.00, 'berhasil', 'Jl. Mawar No. 55, Jogja, 55316'),
(556, 98, 34, 142, '2024-03-26', '2024-04-11', '03:45:00', 592000.00, 'berhasil', 'Jl. Ketapang No. 119, Bantul, 55348'),
(557, 88, 29, 135, '2023-06-27', '2024-04-03', '14:01:00', 8430000.00, 'berhasil', 'Jl. Cemara No. 99, Bantul, 55338'),
(558, 95, 49, 169, '2024-03-25', '2024-04-16', '23:42:00', 704000.00, 'berhasil', 'Jl. Cemara No. 113, Kulon Progo, 55345'),
(559, 47, 17, 110, '2024-02-13', '2024-03-03', '04:25:00', 703000.00, 'berhasil', 'Jl. Jambu Air No. 18, Sleman, 55297'),
(560, 43, 13, 104, '2024-02-16', '2024-05-04', '18:38:00', 2418000.00, 'berhasil', 'Jl. Manggis No. 11, Bantul, 55293'),
(561, 41, 10, 94, '2024-03-30', '2024-06-01', '08:46:00', 1764000.00, 'ditolak', 'Jl. Nangka No. 12, Jogja, 55291'),
(562, 39, 28, 132, '2023-07-30', '2024-03-26', '06:08:00', 6480000.00, 'berhasil', 'Jl. Rambutan No. 4, Gunungkidul, 55289'),
(563, 72, 49, 171, '2024-02-05', '2024-04-25', '16:21:00', 2720000.00, 'berhasil', 'Jl. Semboja No. 67, Sleman, 55322'),
(564, 38, 43, 160, '2024-02-08', '2024-02-10', '01:18:00', 78000.00, 'menunggu', 'Jl. Jeruk No. 10, Bantul, 55288'),
(565, 94, 39, 153, '2024-04-24', '2024-04-24', '01:15:00', 0.00, 'ditolak', 'Jl. Mahoni No. 111, Gunungkidul, 55344'),
(566, 76, 10, 94, '2024-03-18', '2024-04-18', '21:58:00', 868000.00, 'berhasil', 'Jl. Rotan No. 75, Jogja, 55326'),
(567, 38, 42, 158, '2024-03-09', '2024-05-26', '14:14:00', 2886000.00, 'menunggu', 'Jl. Jeruk No. 10, Bantul, 55288'),
(568, 53, 26, 127, '2023-11-08', '2024-02-02', '21:22:00', 3268000.00, 'menunggu', 'Jl. Beringin No. 33, Bantul, 55303'),
(569, 73, 45, 165, '2023-08-23', '2024-05-09', '21:34:00', 7280000.00, 'menunggu', 'Jl. Ketapang No. 69, Bantul, 55323'),
(570, 61, 11, 98, '2024-01-25', '2024-06-18', '07:52:00', 5655000.00, 'berhasil', 'Jl. Seruni No. 46, Jogja, 55311'),
(571, 48, 40, 156, '2023-12-25', '2024-03-29', '05:03:00', 3325000.00, 'berhasil', 'Jl. Belimbing No. 21, Bantul, 55298'),
(572, 13, 47, 168, '2023-10-25', '2023-12-19', '15:37:00', 1705000.00, 'berhasil', 'Jalan Sudirman No. 102, Jogja, 55282'),
(573, 80, 23, 122, '2023-11-04', '2023-12-15', '08:50:00', 1353000.00, 'menunggu', 'Jl. Kapuk No. 83, Kulon Progo, 55330'),
(574, 83, 49, 170, '2024-05-11', '2024-05-12', '10:34:00', 33000.00, 'berhasil', 'Jl. Mangga No. 89, Bantul, 55333'),
(580, 9, 5, 85, '2024-07-04', '2024-08-01', '00:00:00', 1015000.00, 'menunggu', 'Gg Mawar'),
(581, 9, 5, 85, '2024-07-04', '2024-08-10', '00:00:00', 1140000.00, 'menunggu', 'gg maw'),
(582, 9, 5, 85, '2024-07-04', '2024-08-10', '00:00:00', 1140000.00, 'ditolak', 'mawar'),
(583, 105, 5, 85, '2024-07-04', '2024-08-09', '00:00:00', 1110000.00, 'menunggu', 'hh'),
(584, 105, 5, 86, '2024-07-04', '2024-08-10', '00:00:00', 1216000.00, 'ditolak', 'gg mawar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `UMKM_ID` int(11) NOT NULL,
  `Foto_Identitas` text DEFAULT NULL,
  `Foto_Resto` text DEFAULT NULL,
  `Foto_Buku_Rekening` text DEFAULT NULL,
  `Nama_Resto` varchar(100) DEFAULT NULL,
  `Status_Verifikasi` enum('menunggu','berhasil','ditolak') DEFAULT 'menunggu',
  `Nama_Pemilik` varchar(100) DEFAULT NULL,
  `Kota_Kabupaten` varchar(100) DEFAULT NULL,
  `Alamat_Lengkap` text DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Nomor_Telpon` varchar(15) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Bank` varchar(50) DEFAULT NULL,
  `Nomor_Rekening` varchar(20) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Tanggal_Daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`UMKM_ID`, `Foto_Identitas`, `Foto_Resto`, `Foto_Buku_Rekening`, `Nama_Resto`, `Status_Verifikasi`, `Nama_Pemilik`, `Kota_Kabupaten`, `Alamat_Lengkap`, `Email`, `Nomor_Telpon`, `Username`, `Bank`, `Nomor_Rekening`, `Password`, `Tanggal_Daftar`) VALUES
(5, 'identitas1.jpg', 'resto1.jpg', 'rekening1.jpg', 'Healthy Bites', 'berhasil', 'Mumpuni Wahyuni', 'Jogja', 'Jalan H.J Maemunah No. 56, Jogja, 38016', 'kusumanugroho@ud.go.id', '+62 (008) 378-0', 'cawisono83', 'BSI', 'FVAD26472691051195', 'Ym(p8HHi&*', '2024-04-26'),
(6, 'identitas2.jpg', 'resto2.jpg', 'rekening2.jpg', 'Makanan Sehat', 'berhasil', 'Ajeng Andriani', 'Gunungkidul', 'Jalan W.R. Supratman No. 816, Gunungkidul, 42402', 'hasanahedi@gmail.com', '(0001) 141-2311', 'vera06', 'BRI', 'MNWF86383074214417', '6PAGT#0o(m', '2024-05-09'),
(7, 'identitas3.jpg', 'resto3.jpg', 'rekening3.jpg', 'Fit Food Factory', 'ditolak', 'Taswir Anggraini', 'Kulon Progo', 'Jalan Rawamangun No. 31, Kulon Progo, 60926', 'yunidamanik@yahoo.com', '084 355 0849', 'lsuwarno', 'Mandiri', 'ITUS21449993982902', 's4oVCNLx*X', '2024-05-27'),
(8, 'identitas4.jpg', 'resto4.jpg', 'rekening4.jpg', 'Nutrisi Nikmat', 'berhasil', 'Uda Pudjiastuti', 'Kulon Progo', 'Jl. Erlangga No. 040, Kulon Progo, 18174', 'amaulana@pt.my.id', '+62-019-045-413', 'siraitopan', 'BCA', 'CVIJ16737058632753', ')F9O9!$rh#', '2023-07-18'),
(9, 'identitas5.jpg', 'resto5.jpg', 'rekening5.jpg', 'Vegan Vibes', 'berhasil', 'Halima Yolanda', 'Kulon Progo', 'Jalan Suryakencana No. 04, Kulon Progo, 55399', 'sihotangluwes@perum.my.id', '(0059) 045-2778', 'ami85', 'BNI', 'YVQY27891632269155', '$m1Xfgvskx', '2024-02-01'),
(10, 'identitas6.jpg', 'resto6.jpg', 'rekening6.jpg', 'Oasis Organik', 'berhasil', 'Rifqi Pertiwi', 'Bantul', 'Jl. Palem No. 123, Bantul, 53819', 'rifqi.pertiwi@gmail.com', '+62 (021) 345-6', 'rifqi123', 'BRI', 'DLSV12133456789456', 'Rfqi@123', '2024-05-22'),
(11, 'identitas7.jpg', 'resto7.jpg', 'rekening7.jpg', 'Pure Plates', 'berhasil', 'Fajar Nugraha', 'Gunungkidul', 'Jl. Anggrek No. 45, Gunungkidul, 78910', 'fajar.nugraha@gmail.com', '+62 (022) 456-7', 'fajar456', 'Mandiri', 'GLNO87654321234567', 'Fjr@456', '2024-04-12'),
(12, 'identitas8.jpg', 'resto8.jpg', 'rekening8.jpg', 'Dapur Sehat', 'berhasil', 'Hendra Wijaya', 'Sleman', 'Jl. Melati No. 67, Sleman, 11223', 'hendra.wijaya@gmail.com', '+62 (023) 567-8', 'hendra789', 'BCA', 'HRKJ09876543212345', 'Hdr@789', '2023-10-27'),
(13, 'identitas9.jpg', 'resto9.jpg', 'rekening9.jpg', 'Clean Cuisine', 'berhasil', 'Nadia Putri', 'Jogja', 'Jl. Mawar No. 89, Jogja, 33445', 'nadia.putri@gmail.com', '+62 (024) 678-9', 'nadia012', 'BNI', 'LBXN12345678901234', 'Nda@012', '2023-11-03'),
(14, 'identitas10.jpg', 'resto10.jpg', 'rekening10.jpg', 'Hidangan Sehat', 'berhasil', 'Aditya Pratama', 'Kulon Progo', 'Jl. Kenanga No. 101, Kulon Progo, 55667', 'aditya.pratama@gmail.com', '+62 (025) 789-0', 'aditya345', 'BSI', 'MNOP23456789012345', 'Aty@345', '2024-04-29'),
(15, 'identitas11.jpg', 'resto11.jpg', 'rekening11.jpg', 'Fresh Fare', 'berhasil', 'Bagas Santoso', 'Bantul', 'Jl. Cemara No. 78, Bantul, 12345', 'bagas.santoso@gmail.com', '+62 (026) 890-1', 'bagas678', 'BCA', 'ABCD12345678901234', 'Bgs@678', '2023-09-14'),
(16, 'identitas12.jpg', 'resto12.jpg', 'rekening12.jpg', 'Sayuran Segar', 'berhasil', 'Cahaya Permana', 'Sleman', 'Jl. Melati No. 90, Sleman, 67890', 'cahaya.permana@gmail.com', '+62 (027) 901-2', 'cahaya789', 'Mandiri', 'WXYZ09876543211234', 'Chy@789', '2024-02-15'),
(17, 'identitas13.jpg', 'resto13.jpg', 'rekening13.jpg', 'Balanced Bites', 'berhasil', 'Dian Anggraini', 'Jogja', 'Jl. Kenanga No. 102, Jogja, 34567', 'dian.anggraini@gmail.com', '+62 (028) 012-3', 'dian890', 'BRI', 'EFGH98765432101234', 'DnA@890', '2024-02-03'),
(18, 'identitas14.jpg', 'resto14.jpg', 'rekening14.jpg', 'Kantin Holistik', 'ditolak', 'Eka Kurniawan', 'Gunungkidul', 'Jl. Mawar No. 103, Gunungkidul, 45678', 'eka.kurniawan@gmail.com', '+62 (029) 123-4', 'eka901', 'BNI', 'IJKL87654321012345', 'EkK@901', '2023-09-06'),
(19, 'identitas15.jpg', 'resto15.jpg', 'rekening15.jpg', 'Lean Lunches', 'berhasil', 'Feri Suryadi', 'Kulon Progo', 'Jl. Cemara No. 104, Kulon Progo, 56789', 'feri.suryadi@gmail.com', '+62 (030) 234-5', 'feri012', 'BSI', 'MNOP76543210123456', 'FrS@012', '2023-09-17'),
(20, 'identitas16.jpg', 'resto16.jpg', 'rekening16.jpg', 'Goodness Grains', 'ditolak', 'Gina Pratama', 'Bantul', 'Jl. Melati No. 105, Bantul, 67891', 'gina.pratama@gmail.com', '+62 (031) 345-6', 'gina123', 'Mandiri', 'QRST65432101234567', 'GnP@123', '2024-02-05'),
(21, 'identitas17.jpg', 'resto17.jpg', 'rekening17.jpg', 'Gizi Lezat', 'berhasil', 'Hadi Wijaya', 'Sleman', 'Jl. Kenanga No. 106, Sleman, 78912', 'hadi.wijaya@gmail.com', '+62 (032) 456-7', 'hadi234', 'BRI', 'UVWX54321012345678', 'HdW@234', '2023-12-08'),
(22, 'identitas18.jpg', 'resto18.jpg', 'rekening18.jpg', 'Energize Eats', 'berhasil', 'Ika Permana', 'Jogja', 'Jl. Mawar No. 107, Jogja, 89123', 'ika.permana@gmail.com', '+62 (033) 567-8', 'ika345', 'BCA', 'YZAB43210123456789', 'IkP@345', '2023-12-23'),
(23, 'identitas19.jpg', 'resto19.jpg', 'rekening19.jpg', 'Stasiun Superfood', 'berhasil', 'Jaka Pratama', 'Gunungkidul', 'Jl. Cemara No. 108, Gunungkidul, 91234', 'jaka.pratama@gmail.com', '+62 (034) 678-9', 'jaka456', 'Mandiri', 'CDEF32101234567890', 'JkP@456', '2023-08-30'),
(24, 'identitas20.jpg', 'resto20.jpg', 'rekening20.jpg', 'Makanan Bijak', 'berhasil', 'Kirana Puspita', 'Kulon Progo', 'Jl. Melati No. 109, Kulon Progo, 12345', 'kirana.puspita@gmail.com', '+62 (035) 789-0', 'kirana567', 'BNI', 'FGHI21012345678901', 'KrP@567', '2023-12-17'),
(25, 'identitas21.jpg', 'resto21.jpg', 'rekening21.jpg', 'Sustainably Savory', 'menunggu', 'Lila Susanti', 'Bantul', 'Jl. Kenanga No. 110, Bantul, 23456', 'lila.susanti@gmail.com', '+62 (036) 890-1', 'lila678', 'BSI', 'JKLM10123456789012', 'LlS@678', '2024-05-29'),
(26, 'identitas22.jpg', 'resto22.jpg', 'rekening22.jpg', 'Plant Power Plates', 'berhasil', 'Maya Rahmawati', 'Sleman', 'Jl. Mawar No. 111, Sleman, 34567', 'maya.rahmawati@gmail.com', '+62 (037) 901-2', 'maya789', 'BRI', 'NOPQ01234567890123', 'MyR@789', '2023-10-03'),
(27, 'identitas23.jpg', 'resto23.jpg', 'rekening23.jpg', 'Bistro Sehat', 'menunggu', 'Nina Suryani', 'Jogja', 'Jl. Cemara No. 112, Jogja, 45678', 'nina.suryani@gmail.com', '+62 (038) 012-3', 'nina890', 'BCA', 'QRST12345678901234', 'NnS@890', '2024-02-18'),
(28, 'identitas24.jpg', 'resto24.jpg', 'rekening24.jpg', 'Vibrant Veggies', 'berhasil', 'Oka Kurniawan', 'Gunungkidul', 'Jl. Melati No. 113, Gunungkidul, 56789', 'oka.kurniawan@gmail.com', '+62 (039) 123-4', 'oka901', 'Mandiri', 'UVWX23456789012345', 'OkK@901', '2023-12-27'),
(29, 'identitas25.jpg', 'resto25.jpg', 'rekening25.jpg', 'Dapur Hijau', 'berhasil', 'Putu Anggraini', 'Kulon Progo', 'Jl. Kenanga No. 114, Kulon Progo, 67890', 'putu.anggraini@gmail.com', '+62 (040) 234-5', 'putu012', 'BNI', 'YZAB34567890123456', 'PtA@012', '2024-02-14'),
(30, 'identitas26.jpg', 'resto26.jpg', 'rekening26.jpg', 'Health Haven', 'berhasil', 'Rani Pertiwi', 'Bantul', 'Jl. Mawar No. 115, Bantul, 78901', 'rani.pertiwi@gmail.com', '+62 (041) 345-6', 'rani123', 'BSI', 'CDEF45678901234567', 'RnP@123', '2024-03-25'),
(31, 'identitas27.jpg', 'resto27.jpg', 'rekening27.jpg', 'Delight Organik', 'berhasil', 'Santi Wijaya', 'Sleman', 'Jl. Cemara No. 116, Sleman, 89012', 'santi.wijaya@gmail.com', '+62 (042) 456-7', 'santi234', 'BRI', 'GHIJ56789012345678', 'StW@234', '2024-05-19'),
(32, 'identitas28.jpg', 'resto28.jpg', 'rekening28.jpg', 'Wellbeing Bites', 'ditolak', 'Taufik Hidayat', 'Jogja', 'Jl. Melati No. 117, Jogja, 90123', 'taufik.hidayat@gmail.com', '+62 (043) 567-8', 'taufik345', 'BCA', 'KLMN67890123456789', 'TfH@345', '2023-10-19'),
(33, 'identitas29.jpg', 'resto29.jpg', 'rekening29.jpg', 'Makanan Alam', 'berhasil', 'Udin Pratama', 'Gunungkidul', 'Jl. Kenanga No. 118, Gunungkidul, 01234', 'udin.pratama@gmail.com', '+62 (044) 678-9', 'udin456', 'Mandiri', 'OPQR78901234567890', 'UdP@456', '2023-06-10'),
(34, 'identitas30.jpg', 'resto30.jpg', 'rekening30.jpg', 'Wholesome Bites', 'berhasil', 'Vera Anggraini', 'Kulon Progo', 'Jl. Mawar No. 119, Kulon Progo, 12345', 'vera.anggraini@gmail.com', '+62 (045) 789-0', 'vera567', 'BNI', 'STUV89012345678901', 'VrA@567', '2024-05-21'),
(35, 'identitas31.jpg', 'resto31.jpg', 'rekening31.jpg', 'Green Gourmet', 'menunggu', 'Wahyu Pertiwi', 'Bantul', 'Jl. Cemara No. 120, Bantul, 23456', 'wahyu.pertiwi@gmail.com', '+62 (046) 890-1', 'wahyu678', 'BSI', 'WXYZ90123456789012', 'WyP@678', '2024-03-16'),
(36, 'identitas32.jpg', 'resto32.jpg', 'rekening32.jpg', 'Bahan Bakar Fit', 'berhasil', 'Xenia Rahmawati', 'Sleman', 'Jl. Melati No. 121, Sleman, 34567', 'xenia.rahmawati@gmail.com', '+62 (047) 901-2', 'xenia789', 'BRI', 'ABCD01234567890123', 'XnR@789', '2023-06-14'),
(37, 'identitas33.jpg', 'resto33.jpg', 'rekening33.jpg', 'Purely Plant-Based', 'berhasil', 'Yulia Pratama', 'Jogja', 'Jl. Kenanga No. 122, Jogja, 45678', 'yulia.pratama@gmail.com', '+62 (048) 012-3', 'yulia890', 'BCA', 'EFGH12345678901234', 'YlP@890', '2024-03-23'),
(39, 'identitas35.jpg', 'resto35.jpg', 'rekening35.jpg', 'Nutrisi Nikmat', 'berhasil', 'Agus Purnomo', 'Kulon Progo', 'Jl. Cemara No. 124, Kulon Progo, 67890', 'agus.purnomo@gmail.com', '+62 (050) 234-5', 'agus012', 'BNI', 'MNOP34567890123456', 'AgP@012', '2023-09-12'),
(40, 'identitas36.jpg', 'resto36.jpg', 'rekening36.jpg', 'Balanced Bistro', 'berhasil', 'Budi Santoso', 'Bantul', 'Jl. Melati No. 125, Bantul, 78901', 'budi.santoso@gmail.com', '+62 (051) 345-6', 'budi123', 'BSI', 'QRST45678901234567', 'BdS@123', '2024-01-02'),
(41, 'identitas37.jpg', 'resto37.jpg', 'rekening37.jpg', 'Fokus Segar', 'ditolak', 'Cici Anggraini', 'Sleman', 'Jl. Kenanga No. 126, Sleman, 89012', 'cici.anggraini@gmail.com', '+62 (052) 456-7', 'cici234', 'BRI', 'UVWX56789012345678', 'CcA@234', '2023-07-08'),
(42, 'identitas38.jpg', 'resto38.jpg', 'rekening38.jpg', 'Kafe Superfoods', 'berhasil', 'Dedi Wijaya', 'Jogja', 'Jl. Mawar No. 127, Jogja, 90123', 'dedi.wijaya@gmail.com', '+62 (053) 567-8', 'dedi345', 'BCA', 'YZAB67890123456789', 'DdW@345', '2024-02-24'),
(43, 'identitas39.jpg', 'resto39.jpg', 'rekening39.jpg', 'Holistic Bites', 'berhasil', 'Euis Pratama', 'Gunungkidul', 'Jl. Cemara No. 128, Gunungkidul, 01234', 'euis.pratama@gmail.com', '+62 (054) 678-9', 'euis456', 'Mandiri', 'CDEF78901234567890', 'EuP@456', '2023-10-15'),
(44, 'identitas40.jpg', 'resto40.jpg', 'rekening40.jpg', 'Lean & Green', 'menunggu', 'Faisal Haryanto', 'Kulon Progo', 'Jl. Melati No . 129, Kulon Progo, 12345', 'faisal.haryanto@gmail.com', '+62 (055) 789-0', 'faisal567', 'BNI', 'GHIJ89012345678901', 'FsH@567', '2024-01-30'),
(45, 'identitas41.jpg', 'resto41.jpg', 'rekening41.jpg', 'Good For You', 'berhasil', 'Gina Suryani', 'Bantul', 'Jl. Kenanga No. 130, Bantul, 23456', 'gina.suryani@gmail.com', '+62 (056) 890-1', 'gina678', 'BSI', 'KLMN90123456789012', 'GnS@678', '2023-08-17'),
(46, 'identitas42.jpg', 'resto42.jpg', 'rekening42.jpg', 'Camilan Gizi', 'berhasil', 'Hendra Permana', 'Sleman', 'Jl. Mawar No. 131, Sleman, 34567', 'hendra.permana@gmail.com', '+62 (057) 901-2', 'hendra789', 'BRI', 'OPQR01234567890123', 'HdP@789', '2023-06-22'),
(47, 'identitas43.jpg', 'resto43.jpg', 'rekening43.jpg', 'Energizing Eats', 'berhasil', 'Indra Kurniawan', 'Jogja', 'Jl. Cemara No. 132, Jogja, 45678', 'indra.kurniawan@gmail.com', '+62 (058) 012-3', 'indra890', 'BCA', 'STUV12345678901234', 'InK@890', '2024-01-28'),
(48, 'identitas44.jpg', 'resto44.jpg', 'rekening44.jpg', 'Keajaiban Sehat', 'berhasil', 'Joko Pratama', 'Gunungkidul', 'Jl. Melati No. 133, Gunungkidul, 56789', 'joko.pratama@gmail.com', '+62 (059) 123-4', 'joko901', 'Mandiri', 'WXYZ23456789012345', 'JkP@901', '2023-07-16'),
(49, 'identitas45.jpg', 'resto45.jpg', 'rekening45.jpg', 'Camilan Alami', 'berhasil', 'Kiki Anggraini', 'Kulon Progo', 'Jl. Kenanga No. 134, Kulon Progo, 67890', 'kiki.anggraini@gmail.com', '+62 (060) 234-5', 'kiki012', 'BNI', 'ABCD34567890123456', 'KkA@012', '2024-01-19'),
(50, 'identitas46.jpg', 'resto46.jpg', 'rekening46.jpg', 'Wholesome Wonders', 'ditolak', 'Lina Pratama', 'Bantul', 'Jl. Mawar No. 135, Bantul, 78901', 'lina.pratama@gmail.com', '+62 (061) 345-6', 'lina123', 'BSI', 'EFGH45678901234567', 'LnP@123', '2024-03-25'),
(51, 'identitas47.jpg', 'resto47.jpg', 'rekening47.jpg', 'Kenikmatan Nabati', 'berhasil', 'Mira Suryani', 'Sleman', 'Jl. Cemara No. 136, Sleman, 89012', 'mira.suryani@gmail.com', '+62 (062) 456-7', 'mira234', 'BRI', 'IJKL56789012345678', 'MrS@234', '2023-08-02'),
(52, 'identitas48.jpg', 'resto48.jpg', 'rekening48.jpg', 'Healthy Hues', 'menunggu', 'Nanda Permana', 'Jogja', 'Jl. Melati No. 137, Jogja, 90123', 'nanda.permana@gmail.com', '+62 (063) 567-8', 'nanda345', 'BCA', 'MNOP67890123456789', 'NdP@345', '2023-10-25'),
(53, 'identitas49.jpg', 'resto49.jpg', 'rekening49.jpg', 'Nourish & Flourish', 'berhasil', 'Oni Kurniawan', 'Gunungkidul', 'Jl. Kenanga No. 138, Gunungkidul, 01234', 'oni.kurniawan@gmail.com', '+62 (064) 678-9', 'oni456', 'Mandiri', 'QRST78901234567890', 'OnK@456', '2023-11-29'),
(54, 'identitas50.jpg', 'resto50.jpg', 'rekening50.jpg', 'Murni Alami', 'berhasil', 'Putu Anggraini', 'Kulon Progo', 'Jl. Mawar No. 139, Kulon Progo, 12345', 'putu.anggraini@gmail.com', '+62 (065) 789-0', 'putu567', 'BNI', 'UVWX89012345678901', 'PtA@567', '2023-09-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Nomor_Telpon` varchar(15) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Kota_Kabupaten` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`User_ID`, `Nama`, `Nomor_Telpon`, `Alamat`, `Email`, `Username`, `Password`, `Kota_Kabupaten`) VALUES
(2, 'Titin Safitri', '+62 (045) 105-6', 'Gg. PHH. Mustofa No. 424, Bantul, 99268', 'nsimanjuntak@gmail.com', 'sinagaamalia', '*fXuRE*w0r', 'Bantul'),
(3, 'Maryanto Lazuardi', '(0505) 538 1843', 'Jalan Yos Sudarso No. 38, Bantul, 70821', 'habibipardi@hotmail.com', 'darmaji34', '#XNmkpgd2(', 'Bantul'),
(4, 'Karna Budiyanto', '(021) 632-8898', 'Gg. Cempaka No. 6, Sleman, 73584', 'nwasita@cv.id', 'aharyanto', 'w3koQjLj@b', 'Sleman'),
(5, 'Kurnia Nababan', '+62 (886) 251 2', 'Gg. PHH. Mustofa No. 17, Gunungkidul, 66439', 'rusmansantoso@pt.or.id', 'wwinarsih', '6WMBG5an(3', 'Gunungkidul'),
(6, 'Arta Suartini', ' +62-078-190-93', 'Gg. Ir. H. Djuanda No. 127, Kulon Progo, 90167', 'purnawatiperkasa@cv.net', 'gamaninasyiah', 'Yh0QH!Sf)*', 'Kulon Progo'),
(7, 'Bramantyo Ardiansyah', ' +62-093-190-93', 'Jalan Sudirman No. 101, Jogja, 55281', 'bramantyo@gmail.com', 'bramantyo', 'br4m4n7yo!', 'Jogja'),
(8, 'Cahyono Prasetyo', '+62 (045) 106-6', 'Gg. PHH. Mustofa No. 425, Bantul, 99269', 'cahyono@gmail.com', 'cahyono', 'c4hy0n0!', 'Bantul'),
(9, 'Dian Kristanto', '(0505) 539 1843', 'Jalan Yos Sudarso No. 39, Bantul, 70822', 'dian@gmail.com', 'dian', 'd14n!', 'Bantul'),
(10, 'Endah Kurniasih', '(021) 633-8898', 'Gg. Cempaka No. 7, Sleman, 73585', 'endah@gmail.com', 'endah', '3nd4h!', 'Sleman'),
(11, 'Fitriani Budiman', '+62 (886) 252 2', 'Gg. PHH. Mustofa No. 18, Gunungkidul, 66440', 'fitriani@gmail.com', 'fitriani', 'f1tr14n1!', 'Gunungkidul'),
(12, 'Gilang Saputra', ' +62-078-191-93', 'Gg. Ir. H. Djuanda No. 128, Kulon Progo, 90168', 'gilang@gmail.com', 'gilang', 'g1l4ng!', 'Kulon Progo'),
(13, 'Hafiz Andika', ' +62-093-191-93', 'Jalan Sudirman No. 102, Jogja, 55282', 'hafiz@gmail.com', 'hafiz', 'h4f1z!', 'Jogja'),
(14, 'Ika Puspitasari', '+62 (045) 107-6', 'Gg. PHH. Mustofa No. 426, Bantul, 99270', 'ika@gmail.com', 'ika', '1k4!', 'Bantul'),
(15, 'Joko Santoso', '(0505) 540 1843', 'Jalan Yos Sudarso No. 40, Bantul, 70823', 'joko@gmail.com', 'joko', 'j0k0!', 'Bantul'),
(16, 'Kartini Setyawan', '(021) 634-8898', 'Gg. Cempaka No. 8, Sleman, 73586', 'kartini@gmail.com', 'kartini', 'k4rt1n1!', 'Sleman'),
(17, 'Laila Wijayanti', '+62 (886) 253 2', 'Gg. PHH. Mustofa No. 19, Gunungkidul, 66441', 'laila@gmail.com', 'laila', 'l41l4!', 'Gunungkidul'),
(18, 'Mawar Sari', ' +62-078-192-93', 'Gg. Ir. H. Djuanda No. 129, Kulon Progo, 90169', 'mawar@gmail.com', 'mawar', 'm4w4r!', 'Kulon Progo'),
(19, 'Nanda Pratama', ' +62-093-192-93', 'Jalan Sudirman No. 103, Jogja, 55283', 'nanda@gmail.com', 'nanda', 'n4nd4!', 'Jogja'),
(20, 'Oki Setiawan', '+62 (045) 108-6', 'Gg. PHH. Mustofa No. 427, Bantul, 99271', 'oki@gmail.com', 'oki', '0k1!', 'Bantul'),
(21, 'Puspita Dewi', '(0505) 541 1843', 'Jalan Yos Sudarso No. 41, Bantul, 70824', 'puspita@gmail.com', 'puspita', 'pusp1t4!', 'Bantul'),
(22, 'Qory Azizah', '(021) 635-8898', 'Gg. Cempaka No. 9, Sleman, 73587', 'qory@gmail.com', 'qory', 'q0ry!', 'Sleman'),
(23, 'Rudi Hartono', '+62 (886) 254 2', 'Gg. PHH. Mustofa No. 20, Gunungkidul, 66442', 'rudi@gmail.com', 'rudi', 'rud1!', 'Gunungkidul'),
(24, 'Siti Aminah', ' +62-078-193-93', 'Gg. Ir. H. Djuanda No. 130, Kulon Progo, 90170', 'siti@gmail.com', 'siti', 's1t1!', 'Kulon Progo'),
(25, 'Taufik Hidayat', ' +62-093-193-93', 'Jalan Sudirman No. 104, Jogja, 55284', 'taufik@gmail.com', 'taufik', 't4uf1k!', 'Jogja'),
(26, 'Umi Kalsum', '+62 (045) 109-6', 'Gg. PHH. Mustofa No. 428, Bantul, 99272', 'umi@gmail.com', 'umi', 'um1!', 'Bantul'),
(27, 'Vina Indah', '(0505) 542 1843', 'Jalan Yos Sudarso No. 42, Bantul, 70825', 'vina@gmail.com', 'vina', 'v1n4!', 'Bantul'),
(28, 'Wahyu Priyanto', '(021) 636-8898', 'Gg. Cempaka No. 10, Sleman, 73588', 'wahyu@gmail.com', 'wahyu', 'w4hyu!', 'Sleman'),
(29, 'Xenia Ayu', '+62 (886) 255 2', 'Gg. PHH. Mustofa No. 21, Gunungkidul, 66443', 'xenia@gmail.com', 'xenia', 'x3n14!', 'Gunungkidul'),
(30, 'Yuni Hartati', ' +62-078-194-93', 'Gg. Ir. H. Djuanda No. 131, Kulon Progo, 90171', 'yuni@gmail.com', 'yuni', 'yun1!', 'Kulon Progo'),
(31, 'Zainal Arifin', ' +62-093-194-93', 'Jalan Sudirman No. 105, Jogja, 55285', 'zainal@gmail.com', 'zainal', 'z41n4l!', 'Jogja'),
(32, 'Agus Riyanto', ' +62-045-950-12', 'Jl. Ahmad Yani No. 123, Jogja, 55283', 'agus@gmail.com', 'agus', '4gusR!', 'Jogja'),
(33, 'Citra Dewi', ' +62-047-950-12', 'Jl. Kenari No. 5, Bantul, 55284', 'citra@gmail.com', 'citra', 'c1tr4D!', 'Bantul'),
(34, 'Dodi Prasetyo', ' +62-048-950-12', 'Jl. Mangga No. 8, Gunungkidul, 55282', 'dodi@gmail.com', 'dodi', 'd0d1P!', 'Gunungkidul'),
(35, 'Eka Putra', ' +62-049-950-12', 'Jl. Jambu No. 7, Kulon Progo, 55285', 'eka@gmail.com', 'eka', '3k4P!', 'Kulon Progo'),
(36, 'Fani Hidayat', ' +62-050-950-12', 'Jl. Durian No. 6, Jogja, 55286', 'fani@gmail.com', 'fani', 'f4n1H!', 'Jogja'),
(37, 'Gita Setyawan', ' +62-051-950-12', 'Jl. Alpukat No. 2, Sleman, 55287', 'gita@gmail.com', 'gita', 'g1t4S!', 'Sleman'),
(38, 'Hadi Santoso', ' +62-052-950-12', 'Jl. Jeruk No. 10, Bantul, 55288', 'hadi@gmail.com', 'hadi', 'h4d1S!', 'Bantul'),
(39, 'Iwan Prasetyo', ' +62-053-950-12', 'Jl. Rambutan No. 4, Gunungkidul, 55289', 'iwan@gmail.com', 'iwan', '1w4nP!', 'Gunungkidul'),
(40, 'Joko Supriyanto', ' +62-054-950-12', 'Jl. Duku No. 3, Kulon Progo, 55290', 'joko@gmail.com', 'joko', 'j0k0S!', 'Kulon Progo'),
(41, 'Kiki Suryani', ' +62-055-950-12', 'Jl. Nangka No. 12, Jogja, 55291', 'kiki@gmail.com', 'kiki', 'k1k1S!', 'Jogja'),
(42, 'Lina Permatasari', ' +62-056-950-12', 'Jl. Sawo No. 14, Sleman, 55292', 'lina@gmail.com', 'lina', 'l1n4P!', 'Sleman'),
(43, 'Maya Wulandari', ' +62-057-950-12', 'Jl. Manggis No. 11, Bantul, 55293', 'maya@gmail.com', 'maya', 'm4y4W!', 'Bantul'),
(44, 'Nina Nuraini', ' +62-058-950-12', 'Jl. Anggur No. 9, Gunungkidul, 55294', 'nina@gmail.com', 'nina', 'n1n4N!', 'Gunungkidul'),
(45, 'Oka Surya', ' +62-059-950-12', 'Jl. Salak No. 16, Kulon Progo, 55295', 'oka@gmail.com', 'oka', '0k4S!', 'Kulon Progo'),
(46, 'Putu Anggara', ' +62-060-950-12', 'Jl. Srikaya No. 19, Jogja, 55296', 'putu@gmail.com', 'putu', 'putuA!', 'Jogja'),
(47, 'Qori Hasan', ' +62-061-950-12', 'Jl. Jambu Air No. 18, Sleman, 55297', 'qori@gmail.com', 'qori', 'q0r1H!', 'Sleman'),
(48, 'Rina Saputri', ' +62-062-950-12', 'Jl. Belimbing No. 21, Bantul, 55298', 'rina@gmail.com', 'rina', 'r1n4S!', 'Bantul'),
(49, 'Sari Dewi', ' +62-063-950-12', 'Jl. Jamblang No. 22, Gunungkidul, 55299', 'sari@gmail.com', 'sari', 's4r1D!', 'Gunungkidul'),
(50, 'Tono Pranata', ' +62-064-950-12', 'Jl. Kedondong No. 25, Kulon Progo, 55300', 'tono@gmail.com', 'tono', 't0n0P!', 'Kulon Progo'),
(51, 'Udin Wibowo', ' +62-065-950-12', 'Jl. Menteng No. 28, Jogja, 55301', 'udin@gmail.com', 'udin', 'ud1nW!', 'Jogja'),
(52, 'Vina Sari', ' +62-066-950-12', 'Jl. Cemara No. 30, Sleman, 55302', 'vina@gmail.com', 'vina', 'v1n4S!', 'Sleman'),
(53, 'Wawan Setiawan', ' +62-067-950-12', 'Jl. Beringin No. 33, Bantul, 55303', 'wawan@gmail.com', 'wawan', 'w4w4nS!', 'Bantul'),
(54, 'Xena Dewi', ' +62-068-950-12', 'Jl. Pinang No. 34, Gunungkidul, 55304', 'xena@gmail.com', 'xena', 'x3n4D!', 'Gunungkidul'),
(55, 'Yanti Wulandari', ' +62-069-950-12', 'Jl. Mahoni No. 36, Kulon Progo, 55305', 'yanti@gmail.com', 'yanti', 'y4nt1W!', 'Kulon Progo'),
(56, 'Zaki Pratama', ' +62-070-950-12', 'Jl. Jati No. 39, Jogja, 55306', 'zaki@gmail.com', 'zaki', 'z4k1P!', 'Jogja'),
(57, 'Anwar Kurniawan', ' +62-071-950-12', 'Jl. Bungur No. 41, Sleman, 55307', 'anwar@gmail.com', 'anwar', '4nw4rK!', 'Sleman'),
(58, 'Budi Prasetyo', ' +62-072-950-12', 'Jl. Cendana No. 42, Bantul, 55308', 'budip@gmail.com', 'budip', 'bud1pP!', 'Bantul'),
(59, 'Cici Wijayanti', ' +62-073-950-12', 'Jl. Akasia No. 43, Gunungkidul, 55309', 'cici@gmail.com', 'cici', 'c1c1W!', 'Gunungkidul'),
(60, 'Dedi Purwanto', ' +62-074-950-12', 'Jl. Tanjung No. 45, Kulon Progo, 55310', 'dedi@gmail.com', 'dedi', 'd3d1P!', 'Kulon Progo'),
(61, 'Euis Permatasari', ' +62-075-950-12', 'Jl. Seruni No. 46, Jogja, 55311', 'euis@gmail.com', 'euis', 'euisP!', 'Jogja'),
(62, 'Fajar Wibisono', ' +62-076-950-12', 'Jl. Waru No. 47, Sleman, 55312', 'fajar@gmail.com', 'fajar', 'f4j4rW!', 'Sleman'),
(63, 'Gilang Ramadhan', ' +62-077-950-12', 'Jl. Teratai No. 49, Bantul, 55313', 'gilang@gmail.com', 'gilang', 'g1l4ngR!', 'Bantul'),
(64, 'Hani Wahyuni', ' +62-078-950-12', 'Jl. Melati No. 51, Gunungkidul, 55314', 'hani@gmail.com', 'hani', 'h4n1W!', 'Gunungkidul'),
(65, 'Indra Saputra', ' +62-079-950-12', 'Jl. Dahlia No. 53, Kulon Progo, 55315', 'indra@gmail.com', 'indra', '1ndr4S!', 'Kulon Progo'),
(66, 'Joni Supriyanto', ' +62-080-950-12', 'Jl. Mawar No. 55, Jogja, 55316', 'joni@gmail.com', 'joni', 'j0n1S!', 'Jogja'),
(67, 'Kiki Nuraini', ' +62-081-950-12', 'Jl. Kamboja No. 57, Sleman, 55317', 'kiki@gmail.com', 'kiki', 'k1k1N!', 'Sleman'),
(68, 'Lala Permadi', ' +62-082-950-12', 'Jl. Anggrek No. 59, Bantul, 55318', 'lala@gmail.com', 'lala', 'l4l4P!', 'Bantul'),
(69, 'Mila Hartono', ' +62-083-950-12', 'Jl. Flamboyan No. 61, Gunungkidul, 55319', 'mila@gmail.com', 'mila', 'm1l4H!', 'Gunungkidul'),
(70, 'Nana Suryani', ' +62-084-950-12', 'Jl. Palem No. 63, Kulon Progo, 55320', 'nana@gmail.com', 'nana', 'n4n4S!', 'Kulon Progo'),
(71, 'Oni Setiawan', ' +62-085-950-12', 'Jl. Bunga No. 65, Jogja, 55321', 'oni@gmail.com', 'oni', '0n1S!', 'Jogja'),
(72, 'Puja Kurnia', ' +62-086-950-12', 'Jl. Semboja No. 67, Sleman, 55322', 'puja@gmail.com', 'puja', 'puj4K!', 'Sleman'),
(73, 'Reni Andriani', ' +62-087-950-12', 'Jl. Ketapang No. 69, Bantul, 55323', 'reni@gmail.com', 'reni', 'r3n1A!', 'Bantul'),
(74, 'Sinta Rahma', ' +62-088-950-12', 'Jl. Karet No. 71, Gunungkidul, 55324', 'sinta@gmail.com', 'sinta', 's1nt4R!', 'Gunungkidul'),
(75, 'Toni Haryanto', ' +62-089-950-12', 'Jl. Sirih No. 73, Kulon Progo, 55325', 'toni@gmail.com', 'toni', 't0n1H!', 'Kulon Progo'),
(76, 'Udin Wibowo', ' +62-090-950-12', 'Jl. Rotan No. 75, Jogja, 55326', 'udin@gmail.com', 'udin', 'ud1nW!', 'Jogja'),
(77, 'Vini Ariyani', ' +62-091-950-12', 'Jl. Kenanga No. 77, Sleman, 55327', 'vini@gmail.com', 'vini', 'v1n1A!', 'Sleman'),
(78, 'Wawan Setiawan', ' +62-092-950-12', 'Jl. Kemuning No. 79, Bantul, 55328', 'wawan@gmail.com', 'wawan', 'w4w4nS!', 'Bantul'),
(79, 'Xena Widya', ' +62-093-950-12', 'Jl. Kamper No. 81, Gunungkidul, 55329', 'xena@gmail.com', 'xena', 'x3n4W!', 'Gunungkidul'),
(80, 'Yanti Kurnia', ' +62-094-950-12', 'Jl. Kapuk No. 83, Kulon Progo, 55330', 'yanti@gmail.com', 'yanti', 'y4nt1K!', 'Kulon Progo'),
(81, 'Zainul Arifin', ' +62-095-950-12', 'Jl. Bintaro No. 85, Jogja, 55331', 'zainul@gmail.com', 'zainul', 'z41n1A!', 'Jogja'),
(82, 'Agus Widodo', ' +62-096-950-12', 'Jl. Kelapa No. 87, Sleman, 55332', 'agus@gmail.com', 'agus', '4gusW!', 'Sleman'),
(83, 'Budi Hartono', ' +62-097-950-12', 'Jl. Mangga No. 89, Bantul, 55333', 'budi@gmail.com', 'budi', 'bud1H!', 'Bantul'),
(84, 'Citra Anggraeni', ' +62-098-950-12', 'Jl. Melinjo No. 91, Gunungkidul, 55334', 'citra@gmail.com', 'citra', 'c1tr4A!', 'Gunungkidul'),
(85, 'Doni Supriyanto', ' +62-099-950-12', 'Jl. Sukun No. 93, Kulon Progo, 55335', 'doni@gmail.com', 'doni', 'd0n1S!', 'Kulon Progo'),
(86, 'Euis Pratiwi', ' +62-100-950-12', 'Jl. Kesambi No. 95, Jogja, 55336', 'euis@gmail.com', 'euis', '3u1sP!', 'Jogja'),
(87, 'Fajar Wibawa', ' +62-101-950-12', 'Jl. Pinus No. 97, Sleman, 55337', 'fajar@gmail.com', 'fajar', 'f4j4rW!', 'Sleman'),
(88, 'Gina Putri', ' +62-102-950-12', 'Jl. Cemara No. 99, Bantul, 55338', 'gina@gmail.com', 'gina', 'g1n4P!', 'Bantul'),
(89, 'Hana Saputra', ' +62-103-950-12', 'Jl. Sonokeling No. 101, Gunungkidul, 55339', 'hana@gmail.com', 'hana', 'h4n4S!', 'Gunungkidul'),
(90, 'Indra Pratama', ' +62-104-950-12', 'Jl. Albasia No. 103, Kulon Progo, 55340', 'indra@gmail.com', 'indra', '1ndr4P!', 'Kulon Progo'),
(91, 'Joko Supriyono', ' +62-105-950-12', 'Jl. Trembesi No. 105, Jogja, 55341', 'joko@gmail.com', 'joko', 'j0k0S!', 'Jogja'),
(92, 'Kina Sari', ' +62-106-950-12', 'Jl. Tanjung No. 107, Sleman, 55342', 'kina@gmail.com', 'kina', 'k1n4S!', 'Sleman'),
(93, 'Lala Widya', ' +62-107-950-12', 'Jl. Randu No. 109, Bantul, 55343', 'lala@gmail.com', 'lala', 'l4l4W!', 'Bantul'),
(94, 'Mira Rahma', ' +62-108-950-12', 'Jl. Mahoni No. 111, Gunungkidul, 55344', 'mira@gmail.com', 'mira', 'm1r4R!', 'Gunungkidul'),
(95, 'Nina Sari', ' +62-109-950-12', 'Jl. Cemara No. 113, Kulon Progo, 55345', 'nina@gmail.com', 'nina', 'n1n4S!', 'Kulon Progo'),
(96, 'Oka Wibawa', ' +62-110-950-12', 'Jl. Jati No. 115, Jogja, 55346', 'oka@gmail.com', 'oka', '0k4W!', 'Jogja'),
(97, 'Puja Anggraeni', ' +62-111-950-13', 'Jl. Kenanga No. 117, Sleman, 55347', 'puja@gmail.com', 'puja', 'puj4A!', 'Sleman'),
(98, 'Rina Suryani', ' +62-112-950-13', 'Jl. Ketapang No. 119, Bantul, 55348', 'rina@gmail.com', 'rina', 'r1n4S!', 'Bantul'),
(99, 'Siti Hartati', ' +62-113-950-13', 'Jl. Karet No. 121, Gunungkidul, 55349', 'siti@gmail.com', 'siti', 's1t1H!', 'Gunungkidul'),
(100, 'Tono Surya', ' +62-114-950-13', 'Jl. Sirih No. 123, Kulon Progo, 55350', 'tono@gmail.com', 'tono', 't0n0S!', 'Kulon Progo'),
(105, 'Arga Wi', '0981241488', 'gg mawar', 'arga@uii.student', 'aaa', '123', 'Bantul');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`Artikel_ID`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_ID`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Menu_ID`),
  ADD KEY `UMKM_ID` (`UMKM_ID`);

--
-- Indeks untuk tabel `transaksi_event`
--
ALTER TABLE `transaksi_event`
  ADD PRIMARY KEY (`Transaksi_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indeks untuk tabel `transaksi_makanan`
--
ALTER TABLE `transaksi_makanan`
  ADD PRIMARY KEY (`Transaksi_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `UMKM_ID` (`UMKM_ID`),
  ADD KEY `Menu_ID` (`Menu_ID`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`UMKM_ID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `Artikel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `Menu_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT untuk tabel `transaksi_event`
--
ALTER TABLE `transaksi_event`
  MODIFY `Transaksi_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1594;

--
-- AUTO_INCREMENT untuk tabel `transaksi_makanan`
--
ALTER TABLE `transaksi_makanan`
  MODIFY `Transaksi_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `UMKM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`UMKM_ID`) REFERENCES `umkm` (`UMKM_ID`);

--
-- Ketidakleluasaan untuk tabel `transaksi_event`
--
ALTER TABLE `transaksi_event`
  ADD CONSTRAINT `transaksi_event_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `transaksi_event_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`);

--
-- Ketidakleluasaan untuk tabel `transaksi_makanan`
--
ALTER TABLE `transaksi_makanan`
  ADD CONSTRAINT `transaksi_makanan_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `transaksi_makanan_ibfk_2` FOREIGN KEY (`UMKM_ID`) REFERENCES `umkm` (`UMKM_ID`),
  ADD CONSTRAINT `transaksi_makanan_ibfk_3` FOREIGN KEY (`Menu_ID`) REFERENCES `menu` (`Menu_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
