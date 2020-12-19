for(x = 1; x<51; x++){        
    $("#pag" + x).show();
}
$('#numero1').addClass('active');  

var p;
var r;
var x;
var a;
var i;

function paginar(p,a) {    
    $(".nover").fadeOut(500);
    r = p*50;        
    for(x = 1; x<51; x++){        
        $("#pag" + r).fadeIn(1000);
        r--;
    }
    for (x=1; x<=a; x++) {
        $('#numero' + x).removeClass('active');
    }
    /*alert(a);*/ 
    $('#numero' + p).addClass('active'); 
    
}




