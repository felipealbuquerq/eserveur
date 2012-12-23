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
        private int statusId;
        private int mesaId;
        private IList<Produto> produtos;
        private Status status;

        public Pedido()
        {
            this.Produtos = new List<Produto>();
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



        public virtual IList<Produto> Produtos
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

        public int MesaId
        {
            get { return mesaId; }
            set { mesaId = value; }
        }
    }
}
