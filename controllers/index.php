<?php
require("./core/Database.php");

function fetchData($connect,$sql){
    $stmt=mysqli_prepare($connect,$sql);
    if (!$stmt || !mysqli_stmt_execute($stmt)) {
        die("Error Execute Query:".mysqli_stmt_error($stmt));
    }
    $resulte=mysqli_stmt_get_result($stmt);
    $data=mysqli_fetch_all($resulte,MYSQLI_ASSOC);
    return $data;
} 
//!Slider
$sliders = fetchData($connect,"SELECT * FROM `tbl_slider`");

//!New Movie
$newMovies = fetchData($connect,"SELECT id,title,rate,image_path FROM `tbl_movie` ORDER BY id DESC LIMIT 8") ;


//!Popular Movie
$popularMovies = fetchData($connect,"SELECT id,title,rate,image_path FROM `tbl_movie` ORDER BY view DESC LIMIT 8");


require("./views/index_view.php");
