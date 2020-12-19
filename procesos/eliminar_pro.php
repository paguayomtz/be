<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['id']));
    
$del = $cn->query("DELETE FROM procesos WHERE id_proceso = '$id' ");

if($del) {
    header('location:../extend/alerta.php?msj=Procesos eliminado&c=bu&p=in&t=success');    
$cn->close();
} else {
    header('location:../extend/alerta.php?msj=No fue posible eliminar el proceso&c=bu&p=in&t=error');
}

?>