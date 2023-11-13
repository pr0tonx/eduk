<?php 
    require 'conexao.php';
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $email = $_POST['email'];
        $senha = md5($_POST['senha']);

        $conn->query("INSERT INTO tbpessoa (email, senha) VALUES ('$email', '$senha')");

        header('location: admin.php');
    }
?>