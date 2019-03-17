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
///SQLHelperT 的摘要说明
/// </summary>
public class SQLHelperT
{
    public SQLHelperT()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }



    string filePath = @"UsersData\baicong\20130208121532baicong.db";

    //string connectString2003 = string.Format("provider = microsoft.jet.oledb.4.0;data source={0};Extended Properties='Excel 8.0;HDR=No;IMEX=1'", filePath);
    //string connectString2007 = string.Format("provider = microsoft.ace.oledb.12.0;data source={0};Extended Properties='Excel 12.0;HDR=No;IMEX=1'", filePath);


    //"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=c:\myDb;Extended Properties=Paradox 5.x;" Persist Security Info=False

    //Driver={Microsoft Paradox Driver (*.db )};DriverID=538;Fil=Paradox 5.X;DefaultDir=c:\pathToDb\;Dbq=c:\pathToDb\;CollatingSequence=ASCII" 
    //"Provider=MSDASQL.1;Persist Security Info=False;Mode=Read;Extended Properties='DSN=Paradox;DBQ=C:\myDb;DefaultDir=C:\myDb;DriverId=538;FIL=Paradox 7.X;MaxBufferSize=2048;PageTimeout=600;';Initial Catalog=C:\myDb" 

    static string connectString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\websites\BaiduMapTest\UsersData\baicong;Extended Properties=Paradox 5.x;";
    OleDbConnection conn = new OleDbConnection(connectString);
    #region 打开数据库连接
    /// <summary>
    /// 
    /// </summary>
    public void Open()
    {
        //string connectString = string.Format("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("{0}") + ";Extended Properties=Paradox 5.x;", filePath);

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
    public void Close()
    {
        // string connectString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\websites\BaiduMapTest\UsersData\baicong;Extended Properties=Paradox 5.x;";

        //  conn.ConnectionString = connectString;

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
    public int ExecuteNonQuery(String cmdText)
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
    public DataSet ExecuteDataSet(String cmdText)
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
    public OleDbDataReader ExecuteDataReader(String cmdText)
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
    public object ExecuteScalar(String cmdText)
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
    public string FindString(string sql)
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