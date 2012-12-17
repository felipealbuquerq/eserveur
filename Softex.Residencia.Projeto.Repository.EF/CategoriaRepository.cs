using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class CategoriaRepository : RepositoryBase<Categoria, int>, ICategoriaRepository
    {
        public CategoriaRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Categorias;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Categorias.EntitySet.Name;
        }

        public override Categoria FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
