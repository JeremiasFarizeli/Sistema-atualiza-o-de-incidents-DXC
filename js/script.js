

// Iniciao do Bloco de codigo para exibir data e hora atualizados

var dataHora;
var zeroFill = n => {  return ('0' + n).slice(-2); }
// Cria intervalo
var interval = setInterval(() => {
var now = new Date();
dataHora = zeroFill(now.getUTCDate()) + '/' + zeroFill((now.getMonth() + 1)) + ' às ' + zeroFill(now.getHours()) + ':' + zeroFill(now.getMinutes());
// Exibe na tela usando a div#data-hora
//console.log(dataHora);
}, 1000);


// Fim do Bloco de codigo para exibir data e hora atualizados




// função pra mostrar o site Lexmark
function selectTipoSiteLexmar(){
    var site = document.getElementById("selectSiteEscolhido").value;

        switch(site) {
            case '1':
                document.getElementById("tipoSiteLexmark").value = 3;
            break;
            case '2':
                document.getElementById("tipoSiteLexmark").value = 1;
            break;
            case '3':
                document.getElementById("tipoSiteLexmark").value = 2; 
            break;
            case '4':
                document.getElementById("tipoSiteLexmark").value = 1;
            break;
            case '5':
                document.getElementById("tipoSiteLexmark").value = 3;
            break;
            case '6':
                document.getElementById("tipoSiteLexmark").value = 3;
            break;
            case '7':
                document.getElementById("tipoSiteLexmark").value = 3;
            break;
            case '8':
                document.getElementById("tipoSiteLexmark").value = 2;    
            break;
            case '9':
                document.getElementById("tipoSiteLexmark").value = 2;    
            break;
            case '10':
                document.getElementById("tipoSiteLexmark").value = 3;    
            break;
            case '11':
                document.getElementById("tipoSiteLexmark").value = 3;    
            break;
            case '12':
                document.getElementById("tipoSiteLexmark").value = 1;    
            break;
            case '13':
                document.getElementById("tipoSiteLexmark").value = 1;    
            break;
            case '14':
                document.getElementById("tipoSiteLexmark").value = 2;    
            break;
            case '15':
                document.getElementById("tipoSiteLexmark").value = 3;    
            break;
            default:
                document.getElementById("tipoSiteLexmark").value = "";     
        }
}


//  Função para concatenar os textos de encerramento Incidents e Lexmark
function formularioEncerrar(){

    // Encerramento Incidents

    var causaraiz = document.getElementById("causaraiz").value;
    causaraiz = "<b>CAUSA RAIZ: </b>".concat(causaraiz).concat("<br>");

    var acaoimediata = document.getElementById("acaoimediata").value;
    acaoimediata = "<br><b>AÇÃO IMEDIATA: </b>".concat(acaoimediata).concat("<br>");

    var acaocorretiva = document.getElementById("acaocorretiva").value;
    acaocorretiva = "<br><b>AÇÃO CORRETIVA: </b>".concat(acaocorretiva).concat("<br>");

    var testes = document.getElementById("testes").value;
    testes = "<br><b>TESTES: </b>".concat(testes).concat("<br>");

    var analista = document.getElementById("analista").value;
    analista = "<br><b>ANALISTA: </b>".concat(analista).concat("<br>");

    var observacao = document.getElementById("observacao").value;
    observacao = "<br><b>OBSERVAÇÃO: </b>".concat(observacao).concat("<br>");

    // Encerramento Lexmark

    var codErro = document.getElementById("CodigoErroLexmark").value;
    codErro = "<br><b>CÓDIGO DE ERRO DO PROBLEMA: </b>".concat(codErro).concat("<br>");

    var serialPeca = document.getElementById("serialPecaSubsLexmark").value;
    serialPeca = "<b>SERIAL DA PEÇA SUBSTITUIDA: </b>".concat(serialPeca).concat("<br>");

    var rat = document.getElementById("RATLexmark").value;
    rat = "<b>RAT: </b>".concat(rat).concat("<br>");
    
    var UserAcompanhouLexmark = document.getElementById("UserAcompanhouLexmark").value;
    UserAcompanhouLexmark = "<b>USUÁRIO QUE ACOMPANHOU ATENDIMENTO: </b>".concat(UserAcompanhouLexmark).concat("<br>");

    var siteAtendidoLexmark = document.getElementById("selectSiteEscolhido").value;

        switch(siteAtendidoLexmark) {
            case '1':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '2':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("1"); 
            break;
            case '3':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("2"); 
            break;
            case '4':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("1"); 
            break;
            case '5':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '6':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '7':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '8':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("2"); 
            break;
            case '9':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("2"); 
            break;
            case '10':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '11':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            case '12':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("1"); 
            break;
            case '13':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("1"); 
            break;
            case '14':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("2"); 
            break;
            case '15':
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat("3"); 
            break;
            default:
                tipoSiteLexmark = "<b>TIPO DE SITE:</b> ".concat(""); 
        }

    var siteAtendidoLexmark = document.getElementById("selectSiteEscolhido").value;

        switch(siteAtendidoLexmark) {
            case '1':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Baixo Guandu").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '2':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Cariacica Porto Velho").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '3':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Cariacica").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '4':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Cariacica Est- Pedro Nolasco").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '5':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Colatina").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '6':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Colatina EFMV").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '7':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Guarapari Pasa").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '8':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("João Neiva Piraqueaçu").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '9':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("João Neiva").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '10':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Linhares Reserva Natural").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '11':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("São Mateus").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '12':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Vitória Tubarão").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '13':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Vitória Valia").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '14':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Vitória Aroaba").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            case '15':
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Vitória Pasa Bento Ferreira").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"); 
            break;
            default:
                siteAtendidoLexmark = "<b>SITE ATENDIDO:</b>&nbsp&nbsp".concat("Site não informado").concat("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
        } 

    if(!document.getElementById("incidentlexmarkOnOff").checked){
        document.getElementById("textoEncerramento").innerHTML = (causaraiz.concat(
            acaoimediata, 
            acaocorretiva, 
            testes, analista, 
            observacao
        ));
    }
    else{
            document.getElementById("textoEncerramento").innerHTML = (causaraiz.concat(
            acaoimediata, 
            acaocorretiva, 
            testes, 
            analista, 
            observacao,
            codErro,
            serialPeca,
            rat,
            UserAcompanhouLexmark,
            siteAtendidoLexmark,
            tipoSiteLexmark

        ));
    }
} // fim função formularioEncerrar()


/******** FORMULARIO ATUALIZAR *********/
/******** FORMULARIO ATUALIZAR *********/
/******** FORMULARIO ATUALIZAR *********/
/******** FORMULARIO ATUALIZAR *********/
/******** FORMULARIO ATUALIZAR *********/
/******** FORMULARIO ATUALIZAR *********/



// função pra
function selectFormularioAtualizar(){
    var op = document.getElementById("selectFormularioAtualizar").value;

    if(op == 1){
        //mostra a página Usuário não encontrado
        document.getElementById("userNotFound").style.display = "block";
        document.getElementById("userNotFound2").style.display = "block";
    }else{
        document.getElementById("userNotFound").style.display = "none";
        document.getElementById("userNotFound2").style.display = "none";
    }

    if(op == 2){
        document.getElementById("userIndisponivel").style.display = "block";
        document.getElementById("userIndisponivel2").style.display = "block";
    }else{
        document.getElementById("userIndisponivel").style.display = "none";
        document.getElementById("userIndisponivel2").style.display = "none";
    }


}




// Função formulário atualizar User Not Found

// Função para colher a tentativa de agendamento
var tentativa = "1"
function selectSiteEscolhido(){
    tentativa = document.getElementById("tentativasUserNotFound").value;
}


// Função formulário atualizar User Not Found
// Função formulário atualizar User Not Found
// Função formulário atualizar User Not Found

// função userNotFound é disparada ao click do botão GERAR.
function userNotFound(){
    // Coletar dados e concatenar
    //var data = document.getElementById("dataAtendimentoUserNotFound").value;
    var telefone = document.getElementById("telUserNotFound").value;
    var celular = document.getElementById("celUserNotFound").value;
    var email = document.getElementById("EmailUserNotFound").value;
    var req = document.getElementById("REQUserNotFound").value;
    var user = document.getElementById("UserNotFoundUser").value;
    var hora1 = document.getElementById("hora1").value;
    var hora2 = document.getElementById("hora2").value;
    var agendamento = document.getElementById("dataAgendamentoUserNotFound").value;
        // formatando data para padrão BR  dd/mm/aaaa
        var str = agendamento; 
        var ano = str.slice(0, 4);
        var mes = str.slice(5, 7);
        var dia = str.slice(8, 10);
        var dataFormatada = dia+"/"+mes+"/"+ano;

        if (tentativa == '1º'){
            var codEquipamento = '<b>LOCAL1EMAIL</b>';
        };
        if (tentativa == '2º'){
            var codEquipamento = '<b>LOCAL2EMAIL</b>';
        };
        if (tentativa == '3º'){
            var codEquipamento = '<b>LOCAL3EMAIL</b>';
        };


    //TEXTO PARA CHAMADO: 
    
    data = ('#3Strikes <br>' + 
    tentativa + ' Tentativa de contato com usuário feita em ' + dataHora + ' Via teams e telefone. <br><br>' + codEquipamento
    );

    //CAMPO ASSUNTO DO EMAIL / TIPO PENDING
    req =  ('IMPORTANTE - Para o atendimento ao seu chamado ' + req + ' - ' + tentativa + ' Tentativa de contato.');

    // TEXTO CORPO DO EMAIL
    var texto = ('Bom dia/Boa tarde! <br><br>' + 
                'Sr(a) ' + user + ', <br><br>'  +
                'Informo que tentamos entrar em contato atravéz dos telefones ' + telefone + ' - ' + celular + ' e pelo Skype/Teams ' + email + ', mas não foi possível. <br><br>' +
                'Tentaremos novamente o contato: <br>' +
                'Dia: ' + dataFormatada + '<br>' +
                'Horário: Entre ' + hora1 + ' e ' + hora2 + '<br><br>' +
                'Desde já agradecemos <br><br>' + 
                'Equipe DXC <br><br>'
    );
    





    //TEXTO PARA CHAMADO: 
    document.getElementById("textoChamadoUserNotFound").innerHTML = (data);  
    
    //CAMPO ASSUNTO DO EMAIL / TIPO PENDING
    document.getElementById("userNotFoundTextoEmail").innerHTML = (req);

    //TEXTO CORPO DO EMAIL
    document.getElementById("userNotFoundTexto").innerHTML = (texto);

}


















// Função formulário atualizar User Indisponivel
// Função formulário atualizar User Indisponivel
// Função formulário atualizar User Indisponivel

var tentativa2 = "1"
function selectTentativasF(){
    tentativa2 = document.getElementById("selectTentativas").value;
}


function userIndisponivelpage(){




        //coletando dados.
    var dataAgendamento = document.getElementById("dataAgendamentoUserIndisponivel").value;
    
    var str2 = dataAgendamento; 
    var ano2 = str2.slice(0, 4);
    var mes2 = str2.slice(5, 7);
    var dia2 = str2.slice(8, 10);
    var dataFormatada2 = dia2+"/"+mes2+"/"+ano2;

    var horaInicial = document.getElementById("hora3").value;
    var horahoraFinal = document.getElementById("hora4").value;
    var MotivoUserIndisponivel = document.getElementById("MotivoUserIndisponivel").value;
    var MotivoUserIndisponivel = document.getElementById("MotivoUserIndisponivel").value;
    var UserIndisponivelCampo = document.getElementById("UserIndisponivelCampo").value;
    var REQUserIndisponivel = document.getElementById("REQUserIndisponivel").value;

    if (tentativa2 == '1º'){
        var codEquipamento = '<b>LOCAL1EMAIL</b>';
    };
    if (tentativa2 == '2º'){
        var codEquipamento = '<b>LOCAL2EMAIL</b>';
    };
    if (tentativa2 == '3º'){
        var codEquipamento = '<b>LOCAL3EMAIL</b>';
    };



    //concatenando e montando textos...
    //TEXTO PARA CHAMADO: 
    data = ('#3Strikes <br>' + 
    tentativa2 + ' Tentativa de contato com usuário feita em ' + dataHora + ' Via teams e telefone. <br><br>' + codEquipamento
    );

    //CAMPO ASSUNTO DO EMAIL / TIPO PENDING
    var textoEmailIndisponivel = "Agendamento de atendimento do chamado "+ REQUserIndisponivel +", essa é a "+ tentativa2 +" Tentativa.";
    
    //TEXTO CORPO DO EMAIL
    var TextoIndisponivel = ("Sr(a). "+ UserIndisponivelCampo +"<br><br> Recebemos o seu chamado: " + REQUserIndisponivel + ". Conforme solicitado estamos programando o atendimento"
    +" do chamado para " + dataFormatada2 + ". Horário previsto para contato será entre " + horaInicial + " e " + horahoraFinal + "<br>Motivo: " + MotivoUserIndisponivel + ".<br> Agradecemos a sua compreensão.<br><br>"
    +"Atenciosamente <br> Equipe DXC.Technology");




    //Escrever na Tela
    //TEXTO PARA CHAMADO: 
    document.getElementById("textoChamadoIndisponivel").innerHTML = data;
    
    //CAMPO ASSUNTO DO EMAIL / TIPO PENDING
    document.getElementById("TextoEmailUserIndisponivel").innerHTML = (textoEmailIndisponivel);
    
    //TEXTO CORPO DO EMAIL
    document.getElementById("TextoIndisponivel").innerHTML = (TextoIndisponivel);


}



//  funçoes de clipbord para os botoes.

function myFunction() {
    /* Get the text field */
    var copyText = document.getElementById("userNotFoundTexto");
  
    /* Select the text field */
    copyText.select();
    copyText.setSelectionRange(0, 99999); /* For mobile devices */
  
     /* Copy the text inside the text field */
    navigator.clipboard.writeText(copyText.value);
  
    /* Alert the copied text */
    alert("Copied the text: " + copyText.value);
}

