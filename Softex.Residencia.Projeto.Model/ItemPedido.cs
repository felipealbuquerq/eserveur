using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class ItemPedido
    {
        public ItemPedido()
        {
            
        }

        public ItemPedido(Produto produto)
        {
            this.Produto = produto;
        }

        public int Id { get; set; }
        public int PedidoId { get; set; }
        public int ProdutoId { get; set; }
        public int QtdProduto { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual Pedido Pedido { get; set; }

        public decimal Valor
        {
            get { return this.Produto.Preco * this.QtdProduto; }
        }
    }
}
