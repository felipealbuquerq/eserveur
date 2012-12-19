using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class ComboBusiness
    {
        private IComboRepository repository;

        public ComboBusiness()
        {
            this.repository = new ComboRepository();
        }

        public void CadastrarCombo(Combo combo)
        {
            if (combo == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(combo);
            this.repository.Save();
        }

        public Combo RecuperarCombo(int comboId)
        {
            if (comboId <= 0)
            {
                throw new ArgumentException("O identificador do combo não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(comboId);
        }

        public IEnumerable<Combo> RecuperarCombos()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Combo> RecuperarCombos(Expression<Func<Combo, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Combo> RecuperarCombos(Expression<Func<Combo, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }

        public IList<string> RecuperarNomesCombos()
        {
            return this.RecuperarCombos().Select(i => i.Nome).ToList();
        }

        public void RemoverCombo(int comboId)
        {
            if (comboId <= 0)
            {
                throw new ArgumentException("O identificador do combo não pode ser menor ou igual a zero!");
            }

            Combo combo = this.RecuperarCombo(comboId);

            this.repository.Remove(combo);
            this.repository.Save();
        }
    }
}
