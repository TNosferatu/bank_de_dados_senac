-- Criação do banco de dados
CREATE DATABASE LojaDeCarros;
USE LojaDeCarros;

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    CPF VARCHAR(14)
);

-- Tabela de Carros (Produtos)
CREATE TABLE Carros (
    CarroID INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(80) NOT NULL,
    Ano INT NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT DEFAULT 0,
    Cor VARCHAR(30)
);

-- Tabela de Vendas (Pedidos)
CREATE TABLE Vendas (
    VendaID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataVenda DATETIME DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(12,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Tabela de Itens da Venda
CREATE TABLE ItensVenda (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    VendaID INT,
    CarroID INT,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (VendaID) REFERENCES Vendas(VendaID),
    FOREIGN KEY (CarroID) REFERENCES Carros(CarroID)
);

-- Inserções de exemplo (Clientes)
INSERT INTO Clientes (Nome, Email, Telefone, CPF)
VALUES ('Carlos Almeida', 'carlos@email.com', '1199888-1122', '123.456.789-11');

-- Inserções de exemplo (Carros)
INSERT INTO Carros (Marca, Modelo, Ano, Preco, Estoque, Cor)
VALUES 
('Volkswagen', 'Gol 1.6', 2018, 45000.00, 5, 'Prata'),
('Toyota', 'Corolla 2.0', 2020, 110000.00, 3, 'Preto'),
('Honda', 'Civic EX', 2019, 98000.00, 4, 'Branco');

-- Exemplo de Venda
INSERT INTO Vendas (ClienteID, ValorTotal)
VALUES (1, 45000.00);

-- Itens da Venda
INSERT INTO ItensVenda (VendaID, CarroID, Quantidade, PrecoUnitario)
VALUES (1, 1, 1, 45000.00);

-- Atualizando estoque após venda
UPDATE Carros
SET Estoque = Estoque - 1
WHERE CarroID = 1;
