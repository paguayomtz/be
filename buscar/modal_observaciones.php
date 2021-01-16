<!-- Modal Structure -->
<div id="modal-observaciones" class="modal">
    <div class="modal-content row">
        <div class="col s12">
            <div class="row">
                <div class="modal-content col s12">
                    <h4>Obserbaciones</h4>
                </div>
                <form id="frm-observaciones" action="add_ob.php" method="post">
                    <input id="inp-mod-obs-id" type="hidden" name="id">
                    <div class="input-field col s12">
                        <textarea id="txt-obsevaciones" name="observaciones" class="materialize-textarea"></textarea>
                    </div>
                    <button type="submit" class="btn white-text orange darken-4"><i class="material-icons right">send</i>Guardar</button>
                </form>
                <div class="modal-footer">
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Salir</a>
                </div>
            </div>
        </div>
    </div>
</div>