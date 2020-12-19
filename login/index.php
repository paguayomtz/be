<?php

include '../conexion/conexion.php';

if($_SERVER['REQUEST_METHOD']=='POST') {
    $user = $cn->real_escape_string(htmlentities($_POST['usuario']));
    $pass = $cn->real_escape_string(htmlentities($_POST['contra']));
    $candado = ' ';
    $str_u = strpos($user, $candado);
    $str_p = strpos($pass, $candado);    

    if(is_int($str_u) || is_int($str_u) ) {
        $user = '';
        $pass = '';
    } else {
        $usuario = $user;
        $contra = sha1($pass);
    }
    /*if(is_int($str_p)) {
        $pass = '';
    } else {
        $contra = sha1($pass);
    }*/

    if ($user == null || $pass == null) {
        header('location:../extend/alerta.php?msj=Error al ingresar usuario y contrasena&c=salir&p=in&t=error');
    } else {
        $sel = $cn->query("SELECT * FROM usuarios WHERE usuario = '$usuario' AND password = '$contra'");
        $row = mysqli_num_rows($sel);         
        if($row == 1) {
            if($var = $sel->fetch_assoc()) {
                $us = $var['usuario'];
                $con = $var['password'];
                $nom = $var['nombre'];
                $mail = $var['correo'];
                $nu = $var['nivel_usuario'];
                $bloqueo =$var['bloqueo'];
                $foto = $var['foto'];                
            }
            if($usuario == $us && $contra == $con && $nu == 'ADMINISTRADOR' && $bloqueo == 0) {
                $_SESSION['usuario'] = $us;
                $_SESSION['nombre'] = $nom;
                $_SESSION['correo'] = $mail;
                $_SESSION['nivel_usuario'] = $nu;
                $_SESSION['foto'] = $foto;
                header('location:../extend/alerta.php?msj=Bienvenido...!&c=home&p=in&t=success');
            } 
            elseif($usuario == $us && $contra == $con && $nu == 'RECLUTADOR' && $bloqueo == 0) {
                $_SESSION['usuario'] = $us;
                $_SESSION['nombre'] = $nom;
                $_SESSION['correo'] = $mail;
                $_SESSION['nivel_usuario'] = $nu;
                $_SESSION['foto'] = $foto;
                header('location:../extend/alerta.php?msj=Bienvenido...!&c=home&p=in&t=success');
            } 
            else {
                header('location:../extend/alerta.php?msj=Acceso denegado&c=salir&p=in&t=error');
            }
        } else {
            header('location:../extend/alerta.php?msj=Usuario o contrasena incorrectos&c=salir&p=in&t=error');
        }
    }

} else {
    header('location:../extend/alerta.php?msj=Favor de iniciar session&c=salir&p=in&t=error');
}



?>

