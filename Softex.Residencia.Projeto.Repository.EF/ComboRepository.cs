using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class ComboRepository : RepositoryBase<Combo, int>, IComboRepository
    {
        public ComboRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Combos;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Combos.EntitySet.Name;
        }

        public override Combo FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
