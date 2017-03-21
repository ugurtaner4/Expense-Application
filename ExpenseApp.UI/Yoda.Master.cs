using ExpenseApp.Business.DTOs;
using ExpenseApp.Business.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseApp.UI
{
    public partial class Yoda : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            accountantNode.Visible = workerNode.Visible = managerNode.Visible = false;
            var user = Session["LogonUser"];
            if (user != null)
            {
                var userDto = user as UserDTO;
                nameLabel.InnerText = userDto.Name;
                workerNode.Visible = userDto.UserRoleId.Value == (int)UserRoleEnum.Worker;
                accountantNode.Visible = userDto.UserRoleId.Value == (int)UserRoleEnum.Accountant;
                managerNode.Visible = userDto.UserRoleId.Value == (int)UserRoleEnum.Manager;
            }
        }

        protected void linkTest_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}