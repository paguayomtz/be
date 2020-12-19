<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ide = $cn->real_escape_string(htmlentities($_POST['ide']));
    $star = $cn->real_escape_string(htmlentities($_POST['star']));
    $ent_be = $cn->real_escape_string(htmlentities($_POST['ent_be']));
    $reto_cli = $cn->real_escape_string(htmlentities($_POST['reto_cli']));
    $psico = $cn->real_escape_string(htmlentities($_POST['psico']));
    $soc = $cn->real_escape_string(htmlentities($_POST['soc']));
    $coment = $cn->real_escape_string(htmlentities($_POST['coment']));
    $user = $_SESSION['usuario'];
    $fecha = date("Y-m-d");        
    
    $act = $cn->query("UPDATE resenas SET entrevista_be='$ent_be', retro_cliente='$reto_cli', psicometrias='$psico', socio_economico='$soc', comentarios='$coment', calificacion='$star', actualizo='$user', fecha='$fecha' WHERE ide_perfil='$ide'");

    if($act) {  
        $cn->close();      
        header('location:../extend/alerta.php?msj=Resena se guardo exitosamente&c=bu&p=in&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No se pudo guardar la resena&c=bu&p=in&t=error');
    }

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=bu&p=in&t=error');
}

?>