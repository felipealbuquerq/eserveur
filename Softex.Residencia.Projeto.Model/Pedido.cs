using System;
using System.Collections.Generic;
using System.Linq;

namespace Softex.Residencia.EServeur.Model
{
    public class Pedido
    {
        private int id;
        private DateTime horarioEntradaPedido;
        private DateTime horarioSaidaPedido;
        private Mesa mesa;
        private IList<Produto> produtos;
        private int statusId;
        private Status status;

        public Pedido()
        {
            this.produtos = new List<Produto>();
        }

        public int Id 
        {
            get { return this.id; }
            set { this.id = value; } 
        }

        public DateTime HorarioEntrada
        {
            get { return this.horarioEntradaPedido; }
            set { this.horarioEntradaPedido = value; }
        }

        public DateTime HorarioSaida
        {
            get { return this.horarioSaidaPedido; }
            set { this.horarioSaidaPedido = value; }
        }

        public decimal ValorPedido
        {
            get { return this.produtos.Sum(p => p.Preco); }
        }

        public Mesa Mesa
        {
            get { return this.mesa; }
            set { this.mesa = value; }
        }

        public IList<Produto> Produtos
        {
            get { return this.produtos; }
            set { this.produtos = value; }
        }

        public Status Status
        {
            get { return status; }
            set { status = value; }
        }

        public int StatusId
        {
            get { return statusId; }
            set { statusId = value; }
        }
    }
}
