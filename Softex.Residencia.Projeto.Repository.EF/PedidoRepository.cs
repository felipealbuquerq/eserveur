using Softex.Residencia.EServeur.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class PedidoRepository : RepositoryBase<Pedido, int>, IPedidoRepository
    {
        public PedidoRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Pedidos;
        }

        public override IQueryable<Pedido> GetObjectSet()
        {
            return this.ObjectSet;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Pedidos.EntitySet.Name;
        }

        public override Pedido FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(i => i.Id == id);
        }
    }
}
