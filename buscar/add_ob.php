<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ob = $cn->real_escape_string($_POST['observaciones']);
    $id = $cn->real_escape_string($_POST['id']);       
    
    if (empty($ob)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=bu&p=in&t=error');
        exit;
    } else {    
        $up = $cn->query("UPDATE perfiles SET observaciones = '$ob' WHERE id_perfil = $id");
        if($up) {
            header('location:../extend/alerta.php?msj=Observaciones guardadas exitosamente&c=bu&p=in&t=success');
            $cn->close();            
        } else {
            header('location:../extend/alerta.php?msj=No se pudo guardar&c=bu&p=in&t=error');
        }
    }   

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=bu&p=in&t=error');
}

?>