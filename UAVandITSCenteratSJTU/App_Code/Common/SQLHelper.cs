/*
 * 创建人：何泽东
 * 创建时间：2011-4-18 19：00
 * 说明：数据库助手类
 */

using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;





/// <summary>
/// The SqlHelper class is intended to encapsulate high performance, 
/// scalable best practices for common uses of SqlClient.
/// 数据库操作类
/// </summary>
public static class SqlHelper
{
    public static OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=" + HttpContext.Current.Server.MapPath("App_Data/OrgData.mdb"));

 

    #region 打开数据库连接
    /// <summary>
    /// 
    /// </summary>
    public static void Open()
    {
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
    }
    #endregion

    #region 关闭数据库连接
    /// <summary>
    /// 
    /// </summary>
    public static void Close()
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
    }
    #endregion

    #region ExecuteNonQuery
    /// <summary>
    /// 数据库操作，返回受影响行数
    /// </summary>
    /// <param name="cmdText">sql语句</param>
    public static int ExecuteNonQuery(String cmdText)
    {
        OleDbCommand cmd = new OleDbCommand(cmdText, conn);
        Open();
        int flag = cmd.ExecuteNonQuery();
        Close();

        return flag;
    }
    #endregion

    #region ExecuteDataSet
    /// <summary>
    /// 执行返回dataset
    /// </summary>
    /// <param name="cmdText">sql语句</param>
    /// <returns>dataset</returns>
    public static DataSet ExecuteDataSet(String cmdText)
    {
        DataSet ds = new DataSet();
        OleDbCommand cmd = new OleDbCommand(cmdText, conn);
        Open();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(ds);
        Close();

        return ds;
    }
    #endregion

    #region ExecuteDataReader
    /// <summary>
    /// 运行返回DataReader
    /// </summary>
    /// <param name="cmdText">sql语句</param>
    /// <returns>datareader</returns>
    public static OleDbDataReader ExecuteDataReader(String cmdText)
    {
        OleDbDataReader dataReader;
        OleDbCommand cmd = new OleDbCommand(cmdText, conn);
        Open();
        dataReader = cmd.ExecuteReader();
        //Close();
        return dataReader;
    }
    #endregion

    #region ExecuteScalar
    /// <summary>
    /// 运行查找值
    /// </summary>
    /// <param name="cmdText">sql语句</param>
    /// <returns>object</returns>
    public static object ExecuteScalar(String cmdText)
    {
        object val;
        OleDbCommand cmd = new OleDbCommand(cmdText, conn);
        Open();
        val = cmd.ExecuteScalar();
        Close();
        return val;
    }
    #endregion

    #region FindString
    public static string FindString(string sql)
    {
        try
        {
            //                 OleDbConnection conn = Getconn();
            //                 OleDbCommand com = new OleDbCommand(sql, conn);
            string hang = Convert.ToString(ExecuteScalar(sql));
            return hang;
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);

        }
        finally
        {
            Close();
        }

    }
    #endregion

}
