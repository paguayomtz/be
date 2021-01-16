<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ide = $cn->real_escape_string(($_POST['ide']));
    $star = $cn->real_escape_string(($_POST['star']));
    $ent_be = $cn->real_escape_string(($_POST['ent_be']));
    $reto_cli = $cn->real_escape_string(($_POST['reto_cli']));
    $psico = $cn->real_escape_string(($_POST['psico']));
    $soc = $cn->real_escape_string(($_POST['soc']));
    $coment = $cn->real_escape_string(($_POST['coment']));
    $user = $_SESSION['usuario'];
    $fecha = date("Y-m-d");        
    
    $sql = "INSERT INTO resenas VALUES(null,'$ide','$ent_be','$reto_cli','$psico','$soc','$coment','$star','$user','$fecha')";
    $ins = $cn->query($sql);
    // var_dump($sql);
    // die;
    if($ins) {
        $sql = "UPDATE perfiles SET estatus = 1 WHERE id_perfil = $ide";
        $up = $cn->query($sql); 
        header('location:../extend/alerta.php?msj=Resena se guardo exitosamente&c=bu&p=in&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No se pudo guardar la resena&c=bu&p=in&t=error');
    }

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=bu&p=in&t=error');
}

$cn->close(); 

?>