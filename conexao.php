<?php

// ----------------------  CONEXÃO  -----------------------------

$dsn = 'mysql:host=localhost;dbname=dxc';
$user = 'FSVT-DXC';
$pass = 'Tubarao5500';
//$utf8 = 'Content-Type: text/html; charset=iso-8859-1';

try {
    // PDO é orientado a objetos, por isso criamos uma variável e instanciamos o objeto PDO.
    $pdo = new PDO($dsn, $user, $pass);
    $pdo->exec('SET CHARACTER SET utf8');
    //echo "Conectado ao DB com sucesso.";

    //Esse catch específico pra erros do BD
} 
catch (PDOException $erro) {
    echo "Erro no banco de Dados: ".$erro->getMessage();
}

// Esse catch pra qualquer outro tipo de erro.
catch (Exception $erro) {
    echo "Erro não relacionado ao Banco de Dados: ".$erro->getMessage();
}

// ---------------------------INSERT -------------------------------

                //  https://www.youtube.com/watch?v=sLn-yMQKcHA&list=PLYGFJHWj9BYqSXzSfHGd46yipCrkjC8AD&index=2

// --------------------------- DELETE E UPDATE -------------------------------

            //  https://www.youtube.com/watch?v=5HV-4-QrFd0&list=PLYGFJHWj9BYqSXzSfHGd46yipCrkjC8AD&index=3
/*
                // pode ser feito com PDO
$cmd = $pdo->prepare("DELETE FROM pessoa WHERE id = :id");
$id = 2;
$cmd->bindValue(":id", $id);
$cmd->execute();

                // ou pode ser feito com query
$res = $pdo->query("DELETE FROM pessoa WHERE id = '3");
*/

$cmd = $pdo->prepare("UPDATE pessoa SET email = :email WHERE id = :id");
$cmd->bindValue(":email","teste@teste.com.br");
$cmd->bindValue(":id", 1);
$cmd->execute();


// --------------------------- SELECT -------------------------------


