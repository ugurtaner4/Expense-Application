using ExpenseApp.Business.DTOs;
using ExpenseApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business
{
    public static class DtoExtensions
    {
        public static List<ExpenseDTO> ToExpenseDTO(this List<Expense> expenseList)
        {
            if (expenseList == null || expenseList.Count == 0)
                return null;

            List<ExpenseDTO> dtoList = new List<ExpenseDTO>();
            foreach (var expense in expenseList)
            {
                ExpenseDTO dtoItem = new ExpenseDTO();
                dtoItem.Amount = expense.Amount.Value;
                dtoItem.ApprovalState = expense.ApprovalState.Value;
                dtoItem.CreateBy = expense.CreateBy;
                dtoItem.ExpenseDetail = expense.ExpenseDetail;
                dtoItem.Explanation = expense.Explanation;
                dtoItem.IsSentToApproved = expense.IsSentToApproved.Value;
                dtoItem.ReceiptNo = expense.ReceiptNo;
                dtoItem.UserId = expense.UserId;
                dtoList.Add(dtoItem);
            }
            return dtoList;
        }
    }
}
