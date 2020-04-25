<?php
$connect = mysqli_connect('localhost','root','','webakhir');
include'../aset/header.php';
$query = mysqli_query($connect,"SELECT * FROM keranjang2");
$queycart = mysqli_query($connect,"SELECT COUNT(*) AS jumlah FROM keranjang2");
$cart = mysqli_fetch_assoc($queycart);

$queycar = mysqli_query($connect,"SELECT SUM(subtotal) AS totalh FROM keranjang2");
$car = mysqli_fetch_assoc($queycar);
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
    <div  class="container" >
        <p style="padding-left: 10px; padding-top:10px">Menampilkan <b><?= $cart['jumlah'] ?> Produk </b> di Keranjang <i class="fad fa-shopping-cart"></i></p>
    <div id="cont">
        <div class="daftarbukuk">
        <?php while($hasil = mysqli_fetch_assoc($query)): ?>
            <div class="isibukuk">
            <?php
            $idbuku = $hasil['id_buku'];
            $queryb = mysqli_query($connect,"SELECT * FROM buku WHERE id_buku=$idbuku");
            $hasilb = mysqli_fetch_assoc($queryb);
            ?>
            <table class="tabelk1"  style="height: 138,5px;">
                    <tr>
                        <td rowspan="2" style="padding-left: 10px">
                            
                            <img class="coverd" src="../buku/cover/<?= $hasilb['cover'] ?>" alt="" width="100px" height="138,5px">
                        </td>
                        <td >
                            <h6><?= $hasilb['judul'] ?></h6>
                            <p><?= $hasilb['pengarang'] ?></p>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <h6>Harga Produk</h6>
                            <p style="color: orange">Rp <?= $hasilb['harga'] ?> ,-</p>
                        </td>
                    </tr>
                </table>
                <form action="" method="post">
                <table class="tabelk3" >
                    <tr>
                        <td style="padding-right: 50px; padding-bottom: 40px">
                        <a href="http://localhost/webakhir/keranjang/kurangj.php?id_buku=<?= $hasil['id_buku'] ?>" class="min" name="subminus"><i class="fad fa-minus-square"></i></a> 
                        <input class="fjum" style="width: 30px; text-align: center" type="text" name="jumlah" value="<?= $hasil ['jumlah'] ?>">
                        <a href="http://localhost/webakhir/keranjang/tambahj.php?id_buku=<?= $hasil['id_buku'] ?>" class="plus" name="subplus"><i class="fad fa-plus-square"></i></a>
                        </td>
                        <td style="width: 95px">
                        <h6>Subtotal</h6>
                        <p style="color: orange">Rp <?= $hasil ['subtotal'] ?> ,-</p>
                        </td>                    
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td style="padding-top: 30px; text-align: center;">
                        <a class="hapus" href="http://localhost/webakhir/keranjang/hapus.php?id_buku=<?= $hasil ['id_buku'] ?>">Hapus</a>
                        </td>
                    </tr>            
                </table>
                </form>
            </div>
        <?php endwhile; ?>
        </div>

        <div class="total">
            <div class="isitotal">
            <table >
                <tr>
                    <td style="padding-right: 40px ">
                    <h6>Total Semua Produk</h6>
                    </td>
                    <td>
                    <h6 style="color: orange">Rp <?= $car['totalh']?> ,-</h6>
                    </td>
                </tr>   
                <tr style="text-align: center">
                    <td style="padding-top: 40px" colspan="2">
                        <a class="proses" href="http://localhost/webakhir/transaksi/prosestambah.php">PROSES</a>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </div>
    </div>
</body>
</html>