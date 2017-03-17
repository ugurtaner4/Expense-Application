using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpenseApp.Business.DTOs;
using ExpenseApp.Business.Helpers;

namespace ExpenseApp.UI
{
    public partial class MasrafGoruntule : System.Web.UI.Page
    {
        ExpenseHelper expns = new ExpenseHelper();
        ExpenseDTO expdto = new ExpenseDTO();
        protected void Page_Load(object sender, EventArgs e)
        {



       
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            expdto.Amount = Convert.ToInt32(TextBox1.Text);
            expdto.ApprovalState = 1;
            expdto.CreateBy = TextBox2.Text;
            expdto.ExpenseDetail = TextBox3.Text;
            expdto.ReceiptNo = TextBox4.Text;
            expdto.IsSentToApproved = true;
            expns.InsertExpenses(expdto);
        }
    }
}