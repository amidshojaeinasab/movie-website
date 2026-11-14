<?php 
require("./core/Database.php");

require("./core/model.php");

$actors = fetchData($connect, "SELECT id,name,family,image FROM `tbl_actors`");


require("./views/actors_view.php");
?>