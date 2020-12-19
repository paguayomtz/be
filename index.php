<?php
@session_start();
if(isset($_SESSION['usuario'])) {
    header('location:inicio');
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">       
    <title>Document</title>
</head>
<body class="indigo darken-4">
    <main>
        <div class="row">
            <div class="input-field center">
                <img src="img/be.png" alt="logo" width=10% >
             </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col s12">                    
                    <div class="card z-depth-5 grey lighten-3">
                        <div class="card-content">
                            <span class="card-title grey-text text-darken-4">Inicio de sesion</span>
                            <form action="login/index.php" method="post" autocomplete="off">
                                <div class="input-field">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <input type="text" name="usuario" id="usuario" required>
                                    <label for="usuario" class="grey-text text-darken-4">Usuario</label>
                                </div>
                                <div class="input-field">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input type="password" name="contra" id="contra" required>
                                    <label for="contra" class="grey-text text-darken-4">Contraseña</label>
                                </div>
                                <div class="input-field">
                                    <button type="submit" class="valign-wrapper btn waves-effect waves-light orange darken-4">Acceder<i class="material-icons right">fingerprint</i></button>
                                    <a href="subir_cv.php" class="btn grey darken-4 right valign-wrapper">
                                        <span>Subir CV </span> <i class="material-icons left">cloud_upload</i>                                    
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>

    </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
</body>

</html>