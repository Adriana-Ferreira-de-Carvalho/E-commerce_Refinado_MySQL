CREATE DATABASE e_commerce;
 
 USE E_commerce;
    
-- criar tabela cliente_pf
    CREATE TABLE Cliente_PF (
    idCliente_PF varchar (10) primary key,
    nome varchar(45),
    cpf varchar(11)  not null,
    CONSTRAINT unique_cpf_cliente UNIQUE (cpf),
    endereço varchar(45) not null);

-- inserir os dados da tabela cliente_pf
INSERT INTO Cliente_PF (
    idCliente_pf, nome, cpf, endereço)
VALUES
('1_pf', 'Antonio Jose da Silva', '12345678901', 'Rua das Flores 01 Casa 05'),
('2_pf', 'Joaquina Maria Almeida', '98765432102', 'Avenida Amoreira 1077'),
('3_pf', 'Umvelina Alves Ferreira', '45678912303', 'Alameda das Acacias 78 Lote 2'),
('4_pf', 'Jorge Ferreira', '89732165404', 'Travessa Formosa 56 Bloco C Apt. 08'),
('5_pf', 'Delmindo Jose de Sousa', '14725836905', 'Rua Roseira Santa 500'),
('6_pf', 'Maria Aparecida de Carvalho', '25836914706', 'Rua dos Sentimentos s/n'),
('7_pf', 'Alvaro Marinho', '36914725807', 'Avenida Mangueiral 128 Casa 12'),
('8_pf', 'Vanderlei Assis', '15935785208', 'Travessa Formosa 13 Bloco 1 Apt. 103'),
('9_pf', 'Eduardo Jose Lamouniere', '75395156409', 'Alameda Esmeralda 17 Lote 05'),
('10_pf', 'Elisa Romao Assucena', '24637924910', 'Rua do Mercado 66 Casa 03');


-- criar tabela cliente_pj
    CREATE TABLE Cliente_PJ (
    idCliente_PJ varchar (10) primary key,
    razao_social varchar(45),
    cnpj varchar(14) not null,
    CONSTRAINT unique_cnpj_cliente UNIQUE (cnpj),
    endereco varchar(45) not null);
    
-- inserir dados na tabela cliente_pj
INSERT INTO Cliente_PJ (
    idCliente_PJ, razao_social, cnpj, endereco)
VALUES
('1_pj', 'Shine Limpeza LTDA.', '14796606000190', 'Alameda Esmeralda 1 Lote 01'),
('2_pj', 'Maria Faxina LTDA.', '13347016000117', 'Travessa Formosa 72 Loja 01'),
('3_pj', 'Brilho e Lustro Materiais para Limpeza LTDA.', '27000511000160', 'Avenida Mangueiral 10 Lote 64'),
('4_pj', 'Papa Leguas Transportes LTDA.', '394460000141', 'Rua do Mercado 10 Loja 10'),
('5_pj', 'Milhas Corridas Interestaduais LTDA.', '60114865000100', 'Rua das Flores 19 Lote 08  Loja 01-A'),
('6_pj', 'R-solver Solucoes em TI LTDA.', '9346601000125', 'Rua Roseira Santa 72'),
('7_pj', '2 Clics Eletronicos LTDA.', '43180355000112', 'Alameda das Acacias 03 Loja 02'),
('8_pj', 'Spa dos Cabelos LTDA.', '1425787003383', 'Rua dos Sentimentos 27'),
('9_pj', 'Espaco Estetica Tratamentos LTDA.', '6912785000155','Travessa Formosa 56 Bloco C Terreo'),
('10_pj', 'Espelho, Espelho meu LTDA.', '61695227000193', 'Avenida Amoreira 33');


-- criar tabela produto
     CREATE TABLE Produto (
     idProduto int not null unique primary key,
     categoria varchar(45),
     descricao varchar(45),
     valor varchar(45));
   
 -- inserir dados na tabela produto
INSERT INTO Produto (
     idProduto, categoria, descricao, valor)
VALUES
('121', 'Produto 019', 'CAT. I', '127.58'),
('519', 'Produto 020', 'CAT. H', '221.08'),
('813', 'Produto 021', 'CAT. M', '193.58'),
('587', 'Produto 022', 'CAT. F', '72.58'),
('681', 'Produto 023', 'CAT. M', '27.47'),
('111', 'Produto 024', 'CAT. N', '138.58'),
('126', 'Produto 025', 'CAT. Q', '231.60'),
('244', 'Produto 026', 'CAT. J', '72.58'),
('329', 'Produto 027', 'CAT. F', '138.58'),
('456', 'Produto 028', 'CAT. A', '127.58'),
('768', 'Produto 029', 'CAT. M', '7.26'),
('809', 'Produto 030', 'CAT. F','324.08'),
('222', 'Produto 031', 'CAT. P', '171.58'),
('315', 'Produto 032', 'CAT. A', '226.58'),
('133', 'Produto 033', 'CAT. L', '72.58'),
('773', 'Produto 034', 'CAT. L', '94.58'),
('183', 'Produto 035', 'CAT. L', '23.07'),
('471', 'Produto 036', 'CAT. O', '4.07'),
('537', 'Produto 037', 'CAT. J', '28.57'),
('245', 'Produto 038', 'CAT. A', '5.94'),
('942', 'Produto 039', 'CAT. O', '20.51');


-- criar tabela pedido
    CREATE TABLE Pedido (
    idPedido int not null unique primary key,
    id_cliente varchar(10) not null,
    status_pedido varchar(45),
    status_pagamento varchar(45),
    descricao varchar(45),
    frete varchar(45),
    data_compra date);
  
-- inserir os dados da tabela pedido
INSERT INTO Pedido (
     idPedido, id_cliente, status_pedido, status_pagamento, descricao, frete, data_compra)
VALUES	
('101', '7_pj', 'Concluido', 'Efetuado', '519', 'Fixo', '2024-10-03'),
('102', '1_pj', 'Concluido', 'Efetuado', '813', 'Gratuito', '2024-10-04'),
('103', '10_pf', 'Cancelado', 'Cancelado', '587', 'Cancelado', '2024-10-04'),
('104', '2_pj', 'Concluido', 'Efetuado', '681', 'Gratuito', '2024-10-07'),
('105', '6_pj', 'Concluido', 'Efetuado', '111', 'Fixo', '2024-10-07'),
('106', '4_pf', 'Cancelado', 'Cancelado', '126', 'Cancelado', '2024-10-08'),
('107', '5_pf', 'Cancelado', 'Cancelado', '244', 'Cancelado', '2024-10-08'),
('108', '8_pj', 'Concluido', 'Efetuado', '329', 'Fixo', '2024-10-09'),
('109', '9_pj', 'Concluido', 'Efetuado', '456', 'Gratuito', '2024-10-09'),
('110', '2_pf', 'Concluido', 'Efetuado', '768', 'Fixo', '2024-10-10'),
('111', '10_pj', 'Concluido', 'Efetuado', '809', 'Fixo', '2024-10-10'),
('112', '4_pj', 'Concluido', 'Efetuado', '222', 'Fixo', '2024-10-10'),
('113', '1_pf', 'Cancelado', 'Cancelado', '315', 'Cancelado', '2024-10-10'),
('114', '1_pf', 'Concluido', 'Efetuado', '133', 'Gratuito', '2024-10-11'),
('115', '6_pf', 'Concluido', 'Efetuado', '773', 'Fixo', '2024-10-11'),
('116', '3_p', 'Concluido', 'Efetuado', '183', 'Gratuito', '2024-10-14'),
('117', '8_pf', 'Cancelado', 'Cancelado', '471', 'Cancelado', '2024-10-15'),
('118', '5_pj', 'Cancelado', 'Cancelado', '537', 'Cancelado', '2024-10-15'),
('119', '9_pf', 'Concluido', 'Efetuado', '245', 'Fixo', '2024-10-15'),
('120', '3_pf', 'Concluido', 'Efetuado', '121', 'Fixo', '2024-10-03');


-- criar tabela fornecedor
    CREATE TABLE Fornecedor (
    idFornecedor int primary key,
    razao_social varchar (45),
    cnpj varchar(14) not null,
    CONSTRAINT unique_fornecedor UNIQUE (cnpj));
    
-- inserir dados na tabela fornecedor
INSERT INTO Fornecedor (
    idFornecedor, razao_social, cnpj)
VALUES
('1', 'Tudo Certo LTDA', '39076606000190'),
('2', 'SF Eletronicos LTDA.', '34982146000967'),
('3', 'VCM Fornecedor de Materiais de Limpeza', '27000511000160'),
('4', 'Rodovia Transportes LTDA.', '74138415000271'),
('5', 'Viva Uniformes LTDA.', '24876950001001');


-- criar tabela estoqque
    CREATE TABLE Estoque (
    idEstoque int primary key,
    idProduto int,
    filial varchar(20));

-- inserir dados na tabela estoque
INSERT INTO Estoque (
    idEstoque, idProduto, filial)
VALUES
('1', '121', 'Azul'),
('2', '519', 'Verde'),
('3', '813', 'Amarela'),
('4', '587', 'Vermelha'),
('5', '681', 'Vermelha'),
('6', '111', 'Azul'),
('7', '126', 'Azul'),
('8', '244', 'Amarela'),
('9', '329', 'Verde'),
('10', '456', 'Verde'),
('11', '768', 'Verde'),
('12', '809', 'Amarela'),
('13', '222', 'Vermelha'),
('14', '315', 'Azul'),
('15', '133', 'Vermelha'),
('16', '773', 'Amarela'),
('17', '183', 'Verde'),
('18', '471', 'Vermelha'),
('19', '537', 'Amarela'),
('20', '245', 'Verde'),
('21', '942', 'Azul');


-- criar tabela Filial
    CREATE TABLE Filial (
    idFilial INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    localizacao VARCHAR(30));

-- inseriar dados na tabela Filial
INSERT INTO Filial (
     idFilial, nome, localizacao)
VALUES
('1', 'Azul', 'São Paulo'),
('2', 'Verde', 'Pernambuco'),
('3', 'Amarela', 'Distrito Federal'),
('4', 'Vermelha', 'Pará');


-- criar tabela Funcionario
    CREATE TABLE Funcionario (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    cargo VARCHAR(45),
    filial VARCHAR(20),
    salario DECIMAL(10, 2));

-- inserir dados na tabela Funcionario
INSERT INTO Funcionario (
    idFuncionario, nome, cargo, filial, salario)
VALUES
('1001', 'João Silva', 'Gerente', 'Azul', 3500.00),
('1002', 'Maria Oliveira', 'Atendente', 'Verde', 2200.00),
('1003', 'Carlos Souza', 'Operador de Estoque', 'Amarela', 2000.00),
('1004', 'Ana Costa', 'Supervisora', 'Vermelha', 3000.00),
('1005', 'Roberto Lima', 'Caixa', 'Azul', 1800.00);


-- criar tabela Transportadora
    CREATE TABLE Transportadora (
    idTransportadora INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    cnpj VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15));

-- inserir dados tabela Transportadora
INSERT INTO Transportadora (
     nome, cnpj, telefone)
VALUES
('Rapido Express LTDA', '12345678000101', '11987654321'),
('Entrega Certa SA', '98765432000111', '11876543210'),
('Transportes Urgentes ME', '11122233000199', '11999887766'),
('Via Rápida Transportes', '44455566000122', '11223344556'),
('Frota Nacional LTDA', '22233344000155', '11445566778');


-- criar tabela Pagamento
    CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    idPedido INT NOT NULL,
    forma_pagamento VARCHAR(45) NOT NULL,
    valor_pago DECIMAL(10, 2) NOT NULL,
    data_pagamento DATE NOT NULL);


-- inserir dados tabela Pagamento
INSERT INTO Pagamento (
    idPedido, forma_pagamento, valor_pago, data_pagamento)
VALUES
(100, 'Cartão de Crédito', 255.16, '2024-10-03'),  
(101, 'PIX', 221.08, '2024-10-03'),
(102, 'Boleto', 580.74, '2024-10-04'), 
(104, 'Cartão de Débito', 137.35, '2024-10-07'), 
(108, 'Cartão de Crédito', 138.58, '2024-10-09'),
('103', 'Cartão de Crédito', '290.32', '2024-10-04'),
('105', 'PIX','970.06', '2024-10-07'),
('106', 'Cartão de Débito', '3242.40', '2024-10-08'),
('107', 'Boleto','145.16', '2024-10-08'),
('109', 'Cartão de Crédito', '765.48', '2024-10-09'),
('110', 'Boleto', '2178.00', '2024-10-10'),
('111', 'Boleto', '19444.80', '2024-10-10'),
('112', 'Cartão de Crédito', '514.74', '2024-10-10'),
('113', 'Cartão de Débito', '1132.90', '2024-10-10'),
('114', 'Cartão de Crédito', '72.58', '2024-10-11'),
('115', 'PIX', '11349.60', '2024-10-11'),
('116', 'Cartão de Crédito', '69.21', '2024-10-14'),
('117', 'Cartão de Débito', '899.47', '2024-10-15'),
('118', 'Cartão de Débito', '657.11', '2024-10-15'),
('119', 'Boleto', '5940.00', '2024-10-15'),
('120', 'Boleto', '127.58', '2024-10-03');



