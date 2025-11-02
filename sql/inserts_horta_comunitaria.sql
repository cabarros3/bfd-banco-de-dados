-- ===============================
-- Voluntários
-- ===============================
INSERT INTO voluntario (nome_voluntario) VALUES
('Camilla Barros'),
('João Silva'),
('Maria Souza'),
('Pedro Lima'),
('Ana Costa'),
('Lucas Rocha'),
('Fernanda Dias'),
('Rafael Martins'),
('Juliana Alves'),
('Thiago Pereira');

UPDATE voluntario SET funcao = 'Agricultor' WHERE voluntario_id IN (1,2,3);
UPDATE voluntario SET funcao = 'Coordenador' WHERE voluntario_id IN (4,5);
UPDATE voluntario SET funcao = 'Supervisor' WHERE voluntario_id IN (6,7);
UPDATE voluntario SET funcao = 'Assistente' WHERE voluntario_id IN (8,9,10);

-- ===============================
-- Telefones dos voluntários
-- ===============================
INSERT INTO telefone_usuario (numero, voluntario_id) VALUES
('11987654321', 1),
('21987654322', 2),
('31987654323', 3),
('11987654324', 4),
('21987654325', 5),
('31987654326', 6),
('11987654327', 7),
('21987654328', 8),
('31987654329', 9),
('11987654330', 10);

-- ===============================
-- Canteiros
-- ===============================
INSERT INTO canteiro (nome_canteiro, localizacao_canteiro, tamanho_canteiro) VALUES
('Canteiro Central', 'Área principal da horta', 20.5),
('Canteiro Norte', 'Próximo à entrada norte', 15.0),
('Canteiro Sul', 'Próximo à entrada sul', 12.75),
('Canteiro Leste', 'Lado leste da horta', 18.0),
('Canteiro Oeste', 'Lado oeste da horta', 17.5),
('Canteiro Infantil', 'Área infantil', 10.0),
('Canteiro Orgânico', 'Área orgânica', 22.0),
('Canteiro Flores', 'Área de flores', 8.0),
('Canteiro Ervas', 'Área de ervas', 14.0),
('Canteiro Experimental', 'Área experimental', 9.5);

-- ===============================
-- Plantas
-- ===============================
INSERT INTO planta (nome_planta, tempo_cultivo) VALUES
('Alface', '30 dias'),
('Tomate', '60 dias'),
('Cenoura', '45 dias'),
('Rúcula', '25 dias'),
('Espinafre', '35 dias'),
('Beterraba', '50 dias'),
('Coentro', '20 dias'),
('Manjericão', '40 dias'),
('Salsinha', '25 dias'),
('Pepino', '55 dias');

-- ===============================
-- Cultivos
-- ===============================
INSERT INTO cultivo (data_cultivo, voluntario_id, canteiro_id, planta_id) VALUES
('2025-11-01', 1, 1, 1),
('2025-11-02', 2, 2, 2),
('2025-11-03', 3, 3, 3),
('2025-11-04', 4, 4, 4),
('2025-11-05', 5, 5, 5),
('2025-11-06', 6, 6, 6),
('2025-11-07', 7, 7, 7),
('2025-11-08', 8, 8, 8),
('2025-11-09', 9, 9, 9),
('2025-11-10', 10, 10, 10);

-- ===============================
-- Colheitas
-- ===============================
INSERT INTO colheita (data_colheita, quantidade_colhida, cultivo_id) VALUES
('2025-11-30', 5.0, 1),
('2025-12-01', 10.0, 2),
('2025-12-02', 7.5, 3),
('2025-12-03', 6.0, 4),
('2025-12-04', 8.0, 5),
('2025-12-05', 12.0, 6),
('2025-12-06', 4.5, 7),
('2025-12-07', 9.0, 8),
('2025-12-08', 11.0, 9),
('2025-12-09', 5.5, 10);

-- ===============================
-- Instituições
-- ===============================
INSERT INTO instituicao (nome_instituicao, rua, numero, complemento, bairro, cidade, estado, cep) VALUES
('Asilo Feliz', 'Rua das Flores', '123', '', 'Centro', 'São Paulo', 'SP', '01001000'),
('Creche Esperança', 'Avenida Brasil', '456', 'Bloco B', 'Jardim', 'Rio de Janeiro', 'RJ', '20020000'),
('ONG Verde Vida', 'Rua Verde', '789', '', 'Bosque', 'Curitiba', 'PR', '80010000'),
('Asilo Alegria', 'Rua Alegria', '101', '', 'Centro', 'Belo Horizonte', 'MG', '30120000'),
('Creche Amor', 'Avenida das Crianças', '202', '', 'Jardim', 'Fortaleza', 'CE', '60015000'),
('Casa do Idoso', 'Rua do Sol', '303', 'Apto 2', 'Centro', 'Porto Alegre', 'RS', '90030000'),
('Associação Luz', 'Rua Luz', '404', '', 'Bosque', 'Recife', 'PE', '50040000'),
('Creche Crescer', 'Avenida Crescer', '505', '', 'Jardim', 'Salvador', 'BA', '40050000'),
('Asilo Esperança', 'Rua Esperança', '606', '', 'Centro', 'Manaus', 'AM', '69060000'),
('ONG Semente', 'Rua Semente', '707', '', 'Bosque', 'Florianópolis', 'SC', '88070000');

-- ===============================
-- Doações
-- ===============================
INSERT INTO doacao (quantidade_doada, colheita_id, instituicao_id) VALUES
(5.0, 1, 1),
(10.0, 2, 2),
(7.5, 3, 3),
(6.0, 4, 4),
(8.0, 5, 5),
(12.0, 6, 6),
(4.5, 7, 7),
(9.0, 8, 8),
(11.0, 9, 9),
(5.5, 10, 10);

-- ===============================
-- Telefones das instituições
-- ===============================
INSERT INTO telefone_instituicao (numero, instituicao_id) VALUES
('11999998888', 1),
('21988887777', 2),
('31977776666', 3),
('11966665555', 4),
('21955554444', 5),
('31944443333', 6),
('11933332222', 7),
('21922221111', 8),
('31911110000', 9),
('11900009999', 10);
