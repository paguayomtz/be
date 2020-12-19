<?php
    include '../conexion/conexion.php';
    include '../extend/header.php';
    
    $nombre = $_SESSION['nombre'];

    if($_SESSION['nivel_usuario'] == 'ADMINISTRADOR') {
        $sel = $cn->query("SELECT pro.id_proceso, pro.ide_perfil, per.nombre, cli.cliente, pro.reclutador FROM perfiles AS per INNER JOIN procesos AS pro ON per.id_perfil = pro.ide_perfil INNER JOIN clientes AS cli ON pro.ide_cliente = cli.id_cliente");
    } else {
        $sel = $cn->query("SELECT pro.id_proceso, pro.ide_perfil, per.nombre, pro.cliente, pro.reclutador FROM perfiles AS per INNER JOIN procesos AS pro ON per.id_perfil = pro.ide_perfil INNER JOIN clientes AS cli ON pro.ide_cliente = cli.id_cliente WHERE pro.reclutador = '$nombre'");
    }       
    
    $row = mysqli_num_rows($sel);
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
        <h6>(<?php echo $row ?>) Procesos</h6>
        <table id="procesos" class="bordered">
            <thead>
                <tr id="titulos">
                    <th> <span class="grey darken-3 white-text" style="padding: 5px; border-radius: 50px; display: block;"> Candidato </span> </th>                     
                    <th class="center"><span class="grey darken-3 white-text" style="padding: 5px; border-radius: 50px; display: block;">Cliente</span></th>
                    <th class="center"><span class="grey darken-3 white-text" style="padding: 5px; border-radius: 50px; display: block;">Reclutador</span></th>
                    <th></th>
                </tr>                                                               
            </thead>       
            <tbody>
                <?php while($f = $sel->fetch_array()) { ?>
                <tr>                         
                    <td> <a class="blue white-text" style="padding: 5px 10px; border-radius: 50px;" href="../procesos/proceso.php?id=<?php echo $f[1]; ?>&nom=<?php echo $f[2]; ?>"> <?php echo $f[2]; ?> </a> </td>                                                                
                    <td class="center"> <span class="green white-text" style="padding: 5px 10px; border-radius: 50px;"> <?php echo $f[3] ?> </span> </td>
                    <td class="center"> <span class="red lighten-1 white-text" style="padding: 5px 10px; border-radius: 50px;"> <?php echo $f[4] ?> </span> </td>          
                    <td> 
                        <a href="#" class="btn-float" onClick="swal({title: '¿Deseas eliminar el proceso?', text: 'No podras recuperarlo despues', type: 'warning', showCancelButton: true, confirmButtonColor: '#3085d6', cancelButtonColor: '#d33', confirmButtonText: 'Eliminar'}).then((result) => {if (result.value) { location.href='eliminar_pro.php?id=<?php echo $f[0] ?>'; } }) ">                                                                 
                            <i class="material-icons grey lighten-4 grey-text">delete</i>
                        </a>
                    </td>                       
                </tr>                
                <?php } $cn->close();?>
            </tbody>
        </table>                              
    </div>            
</div>

<?php include '../extend/scripts.php'; ?>

</body>
</html>