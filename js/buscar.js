$(document).ready(function () {
    $('.modal').modal();
    $('#modal1').modal({
        startingTop: '1%',
        endingTop: '1%'
    })
});

function loadObs(id) {  
    $('#frm-observaciones')[0].reset();
    $('#inp-mod-obs-id').val(id);
    $.ajax({
        type: "POST",
        url: 'ajax_obs.php',
        data: { 'id': id,},
        success: function (resp) {
            var data = JSON.parse(resp);
            console.log(data);
            $('#txt-obsevaciones').html(data);  
            M.textareaAutoResize($('#txt-obsevaciones'));                             
        }
    });    
    $('#modal-observaciones').modal('open');
}

function loadRes(id, nombre) {
    $.ajax({
        type: "POST",
        url: 'ajax_resena.php',
        data: { 'id': id, 'nombre': nombre },
        success: function (resp) {
            $('#tabla').html(resp);                               
        }
    });
    $('#modal1').modal('open');
}