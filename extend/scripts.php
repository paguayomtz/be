</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script src="../js/sweetalert2.all.js"></script>
<script src="../js/buscador.js"></script>
<script src="../js/pagination.js"></script>
<script src="../js/select.js"></script>
<script src="../js/star-rating.min.js"></script>

<script>
    M.AutoInit();
    $('.sidenav').sidenav();
    $('select').material_select();
    $('.modal').modal();

    function may(obj, id) {
        obj = obj.toUpperCase();
        document.getElementById(id).value = obj;
    }

    function min(obj, id) {
        obj = obj.toLowerCase();
        document.getElementById(id).value = obj;
    }

    function desplegar(ide) {
        $("#ob" + ide).fadeIn(1000); //show
        $("#fl" + ide).hide(); //hide
        $("#flu" + ide).fadeIn(); //show
    }

    function retraer(ide) {
        $("#ob" + ide).fadeOut(500); //hide
        $("#flu" + ide).hide(); //hide
        $("#fl" + ide).show(); //show
    }

    function editar(id) {
        $("#frm" + id).fadeIn(1000); //show
        $("#cliente" + id).hide(); //hide
        $("#cli" + id).fadeIn(); //show
    }

    function guardar(id) {
        $("#frm" + id).fadeOut(500); //hide
        $("#cli" + id).hide(); //hide
        $("#cliente" + id).show(); //show
    }
</script>