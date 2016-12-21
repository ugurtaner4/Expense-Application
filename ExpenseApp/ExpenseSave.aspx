<%@ Page Title="" Language="C#" MasterPageFile="~/yoda.Master" AutoEventWireup="true" CodeBehind="ExpenseSave.aspx.cs" Inherits="ExpenseApp.ExpenseSave" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>
            <asp:Panel id="Panel1" runat="server" CssClass="panel" GroupingText="Masraf Bilgileri">
                <table>
                    <tr>
                        <td class="style1" align="left">Belge Tarihi</td> 
                        <td class="style1">
                            <dx:ASPxCalendar ID="dteBlg" runat="server"></dx:ASPxCalendar>
                        </td>

                    </tr>
                    <tr>
                        <td class="style1" align="left">Firma Adı</td>
                              <td class="style1">
                            <asp:TextBox id="txtFrm" runat="server" Width="170px" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="style1" align="left">Seri No</td>
                              <td class="style1">
                            <asp:TextBox id="txtSrn" runat="server" Width="170px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="style1" align="left">Belge Türü</td>
                              <td class="style1">
                            <asp:DropDownList id="ddlBlg" runat="server" Width="170px" >
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td class="style1" align="left">Harcama Türü</td>
                              <td class="style1">
                            <asp:DropDownList id="ddlHrc" runat="server" Width="170px" >
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td class="style1" align="left">Tutar Tipi</td>
                              <td class="style1">
                            <asp:DropDownList id="ddlTtp" runat="server" Width="170px" ></asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td class="style1" align="left">Tutar</td>
                              <td class="style1">
                            <asp:TextBox id="txtTtr" runat="server" Width="170px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td class="style1" align="left">KDV Oranı</td>
                              <td class="style1">
                            <asp:DropDownList id="ddlKdv" runat="server" Width="170px" >
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                       <tr>
                        <td class="style1" align="left">KDV Tutarı</td>
                              <td class="style1">
                            <asp:TextBox id="txtKtr" runat="server" Width="170px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                       <tr>
                        <td class="style1" align="left">KDV'siz Tutar</td>
                              <td class="style1">
                            <asp:TextBox id="txtKst" runat="server" Width="170px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                       <tr>
                        <td class="style1" align="left">Aciklama</td>
                              <td class="style1">
                            <asp:TextBox id="txtAck" runat="server" Width="170px" Height="170" MaxLength="250"></asp:TextBox>
                        </td>
                    </tr>
                  
                </table>
                
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button id="btnKyt" runat="server" Text="Kaydet"  CssClass="buton"></asp:Button>
            <asp:Button id="btnIpt" runat="server" Text="İptal"  CssClass="buton"></asp:Button>
        </td>
    </tr>

</table>

</asp:Content>
