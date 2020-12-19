<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['id']));
$doc = $cn->real_escape_string(htmlentities($_GET['doc']));

$sel = $cn->query("SELECT estatus FROM perfiles WHERE id_perfil = '$id'");
$f = $sel->fetch_row();

if($f[0] != 0) {
    header('location:../extend/alerta.php?msj=No puedes eliminar a un canditado con Resena&c=bu&p=in&t=error');
    $cn->close();
} else {    
    $del = $cn->query("DELETE FROM perfiles WHERE id_perfil = '$id' ");

    if($del) {
        header('location:../extend/alerta.php?msj=Documento eliminado&c=bu&p=in&t=success');
        unlink('../perfiles/'.$doc);
        $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=No fue posible eliminar el documento&c=bu&p=in&t=error');
    }
}
?>