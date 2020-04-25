<?php
$connect = mysqli_connect('localhost','root','','webakhir');
if(isset($_POST['btnregister'])){
    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = mysqli_query($connect,"INSERT INTO pengguna VALUES ('','$nama','$username','$password')");

    header("location: http://localhost/webakhir/login/index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="http://localhost/webakhir/login/css.css">
    <meta charset="UTF-8">
    <meta name="vi ewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost/siperpus/aset/fontawesome/css/all.css">
        <link rel="stylesheet" href="http://localhost/siperpus/aset/fontawesome/css/all.min.css">
    <title>Document</title>
</head>
<body>
    <div class="hero">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
        <div class="social-icon">
            <a href=""><img class="img" src="fb.png" alt=""></a>
            <a href="about.php"><img class="img" src="tw.png" alt=""></a>
            <a href=""><img class="img" src="gp.png" alt=""></a>
        </div>
        <div class="login-content">
        <form id="login" action="proses-login.php" method="post" class="input-group">
        <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="username">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password">
            	   </div>
                </div>
                
            	<input type="submit" name="btnlogin" class="btn" value="Login">
        </form>
        </div>


        <div class="login-content">
        <form id="register" action="" class="input-group" method="post">
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Nama</h5>
           		   		<input type="text" class="input" name="nama">
           		   </div>
           		</div>
                <div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="username">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password">
            	   </div>
                </div>
                
            	<input type="submit" name="btnregister" class="btn" value="Register">
        </form>
        </div>
        </div>
    </div>

    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register() {
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
        function login() {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }
    </script>

<script type="text/javascript" src="js/main.js"></script>
</body>
</html>