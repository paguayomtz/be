<?php
include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usuario = $cn->real_escape_string(htmlentities($_POST['usuario']));
    $pass = $cn->real_escape_string(htmlentities($_POST['pass']));
    //$pass = sha1($pass1);
    $nombre = $cn->real_escape_string(htmlentities($_POST['nombre']));
    $nivel = $cn->real_escape_string(htmlentities($_POST['nivel']));
    $email = $cn->real_escape_string(htmlentities($_POST['email']));
    
    if (empty($usuario) || empty($pass) || empty($nombre) || empty($nivel) || empty($email)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=us&p=in&t=error');
        exit;
    }

    $caracteres = "QWERTYUIOPASDFGHJKLZXCVBNM ";
    for ($i=0; $i < strlen($nombre) ; $i++) { 
        $buscar = substr($nombre,$i,1);
        if (strpos($caracteres,$buscar == false)) {
            header('location:../extend/alerta.php?msj=El nombre no contiene solo letras&c=us&p=in&t=error');
            exit;
        }
    }

    if(!empty($email)) {
        if (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
            header('location:../extend/alerta.php?msj=Email no es valido&c=us&p=in&t=error');
        }
    }

    $extension = '';
    $ruta = 'foto_perfil';
    $archivo=$_FILES['foto']['tmp_name'];
    $nombrearchivo=$_FILES['foto']['name'];
    $info = pathinfo($nombrearchivo);
    if($archivo != '') { //if(!empty($archivo))
        $extension = $info['extension'];
        //echo $extension;
        if ($extension == "png" || $extension == "PNG" || $extension == "jpg" || $extension == "JPG") {
            move_uploaded_file($archivo,'foto_perfil/'.$usuario.'.'.$extension);
            $ruta = $ruta."/".$usuario.'.'.$extension;
        } else {
            header('location:../extend/alerta.php?msj=El formato no es valido&c=salir&p=in&t=error');
            exit;
        }
    } else {               
        $ruta = "../img/user.png";        
    }

    $pass= sha1($pass);
    $sql = "INSERT INTO usuarios VALUES(null,'$usuario','$pass','$nombre','$email','$nivel',0,'$ruta')";
    $ins = $cn->query($sql);
    if($ins) {
        header('location:../extend/alerta.php?msj=Usuario guardado exitosamente&c=us&p=in&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No se pudo guardar el usuario&c=us&p=in&t=error');
    }

    $cn->close();

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=us&p=in&t=error');
}


?>