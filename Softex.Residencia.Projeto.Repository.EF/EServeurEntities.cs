using Softex.Residencia.EServeur.Model;
using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class EServeurEntities : ObjectContext
    {
        private ObjectSet<Produto> produtos;
        private ObjectSet<Categoria> categorias;
        private ObjectSet<Ingrediente> ingredientes;
        private ObjectSet<Pedido> pedidos;
        private ObjectSet<ItemPedido> itensPedidos;
        private ObjectSet<Status> status;
        private ObjectSet<Cliente> clientes;
        private ObjectSet<NotaFiscal> notasFiscais;

        public EServeurEntities()
            : base("name=EServeurEntities", "EServeurEntities")
        {
            this.Ingredientes = CreateObjectSet<Ingrediente>();
            this.ItensPedidos = CreateObjectSet<ItemPedido>();
            this.Pedidos = CreateObjectSet<Pedido>();
            this.Produtos = CreateObjectSet<Produto>();            
            this.Categorias = CreateObjectSet<Categoria>();
            this.Status = CreateObjectSet<Status>();
            this.clientes = CreateObjectSet<Cliente>();
            this.notasFiscais = CreateObjectSet<NotaFiscal>();

            base.ContextOptions.LazyLoadingEnabled = true;
        }

        public ObjectSet<Ingrediente> Ingredientes
        {
            get { return this.ingredientes; }
            set { this.ingredientes = value; }
        }

        public ObjectSet<Pedido> Pedidos
        {
            get { return this.pedidos; }
            set { this.pedidos = value; }
        }

        public ObjectSet<ItemPedido> ItensPedidos
        {
            get { return itensPedidos; }
            set { itensPedidos = value; }
        }

        public ObjectSet<Produto> Produtos
        {
            get { return produtos; }
            set { produtos = value; }
        }

        public ObjectSet<Categoria> Categorias
        {
            get { return categorias; }
            set { categorias = value; }
        }

        public ObjectSet<Status> Status
        {
            get { return status; }
            set { status = value; }
        }

        public ObjectSet<Cliente> Clientes
        {
            get { return clientes; }
            set { clientes = value; }
        }

        public ObjectSet<NotaFiscal> NotasFiscais
        {
            get { return notasFiscais; }
            set { notasFiscais = value; }
        }
    }
}
