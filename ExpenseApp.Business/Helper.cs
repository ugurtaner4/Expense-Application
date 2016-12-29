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

        public void AddUSer(String UserName,String Pass,String Name, String Surname, String Email,String PhoneNumber)
        {
            User u = new User();
            u.UserName = UserName;
            u.Password = Pass;
            u.Name = Name;
            u.Surname = Surname;
            u.Email = Email;
            u.PhoneNumber = PhoneNumber;
             entity.User.Add(u);
            entity.SaveChanges();

  
            

        }

        public List<ExpenseDTO> GetWaitingForManagerApprovalExpenses()
        {
            var expenses = entity.Expense.Where(t => t.ApprovalState == (int)ApprovalStateEnum.WaitingForManagerApproval).ToList();
            return expenses.ToExpenseDTO();
        }
    }
}
