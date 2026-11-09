<?php 
require("./global.php");

$url=currentUrl();

$routes=[
    '/'=>"./controllers/index.php",
    '/movies'=>"./controllers/movies.php",
    '/series'=>"./controllers/series.php",
    '/actors'=>"./controllers/actors.php",
];
require($routes[$url]);
?>