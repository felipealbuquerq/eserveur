using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Status
    {
        private int id;
        private string decricao;
        private IList<Pedido> pedidos;

        public int Id
        {
            get { return this.id; }
            set { this.id = value; }
        }

        public string Descricao
        {
            get { return this.decricao; }
            set { this.decricao = value; }
        }

        public IList<Pedido> Pedidos
        {
            get { return this.pedidos; }
            set { this.pedidos = value; }
        }
    }
}
