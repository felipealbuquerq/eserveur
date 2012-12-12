using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public class EServeurEntitiesFactory
    {
        private static EServeurEntities context;

        public static EServeurEntities GetDatacontext()
        {
            if (context == null)
            {
                context = new EServeurEntities();
            }

            return context;
        }
    }
}
