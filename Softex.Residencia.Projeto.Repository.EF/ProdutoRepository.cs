using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class ProdutoRepository : RepositoryBase<Produto, int>, IProdutoRepository
    {
        public ProdutoRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Produtos;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Produtos.EntitySet.Name;
        }

        public override Produto FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
