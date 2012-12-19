using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class CategoriaBusiness
    {
        private ICategoriaRepository repository;

        public CategoriaBusiness()
        {
            this.repository = new CategoriaRepository();
        }

        public void CadastrarCategoria(Categoria categoria)
        {
            if (categoria == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(categoria);
            this.repository.Save();
        }

        public Categoria RecuperarCategoria(int categoriaId)
        {
            if (categoriaId <= 0)
            {
                throw new ArgumentException("O identificador da categoria não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(categoriaId);
        }

        public IEnumerable<Categoria> RecuperarCategorias()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Categoria> RecuperarCategorias(Expression<Func<Categoria, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Categoria> RecuperarCategorias(Expression<Func<Categoria, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }

        public IList<string> RecuperarNomesCategorias()
        {
            return this.RecuperarCategorias().Select(i => i.Nome).ToList();
        }

        public void RemoverCategoria(int categoriaId)
        {
            if (categoriaId <= 0)
            {
                throw new ArgumentException("O identificador da categoria não pode ser menor ou igual a zero!");
            }

            Categoria categoria = this.RecuperarCategoria(categoriaId);

            this.repository.Remove(categoria);
            this.repository.Save();
        }
    }
}
