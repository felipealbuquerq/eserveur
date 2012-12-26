
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/26/2012 02:26:59
-- Generated from EDMX file: D:\Projects\CSProjects\eserveur\Softex.Residencia.Projeto.Repository.EF\EServeurModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EServeur];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_IngredienteProduto_Ingrediente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IngredienteProduto] DROP CONSTRAINT [FK_IngredienteProduto_Ingrediente];
GO
IF OBJECT_ID(N'[dbo].[FK_IngredienteProduto_Produto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IngredienteProduto] DROP CONSTRAINT [FK_IngredienteProduto_Produto];
GO
IF OBJECT_ID(N'[dbo].[FK_ItensPedidos_Pedidos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItensPedidos] DROP CONSTRAINT [FK_ItensPedidos_Pedidos];
GO
IF OBJECT_ID(N'[dbo].[FK_ItensPedidos_Produtos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItensPedidos] DROP CONSTRAINT [FK_ItensPedidos_Produtos];
GO
IF OBJECT_ID(N'[dbo].[FK_NotaFiscal_Clientes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotasFiscais] DROP CONSTRAINT [FK_NotaFiscal_Clientes];
GO
IF OBJECT_ID(N'[dbo].[FK_NotasFiscaisProdutos_NotasFiscais]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotasFiscaisProdutos] DROP CONSTRAINT [FK_NotasFiscaisProdutos_NotasFiscais];
GO
IF OBJECT_ID(N'[dbo].[FK_NotasFiscaisProdutos_Produtos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NotasFiscaisProdutos] DROP CONSTRAINT [FK_NotasFiscaisProdutos_Produtos];
GO
IF OBJECT_ID(N'[dbo].[FK_Pedidos_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [FK_Pedidos_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoCombo_ItemProduto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProdutosCombo] DROP CONSTRAINT [FK_ProdutoCombo_ItemProduto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoCombo_Produto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProdutosCombo] DROP CONSTRAINT [FK_ProdutoCombo_Produto];
GO
IF OBJECT_ID(N'[dbo].[FK_Produtos_Categorias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produtos] DROP CONSTRAINT [FK_Produtos_Categorias];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[IngredienteProduto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IngredienteProduto];
GO
IF OBJECT_ID(N'[dbo].[Ingredientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ingredientes];
GO
IF OBJECT_ID(N'[dbo].[ItensPedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItensPedidos];
GO
IF OBJECT_ID(N'[dbo].[NotasFiscais]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotasFiscais];
GO
IF OBJECT_ID(N'[dbo].[NotasFiscaisProdutos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NotasFiscaisProdutos];
GO
IF OBJECT_ID(N'[dbo].[Pedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pedidos];
GO
IF OBJECT_ID(N'[dbo].[Produtos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Produtos];
GO
IF OBJECT_ID(N'[dbo].[ProdutosCombo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProdutosCombo];
GO
IF OBJECT_ID(N'[dbo].[Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Status];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL,
    [CpfCnpj] nvarchar(18)  NOT NULL,
    [Endereco] nvarchar(150)  NULL
);
GO

-- Creating table 'Ingredientes'
CREATE TABLE [dbo].[Ingredientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL,
    [Preco] decimal(18,0)  NOT NULL,
    [Disponivel] bit  NOT NULL
);
GO

-- Creating table 'ItensPedidos'
CREATE TABLE [dbo].[ItensPedidos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PedidoId] int  NOT NULL,
    [ProdutoId] int  NOT NULL,
    [QtdProduto] int  NOT NULL
);
GO

-- Creating table 'NotasFiscais'
CREATE TABLE [dbo].[NotasFiscais] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Numero] int  NOT NULL,
    [ClienteId] int  NULL,
    [Data] datetime  NOT NULL,
    [Valor] decimal(19,4)  NOT NULL,
    [Cancelado] bit  NOT NULL
);
GO

-- Creating table 'Pedidos'
CREATE TABLE [dbo].[Pedidos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HorarioEntrada] datetime  NOT NULL,
    [HorarioSaida] datetime  NULL,
    [StatusId] int  NOT NULL,
    [MesaId] int  NOT NULL
);
GO

-- Creating table 'Produtos'
CREATE TABLE [dbo].[Produtos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL,
    [Descricao] nvarchar(200)  NULL,
    [Preco] decimal(19,4)  NOT NULL,
    [Imagem] varbinary(max)  NULL,
    [CategoriaId] int  NULL,
    [IsCombo] bit  NOT NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [dbo].[Status] (
    [Id] int  NOT NULL,
    [Descricao] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'IngredienteProduto'
CREATE TABLE [dbo].[IngredienteProduto] (
    [Ingredientes_Id] int  NOT NULL,
    [Produtos_Id] int  NOT NULL
);
GO

-- Creating table 'NotasFiscaisProdutos'
CREATE TABLE [dbo].[NotasFiscaisProdutos] (
    [NotasFiscais_Id] int  NOT NULL,
    [Produtos_Id] int  NOT NULL
);
GO

-- Creating table 'ProdutosCombo'
CREATE TABLE [dbo].[ProdutosCombo] (
    [Combos_Id] int  NOT NULL,
    [Produtos_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Ingredientes'
ALTER TABLE [dbo].[Ingredientes]
ADD CONSTRAINT [PK_Ingredientes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [PedidoId], [ProdutoId] in table 'ItensPedidos'
ALTER TABLE [dbo].[ItensPedidos]
ADD CONSTRAINT [PK_ItensPedidos]
    PRIMARY KEY CLUSTERED ([Id], [PedidoId], [ProdutoId] ASC);
GO

-- Creating primary key on [Id] in table 'NotasFiscais'
ALTER TABLE [dbo].[NotasFiscais]
ADD CONSTRAINT [PK_NotasFiscais]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [PK_Pedidos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [PK_Produtos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Ingredientes_Id], [Produtos_Id] in table 'IngredienteProduto'
ALTER TABLE [dbo].[IngredienteProduto]
ADD CONSTRAINT [PK_IngredienteProduto]
    PRIMARY KEY NONCLUSTERED ([Ingredientes_Id], [Produtos_Id] ASC);
GO

-- Creating primary key on [NotasFiscais_Id], [Produtos_Id] in table 'NotasFiscaisProdutos'
ALTER TABLE [dbo].[NotasFiscaisProdutos]
ADD CONSTRAINT [PK_NotasFiscaisProdutos]
    PRIMARY KEY NONCLUSTERED ([NotasFiscais_Id], [Produtos_Id] ASC);
GO

-- Creating primary key on [Combos_Id], [Produtos_Id] in table 'ProdutosCombo'
ALTER TABLE [dbo].[ProdutosCombo]
ADD CONSTRAINT [PK_ProdutosCombo]
    PRIMARY KEY NONCLUSTERED ([Combos_Id], [Produtos_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoriaId] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [FK_Produtos_Categorias]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Produtos_Categorias'
CREATE INDEX [IX_FK_Produtos_Categorias]
ON [dbo].[Produtos]
    ([CategoriaId]);
GO

-- Creating foreign key on [ClienteId] in table 'NotasFiscais'
ALTER TABLE [dbo].[NotasFiscais]
ADD CONSTRAINT [FK_NotaFiscal_Clientes]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotaFiscal_Clientes'
CREATE INDEX [IX_FK_NotaFiscal_Clientes]
ON [dbo].[NotasFiscais]
    ([ClienteId]);
GO

-- Creating foreign key on [PedidoId] in table 'ItensPedidos'
ALTER TABLE [dbo].[ItensPedidos]
ADD CONSTRAINT [FK_ItensPedidos_Pedidos]
    FOREIGN KEY ([PedidoId])
    REFERENCES [dbo].[Pedidos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItensPedidos_Pedidos'
CREATE INDEX [IX_FK_ItensPedidos_Pedidos]
ON [dbo].[ItensPedidos]
    ([PedidoId]);
GO

-- Creating foreign key on [ProdutoId] in table 'ItensPedidos'
ALTER TABLE [dbo].[ItensPedidos]
ADD CONSTRAINT [FK_ItensPedidos_Produtos]
    FOREIGN KEY ([ProdutoId])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ItensPedidos_Produtos'
CREATE INDEX [IX_FK_ItensPedidos_Produtos]
ON [dbo].[ItensPedidos]
    ([ProdutoId]);
GO

-- Creating foreign key on [StatusId] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [FK_Pedidos_Status]
    FOREIGN KEY ([StatusId])
    REFERENCES [dbo].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Pedidos_Status'
CREATE INDEX [IX_FK_Pedidos_Status]
ON [dbo].[Pedidos]
    ([StatusId]);
GO

-- Creating foreign key on [Ingredientes_Id] in table 'IngredienteProduto'
ALTER TABLE [dbo].[IngredienteProduto]
ADD CONSTRAINT [FK_IngredienteProduto_Ingredientes]
    FOREIGN KEY ([Ingredientes_Id])
    REFERENCES [dbo].[Ingredientes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Produtos_Id] in table 'IngredienteProduto'
ALTER TABLE [dbo].[IngredienteProduto]
ADD CONSTRAINT [FK_IngredienteProduto_Produtos]
    FOREIGN KEY ([Produtos_Id])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_IngredienteProduto_Produtos'
CREATE INDEX [IX_FK_IngredienteProduto_Produtos]
ON [dbo].[IngredienteProduto]
    ([Produtos_Id]);
GO

-- Creating foreign key on [NotasFiscais_Id] in table 'NotasFiscaisProdutos'
ALTER TABLE [dbo].[NotasFiscaisProdutos]
ADD CONSTRAINT [FK_NotasFiscaisProdutos_NotasFiscais]
    FOREIGN KEY ([NotasFiscais_Id])
    REFERENCES [dbo].[NotasFiscais]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Produtos_Id] in table 'NotasFiscaisProdutos'
ALTER TABLE [dbo].[NotasFiscaisProdutos]
ADD CONSTRAINT [FK_NotasFiscaisProdutos_Produtos]
    FOREIGN KEY ([Produtos_Id])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NotasFiscaisProdutos_Produtos'
CREATE INDEX [IX_FK_NotasFiscaisProdutos_Produtos]
ON [dbo].[NotasFiscaisProdutos]
    ([Produtos_Id]);
GO

-- Creating foreign key on [Combos_Id] in table 'ProdutosCombo'
ALTER TABLE [dbo].[ProdutosCombo]
ADD CONSTRAINT [FK_ProdutosCombo_Produtos]
    FOREIGN KEY ([Combos_Id])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Produtos_Id] in table 'ProdutosCombo'
ALTER TABLE [dbo].[ProdutosCombo]
ADD CONSTRAINT [FK_ProdutosCombo_Produtos1]
    FOREIGN KEY ([Produtos_Id])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProdutosCombo_Produtos1'
CREATE INDEX [IX_FK_ProdutosCombo_Produtos1]
ON [dbo].[ProdutosCombo]
    ([Produtos_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------