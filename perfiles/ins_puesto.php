<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {    
    $puesto = $cn->real_escape_string($_POST['npuesto']);
    $ide = $cn->real_escape_string($_POST['id_area']);       
    
    if (empty($puesto) || empty($ide)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=per&p=in&t=error');
        exit;
    } else {    
        $ins = $cn->query("INSERT INTO puestos VALUES(null,'$puesto','$ide')");
        if($ins) {
            $cn->close();
            header('location:../extend/alerta.php?msj=Puesto se guardado exitosamente&c=per&p=in&t=success');
        } else {
            header('location:../extend/alerta.php?msj=No se pudo guardar el puesto&c=per&p=in&t=error');
        }
    }   

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=ex&p=in&t=error');
}

?>