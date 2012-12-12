using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using Softex.Residencia.EServeur.Model;

namespace Softex.Residencia.EServeur.Repository.EF
{
    public abstract class RepositoryBase<T, EntityKey> : IRepository<T, EntityKey> where T : class
    {
        protected IQueryable<T> ObjectSet;
        protected EServeurEntities Context;

        public abstract IQueryable<T> GetObjectSet();
        public abstract string GetEntitySetName();
        public abstract T FindBy(EntityKey id);

        public void Save()
        {
            this.Context.SaveChanges();
        }

        public void Add(T entity)
        {
            this.Context.AddObject(this.GetEntitySetName(), entity);
        }

        public void Remove(T entity)
        {
            this.Context.DeleteObject(entity);
        }        

        public IEnumerable<T> FindAll()
        {
            return this.ObjectSet;
        }

        public IEnumerable<T> FindBy(Expression<Func<T, bool>> query)
        {
            return this.ObjectSet.Where(query);
        }

        public IEnumerable<T> FindBy(Expression<Func<T, bool>> query, int index, int count)
        {
            return this.FindBy(query).Skip(index).Take(count);
        }
    }
}
