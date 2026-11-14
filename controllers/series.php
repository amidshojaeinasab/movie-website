<?php 

require("./core/Database.php");

require("./core/model.php");

$series = fetchData($connect, "SELECT id,image_path,rate,title,date_publish FROM `tbl_movie` WHERE series=?",[1]);


require("./views/series_view.php")
?>