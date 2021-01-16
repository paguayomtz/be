<?php
require_once '../extend/header.php';
include '../conexion/conexion.php';
?>

<div class="row">
    <div class="col s12">
        <h4 class="center">Clientes</h4>
        <div class="card">
            <div class="card-tabs orange accent-4">
                <ul class="tabs tabs-fixed-width tabs-transparent">
                    <li class="tab"><a href="#listado" class="active">Listado</a></li>
                    <li class="tab"><a href="#agregar">Agregar</a></li>
                </ul>
            </div>
            <div class="card-content grey lighten-3">
                <div id="listado">
                    <?php
                    $sel = $cn->query("SELECT * FROM clientes");
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
                            <h6>Clientes (<?php echo $row ?>)</h6>
                            <table id="curris" class="bordered">
                                <thead>
                                    <tr id="titulos">
                                        <th>Cliente</th>
                                        <th>Contacto</th>
                                        <th>Teléfono</th>
                                        <th>Email</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while ($f = $sel->fetch_assoc()) { ?>
                                        <tr>
                                            <td>
                                                <a class="blue white-text apuntador" style="padding: 5px 10px; border-radius: 50px;" id="cliente<?= $f['id_cliente'] ?>" onClick="editar(<?= $f['id_cliente'] ?>)"> <?= $f['cliente'] ?> </a>
                                                <a class="ocultar grey white-text apuntador" style="padding: 5px 10px; border-radius: 50px;" id="cli<?= $f['id_cliente'] ?>" onClick="guardar(<?= $f['id_cliente'] ?>)"> <?= $f['cliente'] ?> </a>
                                            </td>
                                            <td> <?php echo $f['contacto'] ?> </td>
                                            <td> <?php echo $f['telefono'] ?> </td>
                                            <td> <?php echo $f['email'] ?> </td>
                                            <td>
                                                <?php if ($f['estatus'] == 1) { ?>
                                                    <a href="estatus.php?id=<?php echo $f['id_cliente'] ?>&st=<?php echo $f['estatus'] ?>"> <i class="material-icons green-text text-accent-4">check</i></a>
                                                <?php } else { ?>
                                                    <a href="estatus.php?id=<?php echo $f['id_cliente'] ?>&st=<?php echo $f['estatus'] ?>"> <i class="material-icons red-text text-accent-4">block</i></a>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <tr class="ocultar" id="frm<?php echo $f['id_cliente']; ?>">
                                            <form class="form" action="up_cliente.php" method="post" enctype="form-data" autocomplete="off">
                                                <input type="hidden" name="id" value="<?php echo $f['id_cliente'] ?>">
                                                <td>
                                                    <div class="input-field">
                                                        <input type="text" name="cliente" title="Campo faltante" id="cliente" onblur="may(this.value, this.id)">
                                                        <label for="cliente">Cliente</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="input-field">
                                                        <input type="text" name="contacto" title="Campo faltante" id="contacto" onblur="may(this.value, this.id)">
                                                        <label for="contacto">Contacto</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="input-field">
                                                        <input type="text" name="tel" title="Campo faltante" id="tel">
                                                        <label for="tel">Teléfono</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="input-field">
                                                        <input type="text" name="mail" title="Campo faltante" id="mail">
                                                        <label for="mail">Email</label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button type="submit" class="btn-floating waves-effect waves-light white-text orange darken-4"><i class="material-icons">save</i> </button>
                                                </td>
                                            </form>
                                        </tr>
                                    <?php }
                                    $cn->close(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="agregar">
                    <form class="form" action="ins_cliente.php" method="post" enctype="multipart/form-data" autocomplete="off">
                        <div class="input-field">
                            <i class="material-icons prefix">business</i>
                            <input id="frm-cliente" type="text" name="cliente" title="Campo faltante" onblur="may(this.value, this.id)" required>
                            <label for="frm-cliente">Cliente</label>
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="frm-contacto" type="text" name="contacto" title="Campo faltante" onblur="may(this.value, this.id)" required>
                            <label for="frm-contacto">Contacto</label>
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">call_end</i>
                            <input id="frm-tel" type="text" name="tel" title="Campo faltante" required>
                            <label for="frm-tel">Teléfono</label>
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">email</i>
                            <input id="frm-mail" type="text" name="mail" title="Campo faltante" required>
                            <label for="frm-mail">Email</label>
                        </div>
                        <button type="submit" class="btn white-text orange darken-4">Guardar<i class="material-icons right">send</i> </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include '../extend/scripts.php'; ?>
<script src="../js/clientes.js" type="text/javascript"></script>

</body>

</html>