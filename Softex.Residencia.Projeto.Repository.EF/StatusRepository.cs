using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class StatusRepository : RepositoryBase<Status, int>, IStatusRepository
    {
        public StatusRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Status;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Status.EntitySet.Name;
        }

        public override Status FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
