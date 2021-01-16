<?php    
    include '../extend/header.php'; 
    include '../conexion/conexion.php';

    $ide = $cn->real_escape_string($_GET['ide']);
    $nom = $cn->real_escape_string($_GET['nom']);
?>

<div class="row">    
    <div class="col s12">
        <h4 class="center">Reseña</h4>  
        <div class="card orange accent-4"> 
            <div class="card-content grey lighten-3">

            <form action="../resena/ins_renena.php" method="post" enctype="form-data">      
                <div>
                    <span><?php echo $nom ?></span>
                </div> 
                <div class="input-field">            
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

    $('#star-rating').material_select(); 
</script>




