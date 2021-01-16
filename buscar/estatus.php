<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string($_GET['id']);
$status = $cn->real_escape_string($_GET['st']);

if ($status == 1) {
    $up = $cn->query("UPDATE perfiles SET estatus = 0, observaciones = '' WHERE id_perfil = '$id'");
    if($up) {
         header('location:../extend/alerta.php?msj=Observaciones borradas&c=bu&p=in&t=success');
         $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Erro al conectar a la bd&c=bu&p=in&t=error');
        exit;
    }
} else {
    header('location:../extend/alerta.php?msj=No hay comentarios que borrar&c=bu&p=in&t=error');
}
?>