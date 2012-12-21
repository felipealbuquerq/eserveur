using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;
using System.Linq.Expressions;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class IngredienteBusiness
    {
        private IIngredienteRepository repository;

        public IngredienteBusiness()
        {
            this.repository = new IngredienteRepository();
        }

        public void CadastrarIngrediente(Ingrediente ingrediente)
        {
            if (ingrediente == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(ingrediente);
            this.repository.Save();
        }

        public Ingrediente RecuperarIngrediente(int ingredienteId)
        {
            if (ingredienteId <= 0)
            {
                throw new ArgumentException("O identificador do ingrediente não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(ingredienteId);
        }

        public IEnumerable<Ingrediente> RecuperarIngredientes()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Ingrediente> RecuperarIngredientes(Expression<Func<Ingrediente, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Ingrediente> RecuperarIngredientes(Expression<Func<Ingrediente, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }

        public IList<string> RecuperarNomesIngredientes()
        {
            return this.RecuperarIngredientes().Select(i => i.Nome).ToList();
        }

        public void IndisponibilizarIngrediente(int ingredienteId)
        {
            if (ingredienteId <= 0)
            {
                return;
            }

            Ingrediente ingrediente = this.RecuperarIngrediente(ingredienteId);
            ingrediente.Disponivel = false;
            
            this.repository.Save();
        }

        //método de remoção de um ingrediente
        public void RemoverIngrediente(int ingredienteId)
        {
            if (ingredienteId <= 0)
            {
                throw new ArgumentException("O identificador do ingrediente não pode ser menor ou igual a zero!");
            }

            Ingrediente ingrediente = this.RecuperarIngrediente(ingredienteId);

            this.repository.Remove(ingrediente);
            this.repository.Save();
        }
    }
}
