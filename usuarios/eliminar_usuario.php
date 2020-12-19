<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['id']));
    
$del = $cn->query("DELETE FROM usuarios WHERE id_usuario = '$id' ");

if($del) {
    header('location:../extend/alerta.php?msj=Usuario eliminado&c=us&p=in&t=success');
    $cn->close();
} else {
    header('location:../extend/alerta.php?msj=No fue posible eliminar al usuario&c=us&p=in&t=error');
}

?>