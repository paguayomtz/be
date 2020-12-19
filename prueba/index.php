<?php 
    include '../extend/header.php';
    include '../conexion/conexion.php';
?>

<!--<div class="row">-->   
    <!--<div class="col s12">-->
        <h4>Perfil</h4>                              
                    <form action="ins_perfil.php" method="post" enctype="multipart/form-data">
                    <!--<div class="input-field">
                        <i class="material-icons prefix">edit</i>                                                 
                        <input type="text" name="nombre" title="Solo letras" id="nombre" onblur="may(this.value, this.id)" required>
                        <label for="nombre">Nombre completo</label>                                                
                    </div>-->
                    <?php 
                        $sel = $cn->query("SELECT id_area, area FROM areas ORDER BY area");                    
                    ?>
                    <div class="input-field">
                    <select name="area" id="area" onchange="cpuesto(this.value)" required>                        
                        <option value="" disabled selected>Area</option>
                        <?php while($f = $sel->fetch_assoc()) { ?>
                        <option value="<?php echo $f['id_area'] ?>"><?php echo $f['area'] ?></option>
                        <?php } ?>                        
                    </select>
                    </div>

                    <div class="input-field">
                    <label>Browser default Select</label>
                    <select class = "browser-default" id="spuesto"></select>
                    </div>
                    <div id="espere"></div>
                              
                    <!--<div class="file-field input-field"> 
                        <div class="btn grey darken-4">
                            <span>Adjuntar</span> <i class="material-icons">attach_file</i>
                            <input type="file" name="cv">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>                                                                    
                    </div>                                    
                    <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons" >send</i> </button>-->                                           
                </form> 


<script>
$(document).ready(function() {
    // Select - Single
    $('select:not([multiple])').material_select();
});

function cpuesto(val)
{    
    $('#espere').html("Por favor espera un momento"); 
    $.ajax({
        type: "GET",
        url: '../perfiles/ajax_puesto.php',
        data: 'area='+val,
        success: function(resp){
            alert(resp);
            $('#spuesto').html(resp);            
            $('#espere').html("");
        }
    });    
}
</script>

<?php include '../extend/scripts.php'; ?>

</body>
</html>