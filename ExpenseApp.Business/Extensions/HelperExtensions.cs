using ExpenseApp.Business.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace ExpenseApp.Business
{
    public static class HelperExtensions
    {
        public static List<ListItem> GetRoleDataSource()
        {
            List<ListItem> dataSourceList = new List<ListItem>();

            foreach (var item in System.Enum.GetValues(typeof(UserRoleEnum)).Cast<UserRoleEnum>())
            {
                if (item == UserRoleEnum.Undefined)
                    continue;
                ListItem datasourceItem = new ListItem();
                datasourceItem.Value = ((int)item).ToString();
                datasourceItem.Text = item == UserRoleEnum.Worker ? "Çalışan" : item == UserRoleEnum.Manager ? "Yönetici" : item == UserRoleEnum.Accountant ? "Muhasebeci" : "Tanımsız";
                dataSourceList.Add(datasourceItem);
            }
            return dataSourceList;
        }
    }
}
