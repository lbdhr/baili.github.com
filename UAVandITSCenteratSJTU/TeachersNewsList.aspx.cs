using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class TeachersNewsList : System.Web.UI.Page
{
    DataTable table = new DataTable();
    PagedDataSource PDS = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                InitData();
            }
            catch
            { }
        }
    }

    //初始化数据，把数据添加到Session中，避免重复查询数据库。
    void InitData()
    {
        DataSet DS = SqlHelper.ExecuteDataSet("SELECT * FROM [News] WHERE NewsWriter='学生工作组' ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC ");
        table = DS.Tables[0];
        if (Session["data"] != null)
        {
            Session["data"] = table;
        }
        else
        {
            Session.Add("data", table);
        }
        Pagging(0);
        DropDownList ddl = (DropDownList)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("PageCount");
        ddl.SelectedIndex = 0;

        Label lblPageNo = (Label)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("Label1");
        lblPageNo.Text = "1".ToString();


    }
    //实现分页功能
    protected void Pagging(int index)
    {
        PDS.DataSource = ((DataTable)Session["data"]).DefaultView;
        PDS.CurrentPageIndex = index;
        PDS.AllowPaging = true;
        PDS.PageSize = 2;
        this.Repeater2.DataSource = PDS;
        this.Repeater2.DataBind();


        DropDownList ddl = (DropDownList)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("PageCount");
        if (ddl != null)
        {
            for (int i = 1; i < PDS.PageCount + 1; i++)
            {
                ddl.Items.Add(i.ToString());
            }
        }
        ddl.SelectedIndex = index;
        Label lblPage = (Label)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("Label2");
        lblPage.Text = (PDS.PageCount).ToString();
    }

    public void PageIndex(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("PageCount");
        Pagging(int.Parse(ddl.SelectedItem.Text) - 1);
        Label lblPageNo = (Label)this.Repeater2.Controls[this.Repeater2.Controls.Count - 1].FindControl("Label1");
        int no = int.Parse(ddl.SelectedItem.Text);
        lblPageNo.Text = no.ToString();
    }
    protected System.Drawing.Color Change(string ss)
    {
        bool s = Convert.ToBoolean(ss);
        if (s == false)
            return System.Drawing.Color.Black;
        else
            return System.Drawing.Color.Red;

    }
    protected string ChageString(string ss)
    {
        string sss;
        if (ss.Length > 44)
        {
            sss = ss.Substring(0, 44) + "...";
            return sss;
        }
        else
        {
            sss = ss;
            return sss;
        }
    }
}