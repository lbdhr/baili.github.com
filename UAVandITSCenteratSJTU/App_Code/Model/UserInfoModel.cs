using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///UserInfoModel 的摘要说明
/// </summary>
public class UserInfoModel
{
	public UserInfoModel()
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
    private string username;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }

    private string useremail;

    public string Useremail
    {
        get { return useremail; }
        set { useremail = value; }
    }

    private int userage;

    public int Userage
    {
        get { return userage; }
        set { userage = value; }
    }

    private string usergender;

    public string Usergender
    {
        get { return usergender; }
        set { usergender = value; }
    }

    private string usereducation;

    public string Usereducation
    {
        get { return usereducation; }
        set { usereducation = value; }
    }

    private string usertel;

    public string Usertel
    {
        get { return usertel; }
        set { usertel = value; }
    }
     
}