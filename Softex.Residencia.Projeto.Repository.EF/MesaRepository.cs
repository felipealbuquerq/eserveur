using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class MesaRepository : RepositoryBase<Mesa, int>, IMesaRepository
    {
        public override IQueryable<Mesa> GetObjectSet()
        {
            throw new NotImplementedException();
        }

        public override string GetEntitySetName()
        {
            throw new NotImplementedException();
        }

        public override Mesa FindBy(int id)
        {
            throw new NotImplementedException();
        }
    }
}
