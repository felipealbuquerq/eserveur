using System.Collections.Generic;

namespace Softex.Residencia.EServeur.Model
{
    public class Produto
    {
        private int id;
        private string nome;
        private string descricao;
        private decimal preco;
        private bool promocao;
        private byte[] imagem;
        private Categoria categoria;
        private Pedido pedido;
        private IList<Ingrediente> ingredientes;

        public Produto()
        {
            this.ingredientes = new List<Ingrediente>();
        }

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

        public bool Promocao
        {
            get { return this.promocao; }
            set { this.promocao = value; }
        }

        public Pedido Pedido 
        {
            get { return this.pedido; }
            set { this.pedido = value; }
        }

        public byte[] Imagem
        {
            get { return this.imagem; }
            set { this.imagem = value; }
        }

        public IList<Ingrediente> Ingredientes
        {
            get { return ingredientes; }
            set { ingredientes = value; }
        }

        public Categoria Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }
    }
}
