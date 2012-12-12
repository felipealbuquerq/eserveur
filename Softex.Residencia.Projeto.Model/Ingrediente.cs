using System.Collections.Generic;

namespace Softex.Residencia.EServeur.Model
{
    public class Ingrediente
    {
        private int id;
        private string nome;
        private decimal preco;
        private bool disponivel;
        private IList<Produto> produtos;

        public int Id 
        {
            get { return this.id; }
            set { this.id = value; }
        }

        public string Nome
        {
            get { return this.nome; }
            set { this.nome = value; }
        }

        public decimal Preco
        {
            get { return this.preco; }
            set { this.preco = value; }
        }

        public bool Disponivel
        {
            get { return this.disponivel; }
            set { this.disponivel = value; }
        }

        public IList<Produto> Produtos
        {
            get { return this.produtos; }
            set { this.produtos = value; }
        }
    }
}
