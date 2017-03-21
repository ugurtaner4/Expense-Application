using ExpenseApp.Business.Helpers;
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
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            if (!IsPostBack)
            {
                Session.Clear();
                Session.Abandon();
            }

        }
        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            UserHelper helper = new UserHelper();
            var user = helper.GetUser(txtLoginName.Text, txtPassword.Text);

            if (user == null)
            {
                //todo : ekranda hata gösterilecek .Us&er bulunamadı.
                lblError.Visible = true;
                return;
            }
            Session.Add("LogonUser", user);
            Response.Redirect("Default.aspx");
        }
    }
}