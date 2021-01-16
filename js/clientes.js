function editar(id) {
    $("#frm" + id).show(500); 
    $("#cli" + id).show(); 
    $("#cliente" + id).hide(); 
}

function guardar(id) {
    $("#frm" + id).hide(500); 
    $("#cli" + id).hide(); 
    $("#cliente" + id).show(); 
}