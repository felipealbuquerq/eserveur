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
        private IList<Combo> combos;

        public Produto()
        {
            this.ingredientes = new List<Ingrediente>();
        }

        public virtual int Id
        {
            get { return this.id; }
            set { this.id = value; }
        }

        public virtual string Nome
        {
            get { return this.nome; }
            set { this.nome = value; }
        }

        public virtual decimal Preco
        {
            get { return this.preco; }
            set { this.preco = value; }
        }

        public virtual bool Promocao
        {
            get { return this.promocao; }
            set { this.promocao = value; }
        }

        public virtual Pedido Pedido 
        {
            get { return this.pedido; }
            set { this.pedido = value; }
        }

        public virtual byte[] Imagem
        {
            get { return this.imagem; }
            set { this.imagem = value; }
        }

        public virtual IList<Ingrediente> Ingredientes
        {
            get { return ingredientes; }
            set { ingredientes = value; }
        }

        public virtual Categoria Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public virtual string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }

        public IList<Combo> Combos
        {
            get { return combos; }
            set { combos = value; }
        }
    }
}
