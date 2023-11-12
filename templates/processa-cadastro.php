<?php
require 'conexao.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $conn->real_escape_string($_POST["nome"]);
    $cpf = $conn->real_escape_string($_POST["cpf"]);
    $dataNascimento = $conn->real_escape_string($_POST["dataNascimento"]);
    $rg = $conn->real_escape_string($_POST["rg"]);
    $sexo = $conn->real_escape_string($_POST["sexo"]);
    $nacionalidade = $conn->real_escape_string($_POST["nacionalidade"]);
    $telefone = $conn->real_escape_string($_POST["telefone"]);

    $rua = $conn->real_escape_string($_POST["rua"]);
    $numero = $conn->real_escape_string($_POST["numero"]);
    $bairro = $conn->real_escape_string($_POST["bairro"]);
    $cep = $conn->real_escape_string($_POST["cep"]);
    $cidade = $conn->real_escape_string($_POST["cidade"]);
    $estado = $conn->real_escape_string($_POST["estado"]);
    $pais = $conn->real_escape_string($_POST["pais"]);
    $complemento = $conn->real_escape_string($_POST["complemento"]);


    $sql = "INSERT INTO tbpessoa (nome, cpf, data_nascimento, rg, sexo, nacionalidade) VALUES ('$nome', '$cpf', '$dataNascimento', '$rg', 
            '$sexo', '$nacionalidade' where email = '$email', senha = md5('$senha') ";


    if ($result = $conn->query($sql)) {
        $pegaIDPessoa = "SELECT id FROM tbpessoa where email = '$email', senha = md5('$senha')";
        $resultID =  $conn->query($pegaIDPessoa);
        $idPessoa = mysqli_fetch_assoc($resultID);
        $id = $idPessoa["id"];
        $insereEndereco ="INSERT INTO tbendereco_pessoa (rua, numero, bairro, cep, cidade, estado, pais) VALUES ('$rua', '$numero', '$bairro', 
                            '$cep', '$cidade', '$estado', '$pais') WHERE id = '$id'";

        $_SESSION['mensagem'] = "Cadastro efetuado com sucesso. Você já pode acessar as funcionalides do site!";
        header('location: landing-page.php');
        exit();
    } else {
        $_SESSION['mensagem'] = "Erro executando INSERT: " . $conn->error . " Tente novo cadastro.";
        header('location: landing-page.php');
        exit();
    }
}

?>