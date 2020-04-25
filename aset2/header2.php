<?php
session_start();

if( !isset($_SESSION['id_pengguna'])){
  header("Location: http://localhost/webakhir/login/index.php");
}
$connect=mysqli_connect('localhost','root','','webakhir');

$queycart = mysqli_query($connect,"SELECT COUNT(*) AS jumlah FROM keranjang2");

$cart = mysqli_fetch_assoc($queycart);
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="http://localhost/webakhir/navbar.css" type="text/css">
        <link rel="stylesheet" href="http://localhost/webakhir/aset/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://localhost/webakhir/aset/fontawesome/css/all.css">
        <link rel="stylesheet" href="http://localhost/webakhir/aset/fontawesome/css/all.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> 
      </head>
    <body>
    <nav class="navbar navbar-expand-lg fixed-top">

    <a style="margin-left: 9px" class="navbar-brand" href="#"><img style="border-radius: 100%" src="foto/ripacth.jpg" alt="" width="30" height="30"></a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span style="color: white" class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">

    <ul class="navbar-nav mr-auto">
    <li class="nav-item"> 
        <a class="nav-link" id="pembatas" href="#">|</a>
      </li>
      <li class="nav-item"> 
        <a class="nav-link" href="http://localhost/webakhir/index.php">BERANDA</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost/webakhir/buku/index.php">BUKU</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost/webakhir/transaksi/index.php">TRANSAKSI</a>
      </li>
      
    </ul>
      <a style="color: white" href="http://localhost/webakhir/keranjang/index.php" class="cart"><i class="fad fa-cart-arrow-down"></i>(<?php echo $cart['jumlah'] ?>)</a>
      <a href="http://localhost/webakhir/login/logout.php" class="logout">LOGOUT</a>
  </div>
</nav>
            <script src="http://localhost/webakhir/aset/jQuery.js"></script>
            <script src="http://localhost/webakhir/aset/bootstrap/js/bootstrap.min.js"></script>
            <script src="http://localhost/webakhir/aset/bootstrap/js/bootstrap.bundle.js"></script>
            <script src="http://localhost/webakhir/aset/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="http://localhost/webakhir/aset/bootstrap/js/bootstrap.js"></script>
    </body>
</html>