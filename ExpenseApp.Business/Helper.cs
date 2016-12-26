using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
namespace ExpenseApp.Business
{
    
    class Helper
    {
        ExpenseApp.Data.ExpenseAppEntities entity = new Data.ExpenseAppEntities();
        public void SqlFetch()
        {
            var srg = from x in ExpenseApp where entity.Expense select x;

            
        }
        
       
    }
}
