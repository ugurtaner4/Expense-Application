using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business.DTOs
{
    public class ExpenseDTO
    {
        public int id { get; internal set; }
        public int UserId { get; set; }
        public decimal ApprovalState { get; set; }
        public int Amount { get; set; }
        public string CreateBy { get; set; }
        public string ReceiptNo { get; set; }
        public string Explanation { get; set; }
        public bool IsSentToApproved { get; set; }
        public string ExpenseDetail { get; set; }
    }
}
