<?php 
include("processa.php");
include("conexao.php");
?>


<!DOCTYPE html><!-- doctype do HTML5 -->
<html>
    <head>
        <title>DXC Incident Manager</title>
        <!-- Importante para habilitar os recursos de Responsividade em conjunto com o CSS -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  -->
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="js/script.js"></script>
        <script src="js/jquery.js"></script>
        
        <link rel="stylesheet" href="css/estilo.css">

    </head>



<body>


    <div class="containerPrincipal">

       <div class="contemMenu">  <!-- Início da barra de Menu -->
 
                <ul>
                    <li><a href="#">DXC</a> </li>

                    <li><a href="#">CHAMADOS</a>
                        <ul>
                            <li><a href="formulario_atualizar.php">Atualizar</a></li>
                            <li><a href="formulario_encerrar.php">Encerrar</a></li>
                        </ul>
                    </li>
                    <li><a href="#">LINKS DXC</a> 
                        <ul>
                            <li><a href="http://www.dxc.technology/" target="_blank">Intranet DXC</a></li>
                            <li><a href="https://z9u0005.houston.dxccorp.net:4102/hps-ic-red" target="_blank">CATW</a></li>
                            <li><a href="https://gpl.amer.csc.com/affwebservices/public/saml2sso?SPID=https://portal0013.globalview.adp.com/federate2&RelayState=https://portal0013.globalview.adp.com/gvservice/home/DXC/sso" target="_blank">Contra cheque DXC</a></li>
                            <li><a href="https://am.svcs.entsvcs.net/itam-av1/Default.aspx" target="_blank">AVS - DXC</a></li>
                            <li><a href="https://am.svcs.entsvcs.net/itam-av1/WebPages/Asset/SearchByAsset.aspx" target="_blank">AVS - DXC</a></li>
                            
                        </ul>
                    </li>
                    <li><a href="#">LINKS VALE</a>   
                        <ul>
                            <li><a href="http://172.23.83.115:8023/UserPanel/default.asp"" target="_blank">Painel do Usuário</a></li>
                            <li><a href="https://portal.iam.valeglobal.net/IDMProv/jsps/login/Login.jsp" target="_blank">IAM</a></li>
                            <li><a href="https://sspr.iam.valeglobal.net/sspr/private/Login" target="_blank">Reset Senha VALENET</a></li>
                            <li><a href="https://brqsb1valeas944.valenet.valeglobal.net/HelpDesk/" target="_blank">BitLocker Adm</a></li>
                            <li><a href="http://intranet.valepub.net/pt/Paginas/default.aspx" target="_blank">Portal Vale</a></li>
                            <li><a href="http://172.23.83.115:8026/apps/GSDUsuarios_dsv/modulos/OS/eTag.asp?pesquisa=S" target="_blank">Consulta ETAG</a></li>
                            <li><a href="http://intranet.valepub.net/pt/paginas/tecnologia-da-informacao/ferramentas-de-comunicacao-e-colaboracao/onedrive/onedrive.aspx" target="_blank">OneDrive Questions</a></li>
                            <li><a href="https://ds355.awmdm.com/MyDevice/" target="_blank">AirWatch validar acesso</a></li>
                            <li><a href="https://intranet.valepub.net/pt/Paginas/tecnologia-da-informacao/vale-support-center/it-services-lounge-virtual.aspx" target="_blank">Agenda Lounge CPD</a></li>
                            <li><a href="https://outlook.office365.com/owa/calendar/ITServicesLoungeEspritoSanto@globalvale.onmicrosoft.com/bookings/" target="_blank">Agenda Landmark</a></li>
                            <li><a href="https://smartoffice.valeglobal.net/reservas" target="_blank">Mesa Landmark</a></li>
                            <li><a href="https://outlook.office365.com/owa/calendar/EntregaequipamentosEspritoSanto@globalvale.onmicrosoft.com/bookings/" target="_blank">Troca de máquina</a></li>
                        </ul>
                    </li>
                </ul>
           
        </div>  <!-- Fim da barra de Menu -->
