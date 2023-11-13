<?php
include("conexao.php");

if($_SERVER["REQUEST_METHOD"] == "POST" ){
    $email = $conn->real_escape_string($_POST['email']);
    $senha = $conn->real_escape_string($_POST['senha']);
    $senha = md5($senha);

    $sql = "SELECT id FROM tbpessoa where email = '$email' and senha = '$senha' ";
    $result = $conn->query($sql);
    if(mysqli_num_rows($result) == 1){
        $pegaResult = mysqli_fetch_assoc($result);
        $id = $pegaResult['id'];
        $_SESSION['mensagem'] = "Login efetuado com sucesso!";
        $url = 'cadastro-pessoa.php?id=' . $id;
        header('location: '. $url);
        exit();
    }else{
        $_SESSION['mensagem'] = "Credenciais invalidas";
        header("landing-page.php");
    }
}
?>