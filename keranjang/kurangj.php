<?php
$connect = mysqli_connect('localhost','root','','webakhir');
$idbuku = $_GET['id_buku'];
$queryb = mysqli_query($connect,"SELECT harga FROM buku WHERE id_buku = $idbuku");
$hasilb = mysqli_fetch_assoc($queryb);
$qery = mysqli_query($connect,"SELECT * FROM keranjang WHERE id_buku=$idbuku");
$hasil = mysqli_fetch_assoc($qery); 

$jumlaha = $hasil ['jumlah'] - 1;

$subtotal = $hasilb['harga'] * $jumlaha;
if($jumlaha > 0) {
$queryj = mysqli_query($connect,"UPDATE keranjang SET jumlah='$jumlaha', subtotal='$subtotal' WHERE id_buku=$idbuku");
$queryj = mysqli_query($connect,"UPDATE keranjang2 SET jumlah='$jumlaha', subtotal='$subtotal' WHERE id_buku=$idbuku");
header("location: http://localhost/webakhir/keranjang/index.php");

}if($jumlaha == 0) {
    $querya = mysqli_query($connect,"DELETE FROM keranjang WHERE id_buku=$idbuku");
    $querya = mysqli_query($connect,"DELETE FROM keranjang2 WHERE id_buku=$idbuku");
    header("location: http://localhost/webakhir/keranjang/index.php");
}
?>