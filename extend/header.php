<?php

require_once '../conexion/conexion.php';

if (!isset($_SESSION['usuario'])) {
    header('location:../');
}
$cn->close(); //
?>

<!DOCTYPE html>
<html lang="es-MX">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Be Consulting</title>
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilos.css" />
    <link rel="stylesheet" href="../css/star-rating.css" />

    <style>
        header,
        main,
        footer {
            padding-left: 300px;
        }

        .button-collpase {
            display: none;
        }

        .ocultar {
            display: none;
        }

        .nover {
            display: none;
        }

        @media only screen and (max-width : 992px) {

            header,
            main,
            footer {
                padding-left: 0;
            }

            .button-collpase {
                display: inherit;
            }

        }
    </style>

</head>

<body>
    <main>

        <nav class="indigo darken-4">
            <a href="#" data-target="menu" class="sidenav-trigger"> <i class="material-icons">menu</i> </a>
        </nav>

        <ul id="menu" class="sidenav sidenav-fixed indigo darken-4">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="../img/be.png" alt="logo" class="right" style="margin: 2%;" width=90px>
                    </div>
                    <a href="../perfil/index.php"> <img src="../usuarios/<?php echo $_SESSION['foto'] ?>" alt="yo" class="circle"> </a>
                    <a href="../perfil/perfil.php" class="grey-text text-lighten-3"><?php echo $_SESSION['nombre'] ?></a>
                </div>
            </li>
            <li>
                <a href="../inicio" class="grey-text text-lighten-3"> <i class="material-icons grey-text text-lighten-3">home </i> INICIO </a>
            </li>
            <?php
            if ($_SESSION['nivel_usuario'] == 'ADMINISTRADOR' || $_SESSION['nivel_usuario'] == 'JEFE CXC') {
                require_once 'menu_admin.php';
            }
            ?>
            <div class="divider indigo darken-3" style="width:95%; margin:0 auto;"></div>
            <li>
                <a href="../clientes/index.php" class="grey-text text-lighten-3"> <i class="material-icons grey-text text-lighten-3">work</i> CLIENTES </a>
            </li>
            <div class="divider indigo darken-3" style="width:95%; margin:0 auto;"></div>
            <li>
                <a href="../perfiles/index.php" class="grey-text text-lighten-3"> <i class="material-icons grey-text text-lighten-3">person_add</i> SUBIR CV </a>
            </li>
            <li>
                <a class="dropdown-trigger grey-text text-lighten-3" data-target="dropdown1"> <i class="material-icons grey-text text-lighten-3">find_in_page</i> BUSCAR CV <i class="material-icons right grey-text text-lighten-3">arrow_drop_down</i> </a>
                <ul id="dropdown1" class="dropdown-content">
                    <li><a href="../buscar/index.php"><i class="material-icons">filter_drama</i>TODOS</a></li>
                    <li><a href="../buscar/bsq_avaz.php"><i class="material-icons">place</i>BUSQUEDA AVANZADA</a></li>
                    <li><a href="../buscar/new_cv.php"><i class="material-icons">fiber_new</i>CV NUEVO(S)<span class="new badge orange"><?php include 'n_new.php' ?></span></a></li>
                </ul>
            </li>
            <div class="divider indigo darken-3" style="width:95%; margin:0 auto;"></div>
            <li>
                <a href="../login/salir.php" class="grey-text text-lighten-3"> <i class="material-icons grey-text text-lighten-3">power_setting_new</i> CERRAR SESION </a>
            </li>
            <br>
            <span class="white-text" style="margin: 20px;">Version 1.0 (Beta)</span>
        </ul>