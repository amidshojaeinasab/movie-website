<?php 
//current url
function currentUrl() {
    return substr(parse_url($_SERVER["REQUEST_URI"])["path"], strlen("/movie-website-master"));
}

//Get url
function getUrl($url) {
    return currentUrl()==$url;
}
?>