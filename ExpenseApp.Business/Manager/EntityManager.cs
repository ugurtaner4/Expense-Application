using ExpenseApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Linq.Expressions;

namespace ExpenseApp.Business.Manager
{
  public  class EntityManager<T> where T :class
    {
        IObjectContextAdapter _context;
        IObjectSet<T> _objectSet;
        public EntityManager()
        {
            _context = new ExpenseAppEntities1();
            _objectSet = _context.ObjectContext.CreateObjectSet<T>();
        }
        IQueryable<T> AsQueryable()
        {
            return _objectSet;
        }
        public T First(Expression<Func<T,bool>>where)
        {
            return _objectSet.First(where);
        }
        public IEnumerable<T> Find(Expression<Func<T, bool>> where)
        {
            return _objectSet.Where(where);

        }
        public void DeleteObject(T entity)
        {
            _objectSet.DeleteObject(entity);
            _context.ObjectContext.SaveChanges();
        }
        public bool Add(T entity)
        {
            _objectSet.AddObject(entity);
            _context.ObjectContext.SaveChanges();
            return true;
        }
        public List<T> List()
        {
            List<T> liste = new List<T>();
            return liste;
        }
        public virtual void Update(T entity)
        {
            if (_context.ObjectContext.ObjectStateManager.GetObjectStateEntry(entity).State == EntityState.Detached)
            {
                throw new InvalidOperationException("Update error");
            }
            _context.ObjectContext.SaveChanges();
        }
    }
    
}
