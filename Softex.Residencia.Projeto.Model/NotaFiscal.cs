using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class NotaFiscal
    {
        public NotaFiscal()
        {
            this.Produtos = new List<Produto>();
        }

        public int Id { get; set; }
        public int Numero { get; set; }
        public int ClienteId { get; set; }
        public DateTime Data { get; set; }
        public decimal Valor { get; set; }
        public bool Cancelado { get; set; }
        public virtual Cliente Cliente { get; set; }
        public virtual IList<Produto> Produtos { get; set; }
    }
}
