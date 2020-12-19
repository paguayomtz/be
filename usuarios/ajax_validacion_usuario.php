<?php

include '../conexion/conexion.php'; 

$usuario = $cn-> real_escape_string($_POST['usuario']);

//echo $usuario;

$sel = $cn->query("SELECT id_usuario FROM usuarios WHERE usuario = '$usuario' ");


$row = mysqli_num_rows($sel);

if ($row != 0) {
    echo '<label style="color:red;">El usuario ya existe</label>';
} else {
    echo '<label style="color:green;">El nombre de usuario esta disponible</label>';
}

$cn->close();

?>

