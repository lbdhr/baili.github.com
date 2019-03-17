using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Text;

/// <summary>
///PreliminarySurveyDAL 的摘要说明
/// </summary>
public class PreliminarySurveyDAL
{
	public PreliminarySurveyDAL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    ///<summary>
    ///插入数据
    ///<param name="mb">PreliminarySurvey类实体</param>
    ///<returns>false/true</returns>
    public bool InsertPreliminarySurvey(PreliminarySurvey ps)
    {
        SqlHelper.Open();
        string sql = string.Format("INSERT INTO [PreliminarySurvey](TotalPeople,Above6People,TempPeople,PrivateIncome,FamilyIncome,Bicycle,ElectrCycle,OtherVehicle,PrivateCars,TriCycles,UserName,Motorcycle)  Values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')", ps.TotalPeople.ToString(), ps.Above6People.ToString(), ps.TempPeople.ToString(), ps.PrivateIncome.ToString(), ps.FamilyIncome.ToString(), ps.Bicycle.ToString(), ps.ElectrCycle.ToString(), ps.OtherVehicle.ToString(), ps.PrivateCars.ToString(), ps.TriCycles.ToString(), ps.UserName.ToString(),ps.MotorCycle.ToString());
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


    /// <summary>
    /// 
    /// </summary>
    /// <returns></returns>
    public OleDbDataReader Select()
    {
        StringBuilder sql = new StringBuilder();
        sql.Append("SELECT * FROM ");
        sql.Append("PreliminarySurvey");
        return SqlHelper.ExecuteDataReader(sql.ToString());
    }

    public bool UpdatePreliminarySurvey(PreliminarySurvey ps)
    {
        SqlHelper.Open();
        string sql = string.Format("update [PreliminarySurvey] set TotalPeople='{0}',Above6People='{1}',TempPeople=='{2}',PrivateIncome='{3}',FamilyIncome='{4}',Bicycle='{5}',ElectrCycle='{6}',OtherVehicle='{7}',PrivateCars='{8}',TriCycles='{9}',Motorcycle='{10}' WHERE UserName='{11}'", ps.TotalPeople.ToString(), ps.Above6People.ToString(), ps.TempPeople.ToString(), ps.PrivateIncome.ToString(), ps.FamilyIncome.ToString(), ps.Bicycle.ToString(), ps.ElectrCycle.ToString(), ps.OtherVehicle.ToString(), ps.PrivateCars.ToString(), ps.TriCycles.ToString(),ps.MotorCycle.ToString(), ps.UserName.ToString());
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