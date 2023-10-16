create table escola(
    Id INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255),
    Assinatura INT,
    Email varchar(255),
    endereco varchar(255) not NULL,
    telefone INT(11)
);
create table "ano escolar"(
    Id int PRIMARY KEY not NULL,
    DataInicio DATE,
    DataInicio DATE,
    Serie int(1) not NULL
);
create table disciplina(
    Id int PRIMARY KEY not NULL,
    Nome VARCHAR(50)
);
create table docente(
    Id int PRIMARY KEY not NULL,
    pessoaDocente int not NULL,
    FOREIGN KEY(pessoaDocente) REFERENCES Pessoa(Id),
    Salario INT(6)
);
create table discente(
    Id int PRIMARY KEY not NULL,
    Obs VARCHAR(255),
    FOREIGN KEY(Obs) REFERENCES observacao(Id)
);
create table responsavel(
    Id int PRIMARY KEY not NULL,
    pessoaResponsavel INT not null,
    FOREIGN key(pessoaResponsavel) REFERENCES Pessoa(Id)
);

create table notas(
    Id int PRIMARY KEY not NULL,
    Nota INT(2)
);
create table avaliacao(
    Id int PRIMARY KEY not NULL,
    Peso INT(3) not NULL,
    dataAvaliacao DATE not null
);
create table ementa(
    Id int PRIMARY KEY not NULL
);
create table aula(
    Id int PRIMARY KEY not NULL,
    dataAula date not null,
    duracao int(3),
    conteudo varchar(255),
    observacaoAula int not null,
    FOREIGN KEY(observacaoAula) REFERENCES observacao(Id)
);
create table conteudo(
    Id int PRIMARY KEY not NULL,
    Bibliografia VARCHAR(255),
    Duracao int(3) not null,
    Topico VARCHAR(255) not null
);
create table observacao(
    Id int PRIMARY KEY not NULL,
    Ocorrido VARCHAR(255) not NULL,
    dataObservacao date not null
);
create table endereco(
    -- tomei uma liberdade criativa aq fiz o cep ser o id do endereço
    CEP int(8) PRIMARY KEY,
    Pais VARCHAR(255) not NULL,
    Estado VARCHAR(255) not NULL,
    Cidade VARCHAR(255) not NULL,
    Bairro VARCHAR(255) not NULL,
    Rua VARCHAR(255) not NULL,
    Complemento VARCHAR(255),
    Pais VARCHAR(255) not NULL,
);
create table telefone(
    Numero int(11) PRIMARY KEY not NULL,
    Tipo VARCHAR(10) PRIMARY KEY not NULL
);
create table pessoa(
    RG INT(9) PRIMARY KEY NOT NULL,
    Nome VARCHAR(20) not null,
    Sobrenome varcahr(50) not null,
    Nascimento Date not null,
    CPF INT(11) not null,
    sexo char(1),
    categoria varchar(50),
    Telefone int not null,
    FOREIGN KEY (Telefone) REFERENCES telefone(Numero),
    Endereco int not null,
    FOREIGN KEY (Endereco) REFERENCES endereco(CEP),
    Nacionalidade Varchar(50)
);