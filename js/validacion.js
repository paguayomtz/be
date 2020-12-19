 $('#usuario').change(function() {
     $.post('ajax_validacion_usuario.php', {
         usuario: $('#usuario').val(),

         beforeSend: function() {
             $('.validacion').html("Espere un momento por favor..");
         }

     }, function(respuesta) {
         $('.validacion').html(respuesta);
     });
 });

 $('#btn_guardar').hide();
 $('#pass2').change(function(event) {
     if ($('#pass').val() != $('#pass2').val()) {
         swal('Oppss...', 'La contraseña no coincide', 'error');
         $('#btn_guardar').hide();
     } else {
         $('#btn_guardar').show();
     }
 });

 $('.form').keypress(function(e) {
     if (e.which == 13) {
         return false;
     }
 });


