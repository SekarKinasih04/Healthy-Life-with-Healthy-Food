<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Responsive Registration Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="container">
        <h1 class="form-title">Registrasi</h1>
        <form action="registerUser.php" method="post">
            <div class="main-user-info">
                <div class="user-input-box">
                    <label for="user">Nama Lengkap</label>
                    <input type="text" id="user" name="user" placeholder="Masukkan Nama Lengkap"/>
                </div>
                <div class="user-input-box">
                    <label for="usernameUser">Username</label>
                    <input type="text" id="usernameUser" name="usernameUser" placeholder="Masukkan Username"/>
                </div>
                <div class="user-input-box">
                    <label for="email">Email</label>
                    <input type="email" id="emailUser" name="emailUser" placeholder="Masukkan Email"/>
                </div>
                <div class="user-input-box">
                    <label for="phoneNumber">Nomor Telepon</label>
                    <input type="text" id="nomorTeleponUser" name="nomorTeleponUser" placeholder="Masukkan Nomor Telepon"/>
                </div>
                <div class="user-input-box">
                    <label for="lokasiUser">Kota/Kabupaten</label>
                    <select name="lokasiUser" id="lokasiUser">
                        <option value="Seleman">Seleman</option>
                        <option value="Bantul">Bantul</option>
                        <option value="Jogja">Jogja</option>
                    </select>
                </div>          
                <div class="user-input-box">
                    <label for="alamatUser">Alamat Lengkap</label>
                    <input type="text" id="alamatUser" name="alamatUser" placeholder="Masukkan Alamat Lengkap"/>
                </div>
                <div class="user-input-box">
                    <label for="passwordUser">Password</label>
                    <input type="password" id="passwordUser" name="passwordUser" placeholder="Enter Password"/>
                </div>
                <div class="user-input-box">
                    <label for="confirmPasswordUser">Confirm Password</label>
                    <input type="password" id="confirmPasswordUser" name="confirmPasswordUser" placeholder="Confirm Password"/>
                </div>
            </div>
            <div class="form-submit-btn">
                <input type="submit" value="RegistrasiUser" onclick="location.href='../LoginAs/login_admin.php';">
            </div>
        </form>
    </div>
</body>
</html>
