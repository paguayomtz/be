<?php

include '../conexion/conexion.php';
$user = $_SESSION['usuario'];

$up = $cn->query("UPDATE usuarios SET bloqueo = 1 WHERE usuario = '$user'");
if($up) {
    $_SESSION = array();
    session_destroy();
    header('location:../extend/alerta.php?msj=Uso indevido del sistema&c=salir&p=in&t=error');    
}

?>