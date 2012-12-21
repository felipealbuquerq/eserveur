using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Softex.Residencia.EServeur.Repository.EF;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Business
{
    class StatusBusiness
    {
        private IStatusRepository repository;

        public StatusBusiness()
        {
            this.repository = new StatusRepository();
        }

        
    }
}
