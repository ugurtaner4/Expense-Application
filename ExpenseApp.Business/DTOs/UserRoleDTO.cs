using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business.DTOs
{
   public class UserRoleDTO
    {
        public int id { get; internal set; }
        public string RoleName { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
