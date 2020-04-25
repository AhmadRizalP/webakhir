<?php
$connect = mysqli_connect('localhost','root','','webakhir');

session_start();

if(isset($_POST['btnlogin'])){
$username = mysqli_real_escape_string($connect, $_POST ['username']);
$password = mysqli_real_escape_string($connect, $_POST ['password']);

$sql = mysqli_query($connect, "SELECT * FROM pengguna WHERE username='$username' && password='$password'");

$data = mysqli_fetch_array($sql);

if (! empty($data)){
    $_SESSION ['username'] = $data['username'];
    
    $_SESSION['id_pengguna'] = $data['id_pengguna'];
    setcookie("message","delete",time()-1);
    header("location: http://localhost/webakhir/index.php");
} else {
    setcookie("message","Maaf, Username atau Password tidak ada",time()+3600);
    header("location: http://localhost/webakhir/login/index.php");

}
}