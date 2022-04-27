<?php 
    include("cabecalho.php");
?>

        
<div id="dados"> <!-- Conteudo DADOS-->

        <!-- **************** Inicio option select ********************-->
    <div class="divbotoes" >
        <div class="left">
            <strong> Pending </strong><br>
                  <select id="selectFormularioAtualizar" onchange="selectFormularioAtualizar()" name="selectFormularioAtualizar">
                        <option value="0">** Selecione uma opção **</option>
                        <option value="1">Usuário não encontrado</option>
                        <option value="2">Indisponibilidade do usuário</option>
                        <option value="3">Usuário de Férias/Folga</option>
                        <option value="4">Backup de Dados</option>
                        <!--
                        <option value="">Reagendamento de Backup de Dados</option>
                        <option value="">Necessário ação/envolvimento do EUC Vale</option>
                        <option value="">Agendamento de visita a localidade tipo 3</option>
                        <option value="">Data de visita sendo negociada com EUC e GR</option>
                        <option value="">Pendencias ASSET Vale</option>
                        <option value="">Pending devido ao final do expediente</option>
                        <option value="">Pending devido ao feriado</option>
                        <option value="">Interrupção de energia</option>
                        <option value="">Impossibilidade de chegar ao usuário</option>
                        <option value="">Pendência de Vendors ou TI VALE</option>
                        <option value="">INC Não coberto pela garantia - Aguardando retorno do usuário</option>
                        <option value="">INC Não coberto pela garantia - Aguardando geração do usuário</option>
                        <option value="">INC Não coberto pela garantia - Aguardando aprovação do usuário</option>
                        <option value="">INC Não coberto pela garantia - Aguardando manutenção</option>
                        <option value="">Substituição de bateria Garantia</option>
                        <option value="">Substituição de de bateria fora de garantia - </option>
                        <option value="">Substituição de de bateria fora de garantia - </option>
                        <option value="">Substituição de de bateria fora de garantia - </option>
                        -->
                  </select>
            <!-- **************** Fim option select  ********************-->
        </div>
        
        <div class="right">
            <input id="botaoGerar" onclick="userNotFound(); userIndisponivelpage();" type="button" value="GERAR" class="btnGerar" class="btnGerar-info"> 
        </div>   <!-- fim div right -->
           
    </div>
   
      
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
    <div id="userNotFound" class="userNotFound" style="display:none">
        <br><br>
        <h3>DADOS / STATUS</h3> <br>
        
        Agendamento para dia: <input id="dataAgendamentoUserNotFound" type="date" pattern="dd/MM/yyyy"/> <br><br>
        Hora inicial: <input id="hora1" type="text" style="width:42px" placeholder="00:00">
        Hora final: <input id="hora2" type="text" style="width:42px" placeholder="00:00">
        <br><br>
        
        Tentativas:  
        <select name="tentativasUserNotFound" onchange="selectSiteEscolhido()" id="tentativasUserNotFound">
            <option value="0"> ** Selecione ** </option>
            <option value="1º">1º Tentativa</option>
            <option value="2º">2º Tentativa</option>
            <option value="3º">3º Tentativa</option>
        </select>
        
        <br><br>

        Ramal: <input id="telUserNotFound" type="tel" placeholder="(area) Numero" min="9" max="11">
        Celular: <input id="celUserNotFound" type="tel" placeholder="(area) Numero" min="9" max="11"><br><br>

        Email: <input id="EmailUserNotFound" type="text" placeholder="Email do usuário">

        <br><br><br>

        <h3>DADOS / Email</h3> <br>

        Usuário: <input id="UserNotFoundUser" type="text" style="width:80%" placeholder="Nome do usuário ..."> <br><br>
        REQ:     <input id="REQUserNotFound" type="text" style="width:80%" placeholder="REQ000...">

    </div>

    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->

    <div id="userIndisponivel" style="display:none">

        <br><br>
        <h3>DADOS / STATUS</h3> <br>
        Agendamento para dia: <input id="dataAgendamentoUserIndisponivel" class="alturaCampos" type="date"> <br><br>
        Hora inicial: <input id="hora3" class="alturaCampos" type="text" style="width:42px" placeholder="00:00"> 
        Hora final: <input id="hora4" class="alturaCampos" type="text" style="width:42px" placeholder="00:00"> 
        <br><br>
        
        Tentativas:  
        <select name="selectTentativas" onchange="selectTentativasF()" id="selectTentativas">
            <option value="0"> ** Selecione ** </option>
            <option value="1º">1º Tentativa</option>
            <option value="2º">2º Tentativa</option>
            <option value="3º">3º Tentativa</option>
        </select>
        
        <br><br>

        <!-- Email: <input id="EmailUserIndisponivel" type="text"><br> -->

        Motivo: <input id="MotivoUserIndisponivel" class="alturaCampos" style="width:80%" type="text" placeholder="Motivo da indisponibilidade do usuário ...">

        <br><br><br>

        <h3>DADOS / Email</h3> <br>

        Usuário: <input id="UserIndisponivelCampo" class="alturaCampos" type="text" style="width:80%" placeholder="Nome do usuário ..."> <br><br>
        REQ:     <input id="REQUserIndisponivel" class="alturaCampos" type="text" style="width:80%" placeholder="REQ000...">



    </div>
 




            
</div> <!-- fim Conteudo DADOS -->

 <!-- **************** Inicio PAGINA  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  *****USUÁRIO NÃO ENCONTRADO  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO  ********************-->
 <!-- **************** Inicio PAGINA USUÁRIO NÃO ENCONTRADO ***************-->
<!----------------------------------------------------------------------------------------------------------------->
<div id="tipificacao"> <!-- inicio Conteudo tipificacao -->

    <div id="userNotFound2" style="display:none">

        <strong> TEXTO PARA CHAMADO: </strong>
        <div id="textoChamadoUserNotFound" class="tipificacaoRecomendada"></div>

        <br>

        <strong>CAMPO ASSUNTO DO EMAIL / TIPO PENDING</strong>
        <div id="userNotFoundTextoEmail" class="TextoEmail">

        </div>
        <br>


        <button onclick="myFunction()">Copiar</button>      
        <button onclick="myFunction()">Copiar2</button>         
        <button onclick="myFunction()">Copiar3</button>  
        
        <br>

        <strong>TEXTO CORPO DO EMAIL</strong>
        <div class="textoEncerramento" id="userNotFoundTexto" name="userNotFoundTexto"></div>


    </div>
<!----------------------------------------------------------------------------------------------------------------->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
    <!-- **************** Inicio PAGINA USUÁRIO INDISPONIVEL  ********************-->
   
    <div id="userIndisponivel2" style="display:none">
    
        <strong> TEXTO PARA CHAMADO: </strong>
        <div id="textoChamadoIndisponivel" class="tipificacaoRecomendada">
            
        </div>
            
        <br>

        <strong>CAMPO ASSUNTO DO EMAIL / TIPO PENDING</strong>
        <div id="TextoEmailUserIndisponivel" class="TextoEmail">
            
        </div>
        <br>

        <strong>TEXTO CORPO DO EMAIL</strong>
        <div id="TextoIndisponivel" class="textoEncerramento" name="userNotFoundTexto">
            
        </div>

    </div>


</div> <!-- fim Conteudo tipificacao -->


<!----------------------------------------------------------------------------------------------------------------->


















<?php 
    include("rodape.php");
?>








