<?php
session_start();
include('conexao.php');

$sql = "SELECT p.id, p.nome, p.sobrenome, p.email, p.cpf, p.rg, p.data_nascimento, 
               p.sexo, p.nacionalidade, t.numero as telefone, e.rua, e.numero, e.complemento,
               e.bairro, e.cep, e.cidade, e.estado, e.pais
        FROM tbpessoa AS p
        INNER JOIN tbendereco_pessoa AS e ON p.id = e.fk_pessoa_id
        INNER JOIN tbtelefone AS t ON p.id = t.fk_pessoa_id";

$result = $conn->query($sql);
?>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Eduk Admin</title>

    <link rel="stylesheet" href="../styles/admin/_admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>
    <div class="admin-container">
        <div class="top">
            <a href="cadastro-credenciais-pessoa.php">
                <button class="fa-solid fa-plus"></button>
            <</a>
        </div>
        <div>
            <table class="table-container">
                <thead>
                    <tr>
                        <th class="table-header">Id</th>
                        <th class="table-header">Nome</th> <!-- +sobrenome -->
                        <th class="table-header">Email</th>
                        <th class="table-header">Cpf</th>
                        <th class="table-header">Rg</th>
                        <th class="table-header">Data de nascimento</th>
                        <th class="table-header">Sexo</th>
                        <th class="table-header">Nacionalidade</th>
                        <th class="table-header">Telefone</th>
                        <th class="table-header">Rua</th>
                        <th class="table-header">Número</th>
                        <th class="table-header">Complemento</th>
                        <th class="table-header">Bairro</th>
                        <th class="table-header">Cep</th>
                        <th class="table-header">Cidade</th>
                        <th class="table-header">Estado</th>
                        <th class="table-header">País</th>
                        <th class="table-header"></th>
                        <th class="table-header"></th>
                    </tr>
                </thead>
                <tbody id="table-body">
                    <?php
                    while ($pessoa = mysqli_fetch_assoc($result)) :
                    ?>
                        <tr class="table-row">
                            <td><?php echo $pessoa['id'] ?></td>
                            <td><?php echo $pessoa['nome'] ?> <?php echo $pessoa['sobrenome'] ?></td> <!-- +sobrenome -->
                            <td><?php echo $pessoa['email'] ?></td>
                            <td><?php echo $pessoa['cpf'] ?></td>
                            <td><?php echo $pessoa['rg'] ?></td>
                            <td><?php echo $pessoa['data_nascimento'] ?></td>
                            <td><?php echo $pessoa['sexo'] ?></td>
                            <td><?php echo $pessoa['nacionalidade'] ?></td>
                            <td><?php echo $pessoa['telefone'] ?></td>
                            <td><?php echo $pessoa['rua'] ?></td>
                            <td><?php echo $pessoa['numero'] ?></td>
                            <td><?php echo $pessoa['complemento'] ?></td>
                            <td><?php echo $pessoa['bairro'] ?></td>
                            <td><?php echo $pessoa['cep'] ?></td>
                            <td><?php echo $pessoa['cidade'] ?></td>
                            <td><?php echo $pessoa['estado'] ?></td>
                            <td><?php echo $pessoa['pais'] ?></td>
                            <td><a href="cadastro-pessoa.php?id= <?php echo $pessoa['id'] ?>"><button><i class="fa-solid fa-pen-to-square"></i></button></a></td>
                            <td><a href="delete-cadastro.php?id= <?php echo $pessoa['id'] ?>"><button><i class="fa-solid fa-trash"></i></button></a></td>
                        </tr>
                    <?php
                    endwhile;
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>