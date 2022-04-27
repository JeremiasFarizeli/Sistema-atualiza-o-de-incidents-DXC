<?php 
    include("cabecalho.php");
?>



    <!-- Conteudo a esquerda-->
            
<form method="POST" action="">
                
    <div id="dados"> <!-- Conteudo DADOS-->

                
        <br>
        <label for="causaraiz">Causa Raiz:</label>
            <textarea class="causaraiz" type="text" name="causaraiz" placeholder="CAUSA RAIZ:"><?php echo trim("$causaraiz")?></textarea>
        <label for="acaoimediata">Ação Imediata:</label>
            <textarea class="acaoimediata" type="text" name="acaoimediata" placeholder="AÇÃO IMEDIATA:"><?php echo trim("$acaoimediata")?></textarea>
        <label for="acaocorretiva">Ação Corretiva:</label>
            <textarea class="acaocorretiva" type="text" name="acaocorretiva" placeholder="AÇÃO CORRETIVA:"><?php echo trim("$acaocorretiva")?></textarea>
        <label for="testes">Testes:</label>
            <textarea class="testes" type="text" name="testes" placeholder="TESTES:"><?php echo trim("$testes")?></textarea>
        <label for="causaraiz">Analista:</label>
            <textarea class="analista" type="text" name="analista" placeholder="ANALISTA:"><?php echo trim("$analista")?></textarea>
        <label for="observacao">Observação:</label>
            <textarea name="observacao" class="observacao" placeholder="OBSERVAÇÃO:"><?php echo trim("$observacao")?></textarea>
        <br> <br>  <br>
            
            
    </div> <!-- fim Conteudo DADOS -->

    <div id="tipificacao">

        <div class="divbotoes">

            <div class="left">
                                
    <!-- *********************************   Inicio Tipificação categorias ( (condição) ? true : false )  ********************************************* -->                  

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
                            
    <!-- *********************************   Fim Tipificação categorias e Inicio Tipificação  ************************* -->
                            
                <select id="tipif" name="tipif" style="display:none">
                            
                        <!-- Recebe do Ajax os dados e monta as options -->
                </select>
                            
    <!-- *********************************   Fim Tipificação  *************************************************************** -->

            </div>  <!-- fim div Left -->

        <div class="right">

            <input type="submit" value="GERAR" class="btn" class="btn-info"> 

        </div>   <!-- fim div right -->

            <div class="clear">
                            
            </div> <!-- fim div clear -->

        </div> <!-- fim div botoes -->

        <div class="Tipificação">

            <label for=""> <p> Tipificação: </p></label>
                            
                <div name="tipificacaoRecomendada" class="tipificacaoRecomendada" cols="30" rows="10">  
                            
                    <?php
                        $processatipif = $pdo->prepare("SELECT tipificacao.TIER1, tipificacao.TIER2, tipificacao.TIER3 FROM tipificacao WHERE tipificacao.ID='".$Recebetipif."'");
                        $processatipif->execute();
                        $fetchAll = $processatipif->fetchAll();
                        foreach($fetchAll as $dados3){
                            echo $dados3['TIER1']."<br>";
                            echo $dados3['TIER2']."<br>";
                            echo $dados3['TIER3']."<br>";
                        }
                    ?>
                                    
                </div> <br>  <!-- fim div tipificacaoRecomendada -->
  
                <div class="textoEncerramento"> <br>
                                    
                    <label for="textoEncerramento"> Texto de Encerramento:</label>
                                
                        CAUSA RAIZ: <?php echo "$causaraiz \n\n"?> <br><br>
                        AÇÃO IMEDIATA: <?php echo "$acaoimediata \n\n"?> <br><br>
                        AÇÃO CORRETIVA: <?php echo "$acaocorretiva \n\n"?> <br><br>
                        TESTES: <?php echo "$testes \n\n"?> <br><br>
                        ANALISTA:  <?php echo "$analista \n\n"?> <br><br>
                        OBSERVAÇÃO: <?php echo "$observacao \n\n"?>  <br><br> 
                                    
                </div> <!-- fim  classe textoEncerramento -->

        </div>  <!-- fim  classe Tipificação --> 
                    
    </div>  <!-- fim tipificacao -->
                
</form>
        
                






<?php 
    include("rodape.php");
?>








