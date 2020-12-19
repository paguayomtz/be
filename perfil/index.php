<?php include '../extend/header.php'; ?>

<div class="row">    
  <div class="col s12">
    <h4 class="header center">Actualizar foto de perfil</h4>
    <div class="card horizontal grey lighten-3">
      <div class="card-image">
        <img src="../usuarios/<?php echo $_SESSION['foto']?>" width="200" height="200">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <form action="up_foto.php" method="post" enctype="multipart/form-data">
            <div class="file-field input-field"> 
              <div class="btn grey darken-4">
                <span>Foto</span> <i class="material-icons">attach_file</i>
                <input type="file" name="foto">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="text">
              </div>                                                                    
            </div>
            <button type="submit" class="btn white-text orange darken-4">Actuazlizar <i class="material-icons" >send</i> </button>
          </form>
        </div>        
      </div>
    </div>
  </div>            
</div>

<?php include '../extend/scripts.php'; ?>

</body>
</html>