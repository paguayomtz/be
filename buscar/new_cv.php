<?php    
    include '../extend/header.php'; 
    include '../conexion/conexion.php';    
    
    $sel = $cn->query("SELECT id_perfil, nombre, ide_area, ide_puesto, ide_nivel, cv FROM perfiles 
                        WHERE ide_area = 0 OR ide_puesto = 0 OR ide_nivel = 0 ORDER BY nombre");
    $row = mysqli_num_rows($sel);
    $pag = 1;
?>

<div class="row" style="margin-top: 10px;">
    <div class="col s12">
        <nav class="orange accent-4">
            <div class="nav-wrapper">
                <div class="input-field">
                    <input type="search" id="buscar" name="buscar" autocomplete="off">
                    <label for="buscar"> <i class="material-icons">search</i> </label>
                    <i class="material-icons">close</i>
                </div>
            </div>
        </nav>
    </div>    
</div>

<div class="row">
    <div class="col s12">    
        <table id="curris" class="">
            <thead>
                <tr id="titulos" class="">
                    <!--<th class="" style="width: 5%">N°</th>-->
                    <th class="" style="width: 70%">Nombre del Candidado</th>
                    <th class=""style="width: 5%">View</th>
                    <th class="" style="width: 5%">Edit</th>
                    <th class="" style="width: 5%">Delet</th>                                                          
                </tr>                                                               
            </thead>       
            <tbody id="cuerpo">
                <?php while($f = $sel->fetch_row()) { ?>
                <tr id="pag<?php echo $pag ?>" class="">                     
                    <!--<td class=""><span class="yellow text-white" style="padding: 5px 10px; border-radius:10%;"><?php //echo $pag ?></span></td>-->    
                    <td class=""> 
                        <span class="grey darken-1 white-text valign-wrapper" style="padding: 5px 10px; border-radius: 50px;"> <?php echo $f[1] ?> </span> 
                    </td>       
                    <td class="">
                        <a class="btn-floating" href="<?php echo '../'.$f[5] ?>" target="_blank"><i class="material-icons">archive</i></a>
                    </td>  
                    <td class="">
                        <a class="waves-effect waves-light btn-floating modal-trigger" href="#modal1" onclick="porfavor(<?php echo $f[0] ?>,'<?php echo $f[5] ?>')"><i class="material-icons green">edit</i></a>
                    </td>                     
                    <td class="">
                        <a href="#" class="btn-floating" onClick="swal({title: '¿Deseas eliminar al usuario?', text: 'No podras recuperarlo despues', type: 'warning', showCancelButton: true, confirmButtonColor: '#3085d6', cancelButtonColor: '#d33', confirmButtonText: 'Eliminar'}).then((result) => {if (result.value) { location.href='eliminar_cvn.php?id=<?php echo $f[0] ?>&doc=<?php echo $f[5] ?>'; } }) ">  
                            <i class="material-icons red">delete</i>
                        </a>
                    </td> 
                </tr>
                <?php $pag++; } ?>
            </tbody>
        </table>
        <?php $num = 1; $si = 'active'; $no = 'waves-effect'; ?> 
        <ul class="pagination center">
            <li class="disabled"><a href="#"><i class="material-icons">chevron_left</i></a></li>
            <?php 
                $num = $pag / 10;
                $num += 1;
                for($n=1; $n<$num; $n++) {
                    echo $li = '<li id="numero'.$n.'" class="waves-effect"><a href="#!" onclick="paginar('.$n.','.$num.')">'.$n.'</a></li>';
                }
            ?>
            <li class="disabled"><a href="#!" ><i class="material-icons">chevron_right</i></a></li>
        </ul>                     
    </div>            
</div>

 <!-- Modal Structure -->
 <div id="modal1" class="modal">
    <div class="modal-content">
        <h4>Clasificar CV</h4>
        <form action="up_cv.php" method="get" enctype="form-data">                                 
            <input type="hidden" name="id" id="id">
            <input type="hidden" name="cv" id="cv">                                
            <select id="area" name="area" onchange="puestos(this.value)">            
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
            <button type="submit" class="btn white-text orange darken-4">Clasificar</button>
        </form>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">SALIR</a>
    </div>
</div>

<?php $cn->close(); include '../extend/scripts.php'; ?>

<script>

function porfavor(id,cv) {
    //alert(id + cv);    
    $('#id').val(id);
    $('#cv').val(cv);
    //document.getElementsByName('id').value = di;
    //document.getElementsByName("cv").value = cv;
}

</script>

</body>
</html>