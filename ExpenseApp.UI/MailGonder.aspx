<%@ Page Title="" Language="C#" MasterPageFile="~/Yoda.Master" AutoEventWireup="true" CodeBehind="MailGonder.aspx.cs" Inherits="ExpenseApp.UI.MailGonder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="rightside">
        <div class="contentbox">
            <div class="contentcontainer">
                

 <table style="background-color: grey; padding: 10px" border="0" cellpadding="0" cellspacing="0" >
 
                <tr>
                    <td class="tdsol" ><b>Gönderilecek Email: </b></td>
                    <td><asp:TextBox ID="txtKime" runat="server"></asp:TextBox> </td>
                </tr>
 
                <tr>
                    <td class="tdsol">&nbsp; </td>
                </tr>
 
                <tr>
                    <td class="tdsol">Konu: </td>
                    <td><asp:TextBox ID="txtKonu" runat="server"></asp:TextBox> </td>
                </tr>
 
                <tr>
                    <td class="tdsol">&nbsp; </td>
                </tr>
 
                <tr>
                    <td valign="top" class="tdsol">Mesaj: </td>
                    <td><asp:TextBox ID="txtMesaj" runat="server" TextMode="MultiLine" Height="105px" Width="563px"></asp:TextBox> </td>
                </tr>
 
                <tr>
                    <td>&nbsp;</td>
                </tr>
 
                <tr>
                    <td>Mail Attachment: </td>
                    <td><asp:FileUpload ID="fuAttach" runat="server" /> </td>
                </tr>
 
                <tr> <td>&nbsp; </td> </tr>
 
                <tr>
                    <td colspan="2"> <br /> Gmail Hesap Bilgileri<br /> <hr /> </td>
                </tr>
 
                <tr>
                    <td>Email: </td>  <td>  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
                </tr>
 
                <tr>
                     <td>&nbsp; </td> </tr> 
                <tr>
                    <td>Şifre: </td>  <td>  <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> </td>
                </tr>
 
                <tr>
                    <td>&nbsp; </td>
                </tr>
 
                <tr>
                    <td></td>
                    <td> <asp:Button ID="BtnGonder" Text=" Maili Gönder " runat="server" OnClick="BtnGonder_Click" /> </td>
                </tr>
            </table>
            </div>
        </div>
      </div>  
</asp:Content>
