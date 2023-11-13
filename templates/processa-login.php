<?php
include("conexao.php");

session_start();

if($_SERVER["REQUEST_METHOD"] == "POST" ){
    $email = $conn->real_escape_string($_POST['email']);
    $senha = $conn->real_escape_string($_POST['senha']);
    $senha = md5($senha);

    $sql = "SELECT id, nome, email, senha FROM tbpessoa where email = '$email' and senha = '$senha' ";
    $result = $conn->query($sql);
    $pessoa = mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result) == 1 && $pessoa['nome']== null){
        $id = $pessoa['id'];
        $url = 'cadastro-pessoa.php?id=' . $id;
        header('location: '. $url);
        exit();
    }else if(mysqli_num_rows($result) == 1 && $pessoa['nome']!== null){
        header('location: painel-aluno.php');
    }else{
        $_SESSION['authLoginError'] = 'Credenciais invalidas!';

       header('location: landing-page.php');
        exit();
    }
}
?>