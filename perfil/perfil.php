<?php include '../extend/header.php'; ?>

<div class="row">    
    <div class="col s12">
        <h4 class="center">Editar Perfil</h4>    
        <div class="card orange accent-4">            
            <div class="card-tabs">
                <ul class="tabs tabs-fixed-width tabs-transparent">
                    <li class="tab"><a href="#datos" class="active">Datos</a></li>            
                    <li class="tab"><a href="#password">Contraseña</a></li>
                </ul>
            </div>
            <div class="card-content grey lighten-3">
            <div id="datos">
                <form class="form" action="up_perfil.php" method="post">             
                    <div class="input-field"> 
                        <label for="nombre">Nombre completo</label>                           
                        <input type="text" name="nombre" title="Solo letras" id="nombre" value="<?php echo $_SESSION['nombre']; ?>" required>                                               
                    </div>
                    <div class="input-field"> 
                        <label for="email">Correo electrónico</label>                           
                        <input type="text" name="email" title="correo@dominio" id="email" value="<?php echo $_SESSION['correo']; ?>" required>                                               
                    </div>                            
                    <button type="submit" class="btn white-text grey darken-4"> Editar <i class="material-icons" >send</i> </button>                                           
                </form>               
            </div>
            <div id="password">
                <form class="form" action="up_pass.php" method="post">          
                    <div class="input-field"> 
                        <label for="pass">Contraseña</label>                           
                        <input type="password" name="pass" title="Mayusculas, minusculas y numeros" pattern="[A-Za-z0-9]{8,15}" id="pass" required>                                               
                    </div>
                    <div class="input-field"> 
                        <label for="pass2">Comparar Contraseña</label>                           
                        <input type="password" title="Mayusculas, minusculas y numeros" pattern="[A-Za-z0-9\.]{8,15}" id="pass2">                                               
                    </div>                          
                    <button type="submit" class="btn white-text grey darken-4" id="btn_guardar"> Editar <i class="material-icons" >send</i> </button>                                          
                </form>
            </div>        
        </div>    
    </div>            
</div>

<?php include '../extend/scripts.php'; ?>
<script src="../js/validacion.js"></script>

</body>
</html>