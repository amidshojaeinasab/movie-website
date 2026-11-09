<?php 
//current url
function currentUrl() {
    return substr($_SERVER["REQUEST_URI"], strlen("/movie-website-master"));
}

//Get url
function getUrl($url) {
    return currentUrl()==$url;
}
?>