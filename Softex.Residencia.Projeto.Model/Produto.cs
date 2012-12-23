using System.Collections.Generic;

namespace Softex.Residencia.EServeur.Model
{
    public class Produto
    {
        private int id;
        private string nome;
        private string descricao;
        private decimal preco;
        private bool isCombo;
        private byte[] imagem;
        private int categoriaId;
        private Categoria categoria;
        private IList<Pedido> pedidos;
        private IList<Ingrediente> ingredientes;
        private IList<Produto> produtos;
        private IList<Produto> combos;
        private IList<NotaFiscal> notasFiscais;

        public Produto()
        {
            this.Ingredientes = new List<Ingrediente>();
            this.Produtos = new List<Produto>();
            this.Combos = new List<Produto>();
            this.Pedidos = new List<Pedido>();
            this.notasFiscais = new List<NotaFiscal>();
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

        public bool IsCombo
        {
            get { return isCombo; }
            set { isCombo = value; }
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

        public IList<Produto> Produtos
        {
            get { return produtos; }
            set { produtos = value; }
        }

        public int CategoriaId
        {
            get { return categoriaId; }
            set { categoriaId = value; }
        }

        public IList<Produto> Combos
        {
            get { return combos; }
            set { combos = value; }
        }

        public IList<Pedido> Pedidos
        {
            get { return pedidos; }
            set { pedidos = value; }
        }

        public IList<NotaFiscal> NotasFiscais
        {
            get { return notasFiscais; }
            set { notasFiscais = value; }
        }
    }
}
