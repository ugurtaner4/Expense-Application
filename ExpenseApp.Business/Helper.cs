using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;

namespace ExpenseApp.Business
{
    
    class Helper
    {
        ExpenseApp.Data.ExpenseAppEntities entity = new Data.ExpenseAppEntities();
        public void ExpenseFetch()
        {
            var sql = from x in entity.Expense select x; // böyle bi hata var abi

        }

    }
}
