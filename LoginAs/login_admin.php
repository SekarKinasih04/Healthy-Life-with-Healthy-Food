<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Style.css" />
    <title>Admin Login</title>
</head>
<body>
    <div class="wrapper">
        <nav class="nav">
        <div class="nav-logo">
                <a href="../index.php">
                    <p>Healthy Life with Healthy Food</p>
                </a>
            </div>
            <div class="nav-menu-btn">
                <i class="bx bx-menu" onclick="myMenuFunction()"></i>
            </div>
        </nav>

        <div class="form-box">
            <div class="login-container" id="login">
                <form method="POST" action="login_handler_admin.php">
                    <div class="input-box">
                        <input type="text" name="usernameOrEmail" class="input-field" placeholder="Username or Email" required />
                        <i class="bx bx-user"></i>
                    </div>
                    <div class="input-box">
                        <input type="password" name="password" class="input-field" placeholder="Password" required />
                        <i class="bx bx-lock-alt"></i>
                    </div>
                    <div class="input-box">
                        <input type="submit" class="submit" value="Sign In" />
                    </div>
                    <div class="two-col">
                        <div class="one">
                            <input type="checkbox" id="login-check" />
                            <label for="login-check"> Remember Me</label>
                        </div>
                        <div class="two">
                            <label><a href="#">Forgot password?</a></label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
      function myMenuFunction() {
        var i = document.getElementById("navMenu");

        if (i.className === "nav-menu") {
          i.className += " responsive";
        } else {
          i.className = "nav-menu";
        }
      }
    </script>
</body>
</html>
