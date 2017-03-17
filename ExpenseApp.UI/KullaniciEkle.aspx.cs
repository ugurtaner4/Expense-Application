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

        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridKullanici.DataSource = usr.GetUser();
            GridKullanici.DataBind();
         }

        protected void btn1_Click(object sender, EventArgs e)
        {
            usrdto.UserName = TextBox1.Text;
            usrdto.Password = TextBox2.Text;
            usrdto.Name = TextBox3.Text;
            usrdto.Surname = TextBox4.Text;
            usrdto.Email = TextBox5.Text;
            usrdto.PhoneNumber = TextBox6.Text;
            usrdto.UserRoleId = 1;
            usrdto.IsDeleted = false;
            usr.InsertUsers(usrdto);
        }
    }
}