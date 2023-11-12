<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Montserrat:wght@500&family=Rubik:wght@500&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="../styles/form-cadastro/_form.css">
    <link rel="stylesheet" href="../styles/landing-page/_header.css">
    <link rel="stylesheet" href="../styles/landing-page/_footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<!--    START HEADER SECTION-->
<header>
    <div class="flex-jc-c-ai-c">
        <div class="logo flex-ai-c">
            <img src="../assets/logo.svg" alt="Logo Eduk" width="160" id="logo-btn">
        </div>
    </div>
</header>

<meta charset="utf-8">
<!--    END HEADER SECTION-->


<body class="main-container">
<div class="flex-jc-c-ai-c">
    <form name="formCadPessoa" class="register-form" method="post" action="processa-cadastro.php"
          onsubmit="validarFormulario()">
        <h2 class="flex-jc-c-ai-c">Cadastro</h2>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field flex">
                <label class="register-form-label" for="nome">Nome</label>
                <input type="text" class="register-form-input" name="nome" id="nome" placeholder="Digite seu nome"
                       required
                       pattern="^[a-zA-Z]+(\s[a-zA-Z]+)+$">
            </div>

            <div class="register-form-field flex">
                <label class="register-form-label" for="sobrenome">Sobrenome</label>
                <input type="text" class="register-form-input" name="nome" id="sobrenome"
                       placeholder="Digite seu sobrenome"
                       required pattern="^[a-zA-Z]+(\s[a-zA-Z]+)+$">
            </div>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field flex">
                <label class="register-form-label" for="cpf">CPF</label>
                <input class="register-form-input" type="text" name="cpf" id="cpf" placeholder="123.456.789-00"
                       pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" required>
            </div>

            <div class="register-form-field flex">
                <label class="register-form-label" for="rg">RG</label>
                <input class="register-form-input" type="text" name="rg" id="rg" placeholder="12.345.678-9"
                       maxlength="12"
                       pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" required>
            </div>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field flex">
                <label class="register-form-label" for="nacionalidade">Nacionalidade</label>
                <input type="text" class="register-form-input" name="nacionalidade" id="nacionalidade" placeholder="BR"
                       required>
            </div>

            <div class="register-form-field flex">
                <label class="register-form-label" for="dataNascimento">Data de Nascimento</label>
                <input class="register-form-input" name="dataNascimento" id="dataNascimento" placeholder="DD/MM/AAAA"
                       required>
            </div>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field flex">
                <label class="register-form-label" for="telefone">Telefone</label>
                <input class="register-form-input" type="tel" name="telefone" id="telefone"
                       placeholder="(99) 99999-9999"
                       required>
            </div>

            <div class="register-form-field flex">
                <label class="register-form-label" for="sexo">Sexo</label>
                <select class="register-form-input" name="sexo" id="sexo" required>
                    <option value="" disabled selected></option>
                    <option value="Masculino">Masculino</option>
                    <option value="Feminino">Feminino</option>
                    <option value="Não informar">Não informar</option>
                </select><br>
            </div>
        </div>

        <div class="flex-jc-c-ai-c">
            <h2>Endereço</h2>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field flex">
                <label class="register-form-label" for="rua">Rua</label>
                <input class="register-form-input" type="text" name="rua" id="rua" placeholder="Rua Flores Azuis"
                       pattern="^[a-zA-Z]+(\s[a-zA-Z]+)+$" required>
            </div>

            <div class="register-form-field flex">
                <label class="register-form-label" for="bairro">Bairro</label>
                <input class="register-form-input" type="text" name="bairro" id="bairro" placeholder="Ex: Centro"
                       required>
            </div>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field-two flex">
                <label class="register-form-label" for="numero">Número</label>
                <input class="register-form-input" type="text" name="numero" id="numero" placeholder="999" required>
            </div>

            <div class="register-form-field-two flex">
                <label class="register-form-label" for="complemento">Complemento</label>
                <input class="register-form-input" type="text" name="complemento" id="complemento"
                       placeholder="Apartamento 101">
            </div>

            <div class="register-form-field-two flex">
                <label class="register-form-label" for="cep">CEP</label>
                <input class="register-form-input" type="text" name="cep" id="cep" placeholder="12345-678"
                       pattern="\d{5}-\d{3}" maxlength="9" required>
            </div>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="register-form-field-two flex">
                <label class="register-form-label" for="cidade">Cidade</label>
                <input class="register-form-input" type="text" name="cidade" id="cidade" placeholder="São Paulo"
                       required>
            </div>

            <div class="register-form-field-two flex">
                <label class="register-form-label" for="estado">Estado</label>
                <input class="register-form-input" type="text" name="estado" id="estado" placeholder="SP" required>
            </div>

            <div class="register-form-field-two flex">
                <label class="register-form-label" for="pais">País</label>
                <input class="register-form-input" type="text" name="pais" id="pais" placeholder="Brasil" required>
            </div>
        </div>

        <div class="flex-jc-c-ai-c">
            <a href="/painel-do-aluno.php">
                <button class="register-submit-button" type="submit" value="Enviar">Enviar</button>
            </a>
        </div>
    </form>
</div>

<!-- INICIO FOOTER -->
<footer class=" flex-jc-c-ai-c">
    <div class="social-media flex-jc-c-ai-c">
        <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
        <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
        <a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
    </div>
    <div>
        <p class="copyright">&copy; 2023 Eduk</p>
    </div>
</footer>
<!-- FINAL FOOTER -->
</body>

<script src="../scripts/cadastro-pessoa.js"></script>

</html>