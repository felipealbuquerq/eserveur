using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    public class MesaBusiness
    {
        private IMesaRepository repository;

        public MesaBusiness()
        {
            this.repository = new MesaRepository();
        }

        public void CadastrarMesa(Mesa mesa)
        {
            if (mesa == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(mesa);
            this.repository.Save();
        }

        public Mesa RecuperarMesa(int mesaId)
        {
            if (mesaId <= 0)
            {
                throw new ArgumentException("O identificador da mesa não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(mesaId);
        }

        public IEnumerable<Mesa> RecuperarMesas()
        {
            return this.repository.FindAll();
        }

        public IEnumerable<Mesa> RecuperarMesas(Expression<Func<Mesa, bool>> filter)
        {
            return this.repository.FindBy(filter);
        }

        public IEnumerable<Mesa> RecuperarMesas(Expression<Func<Mesa, bool>> filter, int index, int count)
        {
            return this.repository.FindBy(filter, index, count);
        }
        
        public void RemoverMesa(int mesaId)
        {
            if (mesaId <= 0)
            {
                throw new ArgumentException("O identificador da mesa não pode ser menor ou igual a zero!");
            }

            Mesa mesa = this.RecuperarMesa(mesaId);

            this.repository.Remove(mesa);
            this.repository.Save();
        }
    }
}
