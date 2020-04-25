<?php
$connect = mysqli_connect('localhost','root','','webakhir');
$idbuku = $_GET['id_buku'];

$query = mysqli_query($connect,"DELETE FROM keranjang2 WHERE id_buku=$idbuku");
$query = mysqli_query($connect,"DELETE FROM keranjang WHERE id_buku=$idbuku");

if($query > 0){
    header("location: http://localhost/webakhir/keranjang/index.php");
}
?>