<?php
require 'conexao.php';
if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_GET)) {
    // PUXANDO USUARIO DO BANCO
    $id = $_GET['id'];
    $result = $conn->query("SELECT email, senha FROM tbpessoa WHERE id = '$id'");
    $usuario = mysqli_fetch_assoc($result);
    $email = $usuario['email'];
    $senha = $usuario['senha'];
    //PESSOA
    $nome = $conn->real_escape_string($_POST["nome"]);
    $sobrenome = $conn->real_escape_string($_POST["sobrenome"]);
    $cpf = $conn->real_escape_string($_POST["cpf"]);
    $dataNascimento = $conn->real_escape_string($_POST["dataNascimento"]);
    $rg = $conn->real_escape_string($_POST["rg"]);
    $sexo = $conn->real_escape_string($_POST["sexo"]);
    $nacionalidade = $conn->real_escape_string($_POST["nacionalidade"]);
    $telefone = $conn->real_escape_string($_POST["telefone"]);
    // ENDERECO
    $rua = $conn->real_escape_string($_POST["rua"]);
    $numero = $conn->real_escape_string($_POST["numero"]);
    $bairro = $conn->real_escape_string($_POST["bairro"]);
    $cep = $conn->real_escape_string($_POST["cep"]);
    $cidade = $conn->real_escape_string($_POST["cidade"]);
    $estado = $conn->real_escape_string($_POST["estado"]);
    $pais = $conn->real_escape_string($_POST["pais"]);
    $complemento = $conn->real_escape_string($_POST["complemento"]);

    // QUERY PESSOA
    $sql = " UPDATE tbpessoa 
    SET nome = '$nome', sobrenome = '$sobrenome', cpf = '$cpf', data_nascimento = '$dataNascimento', rg = '$rg', sexo = '$sexo', nacionalidade = '$nacionalidade'
    WHERE id = '$id'";
    
    $sql2 = "SELECT * FROM tbendereco_pessoa as e, tbtelefone as t WHERE t.fk_pessoa_id = '$id' and e.fk_pessoa_id = '$id'";
    $execution2 = $conn->query($sql2);

    $verificao = mysqli_num_rows($execution2);

    // INSERT PESSOA, ENDERECO E TELEFONE CASO PRIMEIRO CADASTRO
    if ($result = $conn->query($sql) && $verificao==0) {
        // QUERY E INSERCAO TELEFONE
        $conn->query("INSERT INTO tbtelefone (numero, tipo, fk_pessoa_id) VALUES ('$telefone', 'móvel', '$id')");
        // QUERY E INSERCAO ENDERECO
        $conn->query("INSERT INTO tbendereco_pessoa (rua, numero, bairro, complemento, cep, cidade, estado, pais, fk_pessoa_id) VALUES ('$rua', '$numero', '$bairro',
                                '$complemento', '$cep', '$cidade', '$estado', '$pais', '$id')");
        

        $_SESSION['mensagem'] = "Cadastro efetuado com sucesso. Você já pode acessar as funcionalides do site!";
        header('location: landing-page.php');
        exit();
    }else if($result = $conn->query($sql) && $verificao>0){
        // UPDATE ENDERECO
        $conn->query("UPDATE tbendereco_pessoa SET rua = '$rua', numero = '$numero', bairro = '$bairro', complemento= '$complemento', cep= '$cep', 
        cidade= '$cidade', estado= '$estado', pais= '$pais' WHERE fk_pessoa_id = '$id';");
         header('location: admin.php');
       
         // UPDATE TELEFONE
         $conn->query("UPDATE tbtelefone SET numero = '$telefone', tipo = 'móvel'WHERE fk_pessoa_id = '$id'");

    } else {
        $_SESSION['mensagem'] = "Erro executando INSERT: " . $conn->error . " Tente novo cadastro.";
        header('location: admin.php');
        exit();
    }
}
