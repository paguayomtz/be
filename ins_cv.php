<?php

include 'conexion/conexion.php';
require 'mail.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $cn->real_escape_string(htmlentities($_POST['nombre']));
    $email = $cn->real_escape_string(htmlentities($_POST['email']));    
    $fecha = date("Y-m-d"); 
    $dir = "perfiles/curris/";  
        
    if (empty($nombre)) {
        header('locationextend/alerta.php?msj=Hay campo(s) vacios o sin esfecificar&c=salir&p=in&t=error');
        exit;
    }
    
    $extension = '';    
    $archivo = $_FILES['cv']['tmp_name'];
    $nombrearchivo=$_FILES['cv']['name'];
    $info = pathinfo($nombrearchivo);            
    if($archivo != '') {       
        $extension = $info['extension'];            
        if ($extension == "pdf" || $extension == "PDF" || $extension == "docx" || $extension == "DOCX" || $extension == "doc" || $extension == "DOC") {            
            $ruta = $dir.$nombre.'.'.$extension;
            if (file_exists($ruta)) {                
                $correo = new Correo();
                $correo->Enviar($nombre.' (actualizo)',$email);
                move_uploaded_file($archivo,$ruta); 
                header('location:../extend/alerta.php?msj=Curriculum ya existe&c=salir&p=in&t=success');                 
                exit;
            } else {
                move_uploaded_file($archivo,$ruta);
            }            
        } else {
            header('location:extend/alerta.php?msj=El formato de no es valido&c=salir&p=in&t=error');
            exit;
        }
    } else {
        header('location:extend/alerta.php?msj=Nada adjunto&c=salir&p=in&t=error');
        exit;               
    } 

    $sql = "INSERT INTO perfiles VALUES(null,'$nombre',null,null,null,'$ruta','Candidato','$fecha','0',null)";
    $ins = $cn->query($sql);

    if($ins) {          
        $correo = new Correo();
        $correo->Enviar($nombre,$email);        
        $cn->close();      
        header('location:extend/alerta.php?msj=Documento se guardo exitosamente&c=salir&p=in&t=success');
    } else {
        header('location:extend/alerta.php?msj=No se pudo guardar el documento \n Favor de intentarlo mas tarde&c=salir&p=in&t=error');
    }

} else {
    header('location:extend/alerta.php?msj=Utiliza el formulario&c=salir&p=in&t=error');
}

?>