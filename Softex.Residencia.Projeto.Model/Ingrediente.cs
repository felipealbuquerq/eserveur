using System.Collections.Generic;

namespace Softex.Residencia.EServeur.Model
{
    public class Ingrediente
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public decimal Preco { get; set; }
        public bool Disponivel { get; set; }
        public virtual IList<Produto> Produtos { get; set; }
    }
}
