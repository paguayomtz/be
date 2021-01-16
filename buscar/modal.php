 <!-- Modal Structure -->
 <div id="modal1" class="modal">
    <div class="modal-content">
        <h4>Clasificar CV</h4>
        <form action="up_cv.php" method="get" enctype="form-data">                                 
            <input type="hidden" name="id" value="<?php echo $f[0] ?>">
            <input type="hidden" name="cv" value="<?php echo $f[5] ?>">                                
            <select id="area" name="area"   onchange="puestos(this.value)">
            <select id="area" name="area" class=""  onchange="puestos(this.value)">
                <option value="" disabled selected>Area</option>
                <?php
                    $sele = $cn->query("SELECT * FROM areas ORDER BY area"); 
                    while($fa = $sele->fetch_row()) { 
                        echo '<option value="'.$fa[0].'">'.$fa[1].'</option>';
                    } ?>
                
            </select>          
            <select id="puesto" name="puesto">
                <option value="" disabled selected>Puesto</option>                        
            </select>        
            <select id="exp" name="exp">
                <option value="" disabled selected>Nivel</option>
                <?php
                    $sele = $cn->query("SELECT * FROM niveles ORDER BY nivel"); 
                    while($fa = $sele->fetch_row()) {
                        echo '<option value="'.$fa[0].'">'.$fa[1].'</option>';
                    } 
                ?>
            </select>        
            <button type="submit" class="btn white-text orange darken-4">Save </button>
        </form>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">EXIT</a>
    </div>
</div>
