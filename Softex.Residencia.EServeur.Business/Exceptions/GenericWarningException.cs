using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Business.Exceptions
{
    public class GenericWarningException : Exception
    {
        public GenericWarningException() : base()
        {
            
        }

        public GenericWarningException(string message)
            : base(message)
        {

        }
    }
}
