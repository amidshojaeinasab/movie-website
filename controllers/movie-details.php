<?php 
require("./core/Database.php");

require("./core/model.php");

$movieId=$_GET["id"];

$movie = fetchData($connect, "
    SELECT
        m.*,
        GROUP_CONCAT(DISTINCT a.image) AS actor_image,
        GROUP_CONCAT(DISTINCT g.title) AS genre_title
    FROM tbl_movie m
    LEFT JOIN tbl_actors a
        ON FIND_IN_SET(a.id, m.actors)
    LEFT JOIN tbl_genres g
        ON FIND_IN_SET(g.id, m.genres)
    WHERE m.id = ?
    GROUP BY m.id
", [$movieId], "fetch");


require("./views/movie-details_view.php")
?>