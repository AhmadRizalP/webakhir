<?php
include'aset2/header2.php';

$connect = mysqli_connect('localhost','root','','webakhir');
$query = mysqli_query($connect,"SELECT * FROM buku ORDER BY stok ASC LIMIT 3 ");

$query1 = mysqli_query($connect,"SELECT * FROM buku ORDER BY tgl_terbit DESC LIMIT 4");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://kit.fontawesome.com/d0097185b0.js" crossorigin="anonymous"></script>
    <title>Dashboard</title>
</head>
<body>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="foto/background1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block" id="thome">
        <h5>SELAMAT DATANG</h5>
        <h5>Di Toko Buku Ahmad Rizal</h5>
        <br>
        <p></p>
      </div>
    </div>
  </div>
</div>
<div class="hal2">
    <div class="menu">
        <img src="foto/buku.png" alt=""  width="301" height="372">
        <img src="foto/transaksi.png" alt=""  width="301" height="372">
    </div>
    <div class="lanjut">
        <a href="http://localhost/webakhir/buku/index.php"><img src="foto/lanjut.png" alt=""></a>
        <a href="http://localhost/webakhir/transaksi/index.php"><img src="foto/lanjut.png" alt=""></a>
    </div>
</div>
<div class="populer">
  POPULER
</div>

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="foto/bakbuku.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block" id="chom1">
       <h1>
         TOP 3 POPULER 
        </h1>
       <h2>BOOK</h2>
      </div>
    </div>

    
  <?php while($hasil = mysqli_fetch_assoc($query)): ?>
    <div class="carousel-item ">
      <img src="foto/bakbuku.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block" id="chom">
        <table border="0" style="border-collapse: collapse" class="tabhome">
            <tr>
              <td rowspan="3">
                <img src="buku/cover/<?php echo $hasil ['cover']?>" alt="" width="258,6" height="368,6">
              </td>
              <td style="height: 20%">
                <h3><?php echo $hasil['judul'] ?></h3>
              </td>
            </tr>
            <tr>
              <td>
                <p><?php echo $hasil['ringkasan']?></p>
              </td>
            </tr>
            <tr>
              <td style="height: 20%">
                <a href="http://localhost/webakhir/buku/detail.php?id_buku=<?php echo $hasil['id_buku']?>" class="harga">Rp <?php echo $hasil['harga']?>,-</a> 
                <a href="http://localhost/webakhir/keranjang/proses-tambah.php?id_buku=<?php echo $hasil['id_buku']?>" class="keranjang"><i class="fad fa-cart-plus"></i></a>
              </td>
            </tr>
        </table>
      </div>
    </div>
  <?php endwhile; ?>
  </div>

  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>

  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="nbok">
    NEW BOOK  
</div>
<div class="newbok">
<?php while($hasil1 = mysqli_fetch_assoc($query1)): ?>
  <table border="0" class="tbukn">
    <tr>
      <td><img src="buku/cover/<?php echo $hasil1 ['cover']?>" alt="" width="258,6" height="368,6">
      </td>
    </tr>
    <tr>
    <td><a class="harga2" href="http://localhost/webakhir/buku/detail.php?id_buku=<?php echo $hasil1['id_buku']?>">Rp <?php echo $hasil1['harga']?>,-</i></a> 
    <a href="http://localhost/webakhir/keranjang/proses-tambah.php?id_buku=<?php echo $hasil1['id_buku']?>" class="keranjang2"><i class="fad fa-cart-plus"></i></a></td>
    </tr>
  </table>
  <?php endwhile; ?>
</div>
<div class="footer">
  <div class="sosmed">
    <a href=""><img src="foto/facebook.svg" alt=""></a>
    <a href=""><img src="foto/google.svg" alt=""></a>
    <a href=""><img src="foto/instagram.svg" alt=""></a>
  </div>
  <div class="menufoter">
    <a href=""><h6>Tentang</h6></a>
    <a href=""><h6>Bantuan?</h6></a>
    <a href=""><h6>Panduan Konten</h6></a>
    <a href=""><h6>Perpustakaan</h6></a>
    <a href=""><h6>Privasi</h6></a>
    <a href=""><h6>Ketentuan Pengguna</h6></a>
    <a href=""><h6>Iklan</h6></a>
    <a href=""><h6>Profesi</h6></a>
  </div>
  <div id="garis" style="text-align: center" style="text-align: center">
    <img src="foto/garis.png" alt="">
  </div>
  <div id="copyr">
  <h6>
  Copyright © 2020 Ahmad Rizal Priyono
  </h6>
  </div>
</div>
</body>
</html>