<?php
    include '../conexion/conexion.php';
    include '../extend/header.php'; 
    $ide = $cn->real_escape_string(htmlentities(isset($_GET['id']) ? $_GET['id'] : ''));
    $nombre = $cn->real_escape_string(htmlentities(isset($_GET['nom']) ? $_GET['nom'] : ''));
    //$ide = $cn->real_escape_string(htmlentities($_GET['id']));
    //$nombre = $cn->real_escape_string(htmlentities($_GET['nom']));

    if (empty($ide) || empty($nombre)) {
        echo '<h3 class="grey-text">No has seleccionado ningun usuario</h3>';
        exit;
    }

    $sel = $cn->query("SELECT * FROM procesos WHERE ide_perfil = '$ide'");
    
    while($f = $sel->fetch_assoc()) {
        $id = $f['id_proceso'];
        $cli = $f['ide_cliente'];
        $rec = $f['reclutador'];
        $ent_be = $f['entrevista_be'];
        $ent_cli = $f['entrevista_cliente'];
        $soc = $f['sc_economico'];
        $psi = $f['psicometrias'];        
        $btn = 'AGREGAR';
        $mov = 'up';        
        $combo = '';
    }

    if(empty($id)) {
        $cli = 'Cliente';
        $rec = 'Reclutador';
        $ent_be = '';
        $ent_cli = '';
        $soc = '';
        $psi = '';
        $btn = 'GUARDAR';
        $mov = 'ins';
        $combo = ' disabled ';
    }     
?>
<div class="row">
    <div class="col s12">
        <div class="card">
            <div class="card-content grey lighten-3">        
                <span class="card-title">Proceso de <?php echo $nombre; ?> </span>                
                <div class="divider" class="grey-text text-lighten-3"></div>      
                <form class="form" style="margin-top: 20px;" action="ins_up_proceso.php"  method="post" enctype="form-data">
                    <input type="hidden" name="ide" value="<?php echo $ide ?>">
                    <input type="hidden" name="sql" value="<?php echo $mov ?>">               
                    <div class="row">
                        <div class="input-field col s12 m6">
                            <select name="cliente">                        
                                <option value="<?php echo $cli ?>" <?php echo $combo ?> selected>
                                <?php 
                                    $selc = $cn->query("SELECT cliente FROM clientes WHERE id_cliente = '$cli'"); 
                                    $fc = $selc->fetch_row();                                    
                                    echo $fc[0];                                     
                                ?>
                                </option>
                                <?php                                 
                                $sele = $cn->query("SELECT id_cliente, cliente FROM clientes WHERE estatus = 1 AND id_cliente <> '$cli' ORDER BY cliente");                    
                                while($fe = $sele->fetch_assoc()) { 
                                    echo '<option value="'.$fe['id_cliente'].'">'.$fe['cliente'].'</option>';
                                }
                                ?>                                                 
                            </select>
                        </div>                    
                        <?php 
                            $sele = $cn->query("SELECT nombre FROM usuarios WHERE nivel_usuario = 'RECLUTADOR' AND nombre <> '$rec' ORDER BY nombre");                    
                        ?>
                        <div class="input-field col s12 m6">
                            <select name="usuario">                        
                                <option value="<?php echo $rec ?>" <?php echo $combo ?> selected> <?php echo $rec ?> </option>
                                <?php while($fe = $sele->fetch_assoc()) { ?>
                                <option value="<?php echo $fe['nombre'] ?>"><?php echo $fe['nombre'] ?></option>
                                <?php } ?> 
                            </select>
                        </div>
                    </div>  
                                                                
                    <div class="input-field">
                        <textarea id="ent_be" name="ent_be" class="materialize-textarea" data-length="500"><?php echo $ent_be ?></textarea>                        
                        <label for="ent_be">Entrevista Be Consulting</label>
                    </div>                    
                    <div class="input-field">
                        <textarea id="ent_cli" name="ent_cli" class="materialize-textarea" data-length="500"><?php echo $ent_cli ?></textarea>                        
                        <label for="ent_cli">Entrevista cliente</label>                    
                    </div>                    
                    <div class="input-field">
                        <textarea id="soc" name="soc" class="materialize-textarea" data-length="500"><?php echo $soc ?></textarea>                        
                        <label for="soc">Resultados socio economico</label>                        
                    </div>                    
                    <div class="input-field">
                        <textarea id="psico" name="psico" class="materialize-textarea" data-length="500"><?php echo $psi ?></textarea>                        
                        <label for="psico">Psicometrias</label>                    
                    </div>                         
                    <div class="switch">
                        <label>
                        Contratado Off
                        <input type="checkbox" name="ok" value="1">
                        <span class="lever"></span>
                        On
                        </label>
                    </div>
                    <div class="input-field">      
                        <button type="submit" class="btn waves-effect waves-light orange darken-4"><?php echo $btn ?></button>                                       
                    </div>
                </form>
            </div>
        </div>
    </div>
</div> 
 
<?php $cn->close(); ?>
<?php include '../extend/scripts.php'; ?>


</body>
</html>