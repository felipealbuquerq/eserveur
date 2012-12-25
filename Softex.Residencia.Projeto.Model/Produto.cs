using System.Collections.Generic;

namespace Softex.Residencia.EServeur.Model
{
    public class Produto
    {
        public Produto()
        {
            this.Ingredientes = new List<Ingrediente>();
            this.Produtos = new List<Produto>();
            this.Combos = new List<Produto>();
            this.ItensPedidos = new List<ItemPedido>();
            this.NotasFiscais = new List<NotaFiscal>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public decimal Preco { get; set; }
        public bool IsCombo { get; set; }
        public byte[] Imagem { get; set; }
        public int CategoriaId { get; set; }
        public virtual Categoria Categoria { get; set; }
        public virtual IList<Produto> Produtos { get; set; }
        public virtual IList<Ingrediente> Ingredientes { get; set; }
        public virtual IList<Produto> Combos { get; set; }
        public virtual IList<ItemPedido> ItensPedidos { get; set; }
        public virtual IList<NotaFiscal> NotasFiscais { get; set; }
    }
}
