<?php

include '../conexion/conexion.php'; 

$sel = $cn->query("SELECT COUNT(id_perfil) FROM perfiles WHERE ide_area IS NULL");

$f = $sel->fetch_row();

echo $f[0];

$cn->close();

?>