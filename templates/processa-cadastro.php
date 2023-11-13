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


    $sql = " UPDATE tbpessoa 
    SET nome = '$nome', sobrenome = '$sobrenome', cpf = '$cpf', data_nascimento = '$dataNascimento', rg = '$rg', sexo = '$sexo', nacionalidade = '$nacionalidade'
    WHERE id = '$id'";


    if ($result = $conn->query($sql)) {

        $insereEndereco = "INSERT INTO tbendereco_pessoa (rua, numero, bairro, complemento, cep, cidade, estado, pais, fk_pessoa_id) VALUES ('$rua', '$numero', '$bairro',
                            '$complemento', '$cep', '$cidade', '$estado', '$pais', '$id')";
        
        $result2 = $conn->query($insereEndereco);

        $_SESSION['mensagem'] = "Cadastro efetuado com sucesso. Você já pode acessar as funcionalides do site!";
        header('location: landing-page.php');
        exit();
    } else {
        $_SESSION['mensagem'] = "Erro executando INSERT: " . $conn->error . " Tente novo cadastro.";
        header('location: landing-page.php');
        exit();
    }
}
