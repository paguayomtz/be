<?php    
    include '../extend/header.php'; 
    include '../conexion/conexion.php';     
?>

<div class="row">
    <div class="col s12">
        <h4 class="center">Busqueda Avanzada</h4>
        <form style="margin-top:20px;" action="index.php" method="get" enctype="form-data">
            <div class="col s12 m6 l4"> 
                <select id="area" name="area" onchange="puestos(this.value)">
                    <option value="" disabled selected>Area</option>
                    <?php
                        $sel = $cn->query("SELECT * FROM areas ORDER BY area"); 
                        while($f = $sel->fetch_row()) {
                            echo '<option value="'.$f[0].'">'.$f[1].'</option>';
                        } 
                    ?>
                </select>
            </div>
            <div class="col s12 m6 l4">
                <select name="puesto" id="puesto">
                    <option value="" disabled selected>Puesto</option>                        
                </select>
            </div>
            <div class="col s12 m6 l4">
                <select id="nivel" name="nivel">
                    <option value="" disabled selected>Nivel</option>
                    <?php
                            $sel = $cn->query("SELECT * FROM niveles ORDER BY nivel"); 
                            while($f = $sel->fetch_row()) {
                                echo '<option value="'.$f[0].'">'.$f[1].'</option>';
                            } 
                    ?>
                </select>
            </div>
            <div class="col s12">
                <button type="submit" class="btn white-text orange darken-4">Buscar<i class="material-icons right" >search</i> </button>
            </div>
        </form> 
    </div>
</div>

<?php $cn->close(); ?>

<?php include '../extend/scripts.php'; ?>
<script src="../js/select.js" type="text/javascript"></script>

</body>
</html>