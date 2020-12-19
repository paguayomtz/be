<?php include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' ) {
    $usuario = $_SESSION['usuario'];
    $nombre = $cn->real_escape_string(htmlentities($_POST['nombre']));
    $email = $cn->real_escape_string(htmlentities($_POST['email']));
//$pass = $cn->real_escape_string(htmlentities($_POST['password']));
    $up = $cn->query("UPDATE usuarios SET nombre = '$nombre', correo = '$email' WHERE usuario = '$usuario'"); 

    if ($up) {
        $_SESSION['nombre'] = $nombre;
        $_SESSION['correo'] = $email;
        header('location:../extend/alerta.php?msj=Datos actualizados&c=pe&p=pe&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No fue posible actualizar las datos&c=pe&p=pe&t=error');
    }

$cn->close();
} else {
    header('location:../extend/alerta.php?msj=Accion invalida&c=pe&p=in&t=error');
}