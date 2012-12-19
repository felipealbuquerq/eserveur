
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2012 21:40:23
-- Generated from EDMX file: D:\CSProjects\eserveur\Softex.Residencia.Projeto.Repository.EF\EServeurModel.edmx
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
IF OBJECT_ID(N'[dbo].[FK_PedidosProdutos_Pedidos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidosProdutos] DROP CONSTRAINT [FK_PedidosProdutos_Pedidos];
GO
IF OBJECT_ID(N'[dbo].[FK_PedidosProdutos_Produto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidosProdutos] DROP CONSTRAINT [FK_PedidosProdutos_Produto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoCategoria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produtos] DROP CONSTRAINT [FK_ProdutoCategoria];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoCombo_ItemProduto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProdutosCombo] DROP CONSTRAINT [FK_ProdutoCombo_ItemProduto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdutoCombo_Produto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProdutosCombo] DROP CONSTRAINT [FK_ProdutoCombo_Produto];
GO
IF OBJECT_ID(N'[dbo].[FK_StatusPedido]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [FK_StatusPedido];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[IngredienteProduto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IngredienteProduto];
GO
IF OBJECT_ID(N'[dbo].[Ingredientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ingredientes];
GO
IF OBJECT_ID(N'[dbo].[Pedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pedidos];
GO
IF OBJECT_ID(N'[dbo].[PedidosProdutos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PedidosProdutos];
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

-- Creating table 'Ingredientes'
CREATE TABLE [dbo].[Ingredientes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL,
    [Preco] decimal(18,0)  NOT NULL,
    [Disponivel] bit  NOT NULL
);
GO

-- Creating table 'Pedidos'
CREATE TABLE [dbo].[Pedidos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HorarioEntrada] datetime  NOT NULL,
    [HorarioSaida] datetime  NOT NULL,
    [StatusId] int  NOT NULL,
    [MesaId] int  NOT NULL
);
GO

-- Creating table 'Produtos'
CREATE TABLE [dbo].[Produtos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(60)  NOT NULL,
    [Descricao] nvarchar(200)  NOT NULL,
    [Preco] decimal(18,0)  NOT NULL,
    [Imagem] varbinary(max)  NOT NULL,
    [CategoriaId] int  NOT NULL
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

-- Creating table 'PedidosProdutos'
CREATE TABLE [dbo].[PedidosProdutos] (
    [Pedidos_Id] int  NOT NULL,
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

-- Creating primary key on [Id] in table 'Ingredientes'
ALTER TABLE [dbo].[Ingredientes]
ADD CONSTRAINT [PK_Ingredientes]
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

-- Creating primary key on [Pedidos_Id], [Produtos_Id] in table 'PedidosProdutos'
ALTER TABLE [dbo].[PedidosProdutos]
ADD CONSTRAINT [PK_PedidosProdutos]
    PRIMARY KEY NONCLUSTERED ([Pedidos_Id], [Produtos_Id] ASC);
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
ADD CONSTRAINT [FK_ProdutoCategoria]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProdutoCategoria'
CREATE INDEX [IX_FK_ProdutoCategoria]
ON [dbo].[Produtos]
    ([CategoriaId]);
GO

-- Creating foreign key on [StatusId] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [FK_StatusPedido]
    FOREIGN KEY ([StatusId])
    REFERENCES [dbo].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StatusPedido'
CREATE INDEX [IX_FK_StatusPedido]
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

-- Creating foreign key on [Pedidos_Id] in table 'PedidosProdutos'
ALTER TABLE [dbo].[PedidosProdutos]
ADD CONSTRAINT [FK_PedidosProdutos_Pedidos]
    FOREIGN KEY ([Pedidos_Id])
    REFERENCES [dbo].[Pedidos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Produtos_Id] in table 'PedidosProdutos'
ALTER TABLE [dbo].[PedidosProdutos]
ADD CONSTRAINT [FK_PedidosProdutos_Produtos]
    FOREIGN KEY ([Produtos_Id])
    REFERENCES [dbo].[Produtos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PedidosProdutos_Produtos'
CREATE INDEX [IX_FK_PedidosProdutos_Produtos]
ON [dbo].[PedidosProdutos]
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