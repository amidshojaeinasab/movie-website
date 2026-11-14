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

//!Slider
$sliderSql = "SELECT * FROM `tbl_slider`";
$stmt = mysqli_prepare($connect, $sliderSql);
mysqli_stmt_execute($stmt);
$sliderResult = mysqli_stmt_get_result($stmt);
$sliders = mysqli_fetch_all($sliderResult, MYSQLI_ASSOC);

//!New Movie
$newSql = "SELECT id,title,rate,image_path FROM `tbl_movie` ORDER BY id DESC LIMIT 8";
$stmt = mysqli_prepare($connect, $newSql);
mysqli_stmt_execute($stmt);
$newMovieResult = mysqli_stmt_get_result($stmt);
$newMovies = mysqli_fetch_all($newMovieResult, MYSQLI_ASSOC);

//!Popular Movie
$popularSql = "SELECT id,title,rate,image_path FROM `tbl_movie` ORDER BY view DESC LIMIT 8";
$stmt = mysqli_prepare($connect, $popularSql);
mysqli_stmt_execute($stmt);
$popularMovieResult = mysqli_stmt_get_result($stmt);
$popularMovies = mysqli_fetch_all($popularMovieResult, MYSQLI_ASSOC);


require("./views/index_view.php");
