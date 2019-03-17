using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Text;

/// <summary>
///UserInfoDAL 的摘要说明
/// </summary>
public class UserInfoDAL
{
	public UserInfoDAL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}


    ///<summary>
    ///插入数据
    ///<param name="mb">UserInfoModel类实体</param>
    ///<returns>false/true</returns>
    public bool InsertUser(UserInfoModel uim)
    {
        SqlHelper.Open(); 
        string sql = string.Format("INSERT INTO [UsersInfo](UserName,UserEmail,UserAge,UserGender,UserEducation,UserTel)  Values('{0}','{1}',{2},'{3}','{4}','{5}')",uim.Username.ToString(),uim.Useremail.ToString(),uim.Userage.ToString(),uim.Usergender.ToString(),uim.Usereducation.ToString(),uim.Usertel.ToString());
        int flag = SqlHelper.ExecuteNonQuery(sql);
        if (flag == -1)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
   
}