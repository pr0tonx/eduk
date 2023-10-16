INSERT INTO TBPessoa (
        nome,
        sobrenome,
        data_nascimento,
        cpf,
        rg,
        sexo,
        nacionalidade
    )
VALUES (
        'John',
        'Doe',
        '1990-01-15',
        '12345678901',
        'ABC123456',
        'masculino',
        'Brasil'
    );
INSERT INTO TBResponsavel (vinculo, fk_pessoa_id)
VALUES ('Parent', 1);
INSERT INTO TBEscola (
        cnpj,
        nome,
        data_ingresso,
        assinatura,
        email,
        fk_endereco_id
    )
VALUES (
        '12345678901234',
        'Escola teste',
        '2023-01-01',
        1,
        'escola@teste.com',
        1
    );
INSERT INTO TBDisciplina (nome, fk_ementa_id, fk_docente_id)
VALUES ('Math', 1, 1);
INSERT INTO TBEmenta (fk_disciplina_codigo)
VALUES (1);
INSERT INTO TBEndereco_Pessoa (
        rua,
        numero,
        complemento,
        cep,
        bairro,
        cidade,
        estado,
        pais,
        fk_pessoa_id
    )
VALUES (
        'Avenida das torres',
        '456',
        'Apt 101',
        '12345-678',
        'Brooklyn',
        'Curitiba',
        'Parana',
        'Brasil',
        1
    );
INSERT INTO TBEndereco_Escola (
        rua,
        numero,
        complemento,
        cep,
        bairro,
        cidade,
        estado,
        pais,
        fk_pessoa_cnpj,
        fk_endereco_id
    )
VALUES (
        'Almirante Alexandrino',
        '789',
        'Suite 201',
        '98765-432',
        'Suburbia',
        'Townsville',
        'Minas Gerais',
        'Brasil',
        '12345678901234',
        2
    );
INSERT INTO TBTelefone (numero, tipo, fk_pessoa_id)
VALUES ('1234567890', 'residencial', 1);
INSERT INTO TBDiscente (fk_pessoa_id, fk_responsavel_id)
VALUES (1, 1);
INSERT INTO TBRel_Frequencia (
        fk_discente_mat,
        fk_disciplina_codigo,
        data_aula,
        presenca
    )
VALUES (1, 1, '2023-10-15 09:00:00', 1);
INSERT INTO TBAvaliacao (date_avaliacao, peso, fk_disciplina_codigo)
VALUES ('2023-10-20 14:00:00', 10.0, 1);
INSERT INTO TBNotas (nota, fk_discente_mat, fk_avaliacao_id)
VALUES (8.5, 1, 1);
INSERT INTO TBDocente (salario, fk_pessoa_id, fk_disciplina_codigo)
VALUES (5000.00, 1, 1);
INSERT INTO TBObservacao (data_ocorrido, ocorrido, fk_discente_matricula)
VALUES ('2023-10-15 13:45:00', 'Interrompeu a aula', 1);
INSERT INTO TBAula (data_aula, duracao, conteudo, fk_ementa_id)
VALUES (
        '2023-10-15 09:00:00',
        '1 hora',
        'Introdução à Algoritimos',
        1
    );
INSERT INTO TBConteudo (duracao, bibliografia, topico, fk_ementa_id)
VALUES (
        '30 minutes',
        'Questionário',
        'Questionário sobre algorítimos divide and conquer',
        1
    );