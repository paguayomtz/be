<?php include '../extend/header.php'; ?>

<div class="row">    
    <div class="col s12">
        <h4 class="center">Perfil</h4>     
        <div class="card">                      
            <div class="card-tabs orange accent-4">
                <ul class="tabs tabs-fixed-width tabs-transparent">
                    <li class="tab"><a href="#perfiles" class="active">Candidato</a></li>            
                    <li class="tab"><a href="#puestos">Puestos</a></li>
                    <li class="tab"><a href="#areas">Areas</a></li>                    
                </ul>
            </div>
            <div class="card-content grey lighten-3">   
                <div id="perfiles">                    
                    <form class="form" action="ins_perfil.php" method="post" enctype="multipart/form-data">
                    <div class="input-field">
                        <i class="material-icons prefix">edit</i>                                                 
                        <input type="text" name="nombre" title="Solo letras" id="nombre" onblur="may(this.value, this.id)" required>
                        <label for="nombre">Nombre completo</label>                                                
                    </div>
                    <?php 
                        $sel = $cn->query("SELECT area FROM areas ORDER BY area");                    
                    ?>
                    <select name="area" id="area" required>                        
                        <option value="" disabled selected>Area</option>
                        <?php while($f = $sel->fetch_assoc()) { ?>
                        <option value="<?php echo $f['area'] ?>"><?php echo $f['area'] ?></option>
                        <?php } ?>                        
                    </select>
                    <?php                    
                        $sel = $cn->query("SELECT puesto FROM puestos ORDER BY puesto");                                                               
                    ?>                                                 
                    <select name="puesto" id="puesto" required>                        
                        <option value="" disabled selected>Puesto</option>
                        <?php while($f = $sel->fetch_assoc()) { ?>
                        <option value="<?php echo $f['puesto'] ?>"><?php echo $f['puesto'] ?></option>
                        <?php } $cn->close();?>                        
                    </select>                    
                    <select name="exp" required>                        
                        <option value="" disabled selected>Nivel</option>
                        <option value="JUNIOR">JUNIOR</option>
                        <option value="SENIOR">SENIOR</option> 
                        <option value="DIRECTIVO">DIRECTIVO</option>                         
                    </select>          
                    <div class="file-field input-field"> 
                        <div class="btn grey darken-4">
                            <span>Adjuntar</span> <i class="material-icons">attach_file</i>
                            <input type="file" name="cv">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>                                                                    
                    </div>                                    
                    <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons" >send</i> </button>                                           
                </form>                             
            </div>
            <div id="puestos">                
                <form class="form" action="ins_puesto.php" method="post" enctype="form-data">                   
                    <div class="input-field">
                        <i class="material-icons prefix">event_seat</i>
                        <input type="text" name="npuesto" title="Solo letras" id="npuesto" onblur="may(this.value, this.id)" required>                        
                        <label for="npuesto">Nombre del Puesto</label>                                                               
                    </div>                                                
                    <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons" >send</i> </button>                                           
                </form>                             
            </div>
            <div id="areas">                
                <form class="form" action="ins_area.php" method="post" enctype="form-data">
                    <div class="input-field">
                        <i class="material-icons prefix">business</i>
                        <input type="text" name="narea" title="Solo letras" id="narea" onblur="may(this.value, this.id)" required>                        
                        <label for="narea">Nombre del Area</label>                                                               
                    </div>                                                
                    <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons" >send</i> </button>                                           
                </form>                             
            </div>                                    
        </div>    
    </div>            
</div>

<?php include '../extend/scripts.php'; ?>

</body>
</html>