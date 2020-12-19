<?php include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' ) {
    $usuario = $_SESSION['usuario'];    
    $pass = $cn->real_escape_string(htmlentities($_POST['pass']));
    $pass = sha1($pass);

    $up = $cn->query("UPDATE usuarios SET password = '$pass' WHERE usuario = '$usuario'"); 

    if ($up) {       
        header('location:../extend/alerta.php?msj=Cantrasena actualizada&c=pe&p=pe&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No fue posible actualizar la contrasena&c=pe&p=pe&t=error');
    }

$cn->close();
} else {
    header('location:../extend/alerta.php?msj=Accion invalida&c=pe&p=in&t=error');
}