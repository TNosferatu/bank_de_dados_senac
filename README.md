Loja de Carros – Banco de Dados SQL

Este repositório contém a estrutura e os scripts SQL desenvolvidos para o banco de dados de uma loja de carros fictícia, criada como atividade prática para estudar e aplicar comandos SQL, especialmente DDL e DML.

O objetivo do projeto é demonstrar a criação de tabelas, manipulação de dados e organização de um banco de dados completo dentro de um cenário realista envolvendo vendas de veículos.

 Objetivos do Projeto

Criar um banco de dados do zero usando comandos DDL

Entender e aplicar comandos DML (inserção, atualização e exclusão)

Simular operações reais de uma loja de carros: clientes, estoque, vendas e itens de vendas

Organizar o repositório com boas práticas

Desenvolver conteúdo explicativo sobre os principais comandos SQL utilizados

 Estrutura do Banco de Dados

O banco de dados representa uma loja que vende carros novos e seminovos. Ele contém quatro tabelas principais:

Clientes

Armazena informações sobre os clientes da loja.

 Carros

Contém todos os veículos disponíveis para venda, incluindo marca, modelo, ano, preço, cor e estoque.

Vendas

Registra cada venda realizada, associando o cliente, data e valor total.

ItensVenda

Registra cada carro vendido em uma venda específica (caso seja uma venda com mais de um veículo).

 Estrutura do Repositório
bank_de_dados_senac/
│ README.md
│
└───sql_scripts/
       loja_carros.sql

DDL e DML – Conceitos e Exemplos do Projeto
 DDL (Data Definition Language)

São comandos usados para definir a estrutura do banco de dados.

Comandos DDL mais usados:
Comando	Função
CREATE	Cria tabelas, banco de dados, índices
ALTER	Altera tabelas existentes
DROP	Remove tabelas ou bancos
Exemplos usados neste projeto:
Criando o banco:
CREATE DATABASE LojaDeCarros;

Criando uma tabela:
CREATE TABLE Carros (
    CarroID INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(50),
    Modelo VARCHAR(80),
    Ano INT,
    Preco DECIMAL(10,2),
    Estoque INT
);

DML (Data Manipulation Language)

Comandos para manipular os dados dentro das tabelas.

Comandos DML mais usados:
Comando	Função
INSERT	Insere dados
UPDATE	Atualiza dados
DELETE	Exclui dados
SELECT	Consulta
Exemplos usados neste projeto:
Inserindo um carro:
INSERT INTO Carros (Marca, Modelo, Ano, Preco, Estoque)
VALUES ('Toyota', 'Corolla 2.0', 2020, 110000.00, 3);

Atualizando estoque:
UPDATE Carros
SET Estoque = Estoque - 1
WHERE CarroID = 1;

Excluindo um registro:
DELETE FROM Carros
WHERE CarroID = 5;

Como Executar o Script SQL

Baixe o arquivo loja_carros.sql

Abra seu ambiente SQL (MySQL Workbench, DBeaver, phpMyAdmin etc.)

Execute o script completo

O banco será criado automaticamente com todas as tabelas e dados de exemplo

O que Aprendi com o Projeto

Criar e estruturar bancos de dados reais usando SQL

Entender as diferenças práticas entre DDL e DML

Organizar scripts e arquivos em um repositório GitHub

Criar tabelas com chaves primárias e estrangeiras

Manipular dados de forma profissional
