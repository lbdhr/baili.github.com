using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Text;

/// <summary>
///UserDAL 的摘要说明
/// </summary>
public class UserDAL
{
	public UserDAL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 
    /// </summary>
    /// <returns></returns>
    public OleDbDataReader  Select()
    {
        StringBuilder sql = new StringBuilder();
        sql.Append("SELECT * FROM ");
        sql.Append("Users");
        return SqlHelper.ExecuteDataReader(sql.ToString());
    }

    ///<summary>
    ///插入数据
    ///<param name="mb">UserModel类实体</param>
    ///<returns>false/true</returns>
    public bool InsertUser(UserModel um)
    {
        SqlHelper.Open(); 
        string sql = string.Format("INSERT INTO [Users](UserName,UserPwd,UserType)  Values('{0}','{1}','{2}')", um.UserName.ToString(),um.UserPwd.ToString(),um.UserType.ToString());
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