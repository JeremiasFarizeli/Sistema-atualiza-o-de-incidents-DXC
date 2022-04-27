<?php 
    include("cabecalho.php");
?>

    <!-- Conteudo a esquerda-->
            
<form method="POST" action="">
             
    <div id="dados"> <!-- Conteudo DADOS-->

        <div class="divbotoes">

            <div class="left">
                                
                <!-- *****************   Inicio Tipificação categorias  ************************ -->         


                <label for="categorias"> <strong>Escolha de Tipificação</strong> v1.2 de 22/05/2020 </label>   
                <select id="categorias" name="categorias">
                        
                    <?php

                        $select = $pdo->prepare("SELECT categorias.ID, categorias.NOME FROM categorias;");
                        $select->execute();
                        $fetchAll = $select->fetchAll();
                            foreach($fetchAll as $dados){
                                echo '<option value="'.$dados['ID'].'">'.$dados['NOME'].'</option>';                   
                            }
                        ?>
                                
                </select>
                            
            <!-- ***************   Fim Tipificação categorias e Inicio Tipificação  *************** -->
                
                <select id="tipif" name="tipif" style="display:none">
                            
                        <!-- Recebe do Ajax os dados e monta as options -->
                        
                </select>
                            
            <!-- ****************   Fim Tipificação  ********************************* -->

            </div>  <!-- fim div Left -->

            <div class="right">

                <input id="botaoGerar" onclick="formularioEncerrar()" type="button" value="GERAR" class="btnGerar" class="btnGerar-info"> 

            </div>   <!-- fim div right -->

            <div class="clear">
                            
            </div> <!-- fim div clear -->

        </div> <!-- fim div botoes -->


        <div class="dadosdaEsquerda">

            <label for="causaraiz"><b>Causa Raiz:</b></label>
                <textarea id="causaraiz" class="causaraiz" type="text" placeholder="CAUSA RAIZ:"></textarea>

            <label for="acaoimediata"><b>Ação Imediata:</b></label>
                <textarea id="acaoimediata" class="acaoimediata" type="text" placeholder="AÇÃO IMEDIATA:"></textarea>

            <label for="acaocorretiva"><b>Ação Corretiva:</b></label>
                <textarea id="acaocorretiva" class="acaocorretiva" type="text" placeholder="AÇÃO CORRETIVA:"></textarea>

            <label for="testes"><b>Testes:</b></label>
                <textarea id="testes" class="testes" type="text" placeholder="TESTES:"></textarea>

            <label for="causaraiz"><b>Analista:</b></label>
                <textarea id="analista" class="analista" type="text" placeholder="ANALISTA:"></textarea>

            <label for="observacao"><b>Observação:</b></label>
                <textarea id="observacao" class="observacao" placeholder="OBSERVAÇÃO:"></textarea>
            <br><br>
                            
        </div>

            
    </div> <!-- fim Conteudo DADOS -->

    <div id="tipificacao">


       <!-- Encerramento Lexmark  style="display:none"  -->
       
       <input id="incidentlexmarkOnOff" onclick="mostrarLexmarEncerramento()" type="checkbox" name="incidentlexmarkOnOff" value="incidentlexmarkOnOff"> CASO DE ATENDIMENTO LEXMARK<br>
       
       <div id="divEncerramentoLexmark" class="divEncerramentoLexmark" style="display: none"> 
           
            <table  class="TabelaLexmarkFechamento">
                <tr>
                    <td>Codigo erro do problema:</td>
                    <td><input id="CodigoErroLexmark" type="text" placeholder="Codigo erro do problema:"></td>
                    <td>
                        <select id="selectSiteEscolhido" onchange="selectTipoSiteLexmar()" name="selectSiteEscolhido">
                            <option>-- Selecione o Site --</option>
                            <option value="1">Baixo Guandu Estação</option>
                            <option value="2">Cariacica Porto Velho</option>
                            <option value="3">Cariacica</option>
                            <option value="4">Cariacica Est- Pedro Nolasco</option>
                            <option value="5">Colatina</option>
                            <option value="6">Colatina EFMV</option>
                            <option value="7">Guarapari Pasa</option>
                            <option value="8">João Neiva Piraqueaçu</option>
                            <option value="9">João Neiva</option>
                            <option value="10">Linhares Reserva Natural</option>
                            <option value="11">São Mateus</option>
                            <option value="12">Vitória Tubarão</option>
                            <option value="13">Vitória Valia</option>
                            <option value="14">Vitória Aroaba</option>
                            <option value="15">Vitória Pasa Bento Ferreira</option>
                        </select>
                    
                    </td>
                </tr>
                <tr>
                    <td>Serial da peça substituída:</td>
                    <td><input id="serialPecaSubsLexmark" type="text" placeholder="Serial peça substituída:"></td>
                    <td>Tipo de Site: <input id="tipoSiteLexmark" type="text" name="tipoSiteLexmark"></td>
                </tr>
                <tr>
                    <td>RAT (Incluir anexo ao chamado):</th>
                    <td><input id="RATLexmark" type="text" placeholder="RAT:"></td>  
                </tr>
                <tr>
                    <td>Usuário que acompanhou atendimento:</th>
                    <td><input id="UserAcompanhouLexmark" type="text" placeholder="Usuário que acompanhou:"></td>
                </tr>

            </table>
            
        </div> <!-- Encerramento Lexmark categorias -->




        <div class="Tipificação">

            <label for=""><strong>Tipificação: </strong></label>
                            
                <div id="tipificacaoRecomendada" name="tipificacaoRecomendada" class="tipificacaoRecomendada"> 
                
                    <!-- Recebe vi Ajax -->
                              
                </div>  <!-- fim div tipificacaoRecomendada -->
                
                <label for="textoEncerramento"> <strong> Texto de Encerramento: </strong> </label>
                  
                <div id="textoEncerramento" class="textoEncerramento"> <br>

                       <!-- Os textos são montados via função JS nessa DIV -->

                    <div id="divTextoEncerramentoLexmark" style="display: none"> 
                        <!-- Os textos são montados via função JS nessa DIV -->
                    </div>

                                    
                </div> <!-- fim  classe textoEncerramento -->

        </div>  <!-- fim  classe Tipificação --> 





                    
    </div>  <!-- fim tipificacao -->
                
</form>
        


<?php 
    include("rodape.php");
?>








