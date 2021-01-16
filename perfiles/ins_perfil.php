<?php

include '../conexion/conexion.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $cn->real_escape_string($_POST['nombre']);
    $id_area = $cn->real_escape_string($_POST['area']);
    $id_puesto = $cn->real_escape_string($_POST['puesto']);
    $id_exp = $cn->real_escape_string($_POST['exp']);
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
    $fecha = date("Y-m-d"); 
    $dir_area = "curris/".$area;
    $dir_puesto = "/".$puesto;
    $dir_exp = "/".$exp;
    //$i = 1; 
        
    if (empty($nombre) || empty($area) || empty($puesto) || empty($exp)) {
        header('location:../extend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=per&p=in&t=error');
        exit;
    }
    
    $extension = '';
    //$ruta = 'curris/'.$area.'/'.$puesto;
    $archivo = $_FILES['cv']['tmp_name'];
    $nombrearchivo=$_FILES['cv']['name'];
    $info = pathinfo($nombrearchivo);            
    if($archivo != '') { 
        if(!file_exists($dir_area)) {
            mkdir($dir_area, 0777, true);
        }
        if(!file_exists($dir_area.$dir_puesto)) {
            mkdir($dir_area.$dir_puesto, 0777, true);
        }
        if(!file_exists($dir_area.$dir_puesto.$dir_exp)) {
            mkdir($dir_area.$dir_puesto.$dir_exp, 0777, true);
        }
        $extension = $info['extension'];            
        if ($extension == "pdf" || $extension == "PDF" || $extension == "docx" || $extension == "DOCX" || $extension == "doc" || $extension == "DOC") {            
            $ruta = $dir_area.$dir_puesto.$dir_exp.'/'.$nombre.'.'.$extension; // Copia
            if (file_exists($ruta)) {
                header('location:../extend/alerta.php?msj=Curriculum ya existe&c=per&p=in&t=error');
                exit;
            } else {
                move_uploaded_file($archivo,$ruta); // Pega                                                   
            }
        } else {
            header('location:../extend/alerta.php?msj=El formato de no es valido&c=per&p=in&t=error');
            exit;
        }
    } else {
        header('location:../extend/alerta.php?msj=Nada adjunto&c=per&p=in&t=error');
        exit;               
    } 

    $ins = $cn->query("INSERT INTO perfiles VALUES(null,'$nombre','$id_area','$id_puesto','$id_exp','$ruta','$user','$fecha','0','')");

    if($ins) {  
        $cn->close();      
        header('location:../extend/alerta.php?msj=Documento se guardo exitosamente&c=per&p=in&t=success');
    } else {
        header('location:../extend/alerta.php?msj=No se pudo guardar el documento&c=per&p=in&t=error');
    }

} else {
    header('location:../extend/alerta.php?msj=Utiliza el formulario&c=ex&p=in&t=error');
}

?>