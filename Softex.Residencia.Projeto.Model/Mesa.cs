using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Mesa
    {
        private int id;
        private IList<Produto> pedidos;

        public Mesa()
        {
            this.pedidos = new List<Produto>();
        }

        public int Id
        {
            get { return this.id; }
            set { this.id = value; }
        }

        public IList<Produto> Pedidos
        {
            get { return this.pedidos; }
            set { this.pedidos = value; }
        }
    }
}
