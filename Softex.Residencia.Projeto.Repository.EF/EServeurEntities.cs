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
        private ObjectSet<Status> status;
        private ObjectSet<Mesa> mesas;

        public EServeurEntities()
            : base("name=EServeurEntities", "EServeurEntities")
        {
            this.Ingredientes = CreateObjectSet<Ingrediente>();
            this.Pedidos = CreateObjectSet<Pedido>();
            this.Produtos = CreateObjectSet<Produto>();
            this.Categorias = CreateObjectSet<Categoria>();
            this.Status = CreateObjectSet<Status>();
            this.Mesas = CreateObjectSet<Mesa>();

            base.ContextOptions.LazyLoadingEnabled = true;
        }

        public ObjectSet<Ingrediente> Ingredientes
        {
            get { return this.ingredientes; }
            private set { this.ingredientes = value; }
        }

        public ObjectSet<Pedido> Pedidos
        {
            get { return this.pedidos; }
            private set { this.pedidos = value; }
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

        public ObjectSet<Mesa> Mesas
        {
            get { return mesas; }
            set { mesas = value; }
        }
    }
}
