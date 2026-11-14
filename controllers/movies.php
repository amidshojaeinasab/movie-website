<?php
require("./core/Database.php");

require("./core/model.php");

$movies = fetchData($connect, "SELECT id,image_path,rate,title,date_publish FROM `tbl_movie` WHERE series=?",[0]);

require("./views/movies_view.php")
?>