using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;

namespace Softex.Residencia.EServeur.Business
{
    class ClienteBusiness
    {
        private IClienteRepository repository;

        public ClienteBusiness()
        {
            this.repository = new ClienteRepository();
        }

        public void CadastrarCliente(Cliente cliente)
        {
            if (cliente == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(cliente);
            this.repository.Save();
        }

        public Cliente recuperarCliente(int clienteID)
        {
            if (clienteID <= 0)
            {
                throw new ArgumentException("O identificador do cliente não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(clienteID);
        }

        public IEnumerable<Cliente> RecuperarClientes()
        {
            return this.repository.FindAll();
        }

        public void RemoverCliente()
        {
            throw new NotImplementedException();
        }
    }
}
