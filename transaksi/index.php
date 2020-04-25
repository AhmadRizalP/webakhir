<?php
session_start();
$idpengguna = $_SESSION['id_pengguna'];
$connect = mysqli_connect('localhost','root','','webakhir');
include'../aset/header.php';

$query1 = mysqli_query($connect,"SELECT * FROM transaksi
INNER JOIN pengguna ON transaksi.id_pengguna = pengguna.id_pengguna
INNER JOIN keranjang ON pengguna.id_pengguna = keranjang.id_pengguna
WHERE transaksi.id_pengguna=$idpengguna");
$data = mysqli_fetch_assoc($query1);


$query3 = mysqli_query($connect,"SELECT * FROM transaksi WHERE id_pengguna=$idpengguna ORDER BY tgl_pembelian");

$query2 = mysqli_query($connect,"SELECT * FROM keranjang WHERE id_pengguna=$idpengguna");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
    <?php while($has = mysqli_fetch_assoc($query3)): ?>
    <div style="margin-top: 15px" class="card  mb-3" >
     <div class="card-header">Data Pembelian</div>
        <div class="card-body">
        <table>
            <tr>
                <td><h6>Id Pembelian</h6></td>
                <td style="padding: 0 10px"><h6>:</h6></td>
                <td><h6><?= $data['id_transaksi'] ?></h6></td>
            </tr>
            <tr>
                <td><h6>Tanggal Pembelian</h6></td>
                <td style="padding: 0 10px"><h6>:</h6></td>
                <td><h6><?php echo date('d F Y',strtotime($data['tgl_pembelian'])) ?></h6></td>
            </tr>
            <tr>
                <td><h6>Nama Pembeli</h6></td>
                <td style="padding: 0 10px"><h6>:</h6></td>
                <td><h6><?= $data['nama'] ?></h6></td>
            </tr>
            <tr>
                <td><h6>Total Bayar</h6></td>
                <td style="padding: 0 10px"><h6>:</h6></td>
                <td><h6>Rp <?= $data['total_bayar'] ?> ,-</h6></td>
            </tr>
            <tr>
                <td><h6>Barang</h6></td>
                <td style="padding: 0 10px"><h6>:</h6></td>
                <td><h6></h6></td>
            </tr>
        </table>
        <?php while($hasil = mysqli_fetch_assoc($query2)): ?>
        <div class="isibukuk" style="padding-left: 0">
        <?php
            $idbuku = $hasil['id_buku'];
            $queryb = mysqli_query($connect,"SELECT * FROM buku WHERE id_buku=$idbuku");
            $hasilb = mysqli_fetch_assoc($queryb);
            ?>
        <table class="tabelk1"  style="height: 138,5px;">
                    <tr>
                        <td rowspan="2">
                            
                            <img class="coverd" src="../buku/cover/<?= $hasilb['cover'] ?>" alt="" width="100px" height="138,5px">
                        </td>
                        <td >
                            <h6><?= $hasilb['judul'] ?></h6>
                            <p><?= $hasilb['pengarang'] ?></p>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <h6>Harga Barang</h6>
                            <p style="color: orange">Rp <?= $hasilb['harga'] ?> ,-</p>
                        </td>
                    </tr>
                </table>
                <table class="tabelk3" >
                    <tr>
                        <td colspan="2" style="width: 95px">
                        <h6>Subtotal (<?= $hasil['jumlah'] ?>)</h6>
                        <p style="color: orange">Rp <?= $hasil ['subtotal'] ?> ,-</p>
                        </td>                    
                    </tr>        
                </table>
        </div>
        <?php endwhile; ?>
        </div>
    </div>
        <?php endwhile; ?>
    </div>
</body>
</html>