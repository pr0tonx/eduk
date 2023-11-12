<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Montserrat:wght@500&family=Rubik:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../styles/form-cadastro/_form.css">
    <link rel="stylesheet" href="../styles/_globals.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>

<!--    START HEADER SECTION-->
<header>
    <div class="flex-jc-sb-ai-c">
        <div class="flex-ai-c">
            <a href="#" class="logo flex">
                <img src="../assets/logo.svg" alt="Logo Eduk" width="160" id="logo-btn">
            </a>
        </div>

        <div class="flex-jc-sb-ai-c">
            <div class="header-btn scroll-btn"><a href="#" id="home-btn">Home</a></div>
            <div class="header-btn scroll-btn"><a href="#" id="benefits-btn">Benefícios</a></div>
            <div class="header-btn scroll-btn"><a href="#" id="resources-btn">Funcionalidades</a></div>
            <div class="header-btn scroll-btn"><a href="#" id="contacts-btn">Contato</a></div>
            <div class="header-btn login-btn"><a href="#">Acesso</a></div>
        </div>
    </div>
</header>
<!--    END HEADER SECTION-->

<body>




    <div class="form_container flex-jc-c-ai-c">

        <h2>Cadastro Pessoa</h2>
        <form name="formCadPessoa" class="form" method="post" action="processaCadastro.php" onsubmit="return validarFormulario()">
            <div class="form_field flex-jc-c-ai-c">
                <label for="nome" class="">Nome</label>
                <input type="text" class="form_input" name="nome" id="nome" placeholder="Digite seu nome completo" required pattern="^[a-zA-Z]+(\s[a-zA-Z]+)+$">
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="cpf">CPF</label>
                <input type="text" class="form_input" name="cpf" id="cpf" placeholder="Ex: 123.456.789-00" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" maxlength="14" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="dataNascimento">Data de Nascimento</label>
                <input type="date" class="form_input" name="dataNascimento" id="dataNascimento"  placeholder="DD/MM/AAAA" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="rg">RG</label>
                <input type="text" class="form_input" name="rg" id="rg" placeholder="Ex: 12.345.678-9" maxlength="12" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="nacionalidade">Nacionalidade</label>
                <input type="text" class="form_input" name="nacionalidade" id="nacionalidade" placeholder="Ex: Brasil" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="telefone">Telefone</label>
                <input type="tel" class="form_input" name="telefone" id="telefone" placeholder="Ex: (99) 99999-9999" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="sexo">Sexo</label>
                <select name="sexo" class="form_input" id="sexo" required>
                    <option value="" disabled selected></option>
                    <option value="masculino">Masculino</option>
                    <option value="feminino">Feminino</option>
                    <option value="nao informar">Não informar</option>
                </select><br>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <h2>Endereço</h2>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="rua">Rua</label>
                <input type="text" class="form_input" name="rua" id="rua" placeholder="Ex: Rua Flores Azuis" pattern="^[a-zA-Z]+(\s[a-zA-Z]+)+$" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="numero">Número</label>
                <input type="text" class="form_input" name="numero" id="numero" placeholder="Ex: 999" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="complemento">Complemento</label>
                <input type="text" class="form_input" name="complemento" id="complemento" placeholder="Ex: Apartamento 101">
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="bairro">Bairro</label>
                <input type="text" class="form_input" name="bairro" id="bairro" placeholder="Ex: Centro" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="cep">CEP</label>
                <input type="text" class="form_input" name="cep" id="cep" placeholder="Ex: 12345-678" pattern="\d{5}-\d{3}" maxlength="9" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="cidade">Cidade</label>
                <input type="text" class="form_input" name="cidade" id="cidade" placeholder="Ex: São Paulo" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="estado">Estado</label>
                <input type="text" class="form_input" name="estado" id="estado" placeholder="Ex: SP" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <label for="pais">País</label>
                <input type="text" class="form_input" name="pais" id="pais" placeholder="Ex: Brasil" required>
            </div>

            <div class="form_field flex-jc-c-ai-c">
                <button type="submit" value="Enviar" class="submit_button">Enviar</button>
            </div>

    </div>
    </form>

    <script src="../scripts/cadastro-pessoa.js"></script>

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

</html>