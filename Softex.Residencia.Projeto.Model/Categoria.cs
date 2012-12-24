using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Categoria
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public virtual IList<Produto> Produtos { get; set; }
    }
}
