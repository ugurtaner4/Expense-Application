using ExpenseApp.Data;
using ExpenseApp.Business.DTOs;
using ExpenseApp.Business.Manager;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business.Helpers
{
    public class ExpenseHelper
    {
        EntityManager<Expense> expenseManager = new EntityManager<Expense>();
        public List<ExpenseDTO> GetExpenses()
        {
            var expense = expenseManager.List();
            return expense.Where(t => t.IsDeleted == false).ToList().ToExpenseDTOList();
        }
        public ExpenseDTO GetExpenses(int id)
        {
            var expenses = expenseManager.First(t => t.Id == id);
            return expenses.ToExpenseDTO();
        }
        public void InsertExpenses(ExpenseDTO expenses)
        {
            expenseManager.Add(expenses.ToExpense());
        }
        public void DeleteExpenses(int id)
        {
            var expense = GetExpenses(id).ToExpense();
            expense.IsDeleted = true;
            expenseManager.Update(expense);
        }
    }
}
