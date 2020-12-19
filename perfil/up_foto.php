<?php include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' ) {
$usuario = $_SESSION['usuario'];
$foto = $_SESSION['foto'];

$extension = '';
    $ruta = 'foto_perfil';
    $archivo=$_FILES['foto']['tmp_name'];
    $nombrearchivo=$_FILES['foto']['name'];
    $info = pathinfo($nombrearchivo);
    if($archivo != '') { //if(!empty($archivo))
        $extension = $info['extension'];
        //echo $extension;
        if ($extension == "png" || $extension == "PNG" || $extension == "jpg" || $extension == "JPG") {
            unlink('../usuarios/'.$foto);
            move_uploaded_file($archivo,'../usuarios/foto_perfil/'.$usuario.'.'.$extension);
            $ruta = $ruta."/".$usuario.'.'.$extension;
            $up = $cn->query("UPDATE usuarios SET foto = '$ruta' WHERE usuario = '$usuario'");
            if ($up) {
                $_SESSION['foto'] = $ruta;
                header('location:../extend/alerta.php?msj=Foto actualizada&c=pe&p=in&t=success');
            } else {
                header('location:../extend/alerta.php?msj=No fue posible actualizar la imagen&c=pe&p=in&t=error');
            }
        } else {
            header('location:../extend/alerta.php?msj=El formato no es valido&c=pe&p=in&t=error');
            exit;
        }
    } else {
        header('location:../extend/alerta.php?msj=Sin foto&c=pe&p=in&t=error');        
        //$ruta = "foto_perfil/perfil.png";
        //exit;
    }

$cn->close();
} else {
    header('location:../extend/alerta.php?msj=Accion invalidar&c=pe&p=in&t=error');
}