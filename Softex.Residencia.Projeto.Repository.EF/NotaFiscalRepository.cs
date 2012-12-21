using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class NotaFiscalRepository : RepositoryBase<NotaFiscal, int>, INotaFiscalRepository
    {
        public NotaFiscalRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.NotasFiscais;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Categorias.EntitySet.Name;
        }

        public override NotaFiscal FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(notaFiscal => notaFiscal.Id == id);
        }
    }
}
