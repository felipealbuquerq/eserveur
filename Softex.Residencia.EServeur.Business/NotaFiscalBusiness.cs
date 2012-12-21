using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Model;
using Softex.Residencia.EServeur.Repository.EF;
using Softex.Residencia.EServeur.Business.Exceptions;

namespace Softex.Residencia.EServeur.Business {
    class NotaFiscalBusiness {

        private INotaFiscalRepository repository;

        public NotaFiscalBusiness()
        {
            this.repository =  new NotaFiscalRepository();
        }

        public void CadastrarNotaFiscal(NotaFiscal notaFiscal)
        {
            if(notaFiscal == null)
            {
                throw new ArgumentNullException();
            }

            this.repository.Add(notaFiscal);
            this.repository.Save();
        }

        public NotaFiscal RecuperarNotaFiscal(int notafiscalID)
        {
            if (notafiscalID <= 0)
            {
                throw new ArgumentException("O identificador da nota fiscal não pode ser menor ou igual a zero!");
            }

            return this.repository.FindBy(notafiscalID);
        }

        /*
        public NotaFiscal RecuperarNotaFiscal(int numero)
        {
            if (numero <= 0)
            {
                throw new ArgumentException("O identificador da nota fiscal não pode ser menor ou igual a zero!");
            }

            IEnumerable<NotaFiscal> notasFiscais = this.RecuperarNotasFiscais();
            
            foreach(NotaFiscal notaFiscal in notasFiscais)
            {
                if(notaFiscal.Numero == numero)
                {
                    return notaFiscal;
                }
            }

            throw new NotaFiscalNaoExisteException();
        }*/

        public IEnumerable<NotaFiscal> RecuperarNotasFiscais()
        {
            return this.repository.FindAll();
        }

        public void CancelarNotaFiscal()
        {
            throw new NotImplementedException();
        }
    }
}
