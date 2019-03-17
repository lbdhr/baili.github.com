using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///UserInfoBLL 的摘要说明
/// </summary>
public class UserInfoBLL
{
	public UserInfoBLL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    ///<summary>
    ///插入数据
    ///<param name="mb">UserModel类实体</param>
    ///<returns>false/true</returns>
    public bool InsertUser(UserInfoModel u)
    {
        UserInfoDAL udal = new UserInfoDAL();
        return udal.InsertUser(u);
    }
}