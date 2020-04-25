<?php
$connect = mysqli_connect('localhost','root','','webakhir');
$idbuku = $_GET['id_buku'];
$queryb = mysqli_query($connect,"SELECT harga FROM buku WHERE id_buku = $idbuku");
$hasilb = mysqli_fetch_assoc($queryb);
$qery = mysqli_query($connect,"SELECT * FROM keranjang WHERE id_buku=$idbuku");
$hasil = mysqli_fetch_assoc($qery); 

$jumlaha = $hasil ['jumlah'] + 1;

$subtotal = $hasilb['harga'] * $jumlaha;
$queryj = mysqli_query($connect,"UPDATE keranjang SET jumlah='$jumlaha', subtotal='$subtotal' WHERE id_buku=$idbuku");
$queryj = mysqli_query($connect,"UPDATE keranjang2 SET jumlah='$jumlaha', subtotal='$subtotal' WHERE id_buku=$idbuku");

header("location: http://localhost/webakhir/keranjang/index.php");
?>