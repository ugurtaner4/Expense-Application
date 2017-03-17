using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseApp.UI
{
    public partial class Login : System.Web.UI.Page
    {
       

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}