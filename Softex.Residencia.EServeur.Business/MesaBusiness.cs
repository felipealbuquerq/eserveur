using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Repository.EF;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Business
{
    public class MesaBusiness
    {
        private IMesaRepository repository;

        public MesaBusiness(){
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

        public Mesa RecuperaMesa(int MesaID)
        {
            if(MesaID <= 0)
            {
                throw new ArgumentException("O identificador da mesa não pode ser menor ou igual a zero!");
            }
            return this.repository.FindBy(MesaID);
        }

        
    }
}
