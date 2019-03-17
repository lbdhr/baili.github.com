using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
///UserBLL 的摘要说明
/// </summary>
public class UserBLL
{
    private static UserDAL uDal = new UserDAL();
	public UserBLL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    ///<summary>
    ///插入数据
    ///<param name="mb">UserModel类实体</param>
    ///<returns>false/true</returns>
    public bool InsertUser(UserModel u)
    {
        UserDAL udal = new UserDAL();
        return udal.InsertUser(u);
    }

    public string[] CheckLogin(string name, string pwd)
    {
        OleDbDataReader reader = uDal.Select();
        string[] user = new string[] { "0", "0" };
        string userType = string.Empty;
        string userID = string.Empty;
        while (reader.Read())
        {
            if (reader[1].ToString() == name && reader[2].ToString() == pwd)
            {
                user[0] = reader[0].ToString();
                user[1] = reader["UserName"].ToString();
                break;
            }
        }
        return user;
    }
}