<?php

    include '../conexion/conexion.php';
    
    //header('location:../extend/alerta.php?msj='.$_POST["area"].'&c=per&p=in&t=success');

    $a = $_POST["area"];     
    
    $sel = $cn->query("SELECT id_puesto, puesto FROM puestos WHERE ide_area = '$a' ORDER BY puesto");
    if ($sel) {
        $puestos = array();       
        while($f = $sel->fetch_assoc()) {               
           echo '<option value="'.$f['id_puesto'].'">'.$f['puesto'].'</option>';  
        }             
    }
    $cn->close();
    
?>