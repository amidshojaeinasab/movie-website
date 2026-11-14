<?php 
function fetchData($connect,$sql,$prams=[],$fetch=""){
    $stmt=mysqli_prepare($connect,$sql);
    if (!$stmt || !mysqli_stmt_execute($stmt,$prams)) {
        die("Error Execute Query:".mysqli_stmt_error($stmt));
    }
    $resulte=mysqli_stmt_get_result($stmt);
    if($fetch===""){
        $data=mysqli_fetch_all($resulte,MYSQLI_ASSOC);
    }elseif ($fetch==="fetch") {
        $data=mysqli_fetch_assoc($resulte); 
    }
    
    return $data;
} 

?>