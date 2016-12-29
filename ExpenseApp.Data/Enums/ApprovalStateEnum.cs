using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Data.Enums
{
    public enum ApprovalStateEnum   
    {
        Undefined = 0,
        WaitingForManagerApproval = 1,
        WaitingForAccountantPayment = 2,
        Paid = 3,
        Rejected =4
    }
}
