INSERT INTO TBPessoa 
VALUES (
        'John',
        'Doe',
        '1990-01-15',
        '12345678901',
        'ABC123456',
        'masculino',
        'Brasil'
    );
INSERT INTO TBResponsavel 
VALUES ('Parent', 1);
INSERT INTO TBEscola 
VALUES (
        '12345678901234',
        'Escola teste',
        '2023-01-01',
        1,
        'escola@teste.com',
        1
    );
INSERT INTO TBDisciplina 
VALUES ('Math', 1, 1);
INSERT INTO TBEmenta 
VALUES (1);
INSERT INTO TBEndereco_Pessoa 
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
INSERT INTO TBEndereco_Escola 
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
INSERT INTO TBTelefone 
VALUES ('1234567890', 'residencial', 1);
INSERT INTO TBDiscente
VALUES (1, 1);
INSERT INTO TBRel_Frequencia 
VALUES (1, 1, '2023-10-15 09:00:00', 1);
INSERT INTO TBAvaliacao 
VALUES ('2023-10-20 14:00:00', 10.0, 1);
INSERT INTO TBNotas 
VALUES (8.5, 1, 1);
INSERT INTO TBDocente 
VALUES (5000.00, 1, 1);
INSERT INTO TBObservacao 
VALUES ('2023-10-15 13:45:00', 'Interrompeu a aula', 1);
INSERT INTO TBAula 
VALUES (
        '2023-10-15 09:00:00',
        '1 hora',
        'Introdução à Algoritimos',
        1
    );
INSERT INTO TBConteudo 
VALUES (
        '30 minutes',
        'Questionário',
        'Questionário sobre algorítimos divide and conquer',
        1
    );