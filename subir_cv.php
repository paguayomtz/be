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
                            <span class="card-title grey-text text-darken-4">Adjuntar curriculum vitae</span>
                            <form class="form" action="ins_cv.php" method="post" enctype="multipart/form-data">
                                <div class="input-field">
                                    <i class="material-icons prefix">edit</i>                                                 
                                    <input type="text" name="nombre" title="Solo letras sin acentos" id="nombre" onblur="may(this.value, this.id)" pattern="[A-Z .]{1,90}" required autocomplete="off">
                                    <label for="nombre">Nombre completo</label>                                                
                                </div>
                                <div class="input-field">
                                    <i class="material-icons prefix">email</i>                                                 
                                    <input type="email" name="email" title="correo@dominio.com" id="email" pattern="[A-Za-z0-9@.-_]{1,90}" required autocomplete="off">
                                    <label for="email">correo@dominio.com</label>                                                
                                </div>                                                         
                                <div class="file-field input-field"> 
                                    <div class="btn grey darken-4">
                                        <span>Adjuntar</span> <i class="material-icons right">attach_file</i>
                                        <input type="file" name="cv">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text">
                                    </div>                                                                    
                                </div>                                    
                                <button type="submit" class="btn white-text orange darken-4"> Guardar <i class="material-icons right">send</i> </button>                                           
                                <a href="index.php" class="btn grey darken-4 right valign-wrapper">
                                    <span>Regresar</span> <i class="material-icons left">reply</i>                                    
                                </a>
                            </form> 
                        </div>
                    </div>                    
                </div>
            </div>
        </div>

    </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>
        function may(obj, id) {
            obj = obj.toUpperCase();
            document.getElementById(id).value = obj;        
        }
    </script>
</body>

</html>