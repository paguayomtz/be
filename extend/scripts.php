</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script src="../js/sweetalert2.all.js"></script>
<script src="../js/buscador.js"></script>
<script src="../js/pagination.js"></script>
<script src="../js/star-rating.min.js"></script>

<script>
    //INICIALIZA ELEMTOS DEL MATERIALIZE
    M.AutoInit();
    $('.sidenav').sidenav();
    $('select').formSelect();
    //$('select').material_select();
    $('.modal').modal();

    //CONVERTIR EN MAYUSCULAS LOS TEXTOS
    function may(obj, id) {
        obj = obj.toUpperCase();
        document.getElementById(id).value = obj;
    }

    //CONVERTIR EN MAYUSCULAS LOS TEXTOS
    function min(obj, id) {
        obj = obj.toLowerCase();
        document.getElementById(id).value = obj;
    }
    
</script>