using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpenseApp.Business;
using ExpenseApp.Business.DTOs;
namespace ExpenseApp.UI
{
    
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        Business.Helpers.UserHelper usr = new Business.Helpers.UserHelper();
        UserDTO usrdto = new UserDTO();
        UserRoleDTO usrrldto = new UserRoleDTO();
        Business.Helpers.UserRoleHelper rolehelper = new Business.Helpers.UserRoleHelper();

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            GridKullanici.DataSource = usr.GetUser();
            GridKullanici.DataBind();

            if (!IsPostBack)
            {
                ddlRole.DataSource = HelperExtensions.GetRoleDataSource();
                ddlRole.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
         }

        protected void btn1_Click(object sender, EventArgs e)
        {
            usrdto.UserName = TextBox1.Text;
            usrdto.Password = TextBox2.Text;
            usrdto.Name = TextBox3.Text;
            usrdto.Surname = TextBox4.Text;
            usrdto.Email = TextBox5.Text;
            usrdto.PhoneNumber = TextBox6.Text;
            usrdto.UserRoleId = Convert.ToInt32(ddlRole.SelectedValue);
            usrdto.IsDeleted = false;
            usr.InsertUsers(usrdto);

            GridKullanici.DataSource = usr.GetUser();
            GridKullanici.DataBind();
        }
    }
}