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
                    <!--<th>N°</th>-->
                    <th>Nombre</th>                    
                    <th>Puesto</th>
                    <th>Nivel</th>                 
                    <th>CV</th>
                    <th>Reseña</th>
                    <th>Borrar</th>
                    <!--<th>Fecha</th>-->
                    <!--<th>Subio</th>-->
                </tr>                                                               
            </thead>       
            <tbody id="cuerpo">
                <?php while($f = $sel->fetch_row()) { ?>
                <tr id="pag<?php echo $pag ?>" class="nover">
                    <?php
                        $ide = $f[0]; 
                        $sele = $cn->query("SELECT etapa FROM procesos WHERE ide_perfil = '$ide'"); 
                        $etapa = mysqli_fetch_row($sele); 
                        if($etapa[0] >= 1 && $etapa[0] < 6) {
                            $i = '<i class="material-icons grey-text text-darken-5">build</i>'; } 
                        elseif($etapa[0] == 6) {
                            $i = '<i class="material-icons yellow-text">star</i>';
                        } else {
                            $i= '';
                        }
                    ?> 
                    <td><?php echo $pag ?></td>    
                    <td> <a class="blue white-text" style="padding: 5px 10px; border-radius: 50px;" href="../procesos/proceso.php?id=<?php echo $f[0] ?>&nom=<?php echo $f[1] ?>"> <?php echo $f[1] ?> </a> </td> 
                    <td> <?php echo $i ?> </td>                                            
                    <td> <?php echo $f[2] ?> </td>
                    <td> <?php echo $f[3] ?> </td>
                    <td> <a href="<?php echo '../perfiles/'.$f[4] ?>" target="_blank"> <i class="material-icons">archive</i> </a> </td> 
                    <td> <?php echo $f[5] ?> </td> 
                    <td> <?php echo $f[6] ?> </td>    
                    <td>                                                                                                  
                        <a href="#flu<?php echo $f[0]-1; ?>" id="fl<?php echo $f[0]; ?>" onClick="desplegar(<?php echo $f[0] ?>)"> <i class="material-icons indigo-text text-dark-4">arrow_drop_down</i> </a>
                        <a href="#fl<?php echo $f[0]-1; ?>" id="flu<?php echo $f[0]; ?>" onClick="retraer(<?php echo $f[0] ?>)" class="ocultar"> <i class="material-icons indigo-text text-dark-4">arrow_drop_up</i> </a>        
                    </td>                    
                    <td>                            
                        <?php if($f[7] == 1){ ?>
                        <a href="estatus.php?id=<?php echo $f[0] ?>&st=<?php echo $f[7] ?>"> <i class="material-icons orange-text text-accent-4">event_busy</i></a>
                        <?php } else { ?>            
                        <a href="estatus.php?id=<?php echo $f[0] ?>&st=<?php echo $f[7] ?>"> <i class="material-icons green-text text-accent-4">event_available</i></a>
                        <?php } ?>                           
                    </td>
                    <td> <a href="#" class="btn-float" onClick="swal({title: '¿Deseas eliminar al usuario?', text: 'No podras recuperarlo despues', type: 'warning', showCancelButton: true, confirmButtonColor: '#3085d6', cancelButtonColor: '#d33', confirmButtonText: 'Eliminar'}).then((result) => {if (result.value) { location.href='eliminar_cv.php?id=<?php echo $f[0] ?>&doc=<?php echo $f[4] ?>'; } }) ">   
                                                                
                        <i class="material-icons grey lighten-4 grey-text">delete</i>
                        </a>
                    </td>                       
                </tr>
                <tr class="ocultar"  id="ob<?php echo $f[0]; ?>">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <form class="form" action="add_ob.php" method="post" enctype="form-data">
                            <input type="hidden" name="id" value="<?php echo $f[0] ?>">                                
                            <div class="input-field">                            
                            <textarea id="observaciones" name="observaciones" class="materialize-textarea white"><?php echo $f[8] ?></textarea>                     
                            <label for="observaciones">Observaciones</label>
                            <button type="submit" class="btn white-text orange darken-4">Guardar <i class="material-icons" >send</i> </button>                                                      
                        </form>
                    </td>
                </tr>
                <?php $pag++; } $cn->close();?>
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
            <!--<li class="active"><a href="#" onclick="paginar(1)">1</a></li>
            <li class="waves-effect"><a href="#!" onclick="paginar(2)">2</a></li>
            <li class="waves-effect"><a href="#!" onclick="paginar(3)">3</a></li>
            <li class="waves-effect"><a href="#!" onclick="paginar(4)">4</a></li>
            <li class="waves-effect"><a href="#!" onclick="paginar(5)">5</a></li>-->
            <li class="disabled"><a href="#!" ><i class="material-icons">chevron_right</i></a></li>
        </ul>                     
    </div>            
</div>

<?php include '../extend/scripts.php'; ?>

</body>
</html>