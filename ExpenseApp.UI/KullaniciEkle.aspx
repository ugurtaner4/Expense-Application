﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yoda.Master" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="ExpenseApp.UI.KullaniciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="rightside">
        <div class="contentbox">
            <div class="contentcontainer">
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
    <asp:DropDownList id="ddlRole" runat="server"></asp:DropDownList>
                    </td>
                </tr>
            <tr>
                <td>
    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="kaydet" />
                    </td>
                </tr>
         
         </form>
            </table>
                <div>
                <asp:GridView ID="GridKullanici" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Kullanıcı Adı" ReadOnly="true" />
                <asp:BoundField DataField="Name" HeaderText="İsim" ReadOnly="true"  />
                <asp:BoundField DataField="Surname" HeaderText="Soyisim" ReadOnly="true" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="true" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Telefon Numarası" ReadOnly="true"  />
                <asp:BoundField DataField="UserRoleId" HeaderText="Rol id" ReadOnly="true" />
        </Columns>
    </asp:GridView>
                    </div>
     </div>
            </div>
        </div>
</asp:Content>