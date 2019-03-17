using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
///PreliminarySurveyBLL 的摘要说明
/// </summary>
public class PreliminarySurveyBLL
{
    private static PreliminarySurveyDAL uDal = new PreliminarySurveyDAL();
	public PreliminarySurveyBLL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    ///<summary>
    ///插入数据
    ///<param name="mb">PreliminarySurvey类实体</param>
    ///<returns>false/true</returns>
    public bool InsertPreliminarySurvey(PreliminarySurvey p)
    {
        PreliminarySurveyDAL pdal = new PreliminarySurveyDAL();
        return pdal.InsertPreliminarySurvey(p);
    }

    ///<summary>
    ///更新数据
    ///<param name="mb">PreliminarySurvey类实体</param>
    ///<returns>false/true</returns>
    public bool UpdatePreliminarySurvey(PreliminarySurvey p)
    {
        PreliminarySurveyDAL pdal = new PreliminarySurveyDAL();
        return pdal.UpdatePreliminarySurvey(p);
    }

    public bool CheckExist(string name)
    {

        string str = "select top 1 [ID] from [PreliminarySurvey] where [UserName] = '" + name.ToString() + "'";
        string nn = SqlHelper.FindString(str);
        //获取sql返回值

        if (nn == null || nn == "")
        {
            return false;//不存在
        }
        else
        {
            return true;
        }
    }
}