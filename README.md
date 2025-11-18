Banco de Dados – Café do Senac

Este projeto foi desenvolvido como atividade para explorar comandos DDL e DML em SQL, criando um banco de dados para uma cafeteria fictícia chamada Café do Senac.

 O que contém neste projeto

Criação de banco de dados e tabelas usando DDL

Inserção, atualização e exclusão de dados usando DML

Tabelas: Clientes, Produtos, Pedidos e ItensPedido

Script organizado na pasta sql_scripts/

Conteúdo Educacional — DDL e DML
 1. O que é DDL?

DDL (Data Definition Language) é a categoria de comandos SQL usada para definir estruturas no banco de dados.

Principais comandos DDL
Comando	Função
CREATE	Cria bancos e tabelas
ALTER	Altera tabelas existentes
DROP	Exclui tabelas ou bancos
Exemplos usados neste projeto
CREATE DATABASE cafeteria_senac;

CREATE TABLE Produtos (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

 2. O que é DML?

DML (Data Manipulation Language) é usada para manipular os dados dentro das tabelas.

Principais comandos DML
Comando	Função
INSERT	Insere registros
UPDATE	Atualiza registros
DELETE	Apaga registros
SELECT	Consulta dados
Exemplos usados neste projeto
INSERT INTO Produtos (nome, preco, estoque)
VALUES ('Café Expresso', 6.50, 100);

UPDATE Produtos
SET estoque = estoque - 1
WHERE produto_id = 1;

DELETE FROM Produtos WHERE produto_id = 3;

 Estrutura do repositório
bank_de_dados_senac/
│ README.md
│
└───sql_scripts/
       cafeteria.sql

Como executar o script

Abra o MySQL Workbench, DBeaver ou outro ambiente SQL

Execute o script localizado em:

sql_scripts/cafeteria.sql


O banco será criado automaticamente.
