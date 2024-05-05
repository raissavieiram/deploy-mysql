INSERT INTO TB_TIPO_VEICULO (DESCRICAO_TIPO_VEICULO, UTILIZACAO) VALUES
('Ambulância', 'Transporte de pacientes'),
('Caminhão', 'Transporte de produtos médicos');

INSERT INTO TB_VEICULO (ID_TIPO_VEICULO, PLACA, COR) VALUES
(1, 'ABC1234', 'Branco'),
(1, 'DEF5678', 'Branco'),
(2, 'XYZ5678', 'Azul');

INSERT INTO TB_TIPO_PRODUTO_MEDICO (DESCRICAO_TIPO_PRODUTO_MEDICO, CATEGORIA) VALUES
('Medicamentos', 'Farmacêutico'),
('Equipamentos', 'Hospitalar');

INSERT INTO TB_PRODUTO_MEDICO (NOME_PRODUTO, DESCRICAO, ID_TIPO_PRODUTO_MEDICO, MARCA) VALUES
('Paracetamol', 'Analgésico e antipirético', 1, 'MedCo'),
('Estetoscópio', 'Instrumento para auscultar', 2, 'HealthTools');

INSERT INTO TB_PACIENTE (NOME_PACIENTE, ENDERECO, DATA_NASCIMENTO, TELEFONE) VALUES
('João Silva', 'Rua dos Bobos, 0', '1985-04-12', '999888777'),
('Maria Oliveira', 'Avenida Principal, 1234', '1990-05-15', '988777666'),
('Carlos Andrade', 'Rua Nova, 56', '1978-08-22', '977666555'),
('Ana Santos', 'Beco dos Artistas, 12', '1992-07-20', '922333444'),
('Pedro Gonçalves', 'Alameda das Flores, 23', '1988-09-30', '933444555');

INSERT INTO TB_UNIDADE_SAUDE (NOME_UNIDADE, ENDERECO, TIPO_UNIDADE) VALUES
('Hospital Central', 'Av. Central, 456', 'Hospital'),
('Clínica Boa Saúde', 'Rua da Saúde, 789', 'Clínica');

INSERT INTO TB_TRANSPORTE (ID_VEICULO, DATA_HORA_INICIO, DATA_HORA_FIM, ORIGEM, DESTINO) VALUES
(1, '2023-04-01 08:00:00', '2023-04-01 09:00:00', 'Rua dos Bobos, 0', 'Hospital Central'),
(1, '2023-04-02 10:00:00', '2023-04-02 11:00:00', 'Avenida Principal, 1234', 'Hospital Central'),
(2, '2023-04-15 09:00:00', '2023-04-15 10:00:00', 'Rua dos Bobos, 0', 'Hospital Central'),
(2, '2023-05-01 10:00:00', '2023-05-01 11:00:00', 'Avenida Principal, 1234', 'Hospital Central'),
(1, '2023-04-18 07:00:00', '2023-04-18 08:00:00', 'Beco dos Artistas, 12', 'Clínica Boa Saúde'),
(1, '2023-05-05 08:30:00', '2023-05-05 09:30:00', 'Alameda das Flores, 23', 'Hospital Central'),
(1, '2023-05-10 08:00:00', '2023-05-10 09:00:00', 'Rua Nova, 56', 'Hospital Central');

INSERT INTO TB_VISITA (ID_PACIENTE, ID_UNIDADE_SAUDE, DATA_VISITA, MOTIVO_VISITA) VALUES
(1, 1, '2023-04-01', 'Consulta de rotina'),
(2, 1, '2023-04-02', 'Exame de emergência'),
(3, 2, '2023-04-03', 'Consulta de acompanhamento'),
(4, 1, '2023-05-06', 'Revisão médica'),
(5, 2, '2023-05-07', 'Consulta especializada');

INSERT INTO TB_PACIENTE_TRANSPORTE (ID_PACIENTE, ID_TRANSPORTE, MOTIVO_TRANSPORTE, OBSERVACOES) VALUES
(1, 1, 'Acidente', ''),
(2, 2, 'Emergência', ''),
(3, 2, 'Emergência', ''),
(4, 3, 'Acidente', ''),
(5, 4, 'Acidente', ''),
(1, 4, 'Acidente', ''),
(2, 4, 'Acidente', ''),
(3, 5, 'Emergência', ''),
(4, 5, 'Emergência', ''),
(5, 5, 'Emergência', ''),
(3, 6, 'Emergência', ''),
(4, 6, 'Emergência', ''),
(5, 6, 'Emergência', '');

INSERT INTO TB_PRODUTO_MEDICO_TRANSPORTE (ID_PRODUTO_MEDICO, ID_TRANSPORTE, QUANTIDADE, OBSERVACOES) VALUES
(1, 7, 600, ''),
(2, 7, 200, '');

INSERT INTO TB_VISITA_PRODUTO_MEDICO (ID_PRODUTO_MEDICO, ID_VISITA, QUANTIDADE, NUMERO_RECEITA) VALUES
(1, 1, 10, 12345),
(2, 1, 30, 23443),
(2, 2, 5, 12346),
(1, 3, 20, 12347),
(2, 4, 1, 25648),
(2, 5, 2, 12349),
(1, 5, 15, 43350);

