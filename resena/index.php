<?php    
    include '../extend/header.php'; 
    include '../conexion/conexion.php';

    $ide = $cn->real_escape_string(htmlentities($_GET['ide']));
    $nom = $cn->real_escape_string(htmlentities($_GET['nom']));
?>

<div class="row">    
    <div class="col s12">
        <!--<h4 class="center">Reseña</h4>-->
        <div class="card orange accent-4"> 
            <div class="card-content grey lighten-3">

                <form action="ins_resena.php" method="post" enctype="form-data">      
                    <div>
                        <span class="center"><h4>Reseña de <?php echo $nom ?></span></h4>
                    </div> 
                    <input type="hidden" name="ide" value="<?php echo $ide ?>">
                    <div>           
                        <select id="star-rating" class="browser-default" name="star">
                            <option value=""></option>
                            <option value="3">Excelente</option>
                            <option value="2">Muy Bueno</option>
                            <option value="1">Bueno</option>                       
                        </select>
                    </div>                                                      
                    <div class="input-field">
                        <textarea id="ent_be" name="ent_be" class="materialize-textarea" data-length="1000"></textarea>                        
                        <label for="ent_be">Entrevista Be Consulting</label>
                    </div>                    
                    <div class="input-field">
                        <textarea id="reto_cli" name="reto_cli" class="materialize-textarea" data-length="1000"></textarea>                        
                        <label for="ent_cli">Retro Cliente</label>                    
                    </div>            
                    <div class="input-field">
                        <textarea id="psico" name="psico" class="materialize-textarea" data-length="1000"></textarea>                        
                        <label for="psico">Psicometrias</label>                    
                    </div> 
                    <div class="input-field">
                        <textarea id="soc" name="soc" class="materialize-textarea" data-length="1000"></textarea>                        
                        <label for="soc">Resultados socio economico</label>                        
                    </div> 
                    <div class="input-field">
                        <textarea id="coment" name="coment" class="materialize-textarea" data-length="1000"></textarea>                        
                        <label for="coment">Comentarios</label>                    
                    </div>                  
                    <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons right">send</i> </button>
                </form>

            </div>
        </div>      
    </div>
</div>

<?php include '../extend/scripts.php'; ?>

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

    //$('#star-rating').material_select(); 
</script>




