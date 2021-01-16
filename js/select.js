function puestos(val) {       
    $.ajax({
        type: "POST",
        url: '../perfiles/ajax_puesto.php',
        data: "area="+val,
        success :function(resp) {
            $("#puesto").html(resp)
            $('#puesto').formSelect();                               
        }
    });
}