<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $id = $cn->real_escape_string(htmlentities($_GET['id']));
    $cv = $cn->real_escape_string(htmlentities($_GET['cv']));    
    $id_area = $cn->real_escape_string(htmlentities($_GET['area']));
    $id_puesto = $cn->real_escape_string(htmlentities($_GET['puesto']));
    $id_exp = $cn->real_escape_string(htmlentities($_GET['exp']));
    $sel = $cn->query("SELECT * FROM areas WHERE id_area = $id_area");
    $a = $sel->fetch_array();
    $area = str_replace("/","_",$a[1]); //$area = $a[1]; --LE QUITA LAS "/" AL NOMBRE DEL AREA Y LES PONE "_" PARA ASI CREAR LAS CARPETAS
    $sel = $cn->query("SELECT * FROM puestos WHERE id_puesto = $id_puesto");
    $p = $sel->fetch_array();
    $puesto = $p[1];
    $sel = $cn->query("SELECT * FROM niveles WHERE id_nivel = $id_exp");
    $e = $sel->fetch_array();
    $exp = $e[1];
    $user = $_SESSION['usuario'];     
    $dir_area = "curris/".$area;
    $dir_puesto = "/".$puesto;
    $dir_exp = "/".$exp;
    $dir_a = "../perfiles/".$dir_area;    
    $cv_new = "../".$cv;
           
    if (empty($id) || empty($cv) || empty($area) || empty($puesto) || empty($exp)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=bu&p=new&t=error');
        exit;
    }  
    
    $ruta = $dir_area.$dir_puesto.$dir_exp;
    $ruta = substr_replace($cv, $ruta, 0, 15);
    $sel = $cn->query("SELECT cv FROM perfiles wHERE cv = '$ruta'");
    $f = $sel->fetch_row();
    if ($ruta == $f[0]) {
        $cn->close();
        header('location:../extend/alerta.php?msj=Valor duplicado.\n Contactar al Administrador&c=bu&p=new&t=error');
        exit;
    } else {
        if(!file_exists($dir_a)) {
            mkdir($dir_a, 0777, true);
        }
        if(!file_exists($dir_a.$dir_puesto)) {
            mkdir($dir_a.$dir_puesto, 0777, true);
        }
        if(!file_exists($dir_a.$dir_puesto.$dir_exp)) {
            mkdir($dir_a.$dir_puesto.$dir_exp, 0777, true);
        }

        $ruta_new = "../perfiles/".$ruta;

        if(rename($cv_new, $ruta_new)) {

            $up = $cn->query("UPDATE perfiles SET ide_area='$id_area', ide_puesto='$id_puesto', ide_nivel='$id_exp', cv='$ruta', subio='$user' WHERE id_perfil='$id'");

            if($up) {  
                $cn->close();      
                header('location:../extend/alerta.php?msj=CV se clasifico correctamente&c=bu&p=new&t=success');
                exit;
            } else {
                $cn->close();
                header('location:../extend/alerta.php?msj=Error al conectar con la BD&c=bu&p=new&t=error');
                exit;
            }            
        } else {
            header('location:../extend/alerta.php?msj=Error al cambiar de ubicacion&c=bu&p=new&t=success');
            exit;
        }                                                           
    }  

} else {
    $cn->close();
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=homeu&p=in&t=error');
}

?>