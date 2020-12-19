<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ide = $cn->real_escape_string(htmlentities($_POST['ide']));
    $mov = $cn->real_escape_string(htmlentities($_POST['sql']));
    $cli = $cn->real_escape_string(htmlentities($_POST['cliente']));  
    $usu = $cn->real_escape_string(htmlentities($_POST['usuario']));
    $ent_be = $cn->real_escape_string(htmlentities($_POST['ent_be']));  
    $ent_cli = $cn->real_escape_string(htmlentities($_POST['ent_cli']));  
    $soc = $cn->real_escape_string(htmlentities($_POST['soc']));
    $psico = $cn->real_escape_string(htmlentities($_POST['psico']));
    $ok = $cn->real_escape_string(htmlentities($_POST['ok']));
    $etapa = 1 + $ok;     
    
    if (empty($cli) || empty($usu)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=bu&p=in&t=error');
        exit;
    } else {
        if (!empty($ent_be)) {
            $etapa++;
        }
        if (!empty($ent_cli)) {
            $etapa++;
        }
        if (!empty($soc)) {
            $etapa++;
        }
        if (!empty($psico)) {
            $etapa++;
        }
        if($mov == 'ins') { 
            $ins = $cn->query("INSERT INTO procesos VALUES('','$ide','$cli','$usu','$ent_be','$ent_cli','$soc','$psico','$etapa')");
            if($ins) {            
                header('location:../extend/alerta.php?msj=Proceso se creo exitosamente&c=bu&p=in&t=success');
            } else {
                header('location:../extend/alerta.php?msj=No se pudo crear el proceso&c=bu&p=in&t=error');
            }
        }
        if ($mov == 'up') {
           $up = $cn->query("UPDATE procesos SET ide_cliente='$cli', reclutador='$usu', entrevista_be='$ent_be', entrevista_cliente='$ent_cli', sc_economico='$soc', psicometrias='$psico', etapa='$etapa' WHERE ide_perfil='$ide'");
            if($up) {            
                header('location:../extend/alerta.php?msj=Proceso se actualizo exitosamente&c=bu&p=in&t=success');
            } else {
                header('location:../extend/alerta.php?msj=No se pudo actualizar el proceso '.$cli.'&c=bu&p=in&t=error');
            }
        } 
    }      

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=ex&p=in&t=error');
}

?>