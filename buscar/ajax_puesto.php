<?php

    include '../conexion/conexion.php';
    
    //header('location:../extend/alerta.php?msj='.$_POST["area"].'&c=per&p=in&t=success');

    $a = $_POST["area"];     
    
    $sel = $cn->query("SELECT perfiles FROM perfiles WHERE puesto = '$a' ORDER BY puesto");
    if ($sel) {
        $puestos = array();       
        while($f = $sel->fetch_assoc()) {               
           echo '<option value="'.$f['puesto'].'">'.$f['puesto'].'</option>';  
        }             
    }
    
?>