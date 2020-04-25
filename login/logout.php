<?php
session_start();
$idpengguna = $_SESSION['id_pengguna'];
$connect = mysqli_connect('localhost','root','','webakhir');

$query = mysqli_query($connect,"DELETE FROM transaksi WHERE id_pengguna = $idpengguna");
$query2 = mysqli_query($connect,"DELETE FROM keranjang");

session_destroy();
header("Location: http://localhost/webakhir/login/index.php");
?>