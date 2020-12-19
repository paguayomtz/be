<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $area = $cn->real_escape_string(htmlentities($_POST['narea']));      
    
    if (empty($area)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=per&p=in&t=error');
        exit;
    } else {    
        $ins = $cn->query("INSERT INTO areas VALUES('','$area')");
        if($ins) {
            $cn->close();
            header('location:../extend/alerta.php?msj=Area guardada exitosamente&c=per&p=in&t=success');
        } else {
            header('location:../extend/alerta.php?msj=No se pudo guardar el area&c=per&p=in&t=error');
        }
    }   

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=ex&p=in&t=error');
}

?>