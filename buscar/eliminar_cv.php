<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string($_GET['id']);
$doc = $cn->real_escape_string($_GET['doc']);

$sel = $cn->query("SELECT estatus FROM perfiles WHERE id_perfil = '$id'");
$f = $sel->fetch_row();

if($f[0] != 0) {
    header('location:../extend/alerta.php?msj=No puedes eliminar a un canditado con Resena&c=bu&p=in&t=error');
    
} else {    
    $del = $cn->query("DELETE FROM perfiles WHERE id_perfil = '$id' ");
    if($del) {
        header('location:../extend/alerta.php?msj=Registro eliminado&c=bu&p=in&t=success');
        unlink('../perfiles/'.$doc);
    } else {
        header('location:../extend/alerta.php?msj=No fue posible eliminar&c=bu&p=in&t=error');
    }
}
$cn->close();
?>