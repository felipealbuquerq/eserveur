using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class NotaFiscal
    {
        private int id;
        private int numero;
        private int clienteId;
        private DateTime data;
        private decimal valor;
        private Cliente cliente;
        private IList<Produto> produtos;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public int Numero
        {
            get { return numero; }
            set { numero = value; }
        }

        public int ClienteId
        {
            get { return clienteId; }
            set { clienteId = value; }
        }

        public DateTime Data
        {
            get { return data; }
            set { data = value; }
        }

        public decimal Valor
        {
            get { return valor; }
            set { valor = value; }
        }

        public Cliente Cliente
        {
            get { return cliente; }
            set { cliente = value; }
        }

        public IList<Produto> Produtos
        {
            get { return produtos; }
            set { produtos = value; }
        }
    }
}
