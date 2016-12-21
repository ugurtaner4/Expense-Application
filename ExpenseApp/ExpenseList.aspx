<%@ Page Title="" Language="C#" MasterPageFile="~/yoda.Master" AutoEventWireup="true" CodeBehind="ExpenseList.aspx.cs" Inherits="ExpenseApp.ExpenseList" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="false" DataSourceID="LinqDataSource1" KeyFieldName="ID" OnFocusedRowChanged="ASPxGridview1_FocusedRowChanged" EnableCallBacks="False" Width="100%" Caption="Kayitli Masraflar">
        <Columns>
            <dx:GridViewCommandColumn Caption=" " VisibleIndex="0">
                
                <FilterTemplate></FilterTemplate>
            </dx:GridViewCommandColumn> 
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="true" Visible="false" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BelgeTarihi"   VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FirmaAdı"   VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SeriNo"   VisibleIndex="5"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BelgeTürü"   VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="HarcamaTürü"   VisibleIndex="7"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutarTipi"   VisibleIndex="8"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Tutar"   VisibleIndex="9"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="KDVOranı"   VisibleIndex="10"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="KDVTutarı"   VisibleIndex="11"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="KDVsizTutar"   VisibleIndex="12"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Aciklama"   VisibleIndex="13"></dx:GridViewDataTextColumn>
        </Columns>
         <SettingsBehavior AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="True" AllowSort="False" />
                    <SettingsPager PageSize="20">
                        <Summary AllPagesText="Toplam: {0} - {1} ({2} kayıt)" Text="Sayfa {0} / {1} ({2} tane kayıt var.)" />
                    </SettingsPager>
                    <SettingsText CommandClearFilter="Tümü" CustomizationWindowCaption=" " EmptyDataRow="Kayıt yok."
                        EmptyHeaders=" " FilterBarClear="Seçimi Temizle" FilterBarCreateFilter="Filtre Oluştur"
                        FilterControlPopupCaption="Filtrelendi" GroupContinuedOnNextPage="Sonraki Sayfa"
                        GroupPanel="Grupla" HeaderFilterShowAll="Tümünü Göster" HeaderFilterShowBlanks="Boş kayıtlar"
                        HeaderFilterShowNonBlanks="Boş olmayanlar" Title="KAYITLI MÜŞTERİLER" />
                    <Styles>s
                        <AlternatingRow BackColor="#CCCCCC">
                        </AlternatingRow>
                    </Styles>
                    <Settings ShowFilterRow="True" />
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Expense.dcDataContext" EntityTypeName="" OrderBy="AdSoyad" TableName="expense">
                </asp:LinqDataSource>
   
                </td>
            </tr>
        </table>
</asp:Content>
