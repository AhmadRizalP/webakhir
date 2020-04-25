<?php
include'../aset/header.php';
?><?php
$connect = mysqli_connect('localhost','root','','webakhir');
$query = mysqli_query($connect,"SELECT * FROM buku ORDER BY harga DESC");

?>
<!DOCTYPE html>
<html>
    <head>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <title>PERPUSTAKAAN</title>
        <link rel="stylesheet" href="../style.css" type="text/css">
    </head>
    <body>
    <center>
        <br>
        <br>
        <br>
        <br>
        <br>
       <div class="halutama">
          <h3 >Daftar Buku</h3>
           <div class="isibuku">
           <div class="dropdown">
  <button class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Harga Tertinggi
  </button>

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="http://localhost/webakhir/buku/index.php">Terpopuler</a>
    <a class="dropdown-item active" href="http://localhost/webakhir/buku/index2.php">Terbaru</a>
    <a class="dropdown-item" href="http://localhost/webakhir/buku/index3.php">Harga Terendah</a>
    <a class="dropdown-item" href="#">Harga Tertinggi</a>
  </div>
    </div>
        <div class="isi">
        <?php while($hasil = mysqli_fetch_assoc($query)): ?>
          <a class="atbuku" href="http://localhost/webakhir/buku/detail.php?id_buku=<?php echo $hasil['id_buku'] ?>">
            <table class="tbuku"style="border-collapse: collapse">
                <tr>
                    <td>
                        <img class="cover" src="cover/<?php echo $hasil ['cover'] ?>" alt="" width="200px" height="277px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 50px">
                       <h6><?php echo $hasil['judul'] ?></h6>
                    </td>
                </tr>
                <tr>
                    <td style="height: 50px; color:gray">
                      <?php echo $hasil['pengarang'] ?>
                    </td>
                </tr>
                <tr>
                    <td style="padding-bottom: 15px; color:orange">
                       Rp <?php echo $hasil['harga'] ?>,-
                    </td>
                </tr>
            </table>
            </a>
            <?php endwhile; ?>
        </div>
       </div>
    </div>
    </center>
    </body>
    
</html>