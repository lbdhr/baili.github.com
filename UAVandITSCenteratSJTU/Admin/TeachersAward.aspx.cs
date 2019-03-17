using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ServiceYong : System.Web.UI.Page
{

    string type;
    string AdminOrg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminName"] == null || Session["AdminName"] == "")
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    this.Editor1.Text = SqlHelper.FindString("SELECT TeachersAward FROM [Teachers] " );
                }
            }
            catch
            { }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ServiceYong = this.Editor1.Text.ToString();
        if (UpdateServiceYong(ServiceYong))
        {
            Response.Write("<script language='javascript'>alert('修改成功！');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('修改失败！');</script>");// Response.Write("not ok");
        }
    }

    protected bool UpdateServiceYong(string ServiceYong)
    {
        string updatecmd = "UPDATE [Teachers] SET TeachersAward='" + ServiceYong.ToString() + "'";
        int flag = SqlHelper.ExecuteNonQuery(updatecmd);
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