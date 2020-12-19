<?php

    include '../conexion/conexion.php';
    
    //header('location:../extend/alerta.php?msj='.$_POST["area"].'&c=per&p=in&t=success');

    $ide = $_POST["id"];     
    $nom = $_POST["nombre"]; 
    
    $sel = $cn->query("SELECT * FROM resenas WHERE ide_perfil = '$ide'");
    $f = $sel->fetch_row();  
    $f[0];

    if (!empty($f[0])) {               
          
?> 
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <link rel="stylesheet" href="../css/star-rating.css">
    </head>
    <body>  

    <form action="up_renena.php" method="post" enctype="form-data">                                 
        <input type="hidden" name="id" id="id" value="<?php echo $f[0] ?>">
        <div>
            <span><?php echo $nom ?></span>
        </div> 
        <?php
            $cali = $f[8];
            switch($cali) {
                case 1:
                    $star = '<i class="material-icons yellow">star</i>';
                break;
                case 2:
                    $star = '<i class="material-icons yellow">star</i><i class="material-icons yellow">star</i>';
                break;
                case 3:
                    $star = '<i class="material-icons yellow">star</i><i class="material-icons yellow">star</i><i class="material-icons yellow">star</i>';
                break;
            }
        ?>
        <div>
            <select name="cal" id="cal">
                <option value="" disabled select><?php $star ?></option>
                <option value="1"><i class="material-icons yellow">star</i></option>
                <option value="2"><i class="material-icons yellow">star</i></option>
                <option value="3"><i class="material-icons yellow">star</i></option>                
            </select>
        </div>                                                      
        <div class="input-field">
            <textarea id="ent_be" name="ent_be" class="materialize-textarea" data-length="500"><?php echo $f[2] ?></textarea>                        
            <label for="ent_be">Entrevista Be Consulting</label>
        </div>                    
        <div class="input-field">
            <textarea id="reto_cli" name="reto_cli" class="materialize-textarea" data-length="500"><?php echo $f[3] ?></textarea>                        
            <label for="ent_cli">Retro Cliente</label>                    
        </div>            
        <div class="input-field">
            <textarea id="psico" name="psico" class="materialize-textarea" data-length="500"><?php echo $f[4] ?></textarea>                        
            <label for="psico">Psicometrias</label>                    
        </div> 
        <div class="input-field">
            <textarea id="soc" name="soc" class="materialize-textarea" data-length="500"><?php echo $f[5] ?></textarea>                        
            <label for="soc">Resultados socio economico</label>                        
        </div> 
        <div class="input-field">
            <textarea id="coment" name="coment" class="materialize-textarea" data-length="500"><?php echo $f[6] ?></textarea>                        
            <label for="coment">Comentarios</label>                    
        </div>                  
        <button type="submit" class="btn white-text orange darken-4">Actualizar</button>
    </form>

    <?php
        $cn->close();
        } else {
    ?>

    <form action="ins_renena.php" method="post" enctype="form-data">      
        <div class="col s12 m6">
            <span><?php echo $nom ?></span>
        </div> 
        <div class="input-field col s12 m6">            
            <select id="star-rating">
                <option value="">Select a rating</option>
                <option value="5">Excellent</option>
                <option value="4">Very Good</option>
                <option value="3">Average</option>
                <option value="2">Poor</option>
                <option value="1">Terrible</option>
            </select>
        </div>                                                      
        <div class="input-field">
            <textarea id="ent_be" name="ent_be" class="materialize-textarea" data-length="500"></textarea>                        
            <label for="ent_be">Entrevista Be Consulting</label>
        </div>                    
        <div class="input-field">
            <textarea id="reto_cli" name="reto_cli" class="materialize-textarea" data-length="500"></textarea>                        
            <label for="ent_cli">Retro Cliente</label>                    
        </div>            
        <div class="input-field">
            <textarea id="psico" name="psico" class="materialize-textarea" data-length="500"></textarea>                        
            <label for="psico">Psicometrias</label>                    
        </div> 
        <div class="input-field">
            <textarea id="soc" name="soc" class="materialize-textarea" data-length="500"></textarea>                        
            <label for="soc">Resultados socio economico</label>                        
        </div> 
        <div class="input-field">
            <textarea id="coment" name="coment" class="materialize-textarea" data-length="500"></textarea>                        
            <label for="coment">Comentarios</label>                    
        </div>                  
        <button type="submit" class="btn white-text orange darken-4">Insertar</button>
    </form>

    <script src="../js/star-rating.min.js"></script>

    <script>
        // Using vanilla javascript:
        var starrating = new StarRating( document.getElementById( 'star-rating' ));
        // OR - Using jQuery:
        $( '#star-rating' ).starrating();


        $( '#star-rating' ).starrating({
            clearable : true,
            initialText: "Click to Rate",
            onClick : null,
            showText : true,
        });

        $('#star-rating').material_select(); 
    </script>
            
    </body>
    </html>

    <?php
            $cn->close();
        }
    ?>