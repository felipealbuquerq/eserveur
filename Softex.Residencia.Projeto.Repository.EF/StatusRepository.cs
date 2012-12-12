using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class StatusRepository : RepositoryBase<Status, int>, IStatusRepository
    {
        public override IQueryable<Status> GetObjectSet()
        {
            throw new NotImplementedException();
        }

        public override string GetEntitySetName()
        {
            throw new NotImplementedException();
        }

        public override Status FindBy(int id)
        {
            throw new NotImplementedException();
        }
    }
}
