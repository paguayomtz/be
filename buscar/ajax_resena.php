<?php

    include '../conexion/conexion.php';   

    $ide = $_POST["id"];     
    $nom = $_POST["nombre"]; 
    
    $sel = $cn->query("SELECT * FROM resenas WHERE ide_perfil = '$ide'");
    $f = $sel->fetch_row();  
    $f[0];

    if (empty($f[0])) { 
        echo '
            <br><br><span class"center"><h5>'.$nom.'</h5></span><br><span class"center"><h6>No tiene reseña</h6></span>
            <br><br>
            <div>
                <a href="../resena/index.php?ide='.$ide.'&nom='.$nom.'" class="btn orange darken-4 valign-wrapper"> Agregar Reseña </a>
            </div> ' ;
    } else {  
        //echo 'Trabajando '.$ide.' '. $nom;
        $cali = $f[7];
        switch($cali) {
            case 0:
                $star = '<i class="small material-icons yellow-text">star_border</i><i class="small material-icons yellow-text">star_border</i><i class="small material-icons yellow-text">star_border</i>';
            break;
            case 1:
                $star = '<i class="small material-icons yellow-text">star</i><i class="small material-icons yellow-text">star_border</i><i class="small material-icons yellow-text">star_border</i>';
            break;
            case 2:
                $star = '<i class="small material-icons yellow-text">star</i><i class="small material-icons yellow-text">star</i><i class="small material-icons yellow-text">star_border</i>';
            break;
            case 3:
                $star = '<i class="small material-icons yellow-text">star</i><i class="small material-icons yellow-text">star</i><i class="small material-icons yellow-text">star</i>';
            break;
        }
    
?> 
        <div class="row">
            <div class="col s10">
                <span><h4><?php echo $nom ?></h4></span>
            </div>
            <div class="col s2">
                <span><h4><?php echo $star ?></h4></span>
            </div>
            <div class="col s12">
                <div class="card-panel teal">
                    <span><strong>Entrevista Be Consulting</strong></span>
                    <p class="white-text"><?php echo $f[2] ?></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <div class="card-panel teal">
                    <span><strong>Retro Cliente</strong></span>
                    <p class="white-text"><?php echo $f[3] ?></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <div class="card-panel teal">
                    <span><strong>Psicometrias</strong></span>
                    <p class="white-text"><?php echo $f[4] ?></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <div class="card-panel teal">
                    <span><strong>Socioeconomico</strong></span>
                    <p class="white-text"><?php echo $f[5] ?></p>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col s12">
                <div class="card-panel teal">
                    <span><strong>Comentarios</strong></span>
                    <p class="white-text"><?php echo $f[6] ?></p>
                </div>
            </div>
        </div>

        <div class="right">
            <span >Actualizo <strong> <?php echo $f[8] ?> </strong> el <strong> <?php echo $f[9] ?> </strong> </span>
        </div>

        <div class="col s12">
            <a href="../resena/resena.php?ide=<?php echo $ide ?>&nom=<?php echo $nom ?>" class="btn orange darken-4 valign-wrapper"> Modificar Reseña </a>
        </div>

    <?php
    }      
    ?>

    