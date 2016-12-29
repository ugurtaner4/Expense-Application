<%@ Page Title="" Language="C#" MasterPageFile="~/Yoda.Master" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="ExpenseApp.UI.KullaniciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style1">
        <table>
        <form action="KullaniciEkle.aspx" method="get">
            <tr>
                <td>
    <asp:TextBox ID="TextBox1" runat="server" >Kullanici Adi</asp:TextBox>
                    </td>
            </tr>
                  <tr>
                <td>
    <asp:TextBox ID="TextBox2" runat="server" >Şifre</asp:TextBox>
                    </td>
            </tr>
           <tr>
                <td>
    <asp:TextBox ID="TextBox3" runat="server" >İsim</asp:TextBox>
                    </td>
            </tr>
           <tr>
                <td>
    <asp:TextBox ID="TextBox4" runat="server" >Soyisim</asp:TextBox>
                    </td>
            </tr>
          <tr>
                <td>
    <asp:TextBox ID="TextBox5" runat="server" >Email</asp:TextBox>
                    </td>
            </tr>
                  <tr>
                <td>
    <asp:TextBox ID="TextBox6" runat="server" >Tel NO</asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="kaydet" />
                    </td>
                </tr>
         </form>
            </table>
     </div>
</asp:Content>
