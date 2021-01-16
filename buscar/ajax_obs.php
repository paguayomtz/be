<?php

require_once '../conexion/conexion.php';   

class AjaxObs {

    public function ajax($cn) {

        $id = $_POST["id"];

        $sel = $cn->query("SELECT observaciones FROM perfiles WHERE id_perfil = '$id'");
        $f = $sel->fetch_row();
        return json_encode($f[0]); 

    }

}

$obj = new AjaxObs();
$data = $obj->ajax($cn);
echo $data;

    
?> 



    