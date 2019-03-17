using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Data.SqlClient;

/// <summary>
///GPSPointsBLL 的摘要说明
/// </summary>
public class GPSPointsBLL
{
    public GPSPointsBLL()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    #region 读取 GPSPoints
    /// <summary>
    ///  
    /// </summary>
    /// <param ="longitude">经度</param> 
    /// <param ="latitude">纬度</param>
    /// <returns></returns>
    public DataSet ReadGPSPoints(string anumber)
    {
        DataSet ds = new DataSet();
        String cmdText;

        cmdText = "SELECT top 5 * FROM [GPSPoints] where anumber='bc' ";// where anmuber = 'bc' ";
       // cmdText = "SELECT * FROM [GPSPoints] where anmuber='"+anumber+"'";

        ds = SqlHelper.ExecuteDataSet(cmdText);

        return ds;
    }
    #endregion
}
