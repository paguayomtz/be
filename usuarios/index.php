<?php 
include '../extend/header.php'; 
include '../extend/permiso.php';
include '../conexion/conexion.php';
?>

<div class="row">
    <div class="col s12">
        <div class="card">
            <div class="card-content grey lighten-3">
                <span class="card-title">Alta de usuarios</span>              
                <form class="form" action="ins_usuario.php" method="post" enctype="multipart/form-data">
                    <div class="input-field">                                                 
                        <input type="text" name="usuario" id="usuario" required>
                        <label  for="usuario">Usuario</label>                                                  
                    </div>                                        
                    <div class="validacion"></div>
                    <div class="input-field"> 
                        <label for="pass">Contraseña</label>                           
                        <input type="password" name="pass" title="Mayusculas, minusculas y numeros" pattern="[A-Za-z0-9]{8,15}" id="pass" required>                                               
                    </div>
                    <div class="input-field"> 
                        <label for="pass2">Comparar Contraseña</label>                           
                        <input type="password" title="Mayusculas, minusculas y numeros" pattern="[A-Za-z0-9\.]{8,15}" id="pass2">                                               
                    </div>
                    <select name="nivel" required>
                        <option value="" disabled selected>Nivel Usuario</option>
                        <option value="ADMINISTRADOR">ADMINISTRADOR</option>
                        <option value="RECLUTADOR">RECLUTADOR</option>
                    </select>
                    <div class="input-field"> 
                        <label for="nombre">Nombre completo</label>                           
                        <input type="text" name="nombre" title="Solo letras" id="nombre" onblur="may(this.value, this.id)" required>                                               
                    </div>
                    <div class="input-field"> 
                        <label for="email">Correo electrónico</label>                           
                        <input type="text" name="email" title="correo@dominio" id="email" required>                                               
                    </div>
                    <div class="file-field input-field"> 
                        <div class="btn grey darken-4">
                            <span>Foto</span> <i class="material-icons">attach_file</i>
                            <input type="file" name="foto">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>                                                                    
                    </div>
                                    
                    <button type="submit" class="btn white-text orange darken-4" id="btn_guardar">Guardar <i class="material-icons" >send</i> </button> 
                                          
                </form>                
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col s12">
        <nav class="orange accent-4">
            <div class="nav-wrapper">
                <div class="input-field">
                    <input type="search" id="buscar" autocomplete="off">
                    <label for="buscar"> <i class="material-icons">search</i> </label>
                    <i class="material-icons">close</i>
                </div>
            </div>
        </nav>
    </div>
</div>

<?php 
$sel = $cn->query("SELECT * FROM usuarios");
$row = mysqli_num_rows($sel);
?>

<div class="row">
    <div class="col s12">
        <div class="card">
            <div class="card-content grey lighten-3">
                <span class="card-title">Usuarios (<?php echo $row ?>)</span>
                <table class="">
                    <thead>
                        <th>Usuario</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Nivel</th>
                        <th></th>
                        <th>Foto</th>
                        <th>Bloqueo</th>
                        <th>Eliminar</th>                        
                    </thead>
                    <?php while($f = $sel->fetch_assoc()) { ?>
                    <tr>
                        <td> <?php echo $f['usuario'] ?> </td>
                        <td> <?php echo $f['nombre'] ?> </td>
                        <td> <?php echo $f['correo'] ?> </td>
                        <td>
                            <form action="up_nivel.php" method="post">
                                <input type="hidden" name="id" value="<?php echo $f['id_usuario'] ?>"> 
                                <select name="nivel" required>
                                    <option value="<?php echo $f['nivel_usuario'] ?>"><?php echo $f['nivel_usuario'] ?></option>
                                    <option value="<?php include 'cambiar_nivel.php' ?>"> <?php include 'cambiar_nivel.php' ?> </option>                                                                                                                                                             
                                </select>                                                       
                        </td>                             
                        <td> 
                            <button type="submit" class="btn-floating "><i class="material-icons light-blue" >repeat</i> </button> 
                            </form>
                        </td>
                        <td> <img src="<?php echo $f['foto'] ?>" width="50" class="circle"> </td>
                        <td class="center">                            
                            <?php if($f['bloqueo'] == 0): ?>
                            <a href="bloqueo_manual.php?us=<?php echo $f['id_usuario'] ?>&bl=<?php echo $f['bloqueo'] ?>"> <i class="material-icons green-text text-accent-4">lock_open</i></a>
                            <?php else: ?>            
                            <a href="bloqueo_manual.php?us=<?php echo $f['id_usuario'] ?>&bl=<?php echo $f['bloqueo'] ?>"> <i class="material-icons red-text text-accent-4">lock</i></a>
                            <?php endif; ?>                           
                        </td>
                        <td> 
                            <a href="#" class="btn-float" onclick="swal({title: '¿Deseas eliminar al usuario?', text: 'No podras recuperarlo despues', type: 'warning', showCancelButton: true, confirmButtonColor: '#3085d6', cancelButtonColor: '#d33', confirmButtonText: 'Eliminar'}).then((result) => {if (result.value) { location.href='eliminar_usuario.php?id=<?php echo $f['id_usuario'] ?>'; } }) ">                                           
                                <i class="material-icons grey lighten-4 grey-text " >delete</i>
                            </a>
                        </td>                       
                    </tr>
                    <?php } $cn->close();?>
                </table>
            </div>
        </div>
    </div>
</div>

<?php include '../extend/scripts.php'; ?>
<script src="../js/validacion.js"></script>

</body>
</html>

