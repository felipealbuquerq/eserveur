using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Business.Exceptions
{
    public class CategoryAlreadyExistsException : Exception
    {
        public CategoryAlreadyExistsException()
            : base("Já existe uma categoria cadastrada com esse nome!")
        {
        }

        public CategoryAlreadyExistsException(string message) 
            : base(message)
        {
        }
    }
}
