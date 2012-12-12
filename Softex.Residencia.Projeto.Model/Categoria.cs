using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Categoria
    {
        private int id;
        private string nome;
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

        public IList<Produto> Produtos
        {
            get { return this.produtos; }
            set { this.produtos = value; }
        }
    }
}
