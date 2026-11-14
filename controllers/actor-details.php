<?php 
require("./core/Database.php");

require("./core/model.php");
$id=$_GET["id"];
$actor = fetchData($connect, "SELECT * FROM `tbl_actors` WHERE id=?", [$id],"fetch");

require("./views/actor-details_view.php")
?>