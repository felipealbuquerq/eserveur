using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Status
    {
        public Status()
        {
            this.Pedidos = new List<Pedido>();
        }

        public int Id { get; set; }
        public string Descricao { get; set; }
        public virtual IList<Pedido> Pedidos { get; set; }
    }
}
