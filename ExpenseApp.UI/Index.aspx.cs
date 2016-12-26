using ExpenseApp.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseApp.UI
{
    public partial class Index : System.Web.UI.Page
    {
        Helper helper = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            helper = new Helper();
            var expenses  = helper.GetWaitingForManagerApprovalExpenses(txtApprovalState.Text);
        }
    }
}