<?php

require_once '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['id']));
$stus = $cn->real_escape_string(htmlentities($_GET['st']));

if ($stus == 0) {
    $up = $cn->query("UPDATE clientes SET estatus = 1 WHERE id_cliente = '$id'");
    if($up) {
         header('location:../extend/alerta.php?msj=Cliente se Activo&c=cli&p=in&t=success');
         $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Error al conectar a la BD&c=cli&p=in&t=error');
    }
} else {
    $up = $cn->query("UPDATE clientes SET estatus = 0 WHERE id_cliente = '$id'");
    if($up) {
         header('location:../extend/alerta.php?msj=Cliente se Desactivo&c=cli&p=in&t=success');
         $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Error al conectar a la BD&c=cli&p=in&t=error');
    }
}
?>