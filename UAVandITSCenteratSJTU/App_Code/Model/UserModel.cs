using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///User 的摘要说明
/// </summary>
public class UserModel
{
    public UserModel()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 用户id
    /// </summary>
    private int userID;

    public int UserID
    {
        get { return userID; }
        set { userID = value; }
    }

    
    /// <summary>
    /// 用户账号
    /// </summary>
    private string userName;

    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }


    /// <summary>
    /// 用户密码
    /// </summary>
    private string userPwd;

    public string UserPwd
    {
        get { return userPwd; }
        set { userPwd = value; }
    }

    
    /// <summary>
    /// 用户类型
    /// </summary>
    private string userType;

    public string UserType
    {
        get { return userType; }
        set { userType = value; }
    }

   
}