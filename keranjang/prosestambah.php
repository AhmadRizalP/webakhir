<?php
session_start();
$idpengguna = $_SESSION['id_pengguna'];
$connect = mysqli_connect('localhost','root','','webakhir');
$idbuku = $_GET['id_buku'];
$query1 = mysqli_query($connect,"SELECT harga FROM buku WHERE id_buku = $idbuku");
$hasil = mysqli_fetch_assoc($query1);
$subtotal = $hasil['harga'] * 1 ;

$query2 = mysqli_query($connect,"INSERT INTO keranjang2 VALUE ('','$idbuku','1','$subtotal')");

$query = mysqli_query($connect,"INSERT INTO keranjang VALUES ('','$idpengguna','$idbuku','1','$subtotal')");

header("location: http://localhost/webakhir/buku/detail.php?id_buku=$idbuku");
?>