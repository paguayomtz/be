<?php    
    include '../extend/header.php'; 
    include '../conexion/conexion.php';

    $area = $cn->real_escape_string(htmlentities(isset($_GET['area']) ? $_GET['area'] : ''));
    $puesto = $cn->real_escape_string(htmlentities(isset($_GET['puesto']) ? $_GET['puesto'] : ''));
    $nivel = $cn->real_escape_string(htmlentities(isset($_GET['nivel']) ? $_GET['nivel'] : ''));
    //$area = $cn->real_escape_string(htmlentities($_GET['a']));

    if(empty($area) && empty($puesto) && empty($nivel)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            ORDER BY per.id_perfil");
                            $pb = 'Muestra todo (Todos vacios)';
    } 
    elseif(empty($puesto) && empty($nivel)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            WHERE per.ide_area = '$area' ORDER BY per.id_perfil");
                            $pb = 'Filtra por Area (Puesto y Nivel vacio)';
    }
    elseif(empty($area) && empty($puesto)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            WHERE per.ide_nivel = '$nivel' ORDER BY per.id_perfil");
                            $pb = 'Filtra por Nivel (Area y Puesto vacio)';
    }                        
    elseif(empty($puesto)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            WHERE per.ide_area = '$area' AND per.ide_nivel = '$nivel' ORDER BY per.id_perfil");
                            $pb = 'Filtra por Area y Nivel (Puesto vacio)';
    }     
    elseif(empty($nivel)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            WHERE per.ide_area = '$area' AND per.ide_puesto = '$puesto' ORDER BY per.id_perfil");
                            $pb = 'Filtra por Area y Nivel (Puesto vacio)';
    }
    elseif(!empty($area) && !empty($puesto) && !empty($nivel)) {
        $sel = $cn->query("SELECT per.id_perfil, per.nombre, pue.puesto, niv.nivel, per.cv, per.fecha, per.subio, per.estatus, per.observaciones 
                            FROM perfiles per INNER JOIN puestos pue ON per.ide_puesto = pue.id_puesto INNER JOIN niveles niv ON per.ide_nivel = niv.id_nivel
                            WHERE per.ide_area = '$area' AND per.ide_puesto = '$puesto' AND per.ide_nivel = '$nivel' ORDER BY per.id_perfil");
                            $pb = 'Filtra por Todo (ninguno vacio)';
    }          
    
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
        <h6>Curriculums (<?php echo $row ?>) <?php //echo $pb ?></h6>
        <table id="curris" class="bordered">
            <thead>
                <tr id="titulos">
                    <th class="" style="width: 3%">N°</th>                  
                    <th class="center" style="width: 45%">Nombre</th>                    
                    <th class="center" style="width: 25%">Puesto</th>
                    <th style="width: 15%">Nivel</th>                 
                    <th style="width: 5%">CV</th>
                    <th style="width: 5%">Reseña</th>
                    <th style="width: 5%">Borrar</th>                  
                </tr>                                                               
            </thead>       
            <tbody id="cuerpo">
                <?php while($f = $sel->fetch_row()) { ?>
                <tr id="pag<?php echo $pag ?>" class="nover">
                    <td><?php echo $pag ?></td>                    
                    <td> <span class="grey darken-1 white-text valign-wrapper" style="padding: 5px 10px; border-radius: 50px;"> <?php echo $f[1] ?> </span> </td>                                                               
                    <td class="center"> <?php echo $f[2] ?> </td>
                    <td> <?php echo $f[3] ?> </td>
                    <td> <a class="btn-floating" href="<?php echo '../perfiles/'.$f[4] ?>" target="_blank"> <i class="material-icons">archive</i> </a> </td>      
                    <td class="center">
                        <a class="waves-effect waves-light btn-floating modal-trigger" href="#modal1" onclick="porfavor(<?php echo $f[0] ?>,'<?php echo $f[1] ?>')"><i class="material-icons green">assignment</i></a>
                    </td>
                    <td> 
                        <a href="#" class="btn-floating" onClick="swal({title: '¿Deseas eliminar al usuario?', text: 'No podras recuperarlo despues', type: 'warning', showCancelButton: true, confirmButtonColor: '#3085d6', cancelButtonColor: '#d33', confirmButtonText: 'Eliminar'}).then((result) => {if (result.value) { location.href='eliminar_cv.php?id=<?php echo $f[0] ?>&doc=<?php echo $f[4] ?>'; } }) ">                                                                
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
                $num = $pag / 50;
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
    <div id="cont-resena" class="modal-content">
        <div id="tabla" class="row">
        


        </div>               
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">SALIR</a>
    </div>
</div>

<?php $cn->close(); ?>
<?php include '../extend/scripts.php'; ?>

<script>

    function porfavor(id,nombre) {
        $.ajax({
            type: "POST",
            url: 'ajax_resena.php',
            data: {'id': id, 'nombre': nombre},
            success: function(resp) {
                $('#tabla').html(resp);
                //alert(desc);
                //$('#cal').material_select();                                 
            }
        });
    }

</script>

</body>
</html>