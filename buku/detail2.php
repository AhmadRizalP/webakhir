<?php
include'../aset/header.php';
$connect = mysqli_connect('localhost','root','','webakhir');
$idbuku = $_GET['id_buku'];

$query = mysqli_query($connect,"SELECT * FROM buku WHERE id_buku=$idbuku");
$hasil = mysqli_fetch_assoc($query);

$idkategori = $hasil['id_kategori'];

$queryk = mysqli_query($connect,"SELECT kategori FROM kategori WHERE id_kategori = $idkategori");
$hasil2 = mysqli_fetch_assoc($queryk);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
        <br>
        <br>
        <br>
        <br>    

    <div class="container">
        <div class="atas">
            <div class="detailb" >
                <table border="0" class="tabeld">
                    <tr>
                        <td rowspan="3">
                            <img class="coverd" src="cover/<?= $hasil ['cover'] ?>" alt="" width="200px" height="277px">
                        </td>
                        <td style="height: 50px" >
                            <h3><?= $hasil ['judul'] ?></h3>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <h6><?= $hasil ['pengarang'] ?></h6>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                    </tr>
                </table>
            </div>

            <div class="hargab">
                <div class="hargab1">
                <h5>Harga Produk</h5>
                <h6>Rp <?= $hasil ['harga'] ?> ,-</h6>
                </div>   
                <a  class="beli" style="color: #f1f1f1" sty type="button" data-toggle="modal" data-target="#exampleModalCenter">
  BELI SEKARANG
</a>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Produk Telah Ditambahkan Ke Keranjang</h5>
        
        </button>
      </div>
      <div class="modal-body">
      <table border="0" class="tabeld">
                    <tr>
                        <td rowspan="2">
                            <img class="coverd" src="cover/<?= $hasil ['cover'] ?>" alt="" width="100px" height="138,5px">
                        </td>
                        <td style="height: 20px">
                            <h6>Judul : <?= $hasil ['judul'] ?></h6>
                            <p>Pengarang : <?= $hasil ['pengarang'] ?></p>
                            <p>Jumlah : 1</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    
                        </td>
                    </tr>
                </table>
      </div>
      <div class="modal-footer" >
        <a href="http://localhost/webakhir/keranjang/prosestambah.php?id_buku=<?= $idbuku ?>" style="border: 1px solid black; margin-right: 122px" type="button" class="btn" data-dismiss="modal">Lanjutkan Berbelanja</button>
        <a href="http://localhost/webakhir/keranjang/prosestambah2.php?id_buku=<?= $idbuku ?>" type="button" style="border: 1px solid black" class="btn" >Lanjut Ke Keranjang</a>
      </div>
    </div>
  </div>
</div>
            </div>
        </div>

        <div class="bawah">

            <div class="detail1">
  
    <ul class="nav nav-tabs ">
      <li class="nav-item">
        <a class="nav-link " href="http://localhost/webakhir/buku/detail.php?id_buku=<?= $idbuku ?>">Deskripsi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">Detail</a>
      </li>
      <li class="nav-item mr">
        <a class="nav-link disabled" href="#">Stok (<?= $hasil ['stok'] ?>)</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <table>
        <tr>
            <td>Tanggal Terbit</td>
            <td style="padding: 0 10px">:</td>
            <td><?php echo date('d F Y',strtotime($hasil['tgl_terbit'])) ?></td>
        </tr>
        <tr>
            <td>Penerbit</td>
            <td style="padding: 0 10px">:</td>
            <td><?= $hasil ['penerbit'] ?></td>
        </tr>
        <tr>
            <td>Pengarang</td>
            <td style="padding: 0 10px">:</td>
            <td><?= $hasil ['pengarang'] ?></td>
        </tr>
        <tr>
            <td>Kategori</td>
            <td style="padding: 0 10px">:</td>
            <td><?= $hasil2 ['kategori'] ?></td>
        </tr>
    </table>
  </div>
</div>
        </div>
    </div>
</body>
</html>