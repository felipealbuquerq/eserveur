using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Combo : Produto
    {
        private decimal desconto;
        private IList<Produto> produtos; 
        
        public decimal Desconto
        {
            get { return desconto; }
            set { desconto = value; }
        }

        public IList<Produto> Produtos
        {
            get { return produtos; }
            set { produtos = value; }
        }

        public override decimal Preco
        {
            get
            {
                decimal valorTotalProdutos = this.produtos.Sum(p => p.Preco);


                return  ((100 - this.desconto) * valorTotalProdutos) / 100;
            }
        }

        public override IList<Ingrediente> Ingredientes
        {
            get
            {
                return new List<Ingrediente>();
            }
        }
    }
}
