<?php
$connect = mysqli_connect('localhost','root','','webakhir');
session_start();
$idpengguna = $_SESSION['id_pengguna'];

$queycar = mysqli_query($connect,"SELECT SUM(subtotal) AS totalh FROM keranjang2");
$car = mysqli_fetch_assoc($queycar);

$total = $car['totalh'];
$tglpembelian = date('Y-m-d');
$query2 = mysqli_query($connect,"INSERT INTO transaksi VALUES ('','$idpengguna','$total','$tglpembelian')");

$query = mysqli_query($connect,"DELETE FROM keranjang2");
header("location: http://localhost/webakhir/transaksi/index.php");
?>