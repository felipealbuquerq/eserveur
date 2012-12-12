using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class CategoriaRepository : RepositoryBase<Categoria, int>, ICategoriaRepository
    {
        public override IQueryable<Categoria> GetObjectSet()
        {
            throw new NotImplementedException();
        }

        public override string GetEntitySetName()
        {
            throw new NotImplementedException();
        }

        public override Categoria FindBy(int id)
        {
            throw new NotImplementedException();
        }
    }
}
