<?php 
function fetchData($connect,$sql,$prams=[]){
    $stmt=mysqli_prepare($connect,$sql);
    if (!$stmt || !mysqli_stmt_execute($stmt,$prams)) {
        die("Error Execute Query:".mysqli_stmt_error($stmt));
    }
    $resulte=mysqli_stmt_get_result($stmt);
    $data=mysqli_fetch_all($resulte,MYSQLI_ASSOC);
    return $data;
} 

?>