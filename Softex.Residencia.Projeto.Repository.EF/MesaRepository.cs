using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class MesaRepository : RepositoryBase<Mesa, int>, IMesaRepository
    {
        public MesaRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Mesas;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Mesas.EntitySet.Name;
        }

        public override Mesa FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
