<?php 
    require 'conexao.php';
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $email = $_POST['email'];
        $senha = md5($_POST['senha']);

        $conn->query("INSERT INTO tbpessoa (nome, email, senha) VALUES (NULL,'$email', '$senha')");

        header('location: admin.php');
    }
?>