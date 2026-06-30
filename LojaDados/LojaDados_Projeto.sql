-- 1 - CRIAÇÃO DO BANCO DE DADOS

--CREATE DATABASE LojaDados;

-- 2 - Selecionando banco-----------------------------

USE LojaDados;

-- 3 - Criação das tabelas ---------------------------

--CREATE TABLE Cliente (
--    id_cliente INT PRIMARY KEY IDENTITY,
--    nome VARCHAR(100),
--    email VARCHAR(100),
--    cidade VARCHAR(50)
--);

--CREATE TABLE Produto (
--    id_produto INT PRIMARY KEY IDENTITY,
--    nome VARCHAR(100),
--    marca VARCHAR(50),
--    modelo VARCHAR(50),
--    preco DECIMAL(10,2),
--    quantidade INT,
--    categoria VARCHAR(50)
--);

--CREATE TABLE Venda (
--    id_venda INT PRIMARY KEY IDENTITY,
--    id_cliente INT,
--    data_venda DATE,
--    FOREIGN KEY (id_cliente)
--    REFERENCES Cliente(id_cliente)
--);

--CREATE TABLE Item_Venda (
--    id_item INT PRIMARY KEY IDENTITY,
--    id_venda INT,
--    id_produto INT,
--    quantidade INT,
--    FOREIGN KEY (id_venda)
--    REFERENCES Venda(id_venda),
--    FOREIGN KEY (id_produto)
--    REFERENCES Produto(id_produto)
--);

-- 4 - Inserindo dados-------------------------------------

--INSERT INTO Cliente (nome,email,cidade)
--VALUES
--('Daniel Silva','daniel@email.com','São Paulo'),
--('Maria Souza','maria@email.com','Santos'),
--('Carlos Oliveira','carlos@email.com','Campinas'),
--('Julia Rocha', 'julia@email.com', 'Rio de Janeiro');

--INSERT INTO Produto (nome,marca,modelo,preco,quantidade,categoria)
--VALUES
--('Mouse Gamer','Logitech','G203',129.90,20,'Mouse'),
--('Teclado Mecânico','Redragon','Kumara',249.90,15,'Teclado'),
--('Monitor','LG','UltraGear',1299.90,8,'Monitor');

--INSERT INTO Venda (id_cliente,data_venda)
--VALUES
--(1,'2026-06-30'),
--(2,'2026-06-30');

--INSERT INTO Item_Venda (id_venda,id_produto,quantidade)
--VALUES
--(1,1,2),
--(1,2,1),
--(2,3,1);

--SELECT Cliente.nome, Venda.data_venda FROM Cliente INNER JOIN Venda ON Cliente.id_Cliente = Venda.id_Cliente;
--SELECT Produto.nome, Item_Venda.quantidade FROM Produto INNER JOIN Item_Venda ON Produto.id_produto = Item_Venda.id_produto;
--SELECT COUNT(*) AS TotalProdutos FROM Produto;
--SELECT SUM(quantidade) AS EstoqueTotal FROM Produto; 
--SELECT categoria, COUNT(*) AS QunatidadePordutos FROM Produto GROUP BY categoria;
--SELECT Produto.nome, SUM(Item_Venda.quantidade) AS TotalVendido FROM Produto INNER JOIN Item_Venda ON Produto.id_produto = Item_Venda.id_produto GROUP BY Produto.nome;

-- UPDATE ------------------------------------
--SELECT * FROM Produto;
--UPDATE Produto
--SET marca = 'Attack Shark', modelo = 'X86'
--WHERE id_produto = 2;

--ALTER--------------------------
--ALTER TABLE CLiente
--ALTER COLUMN nome VARCHAR(100) NOT NULL;

--ALTER TABLE Produto
--ADD CONSTRAINT CK_Preco_Positivo
--CHECK (preco >= 0);

--ALTER TABLE Produto
--ADD CONSTRAINT CK_Estoque_Positivo
--CHECK (quantidade >= 0);

--STORED PROCEDURE -----------------------------
--GO
--CREATE PROCEDURE BuscarProdutos AS BEGIN
--    SELECT * FROM Produto;
--END;
--GO

--GO
--CREATE PROCEDURE BuscarPorCategoria @categoria VARCHAR(50) AS BEGIN
--    SELECT * FROM Produto WHERE categoria = @categoria;
--END;
--GO



