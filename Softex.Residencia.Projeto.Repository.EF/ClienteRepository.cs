using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class ClienteRepository : RepositoryBase<Cliente, int>, IClienteRepository
    {
        public ClienteRepository()
        {
            this.Context = EServeurEntitiesFactory.GetDatacontext();
            this.ObjectSet = this.Context.Clientes;
        }

        public override string GetEntitySetName()
        {
            return this.Context.Clientes.EntitySet.Name;
        }

        public override Cliente FindBy(int id)
        {
            return this.ObjectSet.FirstOrDefault(cliente => cliente.Id == id);
        }
    }
}
