using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace Softex.Residencia.EServeur.Model
{
    public interface IRepository<T, EntityKey>
    {
        void Save();
        void Add(T entity);
        void Remove(T entity);
        T FindBy(EntityKey id);
        IEnumerable<T> FindAll();
        IEnumerable<T> FindBy(Expression<Func<T, bool>> query);
        IEnumerable<T> FindBy(Expression<Func<T, bool>> query, int index, int count);
    }
}
