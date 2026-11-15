<?php 
require("./core/Database.php");

require("./core/model.php");

$movieId=$_GET["id"]
$movies = fetchData($connect, "SELECT * FROM `tbl_movie` WHERE id=?",[$movieId],"fetch");

require("./views/movie-details_view.php")
?>