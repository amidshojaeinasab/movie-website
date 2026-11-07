<?php 
function getUrl($url) {
    return substr($_SERVER["REQUEST_URI"], strlen("/movie-website-master"))==$url;
}
?>