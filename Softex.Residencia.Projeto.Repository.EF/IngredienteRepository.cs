using Softex.Residencia.EServeur.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class IngredienteRepository : RepositoryBase<Ingrediente, int>, IIngredienteRepository
    {
        public IngredienteRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Ingredientes;
        }

        public override IQueryable<Ingrediente> GetObjectSet()
        {
            return this.ObjectSet;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Ingredientes.EntitySet.Name;
        }

        public override Ingrediente FindBy(int id)
        {
            return this.Context.Ingredientes.FirstOrDefault(i => i.Id == id);
        }
    }
}
