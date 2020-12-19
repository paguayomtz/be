<?php include '../conexion/conexion.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <?php

    $mensaje = htmlentities($_GET['msj']);
    $c = htmlentities($_GET['c']);
    $p = htmlentities($_GET['p']);
    $t = htmlentities($_GET['t']);

    switch ($c) {
        case 'us':
            $carpeta = '../usuarios/';
        break;

        case 'pe':
            $carpeta = '../perfil/';
        break;

        case 'home':
            $carpeta = '../inicio/';
        break;

        case 'salir':
            $carpeta = '../';
        break;
        
        case 'per':
            $carpeta = '../perfiles/';
        break;
        
        case 'bu':
            $carpeta = '../buscar/';
        break;

        case 'pro':
            $carpeta = '../procesos/';
        break;

        case 'cli':
            $carpeta = '../clientes/';
        break;        
    }

    switch ($p) {
        case 'in':
            $pagina = 'index.php';
        break;

        case 'pe':
            $pagina = 'perfil.php';
        break;

        case 'new':
            $pagina = 'new_cv.php';
        break;
    }

    $dir = $carpeta.$pagina;

    if($t == "error") {
        $titulo = "Oppss..";
        $color = '#bf360c';
    } else {
        $titulo = "Correcto..!";
        $color = '#3085d6';
    }

    ?>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="../js/sweetalert2.all.js"></script>

    <script>
        swal({
            title: '<?php echo $titulo ?>',
            text: "<?php echo $mensaje ?>",
            type: '<?php echo $t ?>',    
            confirmButtonColor: "<?php echo $color ?>",    
            confirmButtonText: 'OK!'
            }).then(function() {
                location.href='<?php echo $dir ?>';
            });

        $(document).click(function() {
            location.href='<?php echo $dir ?>';
        });

        $(document).keyup(function(e) {
            if(e.ehich ==27) {
                location.href='<?php echo $dir ?>';
            }
        });
    </script>
</body>
</html>