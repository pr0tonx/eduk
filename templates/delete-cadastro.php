<?php 
    include('conexao.php');
    if(!empty($_GET)){
        $id = $_GET['id'];
        $conn->query("DELETE FROM tbpessoa WHERE id = '$id'");
        header('location: admin.php');
        exit();
        
    }
?>
