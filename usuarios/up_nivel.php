<?php

include '../conexion/conexion.php';
include '../extend/permiso.php';

if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $cn->real_escape_string(htmlentities($_POST['id']));
    $nivel = $cn->real_escape_string(htmlentities($_POST['nivel']));
    $up = $cn->query("UPDATE usuarios SET nivel_usuario='$nivel' WHERE id_usuario='$id' ");

    if($up) {
        header('location:../extend/alerta.php?msj=Se actulaizo nivel a '.$nivel.'&c=us&p=in&t=success');
        $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=No fue posible actualizar el nivel de usuario&c=us&p=in&t=error');
    }
} else {
    header('location:../extend/alerta.php?msj=No es posible realizar la operacion&c=salir&p=in&t=error');
}

?>