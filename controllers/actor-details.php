<?php 
require("./core/Database.php");

require("./core/model.php");
$id=$_GET["id"];
$actor = fetchData($connect, "SELECT * FROM `tbl_actors` WHERE id=?", [$id],"fetch");

$movies=fetchData($connect, "SELECT image_path,title
FROM `tbl_movie`
WHERE FIND_IN_SET(?,actors)",[$id]);

require("./views/actor-details_view.php")
?>