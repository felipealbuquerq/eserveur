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
        private int qtdProduto;
        private int statusId;
        private int mesaId;
        private int produtoId;
        private Produto produto;
        private Status status;

        public Pedido()
        {

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
            get { return this.produto.Preco * this.qtdProduto; }
        }

        public int ProdutoId
        {
            get { return produtoId; }
            set { produtoId = value; }
        }

        public Produto Produto
        {
            get { return this.produto; }
            set { this.produto = value; }
        }

        public int QtdProduto
        {
            get { return qtdProduto; }
            set { qtdProduto = value; }
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
