<?php

include '../conexion/conexion.php';

$id = $cn->real_escape_string(htmlentities($_GET['id']));
$doc = $cn->real_escape_string(htmlentities($_GET['doc']));

$sel = $cn->query("SELECT ide_perfil FROM procesos WHERE ide_perfil = '$id'");
$row = mysqli_num_rows($sel);

if($row == 1) {
    header('location:../extend/alerta.php?msj=No puedes eliminar a un canditado que esta en un proceso&c=bu&p=new&t=error');
    $cn->close();
} else {    
    $del = $cn->query("DELETE FROM perfiles WHERE id_perfil = '$id' ");

    if($del) {
        header('location:../extend/alerta.php?msj=Documento eliminado&c=bu&p=new&t=success');
        unlink('../'.$doc);
        $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=No fue posible eliminar el documento&c=bu&p=new&t=error');
    }
}
?>