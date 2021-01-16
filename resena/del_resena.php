<?php

require_once '../conexion/conexion.php';

$id = $cn->real_escape_string($_GET['id']);

$del = $cn->query("DELETE FROM resenas WHERE ide_perfil = $id");

if($del) {
    $up = $cn->query("UPDATE perfiles SET estatus = 0 WHERE id_perfil = $id");
    header('location:../extend/alerta.php?msj=Registro eliminado&c=bu&p=in&t=success');    
} else {    
    header('location:../extend/alerta.php?msj=No fue posible eliminar&c=bu&p=in&t=error');
}

$cn->close();
