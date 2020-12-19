<?php 

@session_start();
$cn = new mysqli('localhost','root','','be');
mysqli_query($cn, 'SET NAMES "utf8"');

?>