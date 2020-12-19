<?php

if($_SESSION['nivel_usuario'] != 'ADMINISTRADOR') {
    header("location:bloqueo.php");    
}

?>