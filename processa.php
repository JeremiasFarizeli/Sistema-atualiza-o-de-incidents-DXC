<?php 
include("conexao.php");

//recebendo os dados pelo form

@$optcat = $_POST['id'];
@$idTipf = $_POST['idTipf'];

//  Consulta ao banco para montar a lista Tipificação
$pegaTipificacao = $pdo->prepare("SELECT tipificacao.ID, tipificacao.ID_CATEGORIAS, tipificacao.DESCRICAO FROM tipificacao WHERE tipificacao.ID_CATEGORIAS='".$optcat."'");
$pegaTipificacao->execute();
$fetchAll = $pegaTipificacao->fetchAll();
    foreach($fetchAll as $dados2){
        echo '<option value="'.$dados2['ID'].'">'.$dados2['DESCRICAO'].'</option>';
    }

@$Recebetipif = $_POST['tipif'];  




//  Consulta ao banco para já montar as tipificações na div final
$processatipif = $pdo->prepare("SELECT tipificacao.TIER1, tipificacao.TIER2, tipificacao.TIER3 FROM tipificacao WHERE tipificacao.ID='".$idTipf."'");
$processatipif->execute();
$fetchAll = $processatipif->fetchAll();
    foreach($fetchAll as $dados3){
        echo "Tier 1: &nbsp&nbsp&nbsp".$dados3['TIER1']."<br>";
        echo "Tier 2: &nbsp&nbsp&nbsp".$dados3['TIER2']."<br>";
        echo "Tier 3: &nbsp&nbsp&nbsp".$dados3['TIER3']."<br>";
    }


