<?php 

$hostname = "localhost";
$username = "root";
$password = "";
$database = "db_movie";

$connect = mysqli_connect($hostname, $username, $password, $database);
mysqli_set_charset($connect, "utf8mb4");

if (!$connect) {
    die("connect faild:" . mysqli_connect_errno());
}

?>