CREATE DATABASE eduk;
USE eduk;

CREATE TABLE TBDocente (
    id INT NOT NULL AUTO_INCREMENT,
    salario FLOAT NOT NULL,
    fk_pessoa_id INT NOT NULL,
    fk_disciplina_codigo INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_pessoa_id) REFERENCES TBPessoa(id),
    FOREIGN KEY (fk_disciplina_codigo) REFERENCES TBDisciplina(codigo)
);

CREATE TABLE TBObservacao (
    id INT NOT NULL AUTO_INCREMENT,
    data_ocorrido DATETIME NOT NULL,
    ocorrido CHAR(255) NOT NULL,
    fk_discente_matricula INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_discente_matricula) REFERENCES TBDiscente(matricula)
);

CREATE TABLE TBAula (
    id INT NOT NULL AUTO_INCREMENT,
    data_aula DATETIME NOT NULL,
    duracao CHAR(10) NOT NULL,
    conteudo VARCHAR(255) NOT NULL,
    fk_ementa_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_ementa_id) REFERENCES TBEmenta(id)
);

CREATE TABLE TBConteudo (
    id INT NOT NULL AUTO_INCREMENT,
    duracao CHAR(10) NOT NULL,
    bibliografia VARCHAR(255),
    topico VARCHAR(255) NOT NULL,
    fk_ementa_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_ementa_id) REFERENCES TBEmenta(id)
);

CREATE TABLE TBEmenta (
    id INT NOT NULL AUTO_INCREMENT,
    fk_disciplina_codigo INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_disciplina_codigo) REFERENCES TBDisciplina(codigo)
);

CREATE TABLE TBTelefone (
    numero CHAR(11) NOT NULL,
    tipo ENUM('residencial', 'fixo', 'móvel') NOT NULL,
    fk_pessoa_id INT NOT NULL,
    PRIMARY KEY (numero),
    FOREIGN KEY (fk_pessoa_id) REFERENCES TBPessoa(id)
);

CREATE TABLE TBEndereco_Pessoa (
    id INT NOT NULL AUTO_INCREMENT,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(5) NOT NULL,
    complemento VARCHAR(16),
    cep VARCHAR(8) NOT NULL,
    bairro VARCHAR(64) NOT NULL,
    cidade VARCHAR(64) NOT NULL,
    estado VARCHAR(19) NOT NULL,
    pais VARCHAR(6) NOT NULL,
    fk_pessoa_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_pessoa_id) REFERENCES TBPessoa(id)
);

CREATE TABLE TBEndereco_Escola (
    id INT NOT NULL AUTO_INCREMENT,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(5) NOT NULL,
    complemento VARCHAR(16),
    cep VARCHAR(8) NOT NULL,
    bairro VARCHAR(64) NOT NULL,
    cidade VARCHAR(64) NOT NULL,
    estado VARCHAR(19) NOT NULL,
    pais VARCHAR(6) NOT NULL,
    fk_pessoa_cnpj CHAR(14),
    fk_endereco_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_pessoa_cnpj) REFERENCES TBEscola(cnpj)
);

CREATE TABLE TBPessoa (
    id INT NOT NULL AUTO_INCREMENT,
    nome CHAR(64) NOT NULL,
    sobrenome CHAR(64) NOT NULL,
    data_nascimento CHAR(10) NOT NULL,
    cpf CHAR(11),
    rg CHAR(9) NOT NULL,
    sexo ENUM('masculino', 'feminino', 'nao informar') NOT NULL,
    nacionalidade CHAR(16) NOT NULL,
    fk_responsavel_id INT,
    fk_docente_id INT,
    fk_discente_mat INT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_responsavel_id) REFERENCES TBResponsavel(id),
    FOREIGN KEY (fk_docente_id) REFERENCES TBDocente(id),
    FOREIGN KEY (fk_discente_mat) REFERENCES TBDiscente(matricula)
);

CREATE TABLE TBResponsavel (
    id INT NOT NULL AUTO_INCREMENT,
    vinculo CHAR(16) NOT NULL,
    fk_pessoa_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_pessoa_id) REFERENCES TBPessoa(id)
);

CREATE TABLE TBEscola (
    cnpj CHAR(14) NOT NULL,
    nome CHAR(255) NOT NULL,
    data_ingresso DATETIME NOT NULL,
    assinatura BOOLEAN NOT NULL,
    email CHAR(255) NOT NULL,
    fk_endereco_id INT NOT NULL,
    PRIMARY KEY (cnpj),
    FOREIGN KEY (fk_endereco_id) REFERENCES TBEndereco_Escola(id)
);

CREATE TABLE TBAno_Escolar (
    id INT NOT NULL AUTO_INCREMENT,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME NOT NULL,
    serie CHAR(8) NOT NULL,
    fk_escola_cnpj CHAR(14) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_escola_cnpj) REFERENCES TBEscola(cnpj)
);

CREATE TABLE TBRel_Turma (
    fk_ano_escolar_id INT NOT NULL,
    fk_disciplina_codigo INT NOT NULL,
    nome CHAR(16),
    PRIMARY KEY (fk_ano_escolar_id, fk_disciplina_codigo),
    FOREIGN KEY (fk_ano_escolar_id) REFERENCES TBAno_Escolar(id),
    FOREIGN KEY (fk_disciplina_codigo) REFERENCES TBDisciplina(codigo)
);

CREATE TABLE TBDisciplina (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome CHAR(32) NOT NULL,
    fk_ementa_id INT NOT NULL,
    fk_docente_id INT NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (fk_ementa_id) REFERENCES TBEmenta(id),
    FOREIGN KEY (fk_docente_id) REFERENCES TBDocente(id)
);

CREATE TABLE TBDiscente (
    matricula INT NOT NULL AUTO_INCREMENT,
    fk_pessoa_id INT NOT NULL,
    fk_responsavel_id INT NOT NULL,
    PRIMARY KEY (matricula),
    FOREIGN KEY (fk_pessoa_id) REFERENCES TBPessoa(id),
    FOREIGN KEY (fk_responsavel_id) REFERENCES TBResponsavel(id)
);

CREATE TABLE TBRel_Frequencia (
    id INT NOT NULL AUTO_INCREMENT,
    fk_discente_mat INT NOT NULL,
    fk_disciplina_codigo INT NOT NULL,
    data_aula DATETIME NOT NULL,
    presenca BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_discente_mat) REFERENCES TBDiscente(matricula),
    FOREIGN KEY (fk_disciplina_codigo) REFERENCES TBDisciplina(codigo)
);

CREATE TABLE TBAvaliacao (
    id INT NOT NULL AUTO_INCREMENT,
    date_avaliacao DATETIME NOT NULL,
    peso FLOAT NOT NULL,
    fk_disciplina_codigo INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_disciplina_codigo) REFERENCES TBDisciplina(codigo)
);

CREATE TABLE TBNotas (
    id INT NOT NULL AUTO_INCREMENT,
    nota FLOAT NOT NULL,
    fk_discente_mat INT NOT NULL,
    fk_avaliacao_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_discente_mat) REFERENCES TBDiscente(matricula),
    FOREIGN KEY (fk_avaliacao_id) REFERENCES TBAvaliacao(id)
);
