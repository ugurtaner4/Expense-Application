<%@ Page Title="" Language="C#" MasterPageFile="~/Yoda.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExpenseApp.UI.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnGetData" runat="server" Text="GetExpenses" OnClick="btnGetData_Click" />
</asp:Content>
