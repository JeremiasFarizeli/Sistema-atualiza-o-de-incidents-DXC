// função pra preencher categorias 
$("#categorias").on("change",function(){
    var idCat = $("#categorias").val();
    //alert(idCat);
    $.ajax({
        url:'processa.php',
        type: 'POST',   
        data: {id:idCat},
        beforeSend: function(){
            $("#tipif").css({'display':'block'});
            $("#tipif").html("Carregando ...");
        },

        success: function(data){
            $("#tipif").css({'display':'block',
                             'block-size':'30px',
                             'max-block-size':'30px',
                             'inline-size':'auto',
                             'width':'400px',
                             'margin-top':'10px'
                            });
            $("#tipif").html(data);
        },

        Error: function(data){
            $("#tipif").css({'display':'block'});
            $("#tipif").html("Houve um erro ao carregar");
        }

    });
});



// função pra preencher tipificação 
$("#tipif").on("change",function(){
var idTipf = $("#tipif").val();
//alert(idTipf);
$.ajax({
    url:'processa.php',
    type: 'POST',   
    data: {idTipf:idTipf},
    beforeSend: function(){
        $("#tipificacaoRecomendada").html("Carregando ...");
    },

    success: function(data){
        $("#tipificacaoRecomendada").html(data);
    },

    Error: function(data){
        $("#tipificacaoRecomendada").html("Houve um erro ao carregar");
    }
});
});

