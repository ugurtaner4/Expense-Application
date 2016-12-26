using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using ExpenseApp.Data;
using ExpenseApp.Data.Enums;
using ExpenseApp.Business.DTOs;

namespace ExpenseApp.Business
{
    public class Helper
    {
        public ExpenseAppEntities entity = new ExpenseAppEntities();

        public void SqlFetch()
        {
            var srg = entity.Expense.ToList();

            var srg2 = entity.Expense.Where(t => t.Amount == 2 && t.ApprovalState == (int)ApprovalStateEnum.WaitingForManagerApproval).ToList();
        }

        public List<ExpenseDTO> GetWaitingForManagerApprovalExpenses()
        {
            var expenses = entity.Expense.Where(t => t.ApprovalState == (int)ApprovalStateEnum.WaitingForManagerApproval).ToList();
            return expenses.ToExpenseDTO();
        }
    }
}
