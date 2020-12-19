<?php 

//include '../conexion/conexion.php';

if($f['nivel_usuario'] == 'ADMINISTRADOR') {
    echo 'RECLUTADOR';
} else {
    echo 'ADMINISTRADOR';
}

?>