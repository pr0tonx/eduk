<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eduk- Cadastro inicial</title>
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Montserrat:wght@500&family=Rubik:wght@500&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="../styles/form-cadastro/_form.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>

<body>

    <body class="main-container-cad-inicial">

        <div class="flex-jc-c-ai-c">

            <form name="formCadPessoa" class="register-form" method="post" action="processa-cadastro-inicial.php" onsubmit="validarFormulario()">
                <h2 class="flex-jc-c-ai-c">Cadastro Inicial - Pessoa</h2>

                <div class="flex-jc-c-ai-c">
                    <div class="register-form-field-two flex">
                        <label class="register-form-label" for="email">Email</label>
                        <input type="email" class="register-form-input" name="email" id="email" placeholder="teste@eduk.com" required>
                    </div>

                    <div class="register-form-field-two flex">
                        <label class="register-form-label" for="senha">Senha</label>
                        <input type="password" class="register-form-input" name="senha" id="senha" placeholder="Teste123" pattern="^(?=.*[a-z])(?=.*[A-Z]).{8,}$" required>
                    </div>

                </div>
                
                <div class="flex-jc-c">
                    <div class="register-form-field flex-jc-c-ai-c">
                        <a href="processa-cadastro-inicial.php">
                            <button class="register-submit-button" type="submit" value="Enviar" id="submit">Enviar</button>
                        </a>
                    </div>
                </div>
        </div>


    </body>

</html>