<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {        
    $cli = $cn->real_escape_string($_POST['cliente']);  
    $cont = $cn->real_escape_string($_POST['contacto']);
    $tel = $cn->real_escape_string($_POST['tel']);  
    $mail = $cn->real_escape_string($_POST['mail']);
    
    $ins = $cn->query("INSERT INTO clientes VALUES(null, '$cli', '$cont', '$tel', '$mail', 1)");

    if($ins) {    
        header('location:../extend/alerta.php?msj=Se actualizaron el cliente correcamente&c=cli&p=in&t=success');    
        $cn->close();
    } else {
        header('location:../extend/alerta.php?msj=Error al dar de alta al cliente&c=cli&p=in&t=error');
    }

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=cli&p=in&t=error');
}

?>