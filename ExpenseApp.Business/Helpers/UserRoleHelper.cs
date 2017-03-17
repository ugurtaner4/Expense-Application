using ExpenseApp.Business.DTOs;
using ExpenseApp.Business.Manager;
using ExpenseApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business.Helpers
{
    public class UserRoleHelper
    {
        
        EntityManager<UserRole> userRoleManager = new EntityManager<UserRole>();
        
        public List<UserRoleDTO> GetUserRoles()
        {
            var userRoles = userRoleManager.List();
       
            return userRoles.Where(t => t.IsDeleted == false).ToList().ToUserRoleDTOList();
        }
        
        public UserRoleDTO GetUserRoles(int id)
        {
            var userRoles = userRoleManager.First(t => t.Id == id);
            return userRoles.ToUserRoleDTO();
        }
        public void InsertUserRole(UserRoleDTO userRoledto)
        {
            userRoleManager.Add(userRoledto.ToUserRole());
        }
        public void DeleteUserRole(int id)
        {
            var userRoles = GetUserRoles(id).ToUserRole();
            userRoles.IsDeleted = true;
            userRoleManager.Update(userRoles);
        }
    }
}
