<?php 
    include '../extend/header.php';
    include '../conexion/conexion.php';
?>

<div class="row">    
    <div class="col s12">

        <h4 class="center">Agregar CV, Puesto y Area</h4>  

        <div class="card">            

            <div class="card-tabs orange accent-4">
                <ul class="tabs tabs-fixed-width tabs-transparent">
                    <li class="tab"><a href="#perfiles" class="active">Subir CV</a></li>            
                    <li class="tab"><a href="#puestos">Crear Puesto</a></li>
                    <li class="tab"><a href="#areas"> Crear Area</a></li>                    
                </ul>
            </div>

            <div class="card-content grey lighten-3">   

                <div id="perfiles">                    
                    <form class="form" action="ins_perfil.php" method="post" enctype="multipart/form-data">
                        <div class="input-field">
                            <i class="material-icons prefix">edit</i>                                                 
                            <input type="text" name="nombre" title="Solo letras" id="nombre" onblur="may(this.value, this.id)" pattern="[A-Z .]{1,60}" required>
                            <label for="nombre">Nombre completo</label>                                                
                        </div>                    
                        <select name="area" id="area" onchange="puestos(this.value)" required>                        
                            <option value="" disabled selected>Area</option>
                            <?php
                                $sel = $cn->query("SELECT * FROM areas ORDER BY area"); 
                                while($f = $sel->fetch_assoc()) {
                                    echo '<option value="'.$f['id_area'].'">'.$f['area'].'</option>';
                                } 
                            ?>                        
                        </select>                                                                 
                        <select name="puesto" id="puesto" required>
                            <option value="" disabled selected>Puesto</option>                        
                        </select>
                        <select name="exp" required>                        
                            <option value="" disabled selected>Nivel</option>
                            <?php 
                                $sel = $cn->query("SELECT * FROM niveles ORDER BY nivel");
                                while($f = $sel->fetch_assoc()) { 
                                    echo '<option value="'.$f['id_nivel'].'">'.$f['nivel'].'</option>';
                                }
                            ?>                         
                        </select>          
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
                    </form>                             
                </div>

                <div id="puestos">                
                    <form class="form" action="ins_puesto.php" method="post" enctype="form-data">                                                                     
                        <select name="id_area" id="id_area" required>                        
                            <option value="" disabled selected>Area</option>
                            <?php 
                                $sel = $cn->query("SELECT * FROM areas ORDER BY area");
                                while($f = $sel->fetch_assoc()) { 
                                    echo '<option value="'.$f['id_area'].'">'.$f['area'].'</option>';
                                }                                
                                $cn->close();
                            ?>                        
                        </select>                                      
                        <div class="input-field">
                            <i class="material-icons prefix">event_seat</i>
                            <input type="text" name="npuesto" title="Solo letras" id="npuesto" onblur="may(this.value, this.id)" pattern="[A-Z/ ]{3,30}" required>                        
                            <label for="npuesto">Nombre del Puesto</label>                                                               
                        </div>                                                
                        <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons right" >send</i> </button>                                           
                    </form>                             
                </div>

                <div id="areas">                
                    <form class="form" action="ins_area.php" method="post" enctype="form-data">
                        <div class="input-field">
                            <i class="material-icons prefix">business</i>
                            <input type="text" name="narea" title="Solo utilzar de la A-Z y / sin espacios" id="narea" onblur="may(this.value, this.id)" pattern="[A-Z/ ]{3,30}" required>                        
                            <label for="narea">Nombre del Area</label>                                                               
                        </div>                                                
                        <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons right">send</i> </button>                                           
                    </form>                             
                </div>

            </div> 

        </div> 

    </div>            
</div>

<?php include '../extend/scripts.php'; ?>
<script src="../js/select.js" type="text/javascript"></script>

</body>
</html>