<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['us']));
$bloqueo = $cn->real_escape_string(htmlentities($_GET['bl']));

if ($bloqueo == 0) {
    $up = $cn->query("UPDATE usuarios SET bloqueo = 1 WHERE id_usuario = '$id'");
    if($up) {
         header('location:../extend/alerta.php?msj=Usuario Bloqueado&c=us&p=in&t=success');
         $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Usuario no ha podido ser bloqueado&c=us&p=in&t=error');
    }
} else {
    $up = $cn->query("UPDATE usuarios SET bloqueo = 0 WHERE id_usuario = '$id'");
    if($up) {
         header('location:../extend/alerta.php?msj=Usuario Desbloqueado&c=us&p=in&t=success');
         $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Usuario no ha podido ser desbloqueado&c=us&p=in&t=error');
    }
}
?>