using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class ProdutoBusiness
    {
        private readonly IProdutoRepository repository;

        public ProdutoBusiness()
        {
            this.repository = new ProdutoRepository();
        }

        public void CadastrarProduto(Produto produto)
        {
            if (produto == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(produto);
            this.repository.Save();
        }

        public Produto RecuperarProduto(int produtoId)
        {
            if (produtoId <= 0)
            {
                throw new ArgumentException("O identificador do produto não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(produtoId);
        }

        public IEnumerable<Produto> RecuperarProdutos()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Produto> RecuperarProdutos(Expression<Func<Produto, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Produto> RecuperarProdutos(Expression<Func<Produto, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }

        public IEnumerable<Produto> RecuperarProdutosDisponiveis()
        {
            List<Produto> produtos = new List<Produto>();

            foreach (Produto produto in this.RecuperarProdutos())
            {
                if (produto.Ingredientes.Count > 0)
                {
                    //Conta a quantidade de ingredientes disponíveis
                    int qtdIngredientesDisponiveis = produto.Ingredientes.Count(ingrediente => ingrediente.Disponivel);

                    //Verifica se a quantidade de ingredientes do produto é igual 
                    //a quantidade de ingredientes disponíveis
                    if (produto.Ingredientes.Count == qtdIngredientesDisponiveis)
                    {
                        produtos.Add(produto);
                    }
                }
                else
                {
                    produtos.Add(produto);
                }
            }

            return produtos;
        }

        public IList<string> RecuperarNomesProdutos()
        {
            return this.RecuperarProdutos().Select(i => i.Nome).ToList();
        }
        
        public void RemoverProduto(int produtoId)
        {
            if (produtoId <= 0)
            {
                throw new ArgumentException("O identificador do produto não pode ser menor ou igual a zero!");
            }

            Produto produto = this.RecuperarProduto(produtoId);

            this.repository.Remove(produto);
            this.repository.Save();
        }
    }
}
