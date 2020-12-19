<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $cn->real_escape_string(htmlentities($_POST['id']));    
    $cli = $cn->real_escape_string(htmlentities($_POST['cliente']));  
    $cont = $cn->real_escape_string(htmlentities($_POST['contacto']));
    $tel = $cn->real_escape_string(htmlentities($_POST['tel']));  
    $mail = $cn->real_escape_string(htmlentities($_POST['mail']));
    
    if (!empty($cli)) {
        $up = $cn->query("UPDATE clientes SET cliente='$cli' WHERE id_cliente='$id'");
    }
    if (!empty($cont)) {
        $up = $cn->query("UPDATE clientes SET contacto='$cont' WHERE id_cliente='$id'");
    }
    if (!empty($tel)) {
        $up = $cn->query("UPDATE clientes SET telefono='$tel' WHERE id_cliente='$id'");
    }
    if (!empty($mail)) {
        $up = $cn->query("UPDATE clientes SET cliente='$mail' WHERE id_cliente='$id'");
    } 
    header('location:../extend/alerta.php?msj=Se actualizaron los datos correcamente&c=cli&p=in&t=success');    
    $cn->close();

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=cli&p=in&t=error');
}

?>