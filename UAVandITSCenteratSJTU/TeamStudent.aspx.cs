using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class TeamStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string ShowName(string Country, string SGrade)
    {
        DataSet ds = new DataSet();
        string cmdText = string.Format("SELECT ID, SName, SGrade FROM [StudentsInfo] where Country='{0}' And SGrade='{1}'", Country, SGrade);
        ds = SqlHelper.ExecuteDataSet(cmdText);
        string returnName = "";
        DataTable newDataTable = ds.Tables[0].Clone();//创建新表 克隆以有表的架构
        for (int m = 0; m < ds.Tables.Count; m++)
        {
            if (ds.Tables[m].Rows.Count > 0)
            {
                for (int n = 0; n < ds.Tables[m].Rows.Count; n++)
                {
                    returnName += "&nbsp;&nbsp;<A href=Authors.aspx?ID=" + ds.Tables[m].Rows[n].ItemArray.GetValue(0).ToString() + "&Author=" + ds.Tables[m].Rows[n].ItemArray.GetValue(2).ToString() + ">" + ds.Tables[m].Rows[n].ItemArray.GetValue(2).ToString() + "</A>";
                }
            }
        }

        return returnName;
    }
}