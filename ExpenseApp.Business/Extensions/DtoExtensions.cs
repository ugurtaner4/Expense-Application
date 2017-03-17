using ExpenseApp.Business.DTOs;
using ExpenseApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpenseApp.Business
{
    public static class DtoExtensions
    {
        public static List<ExpenseDTO> ToExpenseDTOList(this List<Expense> expenseList)
        {
            if (expenseList == null || expenseList.Count == 0)
                return null;

            List<ExpenseDTO> dtoList = new List<ExpenseDTO>();
            foreach (var expense in expenseList)
            {
               
                dtoList.Add(expense.ToExpenseDTO());
            }
            return dtoList;
        }
        public static ExpenseDTO ToExpenseDTO(this Expense expense)
        {
            ExpenseDTO dtoItem = new ExpenseDTO();
            dtoItem.Amount = expense.Amount.Value;
            dtoItem.ApprovalState = expense.ApprovalState.Value;
            dtoItem.CreateBy = expense.CreateBy;
            dtoItem.ExpenseDetail = expense.ExpenseDetail;
            dtoItem.Explanation = expense.Explanation;
            dtoItem.IsSentToApproved = expense.IsSentToApproved.Value;
            dtoItem.ReceiptNo = expense.ReceiptNo;
            dtoItem.UserId = expense.UserId;
            return dtoItem;

        }
        public static Expense ToExpense(this ExpenseDTO expensedto)
        {
            Expense ex = new Expense();
            ex.Amount = expensedto.Amount;
            ex.ApprovalState = expensedto.ApprovalState;
            ex.CreateBy = expensedto.ExpenseDetail;
            ex.Explanation = expensedto.Explanation;
            ex.IsSentToApproved = expensedto.IsSentToApproved;
            ex.ReceiptNo = expensedto.ReceiptNo;
            ex.UserId = expensedto.UserId;
            return ex;
        }
        public static List<UserDTO> ToUserDTOList(this List<User> userList)
        {
            if (userList == null || userList.Count == 0)
            {
                return null;
            }
            List<UserDTO> dtoList = new List<UserDTO>();
            foreach (var user in userList)
            {
                dtoList.Add(user.ToUserDto());
            }
            return dtoList;
        }
        public static UserDTO ToUserDto(this User user)
        {
            UserDTO userItem = new UserDTO();
            userItem.UserRoleId = user.UserRoleId;
            userItem.UserName = user.UserName;
            userItem.Name = user.Name;
            userItem.Surname = user.Surname;
            userItem.Email = user.Email;
            userItem.Password = user. Password;
            userItem.IsDeleted = user.IsDeleted.Value;
            return userItem;

        }
        public static User ToUser(this UserDTO userdto)
        {
            User user = new User();
            user.UserRoleId = userdto.UserRoleId;
            user.UserName = userdto.UserName;
            user.Name = userdto.Name;
            user.Surname = userdto.Surname;
            user.Password = userdto.Password;
            user.Email = userdto.Password;
            user.PhoneNumber = userdto.PhoneNumber;
            user.IsDeleted = userdto.IsDeleted;
            return user;
        }
        public static List<UserRoleDTO> ToUserRoleDTOList(this List<UserRole> userRole)
        {
            if (userRole == null || userRole.Count == 0)
            {
                return null;
            }
            List<UserRoleDTO> dtoList = new List<UserRoleDTO>();
            foreach (var user in userRole)
            {
                dtoList.Add(user.ToUserRoleDTO());
            }
            return dtoList;
        }
        public static UserRoleDTO ToUserRoleDTO(this UserRole userRole)
        {
            UserRoleDTO userRoleItem = new UserRoleDTO();
            userRoleItem.RoleName = userRole.RoleName;
            userRoleItem.IsDeleted = userRole.IsDeleted;
            return userRoleItem;
        }
        public static UserRole ToUserRole(this UserRoleDTO userRoledto)
        {
            UserRole user =new  UserRole();
            user.RoleName = userRoledto.RoleName;
            user.IsDeleted = userRoledto.IsDeleted;
            return user;
        }

    }
}
