using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public class Cliente
    {
        private int id;
        private string nome;
        private string cpfCnpj;
        private string endereco;
        private IList<NotaFiscal> notasFiscais;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public string CpfCnpj
        {
            get { return cpfCnpj; }
            set { cpfCnpj = value; }
        }

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }

        public IList<NotaFiscal> NotasFiscais
        {
            get { return notasFiscais; }
            set { notasFiscais = value; }
        }
    }
}
