/*INSERINDO VALORES NAS TABELAS*/

USE controle_financeiro;

iNSERT INTO usuario (nome, email, tipo_usuario, senha) VALUES
('Jõao da Silva', 'joaoSilva@gmail.com', 'Administrador', '123456'),
('Maria Costa', 'mariacosta@yahoo.com', 'Usuario', '445566'),
('Ana Araújo', 'ana123@gmail.com', 'Usuario', '456789'),
('Roberto Pereira', 'robertop@yahoo.com', 'Usuario', '2333456'),
('Pedro Souza', 'pedroSouza@gmail.com', 'Usuario', '789456');

INSERT INTO compartilhamento_usuarios( id_usuario_dono, id_usuario_autorizado) VALUES
(1, 3),
(2, 4),
(3, 1),
(4, 2),
(5, 1);

INSERT INTO categorias (nome, tipo) VALUES 
('internet', 'despesa fixa'),
('luz', 'despesa variavel'),
('restaurante', 'lazer'),
('combustivel', 'despesa variavel'),
('plano de saude', 'despesa fixa'),
('salario', 'renda fixa'),
('prestaçao de serviço', 'renda variavel'),
('venda de produtos', 'renda variavel');

INSERT INTO saidas_financeiras (valor, data, descricao, observacao, id_usuario, id_categoria) VALUES 
(75, '2026-03-10', 'conta internet', NULL, 1, 1),
(150, '2026-03-28', 'restaurante', NULL, 2, 3),
(98, '2026-03-10', 'conta de luz', NULL, 3, 2),
(200, '2026-03-04', 'combustivel carro', NULL, 4, 4),
(20, '2026-03-10', 'plano de saude', NULL, 5, 5);

INSERT INTO entradas_financeiras (valor, data, descricao, observacao, id_usuario, id_categoria) VALUES 
(1500, '2026-03-01', 'salario', NULL, 5, 6),
(3000, '2026-03-05', 'salario', NULL, 4, 6),
(2500, '2026-03-05', 'salario', NULL, 3, 6),
(1000, '2026-03-10', 'venda de produtos', 'frutas',  2, 8),
(1500, '2026-03-02', 'serviço free lance', 'manutencao de sistema', 1, 7); 

INSERT INTO metas (valor_alvo, prazo, descricao) VALUES 
(20000, '2026-12-31', 'moto nova'),
(3000, '2026-07-20', 'geladeira'),
(10000, '2030-12-31', 'investimento'),
(5000, '2026-10-26', 'televisao'),
(30000, '2028-06-30', 'viagem');

INSERT INTO usuario_metas (id_usuario, id_meta) VALUES
(2, 1),
(4, 2),
(1, 3),
(3, 4),
(5, 5);