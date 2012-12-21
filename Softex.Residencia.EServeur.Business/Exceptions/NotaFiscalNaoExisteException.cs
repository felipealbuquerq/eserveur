using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Business.Exceptions
{
    class NotaFiscalNaoExisteException : Exception
    {
        public NotaFiscalNaoExisteException()
            : base("Não existe uma Nota Fiscal cadastrada com esses dados!")
        {
        }

        public NotaFiscalNaoExisteException(string message)
            : base(message)
        {

        }
    }
}
