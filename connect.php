<?php
 
$link = mysqli_connect('localhost', 'root', '', 'cse311l');

 if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>