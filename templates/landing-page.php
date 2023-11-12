<?php require 'conexao.php';?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Eduk</title>

    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Montserrat:wght@500&family=Rubik:wght@500&display=swap"
          rel="stylesheet">
  
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../styles/landing-page/_landing-page-main.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body class="main-container">
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
            <div class="header-btn login-btn" id="login-btn"><a href="#">Acesso</a></div>
        </div>
    </div>
</header>
<!--    END HEADER SECTION-->


<!--    START LOGIN DIALOG SECTION-->
<div class="flex-jc-c-ai-c">
          <form name="login-pessoa" class="form" method="post" action="processa-login.php">
    <div class="modal-container hidden" id="modal-container">
        <span class="close-btn" id="close-btn">x</span>

        <div class="modal-container-inner">
            <div class="top logo flex-jc-c-ai-c">
                <img src="../assets/logo.svg" alt="Logo Eduk" width="378">
            </div>

            <div class="middle-one login-form" id="middle-one">
                <input class="login-form__email"
                       type="email"
                       placeholder="Email"
                       required>

                <input type="password"
                       placeholder="Senha"
                       required>

                <div class="forgot-password" id="forgot-password">
                    Esqueci minha senha
                </div>
            </div>

            <div class="middle-two login-form hidden" id="middle-two">
                <input placeholder="Email">
            </div>

            <div class="middle-three hidden" id="middle-three">
                <span class="flex-jc-c-ai-c">Enviamos um link de recuperação de senha para seu email ;)</span>
            </div>

            <div class="bottom-one flex-jc-c-ai-c" id="bottom-one">
                <button type="submit" id="login-submit">Acessar</button>
            </div>

            <div class="bottom-two hidden flex-jc-sa-ai-c" id="bottom-two">
                <button id="fp-back-btn">Voltar</button>
                <button type="submit" id="submit-fp-btn">Enviar</button>
            </div>

            <div class="bottom-three hidden flex-jc-c-ai-c" id="bottom-three">
                <button id="fp-success-back-btn">Voltar</button>
            </div>
        </div>
    </div>
            </form>

    <div class="overlay hidden"></div>
</div>
<!--    END LOGIN DIALOG SECTION-->



<div class="body">
    <!--    START HERO SECTION-->
    <section class="hero-section flex-jc-c-ai-c">
        <img src="../assets/logo.svg" alt="">
    </section>
    <!--    END HERO SECTION-->


    <!--    START BENEFITS SECTION-->
    <section class="benefits-section" id="benefits-section">
        <div class="benefit flex-jc-sb-ai-c">
            <div class="benefit__text">
                <span class="benefit__text--title">Transforme sua gestão educacional com facilidade</span>
                <p class="benefit__text--content">
                    Nosso sistema oferece uma solução completa e amigável para administrar todos os aspectos da sua
                    instituição de ensino, desde a matrícula dos alunos até o controle financeiro, de forma
                    intuitiva e eficaz.
                </p>
            </div>
        </div>

        <div class="benefit flex-jc-sb-ai-c">
            <div class="benefit__text margin-right">
                <span class="benefit__text--title">Inovação e eficiência para sua escola</span>
                <p class="benefit__text--content">
                    Descubra como nossa plataforma moderna e eficiente pode otimizar a rotina da sua escola,
                    proporcionando uma administração mais ágil, comunicação aprimorada e processos automatizados.
                </p>
            </div>
            <div class="gears">
                <div class="gears-container">
                    <div class="gear-rotate-clockwise"></div>
                    <div class="gear-rotate-anticlockwise"></div>
                </div>
            </div>
        </div>

        <div class="benefit flex-jc-sb-ai-c">
            <div class="benefit__text">
                <span class="benefit__text--title">Gerencie sua escola de forma inteligente e descomplicada</span>
                <p class="benefit__text--content">
                    Simplificamos a gestão escolar com ferramentas poderosas que permitem controlar matrículas,
                    notas,
                    presença e finanças em um só lugar, proporcionando mais tempo para o que realmente importa: a
                    educação.
                </p>
            </div>
        </div>
    </section>
    <!--    END BENEFITS SECTION-->


    <!--    START RESOURCES SECTION-->
    <!--    TODO adicionar iframes com imagens dentro dos retângulos-->
    <section class="resources-section" id="resources-section">
        <div class="flex-jc-sa-ai-c">
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação do espaço integrado">
                <span class="resource__description">Espaço Integrado</span>
            </div>
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação da plataforma professor/aluno">
                <span class="resource__description">Plataforma professor/aluno</span>
            </div>
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação de espaço testes e provas">
                <span class="resource__description">Testes e provas</span>
            </div>
        </div>
        <div class="resource-line flex-jc-sa-ai-c">
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação do controle de frequência">
                <span class="resource__description">Controle de frequência</span>
            </div>
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação da agenda digital integrada">
                <span class="resource__description">Agenda digital integrada</span>
            </div>
            <div class="resource__frame flex-jc-c-ai-c">
                <img src="../assets/resource-frame.svg" alt="Moldura para representação do suporte online">
                <span class="resource__description">Suporte online</span>
            </div>
        </div>
    </section>
    <!--    END RESOURCES SECTION-->


    <!--    START TESTIMONIALS SECTION-->
    <section class="testimonials-section" id="testimonials-section">
        <div>
            <ul class="testimonial__cards">
                <li class="testimonial__card">
                    <div>
                        <div class="flex-ai-c">
                            <img src="../assets/profile-1.png" width="44" height="44"
                                 alt="Foto de usuário relatando sua experiência na plataforma">
                            <span class="card__title">André Ruiz</span>
                        </div>
                        <div class="card__content">
                            <p>
                                O sistema é incrivelmente intuitivo! Facilitou muito nossa administração escolar.
                            </p>
                        </div>
                    </div>
                </li>
                <li class="testimonial__card">
                    <div>
                        <div class="flex-ai-c">
                            <img src="../assets/profile-2.png" width="44" height="44"
                                 alt="Foto de usuário relatando sua experiência na plataforma">
                            <span class="card__title">Alberto Assunção</span>
                        </div>
                        <div class="card__content">
                            <p>
                                Uma ferramenta completa que nos ajudou a organizar a escola de forma eficiente.
                                Recomendamos!
                            </p>
                        </div>
                    </div>
                </li>
                <li class="testimonial__card">
                    <div>
                        <div class="flex-ai-c">
                            <img src="../assets/profile-3.png" width="44" height="44"
                                 alt="Foto de usuário relatando sua experiência na plataforma">
                            <span class="card__title">Michel Nazário</span>
                        </div>
                        <div class="card__content">
                            <p>
                                Adoramos a automação de tarefas e a simplicidade de uso. Mudou nossa forma de gerenciar
                                a
                                escola.
                            </p>
                        </div>
                    </div>
                </li>
                <li class="testimonial__card">
                    <div>
                        <div class="flex-ai-c">
                            <img src="../assets/profile-4.png" width="44" height="44"
                                 alt="Foto de usuário relatando sua experiência na plataforma">
                            <span class="card__title">Felipe Rodrigues</span>
                        </div>
                        <div class="card__content">
                            <p>
                                Excelente suporte e funcionalidades que atendem perfeitamente nossas necessidades. Nota
                                10!
                            </p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!--    END TESTIMONIALS SECTION-->


    <!--    START CONTACT SECTION-->
    <section class="contacts-section" id="contacts-section">
        <div class="title flex-jc-c-ai-c">
            <span>Entre em contato</span>
        </div>
        <div class="flex-jc-sa-ai-c">
            <div class="contact__card flex-jc-sb-ai-c">
                <div class="contact__card--image flex-jc-sb-ai-c">
                    <i class="fa-regular fa-envelope"></i>
                </div>
                <div class="contact__card--title flex-jc-sb-ai-c">
                    <span>Email</span>
                </div>
                <div class="contact__card--description flex-jc-sb-ai-c">
                    <span>comercial@eduk.com.br</span>
                </div>
            </div>
            <div class="contact__card flex-jc-sb-ai-c">
                <div class="contact__card--image flex-jc-sb-ai-c">
                    <i class="fa-regular fa-building"></i>
                </div>
                <div class="contact__card--title flex-jc-sb-ai-c">
                    <span>Endereço</span>
                </div>
                <div class="contact__card--description flex-jc-sb-ai-c">
                    <span>Rua Aquela Lá, 132,</span>
                    <span>81811-000</span>
                    <span>Curitiba - Paraná</span>
                </div>
            </div>
            <div class="contact__card flex-jc-sb-ai-c">
                <div class="contact__card--image flex-jc-sb-ai-c">
                    <i class="fa-solid fa-mobile-screen-button"></i>
                </div>
                <div class="contact__card--title flex-jc-sb-ai-c">
                    <span>Celular</span>
                </div>
                <div class="contact__card--description flex-jc-sb-ai-c">
                    <span>(41) 99999-9999</span>
                </div>
            </div>
        </div>
    </section>
    <!--    END CONTACT SECTION-->
</div>


<!--    START FOOTER SECTION-->
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
<!--   END FOOTER SECTION-->

</body>

<script src="../scripts/landing-page.js"></script>

</html>