use master;
go
CREATE DATABASE EServeur;
go
USE EServeur;
go
--DROP TABLE IngredienteProduto;
--DROP TABLE ProdutosCombo;
--DROP TABLE NotasFiscaisProdutos;
--DROP TABLE ItensPedidos;
--DROP TABLE Pedidos;
--DROP TABLE Produtos;
--DROP TABLE NotasFiscais;
--DROP TABLE Clientes;
--DROP TABLE [dbo].[Status];
--DROP TABLE Ingredientes;
--DROP TABLE Categorias;


 --------------------------------------------------
 --Criação das tabelas
 --------------------------------------------------

 --Tabela Ingredientes
CREATE TABLE Ingredientes (
    Id int IDENTITY(1,1) NOT NULL,
    Nome nvarchar(60) NOT NULL,
    Preco decimal(18,0) NOT NULL,
    Disponivel bit NOT NULL,
    CONSTRAINT PK_Ingredientes PRIMARY KEY(Id)
);

-- Tabela Status
CREATE TABLE [Status] (
    Id int NOT NULL,
    Descricao nvarchar(200) NOT NULL,
    CONSTRAINT PK_Status PRIMARY KEY(Id)
);

-- Tabela Categorias
CREATE TABLE Categorias (
    Id int IDENTITY(1,1) NOT NULL,
    Nome nvarchar(60) NOT NULL,
    CONSTRAINT PK_Categorias PRIMARY KEY(Id)
);

-- Tabela Produtos
CREATE TABLE Produtos (
    Id int IDENTITY(1,1) NOT NULL,
    Nome nvarchar(60) NOT NULL,
    Descricao nvarchar(200) NULL,
    Preco Money NOT NULL,
    Imagem varbinary(max) NULL,
    CategoriaId int NULL,
    IsCombo bit NOT NULL DEFAULT(0)
    CONSTRAINT PK_Produtos PRIMARY KEY(Id),
    CONSTRAINT FK_Produtos_Categorias FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    Id int IDENTITY(1,1) NOT NULL,
    HorarioEntrada datetime NOT NULL,
    HorarioSaida datetime NULL,
    StatusId int NOT NULL,
    MesaId int NOT NULL,
    CONSTRAINT PK_Pedidos PRIMARY KEY(Id),
    CONSTRAINT FK_Pedidos_Status FOREIGN KEY (StatusId) REFERENCES [dbo].[Status](Id)
);

CREATE TABLE ItensPedidos(
	Id int IDENTITY(1,1) NOT NULL,
	PedidoId int NOT NULL,
	ProdutoId int NOT NULL,
	QtdProduto int NOT NULL DEFAULT(1),
	CONSTRAINT PK_ItensPedidos PRIMARY KEY(Id, PedidoId, ProdutoId),
    CONSTRAINT FK_ItensPedidos_Pedidos FOREIGN KEY (PedidoId) REFERENCES Pedidos(Id),
	CONSTRAINT FK_ItensPedidos_Produtos FOREIGN KEY (ProdutoId) REFERENCES Produtos(Id)
);

-- Tabela Clientes
CREATE TABLE Clientes(
	Id int identity(1,1) NOT NULL,
	Nome nvarchar(60) NOT NULL,
	CPF_CNPJ nvarchar(18) NOT NULL,
	Endereco nvarchar(150) NULL,
	CONSTRAINT PK_Clientes PRIMARY KEY(Id)
);

-- Tabela Notas Fiscais
CREATE TABLE NotasFiscais(
	Id int identity(1,1) NOT NULL,
	Numero int NOT NULL,
	ClienteId int NULL,	
	Data DateTime NOT NULL,
	Valor Money NOT NULL, 
	Cancelado bit NOT NULL,
	CONSTRAINT FK_NotaFiscal_Clientes FOREIGN KEY(ClienteId) REFERENCES Clientes(Id),
	CONSTRAINT PK_NotasFiscais PRIMARY KEY(Id)
);



-- Tabela NotasFiscais_Produtos
CREATE TABLE NotasFiscaisProdutos (
    NotaFiscalId int NOT NULL,
    ProdutoId int NOT NULL,
    CONSTRAINT FK_NotasFiscaisProdutos_Produtos FOREIGN KEY (ProdutoId) REFERENCES Produtos(Id),
	CONSTRAINT FK_NotasFiscaisProdutos_NotasFiscais FOREIGN KEY (NotaFiscalId) REFERENCES NotasFiscais(Id),
	CONSTRAINT PK_NotasFiscaisProdutos PRIMARY KEY(NotaFiscalId, ProdutoId)
);

-- Tabela 'Produtos_Combo'
CREATE TABLE ProdutosCombo (
    ProdutoId int NOT NULL,
    ItemProdutoId int NOT NULL,
	CONSTRAINT FK_ProdutoCombo_Produto FOREIGN KEY (ProdutoId) REFERENCES Produtos(Id),
	CONSTRAINT FK_ProdutoCombo_ItemProduto FOREIGN KEY (ItemProdutoId) REFERENCES Produtos(Id),
	CONSTRAINT PK_ProdutosCombo PRIMARY KEY(ProdutoId, ItemProdutoId)
);

-- Tabela IngredienteProduto
CREATE TABLE IngredienteProduto (
    IngredientesId int NOT NULL,
    ProdutosId int NOT NULL,
    CONSTRAINT FK_IngredienteProduto_Ingrediente FOREIGN KEY (IngredientesId) REFERENCES Ingredientes(Id),
    CONSTRAINT FK_IngredienteProduto_Produto FOREIGN KEY (ProdutosId) REFERENCES Produtos(Id),
	CONSTRAINT PK_IngredienteProduto PRIMARY KEY(IngredientesId, ProdutosId)
);

-- --------------------------------------------------
-- Scripts de Inserts
-- --------------------------------------------------
INSERT INTO [dbo].[Status] (id, descricao) VALUES (1, 'Não Pago');
INSERT INTO [dbo].[Status] (id, descricao) VALUES (2, 'Pago');
INSERT INTO [dbo].[Status] (id, descricao) VALUES (3, 'Cancelado');